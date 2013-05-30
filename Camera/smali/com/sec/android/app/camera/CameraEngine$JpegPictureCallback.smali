.class final Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field private mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 700
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 4
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 708
    const-string v0, "CameraEngine"

    const-string v1, "JpegPictureCallback.onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-TakePicture**EndU["

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

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->mLocation:Landroid/location/Location;

    #calls: Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
    invoke-static {v0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->access$700(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;[BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 732
    :goto_0
    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 721
    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/CameraEngine;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraEngine$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 729
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->setLocation(Landroid/location/Location;)V

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V

    .line 731
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    goto :goto_0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "loc"

    .prologue
    .line 703
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 704
    return-void
.end method
