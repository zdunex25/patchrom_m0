.class Lcom/android/camera/VideoModule$SurfaceViewCallback;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceViewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2845
    iput-object p1, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2849
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface changed. width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 2854
    const-string v0, "CAM_VideoModule"

    const-string v1, "Surface created"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/VideoModule;->mSurfaceViewReady:Z
    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->access$2202(Lcom/android/camera/VideoModule;Z)Z

    .line 2856
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2300(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2863
    :cond_0
    :goto_0
    return-void

    .line 2857
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    .line 2858
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$1300(Lcom/android/camera/VideoModule;)Lcom/android/camera/ui/PreviewSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 2859
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v0, :cond_0

    .line 2860
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->startPreview()V
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$800(Lcom/android/camera/VideoModule;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 2867
    const-string v0, "CAM_VideoModule"

    const-string v1, "Surface destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/VideoModule;->mSurfaceViewReady:Z
    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->access$2202(Lcom/android/camera/VideoModule;Z)Z

    .line 2869
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2300(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2874
    :cond_0
    :goto_0
    return-void

    .line 2870
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    .line 2871
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->stopVideoRecording()Z
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1400(Lcom/android/camera/VideoModule;)Z

    .line 2872
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->stopPreview()V
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2400(Lcom/android/camera/VideoModule;)V

    goto :goto_0
.end method
