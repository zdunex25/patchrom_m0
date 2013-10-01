.class Lcom/android/camera/PanoramaModule$1;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$300(Lcom/android/camera/PanoramaModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$400(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$500(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->showPreviewFrameSync()V

    .line 248
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$400(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mCaptureState:I
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$600(Lcom/android/camera/PanoramaModule;)I

    move-result v0

    if-nez v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$500(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->showPreviewFrame()V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$500(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->alignFrameSync()V

    .line 254
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$700(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->processFrame()V

    goto :goto_0
.end method
