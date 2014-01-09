.class final Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;
.super Ljava/lang/Object;
.source "CamcorderEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CamcorderEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CamcorderEngine;Lcom/sec/android/app/camera/CamcorderEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1589
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 7
    .parameter "afMsg"
    .parameter "camera"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1591
    const-string v0, "CamcorderEngine"

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

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget v2, v2, Lcom/sec/android/app/camera/CamcorderEngine;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isActivityDestoying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1652
    :cond_0
    :goto_0
    return-void

    .line 1596
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 1599
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    #getter for: Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->access$700(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->closeCamcorder()V

    goto :goto_0

    .line 1606
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->isCAFDisabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1607
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->hideFocusIndicator()V

    goto :goto_0

    .line 1611
    :cond_3
    if-ne p1, v5, :cond_4

    .line 1612
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iput v3, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mFocusState:I

    .line 1613
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->resetPosIndicator()V

    .line 1614
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->shrinkFocusRect()V

    goto :goto_0

    .line 1618
    :cond_4
    if-ne p1, v6, :cond_5

    .line 1619
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->resetPosIndicator()V

    goto :goto_0

    .line 1623
    :cond_5
    if-ne p1, v3, :cond_9

    .line 1624
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iput v4, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mFocusState:I

    .line 1625
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1627
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playFocusSound(I)V

    .line 1629
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 1641
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1643
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1645
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/app/camera/CameraEngine$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1648
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    #getter for: Lcom/sec/android/app/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->access$900(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1630
    :cond_9
    if-ne p1, v4, :cond_a

    .line 1631
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iput v6, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mFocusState:I

    goto :goto_1

    .line 1632
    :cond_a
    if-nez p1, :cond_7

    .line 1633
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iput v5, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mFocusState:I

    .line 1634
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1636
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playFocusSound(I)V

    .line 1638
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    goto :goto_1
.end method
