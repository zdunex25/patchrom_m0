.class final Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FaceDetectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 721
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Lcom/sec/android/seccamera/SecCamera$Face;Lcom/sec/android/seccamera/SecCamera;)V
    .locals 5
    .parameter "faces"
    .parameter "camera"

    .prologue
    const/4 v4, 0x1

    .line 723
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFacePositionChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFacePositionChangedListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 725
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCheckingFace:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$900(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v1

    if-nez v1, :cond_4

    .line 726
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFacePositionChangedListener;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/CameraEngine$OnFacePositionChangedListener;->onFacePositionChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V

    .line 728
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #calls: Lcom/sec/android/app/camera/CameraEngine;->isScreenReaderActive()Z
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$1000(Lcom/sec/android/app/camera/CameraEngine;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 729
    if-eqz p1, :cond_3

    .line 730
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mFaceCount:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$1100(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v1

    array-length v2, p1

    if-eq v1, v2, :cond_2

    array-length v1, p1

    if-lt v1, v4, :cond_2

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09015b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v4, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 739
    .end local v0           #text:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    array-length v2, p1

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->mFaceCount:I
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->access$1102(Lcom/sec/android/app/camera/CameraEngine;I)I

    .line 743
    :cond_3
    if-eqz p1, :cond_4

    .line 744
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    array-length v2, p1

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->mCurFaceCount:I
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->access$1202(Lcom/sec/android/app/camera/CameraEngine;I)I

    .line 747
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCheckingFace:I
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraEngine;->access$900(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x3

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->mCheckingFace:I
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->access$902(Lcom/sec/android/app/camera/CameraEngine;I)I

    .line 749
    :cond_5
    return-void
.end method
