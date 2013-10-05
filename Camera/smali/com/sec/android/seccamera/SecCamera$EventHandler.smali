.class Lcom/sec/android/seccamera/SecCamera$EventHandler;
.super Landroid/os/Handler;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/seccamera/SecCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mCamera:Lcom/sec/android/seccamera/SecCamera;

.field final synthetic this$0:Lcom/sec/android/seccamera/SecCamera;


# direct methods
.method public constructor <init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "looper"

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    .line 1497
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1498
    iput-object p2, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    .line 1499
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1503
    const-string v6, "SecCamera-JNI-Java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 1993
    const-string v4, "SecCamera-JNI-Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown message type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_0
    :goto_0
    return-void

    .line 1506
    :sswitch_0
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1507
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 1512
    :sswitch_1
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1513
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v5, v4, v6}, Lcom/sec/android/seccamera/SecCamera$PictureCallback;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V

    goto :goto_0

    .line 1518
    :sswitch_2
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1519
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v5, v4, v6}, Lcom/sec/android/seccamera/SecCamera$PictureCallback;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V

    goto :goto_0

    .line 1525
    :sswitch_3
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    move-result-object v3

    .line 1526
    .local v3, pCb:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    if-eqz v3, :cond_0

    .line 1527
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$400(Lcom/sec/android/seccamera/SecCamera;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1531
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    invoke-static {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->access$302(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 1538
    :cond_1
    :goto_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$PreviewCallback;->onPreviewFrame([BLcom/sec/android/seccamera/SecCamera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1541
    .end local v3           #pCb:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "CAMERA_MSG_PREVIEW_FRAME"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1544
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_4
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1545
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v5, v4, v6}, Lcom/sec/android/seccamera/SecCamera$PictureCallback;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_0

    .line 1532
    .restart local v3       #pCb:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$500(Lcom/sec/android/seccamera/SecCamera;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1536
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    #calls: Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZZ)V
    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/seccamera/SecCamera;->access$600(Lcom/sec/android/seccamera/SecCamera;ZZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1550
    .end local v3           #pCb:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    :sswitch_5
    const/4 v0, 0x0

    .line 1551
    .local v0, cb:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$800(Lcom/sec/android/seccamera/SecCamera;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1552
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

    move-result-object v0

    .line 1553
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1554
    if-eqz v0, :cond_0

    .line 1556
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v0, v4, v5}, Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;->onAutoFocus(ILcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_0

    .line 1553
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1561
    .end local v0           #cb:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;
    :sswitch_6
    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;
    invoke-static {v6}, Lcom/sec/android/seccamera/SecCamera;->access$1000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1562
    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;
    invoke-static {v6}, Lcom/sec/android/seccamera/SecCamera;->access$1000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    if-eqz v8, :cond_3

    :goto_2
    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v6, v7, v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;->onZoomChange(IZLcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_0

    :cond_3
    move v4, v5

    goto :goto_2

    .line 1567
    :sswitch_7
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mFaceListener:Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1200(Lcom/sec/android/seccamera/SecCamera;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1568
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mFaceListener:Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Lcom/sec/android/seccamera/SecCamera$Face;

    check-cast v4, [Lcom/sec/android/seccamera/SecCamera$Face;

    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v5, v4, v6}, Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;->onFaceDetection([Lcom/sec/android/seccamera/SecCamera$Face;Lcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_0

    .line 1573
    :sswitch_8
    const-string v4, "SecCamera-JNI-Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mErrorCallback:Lcom/sec/android/seccamera/SecCamera$ErrorCallback;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ErrorCallback;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1575
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mErrorCallback:Lcom/sec/android/seccamera/SecCamera$ErrorCallback;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ErrorCallback;

    move-result-object v4

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v4, v6, v7}, Lcom/sec/android/seccamera/SecCamera$ErrorCallback;->onError(ILcom/sec/android/seccamera/SecCamera;)V

    .line 1578
    :cond_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/16 v6, 0xc8

    if-ne v4, v6, :cond_0

    .line 1580
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #calls: Lcom/sec/android/seccamera/SecCamera;->native_release()V
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1400(Lcom/sec/android/seccamera/SecCamera;)V

    .line 1581
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #setter for: Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z
    invoke-static {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->access$1202(Lcom/sec/android/seccamera/SecCamera;Z)Z

    goto/16 :goto_0

    .line 1586
    :sswitch_9
    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mAutoFocusMoveCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;
    invoke-static {v6}, Lcom/sec/android/seccamera/SecCamera;->access$1500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1587
    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mAutoFocusMoveCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;
    invoke-static {v6}, Lcom/sec/android/seccamera/SecCamera;->access$1500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_5

    :goto_3
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v6, v5, v4}, Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_0

    :cond_5
    move v5, v4

    goto :goto_3

    .line 1594
    :sswitch_a
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "SAMSUNG_SHOT_COMPRESSED_IMAGE"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1596
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v5, v4, v6}, Lcom/sec/android/seccamera/SecCamera$PictureCallback;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_0

    .line 1601
    :sswitch_b
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1602
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaError(I)V

    goto/16 :goto_0

    .line 1606
    :sswitch_c
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1607
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaDirectionChanged(I)V

    goto/16 :goto_0

    .line 1611
    :sswitch_d
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1612
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaRectChanged(II)V

    goto/16 :goto_0

    .line 1616
    :sswitch_e
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1617
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaCapturedNew()V

    goto/16 :goto_0

    .line 1621
    :sswitch_f
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1622
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaProgressStitching(I)V

    goto/16 :goto_0

    .line 1626
    :sswitch_10
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1627
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaCaptured()V

    goto/16 :goto_0

    .line 1631
    :sswitch_11
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1632
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-interface {v5, v4}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaLowResolutionData([B)V

    goto/16 :goto_0

    .line 1636
    :sswitch_12
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1637
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-interface {v5, v4}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaLivePreviewData([B)V

    goto/16 :goto_0

    .line 1641
    :sswitch_13
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1642
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaCapturedMaxFrames()V

    goto/16 :goto_0

    .line 1646
    :sswitch_14
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1647
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaMoveSlowly()V

    goto/16 :goto_0

    .line 1651
    :sswitch_15
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1652
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaError(I)V

    goto/16 :goto_0

    .line 1656
    :sswitch_16
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1657
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaDirectionChanged(I)V

    goto/16 :goto_0

    .line 1661
    :sswitch_17
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1662
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaRectChanged(II)V

    goto/16 :goto_0

    .line 1666
    :sswitch_18
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1667
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaCapturedNew()V

    goto/16 :goto_0

    .line 1671
    :sswitch_19
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1672
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaProgressStitching(I)V

    goto/16 :goto_0

    .line 1676
    :sswitch_1a
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1677
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaCaptured()V

    goto/16 :goto_0

    .line 1681
    :sswitch_1b
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1682
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-interface {v5, v4}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaLowResolutionData([B)V

    goto/16 :goto_0

    .line 1686
    :sswitch_1c
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1687
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-interface {v5, v4}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaLivePreviewData([B)V

    goto/16 :goto_0

    .line 1691
    :sswitch_1d
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1692
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaCapturedMaxFrames()V

    goto/16 :goto_0

    .line 1696
    :sswitch_1e
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1697
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-interface {v5, v4}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaMpoData([B)V

    goto/16 :goto_0

    .line 1701
    :sswitch_1f
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1702
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;->onContinuousShotCapturingProgressed(II)V

    goto/16 :goto_0

    .line 1706
    :sswitch_20
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1707
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;->onContinuousShotCapturingStopped(I)V

    goto/16 :goto_0

    .line 1711
    :sswitch_21
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1712
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;->onContinuousShotSavingCompleted()V

    goto/16 :goto_0

    .line 1716
    :sswitch_22
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1717
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotCreatingResultStarted()V

    goto/16 :goto_0

    .line 1721
    :sswitch_23
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1722
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotCreatingResultProgress(I)V

    goto/16 :goto_0

    .line 1726
    :sswitch_24
    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v6}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1727
    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v6}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v4, :cond_6

    :goto_4
    invoke-interface {v6, v4}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotCreatingResultCompleted(Z)V

    goto/16 :goto_0

    :cond_6
    move v4, v5

    goto :goto_4

    .line 1731
    :sswitch_25
    const-string v4, "SecCamera-JNI-Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActionShotAcquisitionProgress "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1733
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotAcquisitionProgress(I)V

    goto/16 :goto_0

    .line 1737
    :sswitch_26
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1738
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-interface {v5, v4}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotRectChanged([B)V

    goto/16 :goto_0

    .line 1742
    :sswitch_27
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1743
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotCaptured()V

    goto/16 :goto_0

    .line 1747
    :sswitch_28
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1748
    const-string v4, "SecCamera-JNI-Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CARTOON_SHOT_PROGRESS_RENDERING :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;->onCartoonShotProgressRendering(I)V

    goto/16 :goto_0

    .line 1753
    :sswitch_29
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1754
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;->onSmileShotDetectionSuccess()V

    goto/16 :goto_0

    .line 1758
    :sswitch_2a
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1759
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-interface {v5, v4}, Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;->onSmileShotFaceRectChanged([B)V

    goto/16 :goto_0

    .line 1763
    :sswitch_2b
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1764
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-interface {v5, v4}, Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;->onSmileShotSmileRectChanged([B)V

    goto/16 :goto_0

    .line 1769
    :sswitch_2c
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1770
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;->onHDRShotResultStarted()V

    goto/16 :goto_0

    .line 1775
    :sswitch_2d
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1776
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;->onHDRShotResultProgress(I)V

    goto/16 :goto_0

    .line 1781
    :sswitch_2e
    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v6}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1782
    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v6}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v4, :cond_7

    :goto_5
    invoke-interface {v6, v4}, Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;->onHDRShotResultCompleted(Z)V

    goto/16 :goto_0

    :cond_7
    move v4, v5

    goto :goto_5

    .line 1787
    :sswitch_2f
    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v6}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1788
    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v6}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v4, :cond_8

    :goto_6
    invoke-interface {v6, v4}, Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;->onHDRShotAllProgressCompleted(Z)V

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_6

    .line 1793
    :sswitch_30
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1794
    new-instance v2, Ljava/lang/String;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 1795
    .local v2, filename:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;->onHDRShotYUVFileString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1800
    .end local v2           #filename:Ljava/lang/String;
    :sswitch_31
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1801
    const-string v4, "SecCamera-JNI-Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HAL_MSG_OBJ_TRACKING :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;->onObjectTrackingStatus(I)V

    goto/16 :goto_0

    .line 1807
    :sswitch_32
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1808
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "HAL_DONE_CHK_DATALINE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;->onChkDataLineDone()V

    goto/16 :goto_0

    .line 1814
    :sswitch_33
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1815
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;->onBurstShotCapturingProgressed(II)V

    goto/16 :goto_0

    .line 1820
    :sswitch_34
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1821
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;->onBurstShotCapturingStopped(I)V

    goto/16 :goto_0

    .line 1826
    :sswitch_35
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1827
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;->onBurstShotSavingCompleted(I)V

    goto/16 :goto_0

    .line 1832
    :sswitch_36
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1833
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-interface {v5, v4}, Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;->onBurstShotStringProgressed([B)V

    goto/16 :goto_0

    .line 1838
    :sswitch_37
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1839
    const-string v4, "SecCamera-JNI-Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM3DPHOTO_SHOT_PROGRESS_RENDERING :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;->onSIM3DPhotoShotProgressRendering(I)V

    goto/16 :goto_0

    .line 1844
    :sswitch_38
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1845
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-interface {v5, v4}, Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;->onSIM3DPhotoShotMpoData([B)V

    goto/16 :goto_0

    .line 1849
    :sswitch_39
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnMagicFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1850
    const-string v4, "SecCamera-JNI-Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MAGICFRAME_SHOT_PROGRESS_RENDERING : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnMagicFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;->onMagicFrameShotProgressRendering(I)V

    goto/16 :goto_0

    .line 1855
    :sswitch_3a
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPIPShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1856
    const-string v4, "SecCamera-JNI-Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PIP_SHOT_PROGRESS_RENDERING : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPIPShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;->onPIPShotProgressRendering(I)V

    goto/16 :goto_0

    .line 1861
    :sswitch_3b
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnMultiFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1862
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "seccamera MULTI_FRAME_SHOT_PROGRESS_POSTPROCESSING "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnMultiFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$2900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;->onMultiFrameShotCapturingProgressed(II)V

    goto/16 :goto_0

    .line 1867
    :sswitch_3c
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnNotifyFirstPreviewFrameEventListener:Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1868
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "Notify to get the first preview frame "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnNotifyFirstPreviewFrameEventListener:Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;->OnNotifyFirstPreviewFrame()V

    goto/16 :goto_0

    .line 1873
    :sswitch_3d
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1874
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "Pet Detection success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;->onPetDetectionSuccess()V

    goto/16 :goto_0

    .line 1879
    :sswitch_3e
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1880
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "Pet Detection Rect"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Landroid/graphics/Rect;

    check-cast v4, [Landroid/graphics/Rect;

    invoke-interface {v5, v4}, Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;->onPetFaceRectChanged([Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1885
    :sswitch_3f
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPhotoGrapherDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1886
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "PhotoGrapher Detection changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPhotoGrapherDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;->onPhotoGrapherDetectionChanged(I)V

    goto/16 :goto_0

    .line 1891
    :sswitch_40
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1892
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;->onGolfShotCaptuered()V

    goto/16 :goto_0

    .line 1896
    :sswitch_41
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1897
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;->onGolfShotCreatingStarted()V

    goto/16 :goto_0

    .line 1901
    :sswitch_42
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1902
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;->onGolfShotCreatingProgress(I)V

    goto/16 :goto_0

    .line 1906
    :sswitch_43
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1907
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-interface {v5, v4}, Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;->onGolfShotCreatingCompleted([B)V

    goto/16 :goto_0

    .line 1911
    :sswitch_44
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1912
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;->onGolfShotSavingProgress(I)V

    goto/16 :goto_0

    .line 1916
    :sswitch_45
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1917
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;->onGolfShotError(I)V

    goto/16 :goto_0

    .line 1922
    :sswitch_46
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1923
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "DRAMA_SHOT_CAPTURING_PROGRESS"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;->onDramaShotCapturingProgress(II)V

    goto/16 :goto_0

    .line 1926
    :cond_9
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "DRAMA_SHOT_CAPTURING_PROGRESS, mOnDramaShotEventListener is null !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1930
    :sswitch_47
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 1931
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "DRAMA_SHOT_PROGRESS_POSTPROCESSING"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;->onDramaShotSavingProgress(I)V

    goto/16 :goto_0

    .line 1934
    :cond_a
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "DRAMA_SHOT_PROGRESS_POSTPROCESSING, mOnDramaShotEventListener is null !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1938
    :sswitch_48
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1939
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "DRAMA_SHOT_ERROR"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;->onDramaShotError(I)V

    goto/16 :goto_0

    .line 1942
    :cond_b
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "DRAMA_SHOT_ERROR, mOnDramaShotEventListener is null !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1946
    :sswitch_49
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 1947
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "DRAMA_SHOT_INPUT_YUV_STRING"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-interface {v5, v4}, Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;->onDramaShotInputString([B)V

    goto/16 :goto_0

    .line 1950
    :cond_c
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "DRAMA_SHOT_INPUT_YUV_STRING, mOnDramaShotEventListener is null !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1954
    :sswitch_4a
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 1955
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "DRAMA_SHOT_RESULT_YUV_STRING"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-interface {v5, v4}, Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;->onDramaShotResultString([B)V

    goto/16 :goto_0

    .line 1958
    :cond_d
    const-string v4, "SecCamera-JNI-Java"

    const-string v5, "DRAMA_SHOT_RESULT_YUV_STRING, mOnDramaShotEventListener is null !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1963
    :sswitch_4b
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBeautyShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBeautyShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBeautyShotEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1964
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBeautyShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBeautyShotEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBeautyShotEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnBeautyShotEventListener;->onBeautyShotSavingProgress(I)V

    goto/16 :goto_0

    .line 1968
    :sswitch_4c
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnAutoLowLightDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnAutoLowLightDetectionListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnAutoLowLightDetectionListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1969
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnAutoLowLightDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnAutoLowLightDetectionListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnAutoLowLightDetectionListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnAutoLowLightDetectionListener;->onAutoLowLightDetectionChanged(I)V

    goto/16 :goto_0

    .line 1973
    :sswitch_4d
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSecImageEffectListner:Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1974
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSecImageEffectListner:Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;->onEffectShotCreatingStarted()V

    goto/16 :goto_0

    .line 1978
    :sswitch_4e
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSecImageEffectListner:Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1979
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSecImageEffectListner:Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;->onEffectShotCreatingProgress(I)V

    goto/16 :goto_0

    .line 1983
    :sswitch_4f
    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSecImageEffectListner:Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;
    invoke-static {v6}, Lcom/sec/android/seccamera/SecCamera;->access$3700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1984
    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSecImageEffectListner:Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;
    invoke-static {v6}, Lcom/sec/android/seccamera/SecCamera;->access$3700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v4, :cond_e

    :goto_7
    invoke-interface {v6, v4}, Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;->onEffectShotCreatingCompleted(Z)V

    goto/16 :goto_0

    :cond_e
    move v4, v5

    goto :goto_7

    .line 1988
    :sswitch_50
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnDualEventListener:Lcom/sec/android/seccamera/SecCamera$OnDualEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnDualEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1989
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnDualEventListener:Lcom/sec/android/seccamera/SecCamera$OnDualEventListener;
    invoke-static {v4}, Lcom/sec/android/seccamera/SecCamera;->access$3800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnDualEventListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnDualEventListener;->onDualCaptureAvailable(I)V

    goto/16 :goto_0

    .line 1504
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_9
        0xf001 -> :sswitch_31
        0xf002 -> :sswitch_32
        0xf021 -> :sswitch_b
        0xf022 -> :sswitch_d
        0xf023 -> :sswitch_e
        0xf024 -> :sswitch_f
        0xf025 -> :sswitch_10
        0xf026 -> :sswitch_c
        0xf027 -> :sswitch_11
        0xf028 -> :sswitch_12
        0xf029 -> :sswitch_13
        0xf02a -> :sswitch_14
        0xf031 -> :sswitch_1f
        0xf032 -> :sswitch_20
        0xf033 -> :sswitch_21
        0xf041 -> :sswitch_22
        0xf042 -> :sswitch_23
        0xf043 -> :sswitch_24
        0xf044 -> :sswitch_25
        0xf045 -> :sswitch_27
        0xf046 -> :sswitch_26
        0xf061 -> :sswitch_29
        0xf062 -> :sswitch_2a
        0xf063 -> :sswitch_2b
        0xf071 -> :sswitch_28
        0xf081 -> :sswitch_2c
        0xf082 -> :sswitch_2d
        0xf083 -> :sswitch_2e
        0xf084 -> :sswitch_2f
        0xf085 -> :sswitch_30
        0xf091 -> :sswitch_33
        0xf092 -> :sswitch_34
        0xf093 -> :sswitch_35
        0xf094 -> :sswitch_36
        0xf101 -> :sswitch_37
        0xf102 -> :sswitch_38
        0xf111 -> :sswitch_15
        0xf112 -> :sswitch_17
        0xf113 -> :sswitch_18
        0xf114 -> :sswitch_19
        0xf115 -> :sswitch_1a
        0xf116 -> :sswitch_16
        0xf117 -> :sswitch_1b
        0xf118 -> :sswitch_1c
        0xf119 -> :sswitch_1d
        0xf120 -> :sswitch_1e
        0xf123 -> :sswitch_3b
        0xf131 -> :sswitch_39
        0xf141 -> :sswitch_3a
        0xf151 -> :sswitch_4b
        0xf171 -> :sswitch_3c
        0xf181 -> :sswitch_3d
        0xf182 -> :sswitch_3e
        0xf191 -> :sswitch_41
        0xf192 -> :sswitch_42
        0xf193 -> :sswitch_43
        0xf194 -> :sswitch_44
        0xf195 -> :sswitch_40
        0xf196 -> :sswitch_45
        0xf201 -> :sswitch_a
        0xf211 -> :sswitch_3f
        0xf221 -> :sswitch_46
        0xf222 -> :sswitch_47
        0xf223 -> :sswitch_48
        0xf224 -> :sswitch_49
        0xf225 -> :sswitch_4a
        0xf231 -> :sswitch_4c
        0xf241 -> :sswitch_4d
        0xf242 -> :sswitch_4e
        0xf243 -> :sswitch_4f
        0xf251 -> :sswitch_50
    .end sparse-switch
.end method
