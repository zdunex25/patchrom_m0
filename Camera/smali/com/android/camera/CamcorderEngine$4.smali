.class Lcom/android/camera/CamcorderEngine$4;
.super Ljava/lang/Object;
.source "CamcorderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CamcorderEngine;->doStartVideoRecordingAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CamcorderEngine;


# direct methods
.method constructor <init>(Lcom/android/camera/CamcorderEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x4

    .line 1042
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    #getter for: Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v2}, Lcom/android/camera/CamcorderEngine;->access$300(Lcom/android/camera/CamcorderEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1043
    const-string v2, "CamcorderEngine"

    const-string v3, "SecMediaRecorder is not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    iget-object v2, v2, Lcom/android/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/android/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v2, v6}, Lcom/android/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 1078
    :goto_0
    return-void

    .line 1048
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z
    invoke-static {v2, v3}, Lcom/android/camera/CamcorderEngine;->access$402(Lcom/android/camera/CamcorderEngine;Z)Z

    .line 1049
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    #calls: Lcom/android/camera/CamcorderEngine;->disableAlertSound()V
    invoke-static {v2}, Lcom/android/camera/CamcorderEngine;->access$500(Lcom/android/camera/CamcorderEngine;)V

    .line 1051
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    #getter for: Lcom/android/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/CamcorderEngine;->access$600(Lcom/android/camera/CamcorderEngine;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1054
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    iget-object v2, v2, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camcorder;

    invoke-virtual {v2}, Lcom/android/camera/Camcorder;->resetIndicatorTimerDrift()V

    .line 1055
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    #getter for: Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v2}, Lcom/android/camera/CamcorderEngine;->access$300(Lcom/android/camera/CamcorderEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.CpuGovernorService.action.IOBUSY_VOTE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    .local v1, ioBusyVoteIntent:Landroid/content/Intent;
    const-string v2, "com.android.server.CpuGovernorService.voteType"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1070
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    iget-object v2, v2, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1072
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    iget-object v2, v2, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.chaton.util.ACTION_VIDEO_RECORDING_START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1073
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    #calls: Lcom/android/camera/CamcorderEngine;->setSystemSoundEffect()V
    invoke-static {v2}, Lcom/android/camera/CamcorderEngine;->access$700(Lcom/android/camera/CamcorderEngine;)V

    .line 1074
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/android/camera/CamcorderEngine;->getSystemSoundEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1075
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/android/camera/CamcorderEngine;->disableSystemSoundEffect()V

    .line 1077
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    iget-object v2, v2, Lcom/android/camera/CamcorderEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1056
    .end local v1           #ioBusyVoteIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1057
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CamcorderEngine"

    const-string v3, "Could not start media recorder. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1058
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/android/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1060
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/android/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 1061
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/android/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1063
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine$4;->this$0:Lcom/android/camera/CamcorderEngine;

    iget-object v2, v2, Lcom/android/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/android/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v2, v6}, Lcom/android/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
