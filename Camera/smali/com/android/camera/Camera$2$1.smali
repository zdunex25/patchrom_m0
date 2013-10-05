.class Lcom/android/camera/Camera$2$1;
.super Ljava/util/TimerTask;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/Camera$2;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 836
    iput-object p1, p0, Lcom/android/camera/Camera$2$1;->this$1:Lcom/android/camera/Camera$2;

    iput-object p2, p0, Lcom/android/camera/Camera$2$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/camera/Camera$2$1;->this$1:Lcom/android/camera/Camera$2;

    iget-object v0, v0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/camera/Camera$2$1;->this$1:Lcom/android/camera/Camera$2;

    iget-object v0, v0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$2$1;->this$1:Lcom/android/camera/Camera$2;

    iget-object v0, v0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/camera/Camera$2$1;->this$1:Lcom/android/camera/Camera$2;

    iget-object v0, v0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$2$1;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton(Ljava/lang/String;)V

    .line 844
    :cond_0
    return-void
.end method
