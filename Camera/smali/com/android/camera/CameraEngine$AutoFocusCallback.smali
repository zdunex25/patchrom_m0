.class final Lcom/android/camera/CameraEngine$AutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraEngine;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CameraEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 807
    invoke-direct {p0, p1}, Lcom/android/camera/CameraEngine$AutoFocusCallback;-><init>(Lcom/android/camera/CameraEngine;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 9
    .parameter "afMsg"
    .parameter "camera"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 809
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoFocusCallback.onAutoFocus : msg["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] focusState["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget v2, v2, Lcom/android/camera/CameraEngine;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-Autofocus**EndU["

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

    .line 813
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 816
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/android/camera/CeRequestQueue;->firstElement()Lcom/android/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/android/camera/CeRequestQueue;->firstElement()Lcom/android/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CeRequest;->getRequest()I

    move-result v0

    if-ne v0, v8, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->closeCamera()V

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    if-ne p1, v7, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isBurstCapturing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 825
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iput v5, v0, Lcom/android/camera/CameraEngine;->mFocusState:I

    .line 826
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->stopAFHideRectTimer()V

    .line 827
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->resetPosIndicator()V

    .line 828
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->shrinkFocusRect()V

    goto :goto_0

    .line 834
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 835
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iput v8, v0, Lcom/android/camera/CameraEngine;->mFocusState:I

    .line 836
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->resetPosIndicator()V

    goto :goto_0

    .line 859
    :cond_3
    if-ne p1, v5, :cond_9

    .line 860
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 861
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 862
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_4

    .line 863
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/AbstractCameraActivity;->playCameraSound(II)V

    .line 872
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget v0, v0, Lcom/android/camera/CameraEngine;->mFocusState:I

    if-eq v0, v4, :cond_5

    .line 873
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iput v4, v0, Lcom/android/camera/CameraEngine;->mFocusState:I

    .line 874
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->updateFocusIndicator()V

    .line 896
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 897
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mMainHandler:Lcom/android/camera/CameraEngine$MainHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/camera/CameraEngine$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 900
    :cond_6
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0, v8}, Lcom/android/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 901
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 902
    :cond_7
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 867
    :cond_8
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/AbstractCameraActivity;->playCameraSound(II)V

    goto :goto_1

    .line 876
    :cond_9
    if-ne p1, v4, :cond_a

    .line 877
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/camera/CameraEngine;->mFocusState:I

    goto :goto_2

    .line 878
    :cond_a
    if-nez p1, :cond_5

    .line 879
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 880
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 881
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_b

    .line 882
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v4, v6}, Lcom/android/camera/AbstractCameraActivity;->playCameraSound(II)V

    .line 890
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget v0, v0, Lcom/android/camera/CameraEngine;->mFocusState:I

    if-eq v0, v7, :cond_5

    .line 891
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iput v7, v0, Lcom/android/camera/CameraEngine;->mFocusState:I

    .line 892
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->updateFocusIndicator()V

    goto/16 :goto_2

    .line 885
    :cond_c
    iget-object v0, p0, Lcom/android/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v4, v6}, Lcom/android/camera/AbstractCameraActivity;->playCameraSound(II)V

    goto :goto_3
.end method
