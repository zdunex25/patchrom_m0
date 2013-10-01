.class Lcom/android/camera/PanoramaModule$3;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/camera/MosaicFrameProcessor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaModule;->startCapture()V
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
    .line 500
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(ZFFFF)V
    .locals 6
    .parameter "isFinished"
    .parameter "panningRateX"
    .parameter "panningRateY"
    .parameter "progressX"
    .parameter "progressY"

    .prologue
    const/high16 v5, 0x4320

    .line 504
    iget-object v4, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mHorizontalViewAngle:F
    invoke-static {v4}, Lcom/android/camera/PanoramaModule;->access$1600(Lcom/android/camera/PanoramaModule;)F

    move-result v4

    mul-float v0, p4, v4

    .line 505
    .local v0, accumulatedHorizontalAngle:F
    iget-object v4, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mVerticalViewAngle:F
    invoke-static {v4}, Lcom/android/camera/PanoramaModule;->access$1700(Lcom/android/camera/PanoramaModule;)F

    move-result v4

    mul-float v1, p5, v4

    .line 506
    .local v1, accumulatedVerticalAngle:F
    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 509
    :cond_0
    iget-object v4, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    const/4 v5, 0x0

    #calls: Lcom/android/camera/PanoramaModule;->stopCapture(Z)V
    invoke-static {v4, v5}, Lcom/android/camera/PanoramaModule;->access$1800(Lcom/android/camera/PanoramaModule;Z)V

    .line 516
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v4, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mHorizontalViewAngle:F
    invoke-static {v4}, Lcom/android/camera/PanoramaModule;->access$1600(Lcom/android/camera/PanoramaModule;)F

    move-result v4

    mul-float v2, p2, v4

    .line 512
    .local v2, panningRateXInDegree:F
    iget-object v4, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mVerticalViewAngle:F
    invoke-static {v4}, Lcom/android/camera/PanoramaModule;->access$1700(Lcom/android/camera/PanoramaModule;)F

    move-result v4

    mul-float v3, p3, v4

    .line 513
    .local v3, panningRateYInDegree:F
    iget-object v4, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->updateProgress(FFFF)V
    invoke-static {v4, v2, v3, v0, v1}, Lcom/android/camera/PanoramaModule;->access$1900(Lcom/android/camera/PanoramaModule;FFFF)V

    goto :goto_0
.end method
