.class Lcom/android/camera/CameraEngine$2;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraEngine;->doStartPanoramaAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraEngine;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/android/camera/CameraEngine$2;->this$0:Lcom/android/camera/CameraEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1234
    iget-object v0, p0, Lcom/android/camera/CameraEngine$2;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine$2;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->checkCameraStartCondition_Call()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/android/camera/CameraEngine$2;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->startShutterSound(Z)V

    .line 1238
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine$2;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->setOrientationAndSendItToFramework()V

    .line 1239
    iget-object v0, p0, Lcom/android/camera/CameraEngine$2;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pauseAudioPlayback()V

    .line 1240
    iget-object v0, p0, Lcom/android/camera/CameraEngine$2;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->startPanorama(Z)V

    .line 1241
    iget-object v0, p0, Lcom/android/camera/CameraEngine$2;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1242
    return-void

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine$2;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startShutterSound(Z)V

    goto :goto_0
.end method
