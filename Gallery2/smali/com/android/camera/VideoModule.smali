.class public Lcom/android/camera/VideoModule;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/EffectsRecorder$EffectsListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/PieRenderer$PieListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoModule$SurfaceViewCallback;,
        Lcom/android/camera/VideoModule$VideoNamer;,
        Lcom/android/camera/VideoModule$JpegPictureCallback;,
        Lcom/android/camera/VideoModule$ZoomChangeListener;,
        Lcom/android/camera/VideoModule$MyBroadcastReceiver;,
        Lcom/android/camera/VideoModule$MainHandler;,
        Lcom/android/camera/VideoModule$CameraOpenThread;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBgLearningMessageFrame:Landroid/view/View;

.field private mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

.field private mBlocker:Landroid/view/View;

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field private mCaptureTimeLapse:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectType:I

.field private mEffectUriFromGallery:Ljava/lang/String;

.field private mEffectsDisplayResult:Z

.field private mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mExposureIndicator:Landroid/widget/ImageView;

.field private mFlashIndicator:Landroid/widget/ImageView;

.field private mFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private final mHandler:Landroid/os/Handler;

.field private mIsVideoCaptureIntent:Z

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mMenu:Landroid/view/View;

.field private mOnResumeTime:J

.field private mOnScreenIndicators:Landroid/view/View;

.field private mOrientation:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPaused:Z

.field private mPendingSwitchCameraId:I

.field private mPieRenderer:Lcom/android/camera/ui/PieRenderer;

.field private mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

.field private mPrefVideoEffectDefault:Ljava/lang/String;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field private mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mResetEffect:Z

.field private mRestoreFlash:Z

.field private mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewControl:Landroid/view/View;

.field private mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

.field private mRootView:Landroid/view/View;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSnapshotInProgress:Z

.field private mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceViewReady:Z

.field private mSwitchingCamera:Z

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTimeLapseLabel:Landroid/view/View;

.field private mVideoControl:Lcom/android/camera/VideoController;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoHeight:I

.field private mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

.field private mVideoWidth:I

.field private mZoomMax:I

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

.field private mZoomSetByKey:Z

.field private mZoomValue:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 132
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 163
    iput v1, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 164
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 165
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    .line 170
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 192
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    .line 194
    iput v1, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 200
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 228
    new-instance v0, Lcom/android/camera/VideoModule$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/VideoModule$MainHandler;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 236
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mZoomSetByKey:Z

    .line 329
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2844
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoModule;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showTapToSnapshotToast()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoModule;)Lcom/android/camera/ui/PreviewSurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/VideoModule;)Lcom/android/camera/ui/PieRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoModule;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoModule;->processZoomValueChanged(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/VideoModule;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/VideoModule;[BLandroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoModule;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSurfaceViewReady:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/VideoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method private addVideoToMediaStore()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 1471
    const/4 v2, 0x0

    .line 1472
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_3

    .line 1473
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_size"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1475
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v0, v4

    .line 1476
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 1477
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_0

    .line 1478
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    .line 1480
    :cond_0
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1485
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule$VideoNamer;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1486
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/CameraActivity;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 1492
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1494
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1495
    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1498
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1500
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.hardware.action.NEW_VIDEO"

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1513
    :goto_1
    iput-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1514
    return v0

    .line 1482
    :cond_2
    const-string v4, "CAM_VideoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video duration <= 0 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1502
    :catch_0
    move-exception v0

    .line 1505
    :try_start_1
    const-string v1, "CAM_VideoModule"

    const-string v2, "failed to add video to media store"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1510
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1511
    goto :goto_1

    .line 1510
    :catchall_0
    move-exception v0

    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private checkQualityAndStartPreview()V
    .locals 3

    .prologue
    .line 2485
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2486
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 2487
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2488
    .local v0, size:Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    if-eq v1, v2, :cond_1

    .line 2490
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2493
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2494
    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1168
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1170
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1174
    :cond_0
    return-void
.end method

.method private clearVideoNamer()V
    .locals 1

    .prologue
    .line 2761
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    if-eqz v0, :cond_0

    .line 2762
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule$VideoNamer;->finish()V

    .line 2763
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    .line 2765
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 1

    .prologue
    .line 967
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->closeCamera(Z)V

    .line 968
    return-void
.end method

.method private closeCamera(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 982
    const-string v0, "CAM_VideoModule"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 984
    const-string v0, "CAM_VideoModule"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :goto_0
    return-void

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectCamera()V

    .line 993
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeEffects()V

    .line 994
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 995
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 996
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 997
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 998
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 999
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method private closeEffects()V
    .locals 2

    .prologue
    .line 953
    const-string v0, "CAM_VideoModule"

    const-string v1, "Closing effects"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 955
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v0, :cond_0

    .line 956
    const-string v0, "CAM_VideoModule"

    const-string v1, "Effects are already closed. Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :goto_0
    return-void

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 962
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 2743
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2747
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2749
    :cond_0
    return-void

    .line 2744
    :catch_0
    move-exception v0

    .line 2745
    const-string v1, "CAM_VideoModule"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2734
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2735
    const-string v0, ".mp4"

    .line 2737
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2727
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2728
    const-string v0, "video/mp4"

    .line 2730
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 4
    .parameter "dateTaken"

    .prologue
    .line 345
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 346
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00c4

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 349
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1531
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1533
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1534
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 1154
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1156
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1157
    const/4 v0, -0x1

    .line 1158
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1162
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1163
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1164
    return-void

    .line 1160
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private effectsActive()Z
    .locals 1

    .prologue
    .line 2328
    iget v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableCameraControls(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 550
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 555
    :cond_1
    return-void

    .line 550
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;
    .locals 2
    .parameter "screen"

    .prologue
    .line 1540
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1541
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1542
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1546
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1547
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1550
    :cond_1
    return-object p1
.end method

.method private generateVideoFilename(I)V
    .locals 9
    .parameter

    .prologue
    .line 1444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1445
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 1447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1448
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/Storage;->getStorage()Lcom/android/camera/Storage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/Storage;->generateDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1450
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1451
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1452
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "title"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_display_name"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1455
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1461
    if-eqz v0, :cond_0

    .line 1462
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1463
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1465
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoModule$VideoNamer;->prepareUri(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 1466
    iput-object v6, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1467
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 794
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_GET_SUPPORTED_VIDEO_SIZE:Z

    if-eqz v0, :cond_7

    .line 795
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->useProfileVideoSize()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 797
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    .line 822
    :goto_0
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesiredPreviewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". mDesiredPreviewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return-void

    .line 799
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 800
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 801
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_4

    .line 802
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 804
    :cond_4
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    .line 805
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 807
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 808
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 809
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v4

    if-le v0, v2, :cond_5

    .line 810
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 813
    :cond_6
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 815
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 816
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    goto/16 :goto_0

    .line 819
    :cond_7
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 820
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    goto/16 :goto_0
.end method

.method private static getLowVideoQuality()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 579
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FINE_RESOLUTION_QUALITY_LEVELS:Z

    if-eqz v0, :cond_0

    .line 580
    const/4 v0, 0x4

    .line 582
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 354
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 359
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 1885
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 1886
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private initializeControlByIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2174
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    .line 2175
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f10007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    .line 2176
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$3;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2184
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    .line 2185
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    .line 2186
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    const v1, 0x7f10006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mExposureIndicator:Landroid/widget/ImageView;

    .line 2187
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2188
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 2192
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    .line 2193
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    .line 2194
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    .line 2196
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2198
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$4;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2204
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$5;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2211
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    new-instance v1, Lcom/android/camera/VideoModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$6;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2222
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    instance-of v0, v0, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 2223
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 2226
    :cond_0
    return-void
.end method

.method private initializeEffectsPreview()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 1326
    const-string v1, "CAM_VideoModule"

    const-string v2, "initializeEffectsPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 1368
    :goto_0
    return-void

    .line 1330
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    .line 1333
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v1, v1, v2

    .line 1335
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    .line 1336
    new-instance v2, Lcom/android/camera/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, v3}, Lcom/android/camera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1340
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setCameraDisplayOrientation(I)V

    .line 1341
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setCamera(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 1342
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v2, v1}, Lcom/android/camera/EffectsRecorder;->setCameraFacing(I)V

    .line 1343
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v2}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1344
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setEffectsListener(Lcom/android/camera/EffectsRecorder$EffectsListener;)V

    .line 1345
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1346
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1353
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1354
    iget v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 1356
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, v0}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 1358
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 1359
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/EffectsRecorder;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 1362
    iget v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1364
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1366
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private initializeEffectsRecording()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 1371
    const-string v0, "CAM_VideoModule"

    const-string v1, "initializeEffectsRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1374
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1377
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1378
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1379
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1380
    if-eqz v0, :cond_0

    .line 1382
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "rw"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1384
    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    :cond_0
    :goto_0
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1393
    :goto_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1397
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_1

    .line 1398
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide v5, 0x408f400000000000L

    iget v7, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    .line 1404
    :goto_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_2

    .line 1405
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1412
    :goto_3
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x2faf080

    sub-long/2addr v4, v6

    .line 1413
    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    .line 1416
    :goto_4
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxFileSize(J)V

    .line 1417
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxDuration(I)V

    .line 1418
    return-void

    .line 1385
    :catch_0
    move-exception v0

    .line 1387
    const-string v4, "CAM_VideoModule"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1400
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    goto :goto_2

    .line 1407
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->generateVideoFilename(I)V

    .line 1408
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-wide v0, v4

    goto :goto_4

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 2230
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewFrameLayout;->setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 2231
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    .line 2233
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 2234
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 2235
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 2236
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    .line 2244
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2245
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2248
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    .line 2249
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 2250
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mTimeLapseLabel:Landroid/view/View;

    .line 2253
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 2255
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    .line 2256
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    .line 2257
    return-void
.end method

.method private initializeOverlay()V
    .locals 4

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 387
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/PieRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 389
    new-instance v0, Lcom/android/camera/VideoController;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/camera/VideoController;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoModule;Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    .line 390
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    invoke-virtual {v0, p0}, Lcom/android/camera/VideoController;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 391
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PieRenderer;->setPieListener(Lcom/android/camera/ui/PieRenderer$PieListener;)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 394
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 395
    new-instance v0, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 398
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_2

    .line 399
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraModule;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 402
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0}, Lcom/android/camera/PreviewGestures;->clearTouchReceivers()V

    .line 403
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 404
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 406
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 407
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_3

    .line 408
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_4

    .line 411
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 413
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_5

    .line 414
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 417
    :cond_5
    return-void
.end method

.method private initializeRecorder()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1202
    const-string v0, "CAM_VideoModule"

    const-string v1, "initializeRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 1211
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 1212
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewReady:Z

    if-eqz v0, :cond_0

    .line 1215
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1216
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1218
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mVideoWidth:I

    .line 1219
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mVideoHeight:I

    .line 1222
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1223
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 1224
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1225
    if-eqz v0, :cond_3

    .line 1227
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "rw"

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1229
    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    :cond_3
    :goto_1
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1237
    :goto_2
    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1239
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setupMediaRecorderPreviewDisplay()V

    .line 1241
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, v5, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v5}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 1242
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v6, v6, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1243
    iget-boolean v5, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v5, :cond_4

    .line 1244
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1246
    :cond_4
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v9}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1247
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1248
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v6, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1249
    iget-boolean v5, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v5, :cond_5

    .line 1250
    const-wide v5, 0x408f400000000000L

    iget v7, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    .line 1251
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v7, v5, v6}, Lcom/android/camera/VideoModule;->setCaptureRate(Landroid/media/MediaRecorder;D)V

    .line 1254
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setRecordLocation()V

    .line 1259
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_6

    .line 1260
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1267
    :goto_3
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v5

    const-wide/32 v7, 0x2faf080

    sub-long/2addr v5, v7

    .line 1268
    cmp-long v2, v0, v2

    if-lez v2, :cond_9

    cmp-long v2, v0, v5

    if-gez v2, :cond_9

    .line 1273
    :goto_4
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1287
    :goto_5
    iget v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1288
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v0, v0, v1

    .line 1289
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v9, :cond_7

    .line 1290
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 1295
    :goto_6
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1298
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1305
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1306
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1230
    :catch_0
    move-exception v0

    .line 1232
    const-string v5, "CAM_VideoModule"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1262
    :cond_6
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v5}, Lcom/android/camera/VideoModule;->generateVideoFilename(I)V

    .line 1263
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    .line 1292
    :cond_7
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_6

    .line 1299
    :catch_1
    move-exception v0

    .line 1300
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1301
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1302
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1274
    :catch_2
    move-exception v0

    goto :goto_5

    :cond_8
    move v0, v4

    goto :goto_6

    :cond_9
    move-wide v0, v5

    goto/16 :goto_4

    :cond_a
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method private initializeSurfaceView()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewSurfaceView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    .line 365
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lcom/android/camera/VideoModule$SurfaceViewCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$SurfaceViewCallback;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 370
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 383
    :cond_1
    :goto_0
    return-void

    .line 371
    :cond_2
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    if-nez v0, :cond_3

    .line 373
    new-instance v0, Lcom/android/camera/VideoModule$SurfaceViewCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$SurfaceViewCallback;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    .line 374
    new-instance v0, Lcom/android/camera/VideoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$1;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method private initializeVideoControl()V
    .locals 4

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->loadCameraPreferences()V

    .line 559
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 560
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_video_quality_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/camera/VideoModule;->getLowVideoQuality()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoController;->overrideSettings([Ljava/lang/String;)V

    .line 565
    :cond_0
    return-void
.end method

.method private initializeVideoSnapshot()V
    .locals 4

    .prologue
    .line 2565
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_1

    .line 2566
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSingleTapUpListener(Landroid/view/View;)V

    .line 2568
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2571
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2576
    :cond_0
    :goto_0
    return-void

    .line 2574
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSingleTapUpListener(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    .line 2553
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2562
    :goto_0
    return-void

    .line 2554
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mZoomMax:I

    .line 2555
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRatios:Ljava/util/List;

    .line 2558
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/camera/VideoModule;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 2559
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 2560
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRatios:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 2561
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v1, Lcom/android/camera/VideoModule$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoModule$ZoomChangeListener;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1939
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1150
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1834
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1835
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1827
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1828
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1829
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1830
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 5

    .prologue
    .line 523
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 526
    .local v0, settings:Lcom/android/camera/CameraSettings;
    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 528
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 17
    .parameter "milliSeconds"
    .parameter "displayCentiSeconds"

    .prologue
    .line 1838
    const-wide/16 v13, 0x3e8

    div-long v10, p0, v13

    .line 1839
    .local v10, seconds:J
    const-wide/16 v13, 0x3c

    div-long v2, v10, v13

    .line 1840
    .local v2, minutes:J
    const-wide/16 v13, 0x3c

    div-long v0, v2, v13

    .line 1841
    .local v0, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v2, v13

    .line 1842
    .local v6, remainderMinutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    sub-long v8, v10, v13

    .line 1844
    .local v8, remainderSeconds:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1847
    .local v12, timeStringBuilder:Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_1

    .line 1848
    const-wide/16 v13, 0xa

    cmp-long v13, v0, v13

    if-gez v13, :cond_0

    .line 1849
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1851
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1853
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1857
    :cond_1
    const-wide/16 v13, 0xa

    cmp-long v13, v6, v13

    if-gez v13, :cond_2

    .line 1858
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1860
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1861
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1864
    const-wide/16 v13, 0xa

    cmp-long v13, v8, v13

    if-gez v13, :cond_3

    .line 1865
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1867
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1870
    if-eqz p2, :cond_5

    .line 1871
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1872
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    sub-long v13, p0, v13

    const-wide/16 v15, 0xa

    div-long v4, v13, v15

    .line 1873
    .local v4, remainderCentiSeconds:J
    const-wide/16 v13, 0xa

    cmp-long v13, v4, v13

    if-gez v13, :cond_4

    .line 1874
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1876
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1879
    .end local v4           #remainderCentiSeconds:J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onStopVideoRecording()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 672
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    .line 673
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    .line 674
    .local v0, recordFail:Z
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_3

    .line 675
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 676
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    if-eqz v2, :cond_2

    .line 677
    if-nez v0, :cond_1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 693
    :cond_0
    :goto_1
    return-void

    .line 677
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 678
    :cond_2
    if-nez v0, :cond_0

    .line 679
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showAlert()V

    goto :goto_1

    .line 682
    :cond_3
    if-nez v0, :cond_0

    .line 684
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/camera/CameraScreenNail;

    iget v2, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    goto :goto_1
.end method

.method private openCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 253
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v4, v1, Lcom/android/camera/CameraActivity;->mOpenCameraFail:Z

    goto :goto_0

    .line 256
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 257
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v4, v1, Lcom/android/camera/CameraActivity;->mCameraDisabled:Z

    goto :goto_0
.end method

.method private pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 1585
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1586
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1588
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1589
    return-void
.end method

.method private processZoomValueChanged(I)V
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 2514
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/camera/VideoModule;->mZoomMax:I

    if-gt p1, v0, :cond_0

    .line 2515
    invoke-direct {p0, p1, v1}, Lcom/android/camera/VideoModule;->processZoomValueChanged(IZ)V

    .line 2516
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mZoomSetByKey:Z

    .line 2518
    :cond_0
    return-void
.end method

.method private processZoomValueChanged(IZ)V
    .locals 4
    .parameter "index"
    .parameter "fromKey"

    .prologue
    .line 2522
    if-nez p2, :cond_0

    if-nez p2, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mZoomSetByKey:Z

    if-nez v1, :cond_3

    .line 2524
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_2

    .line 2536
    :cond_1
    :goto_0
    return-void

    .line 2525
    :cond_2
    iput p1, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 2527
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2528
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 2529
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v1, :cond_1

    .line 2530
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2531
    .local v0, p:Landroid/hardware/Camera$Parameters;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    goto :goto_0

    .line 2534
    .end local v0           #p:Landroid/hardware/Camera$Parameters;
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mZoomSetByKey:Z

    goto :goto_0
.end method

.method private readVideoPreferences()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 729
    iget v9, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0090

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, defaultQuality:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v10, "pref_video_quality_key"

    invoke-virtual {v9, v10, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 734
    .local v7, videoQuality:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 737
    .local v5, quality:I
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 738
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 739
    const-string v9, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 741
    .local v1, extraVideoQuality:I
    if-lez v1, :cond_5

    .line 742
    const/4 v5, 0x1

    .line 750
    .end local v1           #extraVideoQuality:I
    :cond_0
    :goto_0
    const-string v9, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 751
    const-string v9, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 753
    .local v6, seconds:I
    mul-int/lit16 v9, v6, 0x3e8

    iput v9, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    .line 759
    .end local v6           #seconds:I
    :goto_1
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v9

    iput v9, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 760
    iget v9, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-eqz v9, :cond_7

    .line 761
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 763
    iget v9, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v9, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 764
    .local v4, profile:Landroid/media/CamcorderProfile;
    iget v9, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v10, 0x1e0

    if-le v9, v10, :cond_1

    .line 765
    invoke-static {}, Lcom/android/camera/VideoModule;->getLowVideoQuality()I

    move-result v5

    .line 771
    .end local v4           #profile:Landroid/media/CamcorderProfile;
    :cond_1
    :goto_2
    sget-boolean v9, Lcom/android/gallery3d/common/ApiHelper;->HAS_TIME_LAPSE_RECORDING:Z

    if-eqz v9, :cond_3

    .line 772
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v10, "pref_video_time_lapse_frame_interval_key"

    iget-object v11, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0a0097

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, frameIntervalStr:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 776
    iget v9, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v9, :cond_2

    const/4 v8, 0x1

    :cond_2
    iput-boolean v8, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    .line 779
    .end local v2           #frameIntervalStr:Ljava/lang/String;
    :cond_3
    iget-boolean v8, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v8, :cond_4

    add-int/lit16 v5, v5, 0x3e8

    .line 780
    :cond_4
    iget v8, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v8, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 781
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->getDesiredPreviewSize()V

    .line 782
    return-void

    .line 744
    .restart local v1       #extraVideoQuality:I
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 755
    .end local v1           #extraVideoQuality:I
    :cond_6
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->getMaxVideoDuration(Landroid/content/Context;)I

    move-result v9

    iput v9, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    goto :goto_1

    .line 768
    :cond_7
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    goto :goto_2
.end method

.method private releaseEffectsRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1433
    const-string v0, "CAM_VideoModule"

    const-string v1, "Releasing effects recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 1435
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cleanupEmptyFile()V

    .line 1436
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1437
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1439
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 1440
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1441
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1422
    const-string v0, "CAM_VideoModule"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1424
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cleanupEmptyFile()V

    .line 1425
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1426
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1427
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1429
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1430
    return-void
.end method

.method private releasePreviewResources()V
    .locals 3

    .prologue
    .line 1003
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v1, :cond_1

    .line 1004
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v1, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 1005
    .local v0, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1006
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1008
    :cond_0
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v1, :cond_1

    .line 1009
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1010
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 1013
    .end local v0           #screenNail:Lcom/android/camera/CameraScreenNail;
    :cond_1
    return-void
.end method

.method private resetEffect()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2714
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    if-eqz v2, :cond_0

    .line 2715
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_video_effect_key"

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2717
    .local v0, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2718
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->writeDefaultEffectToPrefs()V

    .line 2723
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return v1

    .line 2722
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    .line 2723
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetExposureCompensation()V
    .locals 5

    .prologue
    .line 568
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_exposure_key"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, value:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 572
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 573
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 575
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1823
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1824
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 829
    return-void
.end method

.method private setCameraParameters()V
    .locals 5

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1945
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1948
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setVideoMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 1951
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setEarlyVideoSize(Landroid/hardware/Camera$Parameters;Landroid/media/CamcorderProfile;)V

    .line 1955
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v0, :cond_7

    .line 1956
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_flashmode_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00ad

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1962
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1963
    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1964
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1974
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00ae

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1977
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1979
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1988
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1989
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1993
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 1994
    const-string v1, "continuous-video"

    invoke-static {v1, v0}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1995
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1998
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "recording-hint"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2003
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2004
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 2012
    iget v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2014
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2015
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2016
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2018
    :cond_5
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video snapshot size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_jpeg_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a0049

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2025
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2028
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_coloreffect_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a004f

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2031
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2032
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2036
    :cond_6
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    .line 2037
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 2038
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 2039
    if-lt v0, v2, :cond_a

    if-gt v0, v1, :cond_a

    .line 2040
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 2045
    :goto_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->dumpParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2047
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2049
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2051
    iget v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->updateCameraScreenNailSize(II)V

    .line 2052
    return-void

    .line 1960
    :cond_7
    const-string v0, "off"

    goto/16 :goto_0

    .line 1966
    :cond_8
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1967
    if-nez v0, :cond_0

    .line 1968
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0a00a8

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    goto/16 :goto_1

    .line 1981
    :cond_9
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 1982
    if-nez v0, :cond_1

    .line 1983
    const-string v0, "auto"

    goto/16 :goto_2

    .line 2042
    :cond_a
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid exposure range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static setCaptureRate(Landroid/media/MediaRecorder;D)V
    .locals 0
    .parameter "recorder"
    .parameter "fps"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1311
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1312
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    .line 898
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 900
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    .line 906
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 907
    return-void

    .line 903
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    goto :goto_0
.end method

.method private setOrientationIndicator(IZ)V
    .locals 9
    .parameter "orientation"
    .parameter "animation"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 615
    const/4 v5, 0x3

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    aput-object v5, v3, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    .line 618
    .local v3, indicators:[Lcom/android/camera/ui/Rotatable;
    move-object v0, v3

    .local v0, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 619
    .local v2, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 618
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    .end local v2           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_1
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v5, :cond_2

    .line 622
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v5, p1}, Lcom/android/camera/PreviewGestures;->setOrientation(I)V

    .line 629
    :cond_2
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    instance-of v5, v5, Lcom/android/camera/ui/RotateLayout;

    if-eqz v5, :cond_3

    .line 630
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    invoke-interface {v5, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 635
    :cond_3
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_4

    .line 636
    div-int/lit8 v5, p1, 0x5a

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_5

    .line 637
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 642
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, v7, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 643
    return-void

    .line 639
    :cond_5
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1
.end method

.method private setRecordLocation()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1316
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 1317
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1318
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 1319
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1323
    .end local v0           #loc:Landroid/location/Location;
    :cond_0
    return-void
.end method

.method private setShowMenu(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2647
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2648
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2650
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2651
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2653
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 2648
    goto :goto_0

    :cond_3
    move v1, v2

    .line 2651
    goto :goto_1
.end method

.method private setupMediaRecorderPreviewDisplay()V
    .locals 3

    .prologue
    .line 1178
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1180
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_0

    .line 1183
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 1184
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 1192
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1196
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method private showAlert()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1693
    const/4 v0, 0x0

    .line 1694
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_2

    .line 1695
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1701
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1704
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 1705
    .local v1, info:[Landroid/hardware/Camera$CameraInfo;
    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v3, v1, v3

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v2, :cond_3

    .line 1706
    .local v2, mirror:Z
    :goto_1
    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1707
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1708
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1711
    .end local v1           #info:[Landroid/hardware/Camera$CameraInfo;
    .end local v2           #mirror:Z
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1713
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1714
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1715
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1716
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1717
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->enableCameraControls(Z)V

    .line 1719
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 1720
    return-void

    .line 1697
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1698
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .restart local v1       #info:[Landroid/hardware/Camera$CameraInfo;
    :cond_3
    move v2, v4

    .line 1705
    goto :goto_1
.end method

.method private showRecordingUI(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1663
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1664
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1665
    if-eqz p1, :cond_4

    .line 1666
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v3, 0x7f020028

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1667
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 1668
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1669
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1670
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1676
    :cond_0
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1690
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 1663
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1664
    goto :goto_1

    .line 1681
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v3, 0x7f020018

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1682
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 1683
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1684
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1685
    :cond_5
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2
.end method

.method private showTapToSnapshotToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2752
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a00dd

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2755
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2756
    const-string v1, "pref_video_first_use_hint_shown_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2757
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2758
    return-void
.end method

.method private showTimeLapseUI(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2497
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mTimeLapseLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2498
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mTimeLapseLabel:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2500
    :cond_0
    return-void

    .line 2498
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 646
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 910
    const-string v0, "CAM_VideoModule"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 913
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-ne v0, v2, :cond_0

    .line 914
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 915
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 917
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 921
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 922
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 923
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    .line 926
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 927
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 933
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 944
    return-void

    .line 931
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 938
    :catch_0
    move-exception v0

    .line 939
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 940
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 935
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeEffectsPreview()V

    .line 936
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private startVideoRecording()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1597
    const-string v0, "CAM_VideoModule"

    const-string v1, "startVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1600
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1601
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1602
    const-string v0, "CAM_VideoModule"

    const-string v1, "Storage issue, ignore the start request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :goto_0
    return-void

    .line 1606
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1607
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1608
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeEffectsRecording()V

    .line 1609
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v0, :cond_2

    .line 1610
    const-string v0, "CAM_VideoModule"

    const-string v1, "Fail to initialize effect recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1614
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeRecorder()V

    .line 1615
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_2

    .line 1616
    const-string v0, "CAM_VideoModule"

    const-string v1, "Fail to initialize media recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1621
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->pauseAudioPlayback()V

    .line 1623
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1625
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->startRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1647
    :goto_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-eqz v0, :cond_3

    .line 1648
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1651
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->enableCameraControls(Z)V

    .line 1653
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 1654
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 1655
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    .line 1656
    invoke-direct {p0, v5}, Lcom/android/camera/VideoModule;->showRecordingUI(Z)V

    .line 1658
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    .line 1659
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOn()V

    goto :goto_0

    .line 1626
    :catch_0
    move-exception v0

    .line 1627
    const-string v1, "CAM_VideoModule"

    const-string v2, "Could not start effects recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1628
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseEffectsRecorder()V

    goto :goto_0

    .line 1633
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1634
    :catch_1
    move-exception v0

    .line 1635
    const-string v1, "CAM_VideoModule"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1636
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1638
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto/16 :goto_0
.end method

.method private stopPreview()V
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 949
    return-void
.end method

.method private stopVideoRecording()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1740
    const-string v0, "CAM_VideoModule"

    const-string v1, "stopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1742
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 1745
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_8

    .line 1749
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1754
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1761
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1762
    const-string v1, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    .line 1769
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 1770
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 1781
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v4, :cond_0

    .line 1784
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v3

    .line 1785
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->closeCamera(Z)V

    .line 1788
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->showRecordingUI(Z)V

    .line 1789
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v4, :cond_1

    .line 1790
    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->enableCameraControls(Z)V

    .line 1794
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoModule;->setOrientationIndicator(IZ)V

    .line 1795
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 1796
    if-eqz v0, :cond_2

    .line 1797
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->addVideoToMediaStore()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v3

    .line 1801
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1802
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1803
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_3

    .line 1804
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    .line 1805
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_3

    .line 1807
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 1809
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraScreenNail;->setOneTimeOnFrameDrawnListener(Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;)V

    .line 1811
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 1817
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1818
    :cond_4
    return v1

    .line 1756
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1757
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1758
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v3

    .line 1759
    goto/16 :goto_0

    .line 1764
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 1765
    :goto_4
    const-string v4, "CAM_VideoModule"

    const-string v5, "stop fail"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1766
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    :cond_6
    move v1, v3

    .line 1767
    goto/16 :goto_1

    :cond_7
    move v4, v2

    .line 1784
    goto/16 :goto_2

    .line 1764
    :catch_1
    move-exception v1

    goto :goto_4

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 12
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 2702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2703
    .local v3, dateTaken:J
    invoke-static {v3, v4}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    .line 2704
    .local v2, title:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v6

    .line 2705
    .local v6, orientation:I
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 2706
    .local v10, s:Landroid/hardware/Camera$Size;
    invoke-static {}, Lcom/android/camera/Storage;->getStorage()Lcom/android/camera/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget v8, v10, Landroid/hardware/Camera$Size;->width:I

    iget v9, v10, Landroid/hardware/Camera$Size;->height:I

    move-object v5, p2

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BII)Landroid/net/Uri;

    move-result-object v11

    .line 2708
    .local v11, uri:Landroid/net/Uri;
    if-eqz v11, :cond_0

    .line 2709
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v11}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2711
    :cond_0
    return-void
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2400
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2429
    :goto_0
    return-void

    .line 2402
    :cond_0
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to switch camera."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    iget v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 2404
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 2405
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoController;->setCameraId(I)V

    .line 2407
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 2410
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2411
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2412
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    .line 2413
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2414
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2415
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 2416
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2417
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 2420
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeZoom()V

    .line 2421
    invoke-direct {p0, v3, v3}, Lcom/android/camera/VideoModule;->setOrientationIndicator(IZ)V

    .line 2423
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_1

    .line 2426
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2428
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateOnScreenIndicators()V

    goto :goto_0
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2055
    sget-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v4, :cond_1

    .line 2076
    :cond_0
    :goto_0
    return-void

    .line 2057
    :cond_1
    iget v4, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_2

    .line 2058
    move v3, p1

    .line 2059
    .local v3, tmp:I
    move p1, p2

    .line 2060
    move p2, v3

    .line 2063
    .end local v3           #tmp:I
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v4, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/camera/CameraScreenNail;

    .line 2064
    .local v2, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    .line 2065
    .local v1, oldWidth:I
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    .line 2067
    .local v0, oldHeight:I
    if-ne v1, p1, :cond_3

    if-eq v0, p2, :cond_4

    .line 2068
    :cond_3
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 2069
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 2070
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 2073
    :cond_4
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2074
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    goto :goto_0
.end method

.method private updateEffectSelection()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2443
    iget v2, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 2444
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 2445
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 2446
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 2448
    iget v4, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-ne v4, v2, :cond_2

    .line 2449
    iget v4, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-nez v4, :cond_1

    .line 2479
    :cond_0
    :goto_0
    return v0

    .line 2450
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2452
    :cond_2
    const-string v3, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New effect selection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v6, "pref_video_effect_key"

    const-string v7, "none"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    iget v3, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-nez v3, :cond_3

    .line 2457
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->stopPreview()V

    .line 2458
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    move v0, v1

    .line 2459
    goto :goto_0

    .line 2461
    :cond_3
    iget v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "gallery"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2464
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2465
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "video/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2467
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2468
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 2469
    goto :goto_0

    .line 2471
    :cond_4
    if-nez v2, :cond_5

    .line 2473
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2474
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->checkQualityAndStartPreview()V

    :goto_1
    move v0, v1

    .line 2479
    goto :goto_0

    .line 2477
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v2, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private updateExposureOnScreenIndicator(I)V
    .locals 3
    .parameter

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mExposureIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2291
    :goto_0
    return-void

    .line 2263
    :cond_0
    const/4 v0, 0x0

    .line 2264
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v1

    .line 2265
    int-to-float v2, p1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2266
    packed-switch v1, :pswitch_data_0

    .line 2289
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mExposureIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2268
    :pswitch_0
    const v0, 0x7f02008f

    .line 2269
    goto :goto_1

    .line 2271
    :pswitch_1
    const v0, 0x7f02008e

    .line 2272
    goto :goto_1

    .line 2274
    :pswitch_2
    const v0, 0x7f02008d

    .line 2275
    goto :goto_1

    .line 2277
    :pswitch_3
    const v0, 0x7f02008c

    .line 2278
    goto :goto_1

    .line 2280
    :pswitch_4
    const v0, 0x7f020090

    .line 2281
    goto :goto_1

    .line 2283
    :pswitch_5
    const v0, 0x7f020091

    .line 2284
    goto :goto_1

    .line 2286
    :pswitch_6
    const v0, 0x7f020092

    goto :goto_1

    .line 2266
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateFlashOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f020094

    .line 2382
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2397
    :goto_0
    return-void

    .line 2385
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2386
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2388
    :cond_2
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2389
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2390
    :cond_3
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "torch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2392
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020095

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2394
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateOnScreenIndicators()V
    .locals 1

    .prologue
    .line 2377
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 2378
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->updateExposureOnScreenIndicator(I)V

    .line 2379
    return-void
.end method

.method private updateRecordingTime()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1890
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 1936
    :goto_0
    return-void

    .line 1893
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1894
    iget-wide v2, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long v2, v0, v2

    .line 1898
    iget v0, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    const v1, 0xea60

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    move v5, v4

    .line 1902
    :goto_1
    if-eqz v5, :cond_5

    .line 1903
    const-wide/16 v0, 0x0

    iget v7, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    int-to-long v7, v7

    sub-long/2addr v7, v2

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v7, 0x3e7

    add-long/2addr v0, v7

    .line 1908
    :goto_2
    iget-boolean v7, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v7, :cond_3

    .line 1909
    invoke-static {v0, v1, v6}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 1910
    const-wide/16 v0, 0x3e8

    .line 1919
    :goto_3
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1921
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    if-eq v4, v5, :cond_1

    .line 1924
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 1926
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v5, :cond_4

    const v4, 0x7f0b0001

    :goto_4
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1930
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1933
    :cond_1
    rem-long/2addr v2, v0

    sub-long/2addr v0, v2

    .line 1934
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    move v5, v6

    .line 1898
    goto :goto_1

    .line 1915
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 1916
    iget v0, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v0, v0

    goto :goto_3

    .line 1926
    :cond_4
    const/high16 v4, 0x7f0b

    goto :goto_4

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method private writeDefaultEffectToPrefs()V
    .locals 4

    .prologue
    .line 785
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 786
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_effect_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00d0

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 788
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 789
    return-void
.end method


# virtual methods
.method public collapseCameraControls()Z
    .locals 2

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 534
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    .line 535
    const/4 v0, 0x1

    .line 537
    :cond_0
    return v0
.end method

.method public dismissPopup(Z)V
    .locals 1
    .parameter "topLevelOnly"

    .prologue
    .line 2929
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/VideoModule;->dismissPopup(ZZ)V

    .line 2930
    return-void
.end method

.method public dismissPopup(ZZ)V
    .locals 2
    .parameter "topLevelPopupOnly"
    .parameter "fullScreen"

    .prologue
    .line 2933
    if-eqz p2, :cond_0

    .line 2934
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 2935
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2937
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/VideoModule;->setShowMenu(Z)V

    .line 2938
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 2939
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2940
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 2942
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoController;->popupDismissed(Z)V

    .line 2943
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 2504
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2510
    :goto_0
    return v0

    .line 2505
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_1

    .line 2506
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->dispatchTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2507
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_2

    .line 2508
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2510
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
    .locals 7
    .parameter "activity"
    .parameter "root"
    .parameter "reuseScreenNail"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 421
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 422
    iput-object p2, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    .line 423
    new-instance v2, Lcom/android/camera/ComboPreferences;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, v5}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 424
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 425
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 427
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v6, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 428
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 430
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraActivity;->setStoragePath(Landroid/content/SharedPreferences;)Z

    .line 432
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v5

    iput v5, v2, Lcom/android/camera/CameraActivity;->mNumberOfCameras:I

    .line 433
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0a00d0

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    .line 434
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetEffect()Z

    .line 437
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraActivity;->initPowerShutter(Lcom/android/camera/ComboPreferences;)V

    .line 440
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetExposureCompensation()V

    .line 446
    new-instance v0, Lcom/android/camera/VideoModule$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$CameraOpenThread;-><init>(Lcom/android/camera/VideoModule;)V

    .line 447
    .local v0, cameraOpenThread:Lcom/android/camera/VideoModule$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/VideoModule$CameraOpenThread;->start()V

    .line 449
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 451
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040047

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 455
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    .line 456
    if-eqz p3, :cond_1

    .line 457
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/camera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 461
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeSurfaceView()V

    .line 465
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/VideoModule$CameraOpenThread;->join()V

    .line 466
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->mOpenCameraFail:Z

    if-eqz v2, :cond_3

    .line 467
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a007a

    invoke-static {v2, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 457
    goto :goto_0

    .line 459
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v5, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v5, :cond_2

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->createCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_3

    .line 469
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->mCameraDisabled:Z

    if-eqz v2, :cond_4

    .line 470
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a007b

    invoke-static {v2, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 473
    :catch_0
    move-exception v2

    .line 477
    :cond_4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/VideoModule$2;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoModule$2;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 484
    .local v1, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 486
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeControlByIntent()V

    .line 487
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeOverlay()V

    .line 488
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeMiscControls()V

    .line 490
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.quickCapture"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    .line 491
    new-instance v2, Lcom/android/camera/LocationManager;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 493
    invoke-direct {p0, v4, v4}, Lcom/android/camera/VideoModule;->setOrientationIndicator(IZ)V

    .line 494
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 498
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 499
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->mOpenCameraFail:Z

    if-eqz v2, :cond_6

    .line 500
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a007a

    invoke-static {v2, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 506
    :catch_1
    move-exception v2

    .line 510
    :cond_5
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 511
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 512
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 514
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 515
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 516
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateOnScreenIndicators()V

    goto :goto_2

    .line 502
    :cond_6
    :try_start_3
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->mCameraDisabled:Z

    if-eqz v2, :cond_5

    .line 503
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a007b

    invoke-static {v2, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method

.method public installIntentFilter()V
    .locals 3

    .prologue
    .line 834
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 836
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 837
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 838
    new-instance v1, Lcom/android/camera/VideoModule$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 839
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 840
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1593
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 2902
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2080
    packed-switch p1, :pswitch_data_0

    .line 2095
    :goto_0
    return-void

    .line 2082
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2085
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2086
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received URI from gallery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    goto :goto_0

    .line 2089
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2090
    const-string v0, "CAM_VideoModule"

    const-string v1, "No URI from gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    goto :goto_0

    .line 2080
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1076
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1084
    :goto_0
    return v0

    .line 1077
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    .line 1078
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    goto :goto_0

    .line 1080
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1081
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->hide()V

    goto :goto_0

    .line 1084
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->removeTopLevelPopup()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 2
    .parameter

    .prologue
    .line 2885
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2898
    :cond_0
    :goto_0
    return-void

    .line 2887
    :cond_1
    iput p1, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 2888
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 2889
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to copy texture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 2894
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    goto :goto_0

    .line 2896
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCancelBgTraining(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2149
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->writeDefaultEffectToPrefs()V

    .line 2151
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onSharedPreferenceChanged()V

    .line 2152
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 2440
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 2295
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 2298
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2299
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2300
    const v2, 0x7f040047

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2303
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeControlByIntent()V

    .line 2304
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeOverlay()V

    .line 2305
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeSurfaceView()V

    .line 2306
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeMiscControls()V

    .line 2307
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 2308
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 2309
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2312
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 2313
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeZoom()V

    .line 2314
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isInCameraApp()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoModule;->onFullScreenChanged(Z)V

    .line 2315
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateOnScreenIndicators()V

    .line 2316
    return-void
.end method

.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2158
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2159
    invoke-direct {p0, p2}, Lcom/android/camera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2162
    :cond_0
    :try_start_1
    const-string v0, "android.filterpacks.videosink.MediaRecorderStopException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2164
    const-string v0, "CAM_VideoModule"

    const-string v1, "Problem recoding video file. Removing incomplete file."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2165
    monitor-exit p0

    return-void

    .line 2167
    :catch_0
    move-exception v0

    .line 2168
    :try_start_2
    const-string v1, "CAM_VideoModule"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2170
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error during recording!"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEffectsUpdate(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2099
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffectsUpdate. Effect Message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 2103
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2104
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->checkQualityAndStartPreview()V

    .line 2139
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2140
    const-string v0, "CAM_VideoModule"

    const-string v1, "OnEffectsUpdate: closing effects if activity paused"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeEffects()V

    .line 2143
    :cond_1
    return-void

    .line 2105
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 2107
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->addVideoToMediaStore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2108
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_3

    .line 2109
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    if-eqz v0, :cond_4

    .line 2110
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 2116
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    .line 2119
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 2121
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->clearVideoNamer()V

    goto :goto_0

    .line 2112
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showAlert()V

    goto :goto_1

    .line 2123
    :cond_5
    const/4 v0, 0x5

    if-ne p2, v0, :cond_6

    .line 2125
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v4}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 2126
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2127
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2129
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2133
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1556
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1559
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    .line 1560
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1562
    :cond_0
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 4
    .parameter "full"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2657
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 2658
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 2660
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 2661
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/VideoModule;->dismissPopup(ZZ)V

    .line 2663
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_2

    .line 2665
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 2667
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->setShowMenu(Z)V

    .line 2668
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2670
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2672
    :cond_3
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_7

    .line 2673
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_4

    .line 2674
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->setFullScreen(Z)V

    .line 2683
    :cond_4
    :goto_2
    return-void

    :cond_5
    move v0, v2

    .line 2665
    goto :goto_0

    :cond_6
    move v1, v2

    .line 2670
    goto :goto_1

    .line 2678
    :cond_7
    if-eqz p1, :cond_8

    .line 2679
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->expand()V

    goto :goto_2

    .line 2681
    :cond_8
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->shrink()V

    goto :goto_2
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1567
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1568
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1576
    :cond_0
    :goto_0
    return-void

    .line 1569
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1570
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1573
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0a00c6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1091
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return v1

    .line 1095
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1124
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1097
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1098
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2}, Lcom/android/camera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1103
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1104
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2}, Lcom/android/camera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1109
    :sswitch_2
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1112
    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v2, :cond_0

    .line 1113
    iget v2, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    add-int/lit8 v0, v2, 0x1

    .line 1114
    .local v0, index:I
    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->processZoomValueChanged(I)V

    goto :goto_0

    .line 1118
    .end local v0           #index:I
    :sswitch_4
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v2, :cond_0

    .line 1119
    iget v2, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    add-int/lit8 v0, v2, -0x1

    .line 1120
    .restart local v0       #index:I
    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->processZoomValueChanged(I)V

    goto :goto_0

    .line 1095
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_4
        0x1b -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1129
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 1145
    :cond_1
    :goto_0
    return v0

    .line 1131
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    goto :goto_0

    .line 1134
    :pswitch_1
    sget-boolean v1, Lcom/android/camera/ActivityBase;->mPowerShutter:Z

    if-eqz v1, :cond_1

    .line 1135
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1140
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1129
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v3, 0x7

    .line 592
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v0

    .line 595
    .local v0, newOrientation:I
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    if-eq v1, v0, :cond_2

    .line 596
    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 602
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 603
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 608
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 610
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showTapToSnapshotToast()V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 0

    .prologue
    .line 1065
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1017
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 1019
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 1021
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1026
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1031
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectDisplay()V

    .line 1044
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releasePreviewResources()V

    .line 1046
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1050
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetScreenOn()V

    .line 1052
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1054
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1055
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1056
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1057
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 1058
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    .line 1061
    return-void

    .line 1023
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 1024
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    goto :goto_0

    .line 1040
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1041
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->clearVideoNamer()V

    goto :goto_1
.end method

.method public onPieClosed()V
    .locals 2

    .prologue
    .line 2913
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2914
    return-void
.end method

.method public onPieOpened(II)V
    .locals 2
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->cancelActivityTouchHandling()V

    .line 2908
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2909
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2436
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 697
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 849
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mOpenCameraFail:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mCameraDisabled:Z

    if-eqz v1, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    iput v2, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 854
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 857
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v1, :cond_5

    .line 858
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetEffect()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 859
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 861
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetExposureCompensation()V

    .line 862
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    .line 863
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mOpenCameraFail:Z

    if-eqz v1, :cond_3

    .line 864
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a007a

    invoke-static {v1, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 867
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mCameraDisabled:Z

    if-eqz v1, :cond_4

    .line 868
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a007b

    invoke-static {v1, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 871
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 872
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 873
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 877
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeZoom()V

    .line 879
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 882
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 884
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 886
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_6

    .line 887
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    .line 888
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 891
    :cond_6
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 893
    new-instance v1, Lcom/android/camera/VideoModule$VideoNamer;

    invoke-direct {v1}, Lcom/android/camera/VideoModule$VideoNamer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    goto :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 845
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 667
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    .line 668
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 669
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 662
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 663
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPlayVideoActivity()V

    .line 658
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 2334
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 2374
    :goto_0
    return-void

    .line 2335
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    monitor-enter v3

    .line 2338
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 2373
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2340
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v4}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 2342
    .local v0, recordLocation:Z
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2345
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateEffectSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 2347
    :cond_2
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraActivity;->setStoragePath(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2348
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 2349
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/camera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 2352
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2353
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 2355
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2356
    .local v1, size:Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    if-ne v2, v4, :cond_4

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mVideoWidth:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mVideoHeight:I

    if-eq v2, v4, :cond_7

    .line 2360
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2361
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2366
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2367
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2371
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateOnScreenIndicators()V

    .line 2372
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraActivity;->initPowerShutter(Lcom/android/camera/ComboPreferences;)V

    .line 2373
    monitor-exit v3

    goto/16 :goto_0

    .line 2349
    .end local v1           #size:Landroid/hardware/Camera$Size;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 2363
    .restart local v1       #size:Landroid/hardware/Camera$Size;
    :cond_6
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 2364
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    goto :goto_2

    .line 2369
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 2947
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2948
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 2950
    :cond_0
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 705
    .local v0, stop:Z
    if-eqz v0, :cond_3

    .line 706
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 710
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 715
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 716
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 708
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startVideoRecording()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 724
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2592
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2593
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a00de

    iget v3, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2623
    :cond_0
    :goto_0
    return-void

    .line 2598
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2603
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_2

    .line 2605
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 2606
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    goto :goto_0

    .line 2612
    :cond_2
    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    .line 2613
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2614
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2615
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2616
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->dumpParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2617
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2619
    const-string v1, "CAM_VideoModule"

    const-string v2, "Video snapshot start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/VideoModule$JpegPictureCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/VideoModule$JpegPictureCallback;-><init>(Lcom/android/camera/VideoModule;Landroid/location/Location;)V

    invoke-virtual {v1, v4, v4, v4, v2}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2621
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 2622
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1069
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 1072
    :cond_0
    return-void
.end method

.method public removeTopLevelPopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 541
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 542
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    .line 545
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V
    .locals 5
    .parameter "popup"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 2917
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 2918
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2919
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->setShowMenu(Z)V

    .line 2920
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 2921
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 2922
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2924
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2925
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2926
    return-void
.end method

.method showVideoSnapshotUI(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2580
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2581
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 2585
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2587
    :cond_0
    return-void

    .line 2583
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewFrameLayout;->showBorder(Z)V

    goto :goto_0

    .line 2585
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateCameraAppView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2627
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2644
    :cond_0
    :goto_0
    return-void

    .line 2630
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->initPowerShutter(Lcom/android/camera/ComboPreferences;)V

    .line 2633
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-nez v0, :cond_3

    .line 2634
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2635
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    goto :goto_0

    .line 2638
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    .line 2639
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    goto :goto_0

    .line 2640
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    if-eqz v0, :cond_0

    .line 2641
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    .line 2642
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    goto :goto_0
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 2879
    const/4 v0, 0x1

    return v0
.end method
