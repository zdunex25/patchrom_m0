.class Lcom/android/camera/PanoramaModule$WaitProcessorTask;
.super Landroid/os/AsyncTask;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitProcessorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PanoramaModule;Lcom/android/camera/PanoramaModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1165
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaModule$WaitProcessorTask;-><init>(Lcom/android/camera/PanoramaModule;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1165
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$700(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v1

    monitor-enter v1

    .line 1169
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$700(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$700(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1172
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1176
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 1177
    const/4 v0, 0x0

    return-object v0

    .line 1176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1165
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 1182
    iget-object v2, p0, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaModule;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;
    invoke-static {v2, v3}, Lcom/android/camera/PanoramaModule;->access$3202(Lcom/android/camera/PanoramaModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 1183
    iget-object v2, p0, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v2}, Lcom/android/camera/PanoramaModule;->access$1400(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/RotateDialogController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1184
    iget-object v2, p0, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v2}, Lcom/android/camera/PanoramaModule;->access$400(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1185
    iget-object v2, p0, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V
    invoke-static {v2}, Lcom/android/camera/PanoramaModule;->access$3300(Lcom/android/camera/PanoramaModule;)V

    .line 1186
    iget-object v2, p0, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;
    invoke-static {v2}, Lcom/android/camera/PanoramaModule;->access$3400(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/ui/LayoutNotifyView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/LayoutNotifyView;->getWidth()I

    move-result v1

    .line 1187
    .local v1, w:I
    iget-object v2, p0, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;
    invoke-static {v2}, Lcom/android/camera/PanoramaModule;->access$3400(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/ui/LayoutNotifyView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/LayoutNotifyView;->getHeight()I

    move-result v0

    .line 1188
    .local v0, h:I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1189
    iget-object v2, p0, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->configMosaicPreview(II)V
    invoke-static {v2, v1, v0}, Lcom/android/camera/PanoramaModule;->access$3500(Lcom/android/camera/PanoramaModule;II)V

    .line 1191
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->resetToPreview()V
    invoke-static {v2}, Lcom/android/camera/PanoramaModule;->access$1000(Lcom/android/camera/PanoramaModule;)V

    .line 1192
    return-void
.end method
