.class Lcom/sec/android/app/camera/Camera$7;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 4773
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x29

    .line 4775
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

    .line 4776
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4777
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    #setter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/Camera;->access$702(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 4778
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4779
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    #setter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$702(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 4782
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    #setter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/Camera;->access$002(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 4783
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4784
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    #setter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$002(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 4787
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 4789
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/Camera$7$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$7$1;-><init>(Lcom/sec/android/app/camera/Camera$7;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 4810
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->moveModeButton()V

    .line 4811
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$2002(Lcom/sec/android/app/camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 4813
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4814
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4815
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->resetFocus(Landroid/view/View;)V

    .line 4818
    :cond_3
    return-void
.end method
