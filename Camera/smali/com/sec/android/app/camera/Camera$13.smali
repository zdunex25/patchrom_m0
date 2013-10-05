.class Lcom/android/camera/Camera$13;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 6091
    iput-object p1, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x29

    const/4 v5, 0x0

    .line 6093
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SideMenu-loading**StartU["

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

    .line 6097
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6098
    iget-object v1, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    #setter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v1, v0}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;Lcom/android/camera/glwidget/TwGLCameraSideMenu;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    .line 6099
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6100
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    iget-object v2, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    iget-object v4, v4, Lcom/android/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;)V

    #setter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;Lcom/android/camera/glwidget/TwGLCameraSideMenu;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    .line 6103
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    #setter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1, v0}, Lcom/android/camera/Camera;->access$002(Lcom/android/camera/Camera;Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    .line 6104
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6105
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    iget-object v2, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    iget-object v4, v4, Lcom/android/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;)V

    #setter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$002(Lcom/android/camera/Camera;Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    .line 6108
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->setChild(Lcom/android/camera/MenuBase;)V

    .line 6110
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Lcom/android/camera/Camera$MainHandler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$400(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$MainHandler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/Camera$13$1;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$13$1;-><init>(Lcom/android/camera/Camera$13;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 6134
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->moveModeButton()V

    .line 6135
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$2302(Lcom/android/camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 6137
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6138
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->getSurfaceView()Lcom/android/camera/PreviewFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6139
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine;->getSurfaceView()Lcom/android/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->resetFocus(Landroid/view/View;)V

    .line 6143
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isVoiceInputSettingOn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6145
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 6146
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->showHelpText()V

    .line 6149
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6151
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;->showVoiceInputIndicator(I)V

    .line 6152
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceStatus(I)V

    .line 6160
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_6

    .line 6161
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 6163
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    const v1, 0x7f0900da

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(I)V

    .line 6164
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;->showHelpText()V

    .line 6167
    :cond_6
    return-void

    .line 6155
    :cond_7
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_5

    .line 6156
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->hideHelpText()V

    goto :goto_0
.end method
