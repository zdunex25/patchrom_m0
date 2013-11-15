.class public Lcom/android/camera/PanoramaModule;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/LayoutChangeNotifier$Listener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoramaModule$WaitProcessorTask;,
        Lcom/android/camera/PanoramaModule$FlipBitmapDrawable;,
        Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;,
        Lcom/android/camera/PanoramaModule$MosaicJpeg;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraOrientation:I

.field private mCameraState:I

.field private mCameraTexture:Landroid/graphics/SurfaceTexture;

.field private mCancelComputation:Z

.field private mCaptureIndicator:Landroid/view/View;

.field private mCaptureLayout:Landroid/widget/LinearLayout;

.field private mCaptureState:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDateTimeStampFormat:Ljava/text/DateFormat;

.field private mDeviceOrientation:I

.field private mDeviceOrientationAtCapture:I

.field private mDialogOkString:Ljava/lang/String;

.field private mDialogPanoramaFailedString:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mDialogWaitingPreviousString:Ljava/lang/String;

.field private mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

.field private mGPSDateStampFormat:Ljava/text/DateFormat;

.field private mGPSTimeStampFormat:Ljava/text/DateFormat;

.field private mHorizontalViewAngle:F

.field private mIndicatorColor:I

.field private mIndicatorColorFast:I

.field private mLeftIndicator:Landroid/view/View;

.field private mMainHandler:Landroid/os/Handler;

.field private mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

.field private mMosaicFrameProcessorInitialized:Z

.field private mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

.field private mOnFrameAvailableRunnable:Ljava/lang/Runnable;

.field private mOrientationCompensation:I

.field private mOrientationEventListener:Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;

.field private mPanoLayout:Landroid/view/ViewGroup;

.field private mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPaused:Z

.field private mPreparePreviewString:Ljava/lang/String;

.field private mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressAngle:[F

.field private mProgressDirectionMatrix:Landroid/graphics/Matrix;

.field private mReview:Landroid/widget/ImageView;

.field private mReviewLayout:Landroid/view/View;

.field private mRightIndicator:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSoundPlayer:Lcom/android/camera/SoundClips$Player;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mThreadRunning:Z

.field private mTimeTaken:J

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mUsingFrontCamera:Z

.field private mVerticalViewAngle:F

.field private mWaitObject:Ljava/lang/Object;

.field private mWaitProcessorTask:Landroid/os/AsyncTask;
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
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    .line 159
    const-string v0, "infinity"

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    .line 1165
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PanoramaModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/PanoramaModule;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->resetToPreview()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mDialogOkString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/PanoramaModule;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/PanoramaModule;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/PanoramaModule;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaModule;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/PanoramaModule;FFFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/PanoramaModule;->updateProgress(FFFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/PanoramaModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/PanoramaModule;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/PanoramaModule;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/camera/PanoramaModule;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/PanoramaModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaModule;->showDirectionIndicators(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/PanoramaModule;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->cancelHighResComputation()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/PanoramaModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/PanoramaModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mCancelComputation:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/PanoramaModule;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/PanoProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/PanoramaModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->getCaptureOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/PanoramaModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/PanoramaModule;[BIII)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/PanoramaModule;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/camera/PanoramaModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/ui/LayoutNotifyView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/PanoramaModule;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PanoramaModule;->configMosaicPreview(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/PanoramaModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->onBackgroundThreadFinished()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/PanoramaModule;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaModule;->showFinalMosaic(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private cancelHighResComputation()V
    .locals 2

    .prologue
    .line 797
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mCancelComputation:Z

    .line 798
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 800
    monitor-exit v1

    .line 801
    return-void

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearMosaicFrameProcessorIfNeeded()V
    .locals 1

    .prologue
    .line 910
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->clear()V

    .line 915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private configMosaicPreview(II)V
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->stopCameraPreview()V

    .line 428
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v2, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/camera/CameraScreenNail;

    .line 429
    .local v1, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 430
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-nez v2, :cond_2

    .line 431
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 437
    :goto_0
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    .line 439
    .local v0, isLandscape:Z
    :goto_1
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v2}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 440
    :cond_0
    new-instance v2, Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-direct {v2, v3, p1, p2, v0}, Lcom/android/camera/MosaicPreviewRenderer;-><init>(Landroid/graphics/SurfaceTexture;IIZ)V

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 443
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v2}, Lcom/android/camera/MosaicPreviewRenderer;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 444
    iget-boolean v2, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-nez v2, :cond_1

    .line 445
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->resetToPreview()V

    .line 447
    :cond_1
    return-void

    .line 433
    .end local v0           #isLandscape:Z
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 434
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 435
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    goto :goto_0

    .line 437
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 424
    return-void
.end method

.method private createContentView()V
    .locals 4

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040023

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 675
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 676
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v2, 0x7f10006f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    .line 677
    const v0, 0x7f0b000c

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mIndicatorColor:I

    .line 678
    const v0, 0x7f0b000d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mIndicatorColorFast:I

    .line 679
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v2, 0x7f100077

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoLayout:Landroid/view/ViewGroup;

    .line 680
    new-instance v0, Lcom/android/camera/RotateDialogController;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f04003f

    invoke-direct {v0, v2, v3}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 681
    invoke-direct {p0, v1}, Lcom/android/camera/PanoramaModule;->setViews(Landroid/content/res/Resources;)V

    .line 682
    return-void
.end method

.method private findBestPreviewSize(Ljava/util/List;ZZ)Z
    .locals 9
    .parameter
    .parameter "need4To3"
    .parameter "needSmaller"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v4, 0xa8c00

    .line 358
    .local v4, pixelsDiff:I
    const/4 v2, 0x0

    .line 359
    .local v2, hasFound:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 360
    .local v5, size:Landroid/hardware/Camera$Size;
    iget v1, v5, Landroid/hardware/Camera$Size;->height:I

    .line 361
    .local v1, h:I
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    .line 363
    .local v6, w:I
    const v7, 0xa8c00

    mul-int v8, v1, v6

    sub-int v0, v7, v8

    .line 364
    .local v0, d:I
    if-eqz p3, :cond_1

    if-ltz v0, :cond_0

    .line 367
    :cond_1
    if-eqz p2, :cond_2

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v8, v6, 0x3

    if-ne v7, v8, :cond_0

    .line 370
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 371
    if-ge v0, v4, :cond_0

    .line 372
    iput v6, p0, Lcom/android/camera/PanoramaModule;->mPreviewWidth:I

    .line 373
    iput v1, p0, Lcom/android/camera/PanoramaModule;->mPreviewHeight:I

    .line 374
    move v4, v0

    .line 375
    const/4 v2, 0x1

    goto :goto_0

    .line 378
    .end local v0           #d:I
    .end local v1           #h:I
    .end local v5           #size:Landroid/hardware/Camera$Size;
    .end local v6           #w:I
    :cond_3
    return v2
.end method

.method private getCaptureOrientation()I
    .locals 3

    .prologue
    .line 745
    iget-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mUsingFrontCamera:Z

    if-eqz v1, :cond_0

    .line 748
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientationAtCapture:I

    iget v2, p0, Lcom/android/camera/PanoramaModule;->mCameraOrientation:I

    sub-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v0, v1, 0x168

    .line 752
    .local v0, orientation:I
    :goto_0
    return v0

    .line 750
    .end local v0           #orientation:I
    :cond_0
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientationAtCapture:I

    iget v2, p0, Lcom/android/camera/PanoramaModule;->mCameraOrientation:I

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .restart local v0       #orientation:I
    goto :goto_0
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 895
    sparse-switch p0, :sswitch_data_0

    .line 905
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 897
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 903
    :goto_0
    return-object v0

    .line 899
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 901
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 903
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 895
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private hideDirectionIndicators()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 468
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 470
    return-void
.end method

.method private hideTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 585
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/LayoutNotifyView;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 590
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 591
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 592
    return-void
.end method

.method private initMosaicFrameProcessorIfNeeded()V
    .locals 4

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->getPreviewBufSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/MosaicFrameProcessor;->initialize(III)V

    .line 923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1162
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1163
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1155
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1156
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1157
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1158
    return-void
.end method

.method private onBackgroundThreadFinished()V
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    .line 793
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 794
    return-void
.end method

.method private openCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 349
    .local v0, cameraId:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1, v0}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 351
    invoke-static {v0}, Lcom/android/camera/Util;->getCameraOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PanoramaModule;->mCameraOrientation:I

    .line 352
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mUsingFrontCamera:Z

    .line 353
    :cond_1
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 337
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 338
    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    .line 341
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 805
    iput v2, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    .line 807
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 812
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 813
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 814
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 820
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->reset()V

    .line 823
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1151
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1152
    return-void
.end method

.method private resetToPreview()V
    .locals 1

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->reset()V

    .line 827
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->startCameraPreview()V

    .line 828
    :cond_0
    return-void
.end method

.method private runBackgroundThread(Ljava/lang/Thread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 787
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    .line 788
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 789
    return-void
.end method

.method private savePanorama([BIII)Landroid/net/Uri;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 866
    if-eqz p1, :cond_0

    .line 867
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    invoke-static {v0, v1, v2}, Lcom/android/camera/PanoUtil;->createName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 869
    invoke-static {}, Lcom/android/camera/Storage;->getStorage()Lcom/android/camera/Storage;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v8

    .line 873
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v8}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 874
    const-string v1, "GPSDateStamp"

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mGPSDateStampFormat:Ljava/text/DateFormat;

    iget-wide v6, p0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v1, "GPSTimeStamp"

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    iget-wide v6, p0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v1, "DateTime"

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mDateTimeStampFormat:Ljava/text/DateFormat;

    iget-wide v6, p0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v1, "Orientation"

    invoke-static {p4}, Lcom/android/camera/PanoramaModule;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v7, v0

    .line 888
    invoke-static {}, Lcom/android/camera/Storage;->getStorage()Lcom/android/camera/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v3, p0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    move v6, p4

    move v9, p2

    move v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;II)Landroid/net/Uri;

    move-result-object v5

    .line 891
    :cond_0
    return-object v5

    .line 883
    :catch_0
    move-exception v0

    .line 884
    const-string v1, "CAM PanoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot set EXIF for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setViews(Landroid/content/res/Resources;)V
    .locals 6
    .parameter "appRes"

    .prologue
    const v5, 0x7f0b000a

    const/4 v4, 0x0

    .line 619
    iput v4, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    .line 620
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f10009a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PanoProgressBar;

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 621
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 622
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const v3, 0x7f0b000b

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 623
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v3, p0, Lcom/android/camera/PanoramaModule;->mIndicatorColor:I

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 624
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    new-instance v3, Lcom/android/camera/PanoramaModule$5;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaModule$5;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V

    .line 634
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f10009b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    .line 635
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f10009c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    .line 636
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 637
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 638
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f10009e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    .line 640
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f100098

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/LayoutNotifyView;

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    .line 641
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/LayoutNotifyView;->setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 643
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f100073

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PanoProgressBar;

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 644
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 645
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 646
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 647
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const v3, 0x7f0b000c

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 649
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f100097

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mCaptureIndicator:Landroid/view/View;

    .line 651
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f100070

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    .line 652
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f100071

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    .line 653
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f100074

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 654
    .local v0, cancelButton:Landroid/view/View;
    new-instance v2, Lcom/android/camera/PanoramaModule$6;

    invoke-direct {v2, p0}, Lcom/android/camera/PanoramaModule$6;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 663
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v3, 0x7f020017

    invoke-virtual {v2, v3}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 664
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 666
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 668
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f100075

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/Rotatable;

    .line 669
    .local v1, view:Lcom/android/camera/ui/Rotatable;
    const/16 v2, 0x10e

    invoke-interface {v1, v2, v4}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 671
    .end local v1           #view:Lcom/android/camera/ui/Rotatable;
    :cond_0
    return-void
.end method

.method private setupCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->openCamera()V

    .line 329
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 330
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->setupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    .line 331
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 332
    return-void
.end method

.method private setupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .parameter "parameters"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 382
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 383
    .local v5, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v5, v10, v10}, Lcom/android/camera/PanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 384
    const-string v6, "CAM PanoModule"

    const-string v7, "No 4:3 ratio preview size supported."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-direct {p0, v5, v9, v10}, Lcom/android/camera/PanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 386
    const-string v6, "CAM PanoModule"

    const-string v7, "Can\'t find a supported preview size smaller than 960x720."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0, v5, v9, v9}, Lcom/android/camera/PanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    .line 390
    :cond_0
    const-string v6, "CAM PanoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/PanoramaModule;->mPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget v6, p0, Lcom/android/camera/PanoramaModule;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 393
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 394
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 395
    .local v1, last:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v3, v6, v9

    .line 396
    .local v3, minFps:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v2, v6, v10

    .line 397
    .local v2, maxFps:I
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 398
    const-string v6, "CAM PanoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview fps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 401
    .local v4, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/camera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 402
    iget-object v6, p0, Lcom/android/camera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 409
    :goto_0
    const-string v6, "recording-hint"

    const-string v7, "false"

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/camera/PanoramaModule;->mHorizontalViewAngle:F

    .line 412
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/camera/PanoramaModule;->mVerticalViewAngle:F

    .line 413
    return-void

    .line 405
    :cond_1
    const-string v6, "CAM PanoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot set the focus mode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " becuase the mode is not supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDirectionIndicators(I)V
    .locals 3
    .parameter "direction"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 473
    packed-switch p1, :pswitch_data_0

    .line 487
    :goto_0
    return-void

    .line 475
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 479
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 483
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showFinalMosaic(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/16 v4, 0x8

    .line 849
    if-eqz p1, :cond_0

    .line 850
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->getCaptureOrientation()I

    move-result v0

    .line 851
    .local v0, orientation:I
    const/16 v1, 0xb4

    if-lt v0, v1, :cond_1

    .line 853
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/camera/PanoramaModule$FlipBitmapDrawable;

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/android/camera/PanoramaModule$FlipBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 860
    .end local v0           #orientation:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 861
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 862
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 863
    return-void

    .line 856
    .restart local v0       #orientation:I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private showTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 576
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/LayoutNotifyView;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 580
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 581
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 582
    return-void
.end method

.method private startCameraPreview()V
    .locals 2

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1114
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->stopCameraPreview()V

    .line 1119
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1121
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1122
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1124
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1125
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    goto :goto_0
.end method

.method private stopCameraPreview()V
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1130
    const-string v0, "CAM PanoModule"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1133
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    .line 1134
    return-void
.end method

.method private stopCapture(Z)V
    .locals 3
    .parameter "aborted"

    .prologue
    const/4 v2, 0x0

    .line 540
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    .line 541
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 542
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->hideTooFastIndication()V

    .line 543
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->hideDirectionIndicators()V

    .line 545
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0, v2}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 546
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->stopCameraPreview()V

    .line 548
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 550
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mPreparePreviewString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 555
    new-instance v0, Lcom/android/camera/PanoramaModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaModule$4;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 572
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->keepScreenOnAwhile()V

    .line 573
    return-void
.end method

.method private updateProgress(FFFF)V
    .locals 5
    .parameter "panningRateXInDegree"
    .parameter "panningRateYInDegree"
    .parameter "progressHorizontalAngle"
    .parameter "progressVerticalAngle"

    .prologue
    const/high16 v2, 0x4020

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 596
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V

    .line 598
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 600
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->showTooFastIndication()V

    .line 607
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aput p3, v1, v3

    .line 608
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aput p4, v1, v4

    .line 609
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 611
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aget v1, v1, v3

    float-to-int v0, v1

    .line 615
    .local v0, angleInMajorDirection:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 616
    return-void

    .line 602
    .end local v0           #angleInMajorDirection:I
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->hideTooFastIndication()V

    goto :goto_0

    .line 611
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aget v1, v1, v4

    float-to-int v0, v1

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public generateFinalMosaic(Z)Lcom/android/camera/PanoramaModule$MosaicJpeg;
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1060
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0, p1}, Lcom/android/camera/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v0

    .line 1061
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1096
    :goto_0
    return-object v5

    .line 1063
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1064
    new-instance v5, Lcom/android/camera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaModule;)V

    goto :goto_0

    .line 1067
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->getFinalMosaicNV21()[B

    move-result-object v1

    .line 1068
    if-nez v1, :cond_2

    .line 1069
    const-string v0, "CAM PanoModule"

    const-string v1, "getFinalMosaicNV21() returned null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    new-instance v5, Lcom/android/camera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaModule;)V

    goto :goto_0

    .line 1073
    :cond_2
    array-length v0, v1

    add-int/lit8 v0, v0, -0x8

    .line 1074
    add-int/lit8 v2, v0, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 1076
    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x7

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    .line 1078
    const-string v2, "CAM PanoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", W = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", H = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 1082
    :cond_3
    const-string v1, "CAM PanoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width|height <= 0!!, len = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", W = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", H = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    new-instance v5, Lcom/android/camera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaModule;)V

    goto/16 :goto_0

    .line 1087
    :cond_4
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1088
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1089
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1091
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    new-instance v5, Lcom/android/camera/PanoramaModule$MosaicJpeg;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v5, p0, v0, v3, v4}, Lcom/android/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaModule;[BII)V

    goto/16 :goto_0

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    const-string v1, "CAM PanoModule"

    const-string v2, "Exception in storing final mosaic"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1094
    new-instance v5, Lcom/android/camera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaModule;)V

    goto/16 :goto_0
.end method

.method public getPreviewBufSize()I
    .locals 3

    .prologue
    .line 416
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 417
    .local v0, pixelInfo:Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 419
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/PanoramaModule;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
    .locals 6
    .parameter "activity"
    .parameter "parent"
    .parameter "reuseScreenNail"

    .prologue
    const/4 v5, 0x1

    .line 226
    iput-object p1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 227
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    iput-object p2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    .line 229
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->createContentView()V

    .line 231
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 232
    if-eqz p3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v5}, Lcom/android/camera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 239
    :goto_0
    new-instance v3, Lcom/android/camera/PanoramaModule$1;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaModule$1;-><init>(Lcom/android/camera/PanoramaModule;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    .line 260
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy:MM:dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 261
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "kk/1,mm/1,ss/1"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    .line 262
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 263
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 264
    .local v2, tzUTC:Ljava/util/TimeZone;
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 265
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 267
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 268
    .local v1, pm:Landroid/os/PowerManager;
    const-string v3, "Panorama"

    invoke-virtual {v1, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 270
    new-instance v3, Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v3, p0, v4}, Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;-><init>(Lcom/android/camera/PanoramaModule;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mOrientationEventListener:Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;

    .line 272
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    .line 274
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 275
    .local v0, appRes:Landroid/content/res/Resources;
    const v3, 0x7f0a00e2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreparePreviewString:Ljava/lang/String;

    .line 276
    const v3, 0x7f0a00e4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mDialogTitle:Ljava/lang/String;

    .line 277
    const v3, 0x7f0a00db

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mDialogOkString:Ljava/lang/String;

    .line 278
    const v3, 0x7f0a00e3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;

    .line 279
    const v3, 0x7f0a00e6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mDialogWaitingPreviousString:Ljava/lang/String;

    .line 281
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/GLRootView;

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    .line 283
    new-instance v3, Lcom/android/camera/PanoramaModule$2;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaModule$2;-><init>(Lcom/android/camera/PanoramaModule;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    .line 320
    return-void

    .line 235
    .end local v0           #appRes:Landroid/content/res/Resources;
    .end local v1           #pm:Landroid/os/PowerManager;
    .end local v2           #tzUTC:Ljava/util/TimeZone;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v5}, Lcom/android/camera/CameraActivity;->createCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    goto/16 :goto_0
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 1206
    return-void
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 1251
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1210
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1145
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 1233
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 974
    const/4 v0, 0x0

    .line 975
    iget-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 978
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 981
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 982
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 983
    const v3, 0x7f04003a

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 985
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPanoLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 986
    const v3, 0x7f040022

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mPanoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 988
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/PanoramaModule;->setViews(Landroid/content/res/Resources;)V

    .line 989
    iget-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v1, :cond_1

    .line 990
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 991
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 992
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 994
    :cond_1
    return-void

    .line 978
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 465
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 0
    .parameter "full"

    .prologue
    .line 1197
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1215
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1220
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 6
    .parameter "v"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 454
    const-string v0, "CAM PanoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p4, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p5, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/CameraActivity;->onLayoutChange(Landroid/view/View;IIII)V

    .line 456
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PanoramaModule;->configMosaicPreview(II)V

    .line 457
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 998
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 933
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mOrientationEventListener:Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;->disable()V

    .line 934
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 969
    :goto_0
    return-void

    .line 939
    :cond_0
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    if-ne v1, v3, :cond_1

    .line 940
    invoke-direct {p0, v3}, Lcom/android/camera/PanoramaModule;->stopCapture(Z)V

    .line 941
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->reset()V

    .line 944
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->releaseCamera()V

    .line 945
    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 949
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v1, :cond_2

    .line 950
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 951
    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 954
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V

    .line 955
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_3

    .line 956
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 957
    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 959
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->resetScreenOn()V

    .line 960
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    if-eqz v1, :cond_4

    .line 961
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    invoke-interface {v1}, Lcom/android/camera/SoundClips$Player;->release()V

    .line 962
    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 964
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v1, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 965
    .local v0, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 966
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 968
    :cond_5
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public onPauseBeforeSuper()V
    .locals 1

    .prologue
    .line 928
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    .line 929
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 1229
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1007
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mOrientationEventListener:Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;->enable()V

    .line 1009
    iput v2, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    .line 1012
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->setupCamera()V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1022
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/SoundClips;->getPlayer(Landroid/content/Context;)Lcom/android/camera/SoundClips$Player;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 1025
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1026
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1028
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mDialogWaitingPreviousString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 1032
    new-instance v0, Lcom/android/camera/PanoramaModule$WaitProcessorTask;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/PanoramaModule$WaitProcessorTask;-><init>(Lcom/android/camera/PanoramaModule;Lcom/android/camera/PanoramaModule$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 1044
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->keepScreenOnAwhile()V

    .line 1047
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1048
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1049
    :goto_1
    return-void

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0a0094

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_1

    .line 1016
    :catch_1
    move-exception v0

    .line 1017
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0a0095

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_1

    .line 1034
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1037
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V

    .line 1038
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    invoke-virtual {v0}, Lcom/android/camera/ui/LayoutNotifyView;->getWidth()I

    move-result v0

    .line 1039
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    invoke-virtual {v1}, Lcom/android/camera/ui/LayoutNotifyView;->getHeight()I

    move-result v1

    .line 1040
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1041
    invoke-direct {p0, v0, v1}, Lcom/android/camera/PanoramaModule;->configMosaicPreview(II)V

    goto :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 1002
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    .line 1003
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 0

    .prologue
    .line 1256
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 4

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 693
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/SoundClips$Player;->play(I)V

    .line 695
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->startCapture()V

    goto :goto_0

    .line 698
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/camera/SoundClips$Player;->play(I)V

    .line 699
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->stopCapture(Z)V

    goto :goto_0

    .line 691
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 705
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1225
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1202
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1138
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->keepScreenOnAwhile()V

    .line 1139
    :cond_0
    return-void
.end method

.method public reportProgress()V
    .locals 3

    .prologue
    .line 708
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 709
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 710
    new-instance v0, Lcom/android/camera/PanoramaModule$7;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaModule$7;-><init>(Lcom/android/camera/PanoramaModule;)V

    .line 734
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 735
    return-void
.end method

.method public saveHighResMosaic()V
    .locals 1

    .prologue
    .line 756
    new-instance v0, Lcom/android/camera/PanoramaModule$8;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaModule$8;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 783
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->reportProgress()V

    .line 784
    return-void
.end method

.method setupProgressDirectionMatrix()V
    .locals 5

    .prologue
    .line 532
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 533
    .local v1, degrees:I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 534
    .local v0, cameraId:I
    invoke-static {v1, v0}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v2

    .line 535
    .local v2, orientation:I
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 536
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 537
    return-void
.end method

.method public startCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 491
    iput-boolean v2, p0, Lcom/android/camera/PanoramaModule;->mCancelComputation:Z

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    .line 493
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 494
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 495
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 496
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    .line 497
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 498
    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaModule;->showDirectionIndicators(I)V

    .line 500
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    new-instance v1, Lcom/android/camera/PanoramaModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaModule$3;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 519
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 522
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 523
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 524
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 525
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientation:I

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientationAtCapture:I

    .line 526
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->keepScreenOn()V

    .line 527
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 528
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->setupProgressDirectionMatrix()V

    .line 529
    return-void
.end method

.method public updateCameraAppView()V
    .locals 0

    .prologue
    .line 1242
    return-void
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 1237
    const/4 v0, 0x0

    return v0
.end method
