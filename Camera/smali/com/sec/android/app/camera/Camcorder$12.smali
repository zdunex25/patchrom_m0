.class Lcom/android/camera/Camcorder$12;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camcorder;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/android/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 4105
    iput-object p1, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0xbd4

    const/4 v6, 0x0

    .line 4110
    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderSideMenu:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$1400(Lcom/android/camera/Camcorder;)Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4111
    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    new-instance v1, Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v2, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    const/16 v3, 0xbd2

    iget-object v4, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    iget-object v4, v4, Lcom/android/camera/Camcorder;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    iget-object v5, v5, Lcom/android/camera/Camcorder;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;)V

    #setter for: Lcom/android/camera/Camcorder;->mCamcorderSideMenu:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v0, v1}, Lcom/android/camera/Camcorder;->access$1402(Lcom/android/camera/Camcorder;Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;)Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;

    .line 4113
    iget-object v1, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    iget-object v0, v0, Lcom/android/camera/Camcorder;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/glwidget/TwGLCamcorderBaseIndicators;

    #setter for: Lcom/android/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/android/camera/glwidget/TwGLCamcorderBaseIndicators;
    invoke-static {v1, v0}, Lcom/android/camera/Camcorder;->access$2402(Lcom/android/camera/Camcorder;Lcom/android/camera/glwidget/TwGLCamcorderBaseIndicators;)Lcom/android/camera/glwidget/TwGLCamcorderBaseIndicators;

    .line 4114
    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/android/camera/glwidget/TwGLCamcorderBaseIndicators;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$2400(Lcom/android/camera/Camcorder;)Lcom/android/camera/glwidget/TwGLCamcorderBaseIndicators;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4115
    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    new-instance v1, Lcom/android/camera/glwidget/TwGLCamcorderBaseIndicators;

    iget-object v2, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    iget-object v3, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    iget-object v3, v3, Lcom/android/camera/Camcorder;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    iget-object v4, v4, Lcom/android/camera/Camcorder;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/android/camera/glwidget/TwGLCamcorderBaseIndicators;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;)V

    #setter for: Lcom/android/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/android/camera/glwidget/TwGLCamcorderBaseIndicators;
    invoke-static {v0, v1}, Lcom/android/camera/Camcorder;->access$2402(Lcom/android/camera/Camcorder;Lcom/android/camera/glwidget/TwGLCamcorderBaseIndicators;)Lcom/android/camera/glwidget/TwGLCamcorderBaseIndicators;

    .line 4119
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderSideMenu:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$1400(Lcom/android/camera/Camcorder;)Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/android/camera/glwidget/TwGLCamcorderBaseIndicators;
    invoke-static {v1}, Lcom/android/camera/Camcorder;->access$2400(Lcom/android/camera/Camcorder;)Lcom/android/camera/glwidget/TwGLCamcorderBaseIndicators;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;->setChild(Lcom/android/camera/MenuBase;)V

    .line 4121
    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mMainHandler:Lcom/android/camera/Camcorder$MainHandler;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$100(Lcom/android/camera/Camcorder;)Lcom/android/camera/Camcorder$MainHandler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/Camcorder$12$1;

    invoke-direct {v1, p0}, Lcom/android/camera/Camcorder$12$1;-><init>(Lcom/android/camera/Camcorder$12;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camcorder$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 4137
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_CamcorderEnablePromptPopupToSelectRecMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4138
    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getAttachMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4139
    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    iget-object v0, v0, Lcom/android/camera/Camcorder;->mRecordingPopupHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4140
    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    iget-object v0, v0, Lcom/android/camera/Camcorder;->mRecordingPopupHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4143
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderSideMenu:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$1400(Lcom/android/camera/Camcorder;)Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;->moveModeButton()V

    .line 4144
    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/android/camera/Camcorder;->access$2502(Lcom/android/camera/Camcorder;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 4146
    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4147
    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CamcorderEngine;->getSurfaceView()Lcom/android/camera/PreviewFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4148
    iget-object v0, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    iget-object v1, p0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v1}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CamcorderEngine;->getSurfaceView()Lcom/android/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camcorder;->resetFocus(Landroid/view/View;)V

    .line 4151
    :cond_3
    return-void
.end method
