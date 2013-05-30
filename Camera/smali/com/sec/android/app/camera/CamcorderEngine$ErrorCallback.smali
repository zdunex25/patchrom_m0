.class public final Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;
.super Ljava/lang/Object;
.source "CamcorderEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CamcorderEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ErrorCallback"
.end annotation


# static fields
.field private static final CAMERA_ERROR_MSG_NO_ERROR:I = 0x0

.field private static final CAMERA_ERROR_WRONG_FW:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 6
    .parameter "error"
    .parameter "camera"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    .line 291
    const-string v1, "CamcorderEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCallback.onError ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 333
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, -0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finishOnError(I)V

    goto :goto_0

    .line 298
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    goto :goto_0

    .line 302
    :sswitch_1
    const-string v1, "CamcorderEngine"

    const-string v2, "onError : CAMERA_ERROR_WRONG_FW"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 304
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-boolean v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mInformedAboutFirmwareVersion:Z

    if-nez v1, :cond_2

    const-string v1, "357858010034783"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "004400152020002"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_4

    .line 305
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, -0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finishOnError(I)V

    .line 306
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iput-boolean v4, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mInformedAboutFirmwareVersion:Z

    goto :goto_0

    .line 308
    :cond_4
    const-string v1, "CamcorderEngine"

    const-string v2, "onError : CAMERA_ERROR_WRONG_FW"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    :sswitch_2
    const-string v1, "CamcorderEngine"

    const-string v2, "!!!Camcorder retry!!! - start!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v1

    if-ge v1, v4, :cond_7

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 321
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 322
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 325
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopEngineSync()V

    .line 326
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->doStartEngineAsync()V

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForEngineStartingThread()V

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->doStartPreviewAsync()V

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartPreviewThreadComplete()V

    .line 330
    const-string v1, "CamcorderEngine"

    const-string v2, "!!!Camcorder retry!!! before return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 317
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_1

    .line 296
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
    .end sparse-switch
.end method
