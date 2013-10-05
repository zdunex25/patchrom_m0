.class final Lcom/android/camera/CameraEngine$FaceDetectionCallback;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FaceDetectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraEngine;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 791
    iput-object p1, p0, Lcom/android/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/android/camera/CameraEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CameraEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 791
    invoke-direct {p0, p1}, Lcom/android/camera/CameraEngine$FaceDetectionCallback;-><init>(Lcom/android/camera/CameraEngine;)V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Lcom/sec/android/seccamera/SecCamera$Face;Lcom/sec/android/seccamera/SecCamera;)V
    .locals 2
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mOnFacePositionChangedListener:Lcom/android/camera/CameraEngine$OnFacePositionChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mOnFacePositionChangedListener:Lcom/android/camera/CameraEngine$OnFacePositionChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mOnFacePositionChangedListener:Lcom/android/camera/CameraEngine$OnFacePositionChangedListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_4

    .line 797
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCheckingFace:I
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$1000(Lcom/android/camera/CameraEngine;)I

    move-result v0

    if-nez v0, :cond_3

    .line 798
    iget-object v0, p0, Lcom/android/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mOnFacePositionChangedListener:Lcom/android/camera/CameraEngine$OnFacePositionChangedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraEngine$OnFacePositionChangedListener;->onFacePositionChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V

    .line 801
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, p0, Lcom/android/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCheckingFace:I
    invoke-static {v1}, Lcom/android/camera/CameraEngine;->access$1000(Lcom/android/camera/CameraEngine;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x3

    #setter for: Lcom/android/camera/CameraEngine;->mCheckingFace:I
    invoke-static {v0, v1}, Lcom/android/camera/CameraEngine;->access$1002(Lcom/android/camera/CameraEngine;I)I

    .line 804
    :cond_4
    return-void
.end method
