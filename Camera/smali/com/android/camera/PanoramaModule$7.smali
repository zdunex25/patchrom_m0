.class Lcom/android/camera/PanoramaModule$7;
.super Ljava/lang/Thread;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaModule;->reportProgress()V
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
    .line 710
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$7;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 713
    :goto_0
    iget-object v2, p0, Lcom/android/camera/PanoramaModule$7;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mThreadRunning:Z
    invoke-static {v2}, Lcom/android/camera/PanoramaModule;->access$2400(Lcom/android/camera/PanoramaModule;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    iget-object v2, p0, Lcom/android/camera/PanoramaModule$7;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v2}, Lcom/android/camera/PanoramaModule;->access$700(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/PanoramaModule$7;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mCancelComputation:Z
    invoke-static {v4}, Lcom/android/camera/PanoramaModule;->access$2500(Lcom/android/camera/PanoramaModule;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/MosaicFrameProcessor;->reportProgress(ZZ)I

    move-result v1

    .line 718
    .local v1, progress:I
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PanoramaModule$7;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/camera/PanoramaModule;->access$2600(Lcom/android/camera/PanoramaModule;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/PanoramaModule$7;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/camera/PanoramaModule;->access$2600(Lcom/android/camera/PanoramaModule;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 720
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    iget-object v2, p0, Lcom/android/camera/PanoramaModule$7;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PanoramaModule;->access$100(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    new-instance v3, Lcom/android/camera/PanoramaModule$7$1;

    invoke-direct {v3, p0, v1}, Lcom/android/camera/PanoramaModule$7$1;-><init>(Lcom/android/camera/PanoramaModule$7;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 720
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Panorama reportProgress failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 732
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #progress:I
    :cond_0
    return-void
.end method
