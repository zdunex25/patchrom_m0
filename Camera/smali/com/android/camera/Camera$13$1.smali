.class Lcom/android/camera/Camera$13$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/Camera$13;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera$13;)V
    .locals 0
    .parameter

    .prologue
    .line 6110
    iput-object p1, p0, Lcom/android/camera/Camera$13$1;->this$1:Lcom/android/camera/Camera$13;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6113
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$13$1;->this$1:Lcom/android/camera/Camera$13;

    iget-object v0, v0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->showMenu()V

    .line 6114
    iget-object v0, p0, Lcom/android/camera/Camera$13$1;->this$1:Lcom/android/camera/Camera$13;

    iget-object v0, v0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$13$1;->this$1:Lcom/android/camera/Camera$13;

    iget-object v2, v2, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6115
    iget-object v0, p0, Lcom/android/camera/Camera$13$1;->this$1:Lcom/android/camera/Camera$13;

    iget-object v0, v0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$13$1;->this$1:Lcom/android/camera/Camera$13;

    iget-object v2, v2, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6116
    iget-object v0, p0, Lcom/android/camera/Camera$13$1;->this$1:Lcom/android/camera/Camera$13;

    iget-object v0, v0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/Camera;->setImmutableView(Lcom/android/camera/MenuBase;)V
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;Lcom/android/camera/MenuBase;)V

    .line 6117
    iget-object v0, p0, Lcom/android/camera/Camera$13$1;->this$1:Lcom/android/camera/Camera$13;

    iget-object v0, v0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$13$1;->this$1:Lcom/android/camera/Camera$13;

    iget-object v0, v0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6118
    iget-object v0, p0, Lcom/android/camera/Camera$13$1;->this$1:Lcom/android/camera/Camera$13;

    iget-object v0, v0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V

    .line 6120
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$13$1;->this$1:Lcom/android/camera/Camera$13;

    iget-object v0, v0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getSecureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6121
    iget-object v0, p0, Lcom/android/camera/Camera$13$1;->this$1:Lcom/android/camera/Camera$13;

    iget-object v0, v0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6126
    :cond_1
    :goto_0
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SideMenu-loading**EndU["

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

    .line 6128
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total-CameraUILoading(TSP)**EndU["

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

    .line 6130
    iget-object v0, p0, Lcom/android/camera/Camera$13$1;->this$1:Lcom/android/camera/Camera$13;

    iget-object v0, v0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->wakeupToSnSMod()V

    .line 6131
    return-void

    .line 6123
    :catch_0
    move-exception v0

    goto :goto_0
.end method
