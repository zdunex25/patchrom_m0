.class final Lcom/android/camera/CameraEngine$ShutterCallback;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraEngine;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/camera/CameraEngine$ShutterCallback;->this$0:Lcom/android/camera/CameraEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CameraEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/camera/CameraEngine$ShutterCallback;-><init>(Lcom/android/camera/CameraEngine;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 7

    .prologue
    const/16 v6, 0x17

    const/4 v5, 0x7

    const/4 v4, 0x1

    .line 696
    const-string v0, "CameraEngine"

    const-string v1, "ShutterCallback.onShutter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-ShutterCallback**Point["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShutterCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShutterCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v6, :cond_2

    .line 707
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShutterCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->startBlinkShutterAnimation()V

    .line 709
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShutterCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 710
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShutterCallback;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->getShutterSoundEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShutterCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-nez v0, :cond_5

    .line 711
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShutterCallback;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    .line 716
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShutterCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShutterCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 718
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShutterCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->showWaitingAnimation()V

    .line 719
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShutterCallback;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraEngine;->setWaitingAnimation(Z)V

    goto :goto_0

    .line 713
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShutterCallback;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    goto :goto_1
.end method
