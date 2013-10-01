.class public Lcom/android/camera/PhotoModule;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Lcom/android/camera/LocationManager$Listener;
.implements Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/PieRenderer$PieListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoModule$ImageNamer;,
        Lcom/android/camera/PhotoModule$ImageSaver;,
        Lcom/android/camera/PhotoModule$SaveRequest;,
        Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;,
        Lcom/android/camera/PhotoModule$AutoFocusCallback;,
        Lcom/android/camera/PhotoModule$JpegPictureCallback;,
        Lcom/android/camera/PhotoModule$RawPictureCallback;,
        Lcom/android/camera/PhotoModule$PostViewPictureCallback;,
        Lcom/android/camera/PhotoModule$ShutterCallback;,
        Lcom/android/camera/PhotoModule$ZoomChangeListener;,
        Lcom/android/camera/PhotoModule$MainHandler;,
        Lcom/android/camera/PhotoModule$CameraStartUpThread;
    }
.end annotation


# static fields
.field private static sHDRShotsPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAeLockSupported:Z

.field private mAspectRatioChanged:Z

.field private final mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBlocker:Landroid/view/View;

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mBurstShotInProgress:Z

.field private mBurstShotsDone:I

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraDisabled:Z

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

.field private mCameraState:I

.field private volatile mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

.field public mCaptureStartTime:J

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mExposureIndicator:Landroid/widget/ImageView;

.field private mFaceDetectionStarted:Z

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFirstTimeInitialized:Z

.field private mFlashIndicator:Landroid/widget/ImageView;

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusOverlayManager;

.field private mFocusStartTime:J

.field private final mFormatter:Ljava/util/Formatter;

.field private final mFormatterArgs:[Ljava/lang/Object;

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private mHDRExposureSet:Z

.field private mHDRRendering:Z

.field private mHDRShotInProgress:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHdrIndicator:Landroid/widget/ImageView;

.field private mHdrProgressDialog:Landroid/app/ProgressDialog;

.field private mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

.field private mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsImageCaptureIntent:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMenu:Landroid/view/View;

.field private mMeteringAreaSupported:Z

.field private mOnResumeTime:J

.field private mOnScreenIndicators:Landroid/view/View;

.field private mOpenCameraFail:Z

.field private mOrientation:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPaused:Z

.field protected mPendingSwitchCameraId:I

.field private mPhotoControl:Lcom/android/camera/PhotoController;

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPieRenderer:Lcom/android/camera/ui/PieRenderer;

.field private mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

.field private final mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field private mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mRestartPreview:Z

.field private mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewRetakeButton:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneIndicator:Landroid/widget/ImageView;

.field private mSceneMode:Ljava/lang/String;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private final mShutterCallback:Lcom/android/camera/PhotoModule$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mSnapshotOnIdle:Z

.field mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mSurfaceTexture:Ljava/lang/Object;

.field private mUpdateSet:I

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PhotoModule;->sHDRShotsPaths:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 101
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mAspectRatioChanged:Z

    .line 143
    iput v0, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 156
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mZoomSetByKey:Z

    .line 166
    iput v0, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 173
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 210
    new-instance v0, Lcom/android/camera/PhotoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$1;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mBuilder:Ljava/lang/StringBuilder;

    .line 218
    new-instance v0, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFormatter:Ljava/util/Formatter;

    .line 219
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFormatterArgs:[Ljava/lang/Object;

    .line 249
    iput v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 250
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 256
    new-instance v0, Lcom/android/camera/PhotoModule$ShutterCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$ShutterCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterCallback:Lcom/android/camera/PhotoModule$ShutterCallback;

    .line 257
    new-instance v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$PostViewPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    .line 259
    new-instance v0, Lcom/android/camera/PhotoModule$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$RawPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    .line 261
    new-instance v0, Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$AutoFocusCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    .line 263
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 268
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 297
    new-instance v0, Lcom/android/camera/PhotoModule$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$MainHandler;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    .line 301
    iput v3, p0, Lcom/android/camera/PhotoModule;->mBurstShotsDone:I

    .line 302
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mBurstShotInProgress:Z

    .line 305
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    .line 306
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mHDRExposureSet:Z

    .line 307
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mHDRRendering:Z

    .line 308
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mHdrProgressDialog:Landroid/app/ProgressDialog;

    .line 314
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 1194
    return-void

    :cond_0
    move-object v0, v1

    .line 263
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFocusManager()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToast()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeAfterCameraOpen()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/PhotoModule;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->locationFirstRun()V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mCameraDisabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/PhotoModule;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setLocationPreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/PhotoModule;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PhotoModule;->processZoomValueChanged(IZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/PieRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/FaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3700(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3802(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3900(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/PhotoModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4102(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4200(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mBurstShotInProgress:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/camera/PhotoModule;->mBurstShotsDone:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageNamer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/camera/PhotoModule;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$5000(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doAttach()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/android/camera/PhotoModule;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$5600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$5900()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/camera/PhotoModule;->sHDRShotsPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mHDRExposureSet:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/camera/PhotoModule;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/camera/PhotoModule;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHdrProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mHDRRendering:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 662
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 663
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/PhotoModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$5;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 670
    return-void
.end method

.method private animateFlash()V
    .locals 2

    .prologue
    .line 1310
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateFlash(I)V

    .line 1315
    :cond_0
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 2105
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2246
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 2247
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 2248
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-eqz v0, :cond_0

    .line 2249
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2251
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2252
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 2253
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 2254
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 2255
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2256
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    .line 2258
    :cond_1
    return-void
.end method

.method private dismissPopup(ZZ)V
    .locals 2
    .parameter "topOnly"
    .parameter "fullScreen"

    .prologue
    .line 2883
    if-eqz p2, :cond_0

    .line 2884
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 2885
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2887
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/PhotoModule;->setShowMenu(Z)V

    .line 2888
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 2889
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2890
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 2892
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoController;->popupDismissed(Z)V

    .line 2893
    return-void
.end method

.method private doAttach()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 1545
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1621
    :goto_0
    return-void

    .line 1549
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 1551
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1556
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 1559
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1560
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1561
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1563
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 1564
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1568
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1565
    :catch_0
    move-exception v1

    .line 1568
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1571
    :cond_1
    invoke-static {v1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v0

    .line 1572
    const v2, 0xc800

    invoke-static {v1, v2}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1573
    invoke-static {v1, v0}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1574
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "inline-data"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1576
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 1583
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "crop-temp"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1584
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1585
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "crop-temp"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 1586
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1587
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1588
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 1598
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1601
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1602
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    const-string v3, "circle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1603
    const-string v2, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 1606
    const-string v2, "output"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1610
    :goto_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1611
    const-string v2, "showWhenLocked"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1614
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1617
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1619
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1589
    :catch_1
    move-exception v1

    .line 1590
    :try_start_4
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 1591
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1598
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1593
    :catch_2
    move-exception v1

    .line 1594
    :try_start_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 1595
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1598
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_3
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1608
    :cond_5
    const-string v2, "return-data"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1598
    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    .line 1568
    :catchall_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_1
.end method

.method private doCancel()V
    .locals 3

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1625
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1626
    return-void
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 1368
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 1369
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1374
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private hidePostCaptureAlert()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2677
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2678
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2679
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2680
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2681
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 2682
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2684
    :cond_0
    return-void
.end method

.method private initOnScreenIndicator()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    .line 811
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    const v1, 0x7f10006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mExposureIndicator:Landroid/widget/ImageView;

    .line 812
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    const v1, 0x7f100069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    .line 813
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    const v1, 0x7f10006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneIndicator:Landroid/widget/ImageView;

    .line 814
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    const v1, 0x7f100068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mHdrIndicator:Landroid/widget/ImageView;

    .line 815
    return-void
.end method

.method private initializeAfterCameraOpen()V
    .locals 4

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/PieRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 570
    new-instance v0, Lcom/android/camera/PhotoController;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/camera/PhotoController;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoModule;Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    .line 571
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    invoke-virtual {v0, p0}, Lcom/android/camera/PhotoController;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 572
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PieRenderer;->setPieListener(Lcom/android/camera/ui/PieRenderer$PieListener;)V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 575
    new-instance v0, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_2

    .line 579
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraModule;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 581
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeRenderOverlay()V

    .line 582
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializePhotoControl()V

    .line 585
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->setPreviewFrameLayoutAspectRatio()V

    .line 586
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/PreviewFrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusOverlayManager;->setPreviewSize(II)V

    .line 588
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 589
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeZoom()V

    .line 590
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOnScreenIndicators()V

    .line 591
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToastIfNeeded()V

    .line 592
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isInCameraApp()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onFullScreenChanged(Z)V

    .line 593
    return-void
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 2840
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 2841
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    .line 2842
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    .line 2843
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    .line 2844
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    .line 2845
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mContinousFocusSupported:Z

    .line 2847
    return-void
.end method

.method private initializeControlByIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1942
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    .line 1943
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f10007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    .line 1944
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    new-instance v1, Lcom/android/camera/PhotoModule$10;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$10;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1952
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 1954
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 1958
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    .line 1959
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    .line 1960
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Landroid/view/View;

    .line 1961
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1963
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/PhotoModule$11;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$11;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1969
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/PhotoModule$12;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$12;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1976
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/PhotoModule$13;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$13;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1986
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    instance-of v0, v0, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 1987
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 1990
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupCaptureParams()V

    .line 1992
    :cond_1
    return-void
.end method

.method private initializeFirstTime()V
    .locals 3

    .prologue
    .line 628
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    .line 650
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 633
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 635
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepMediaProviderInstance()V

    .line 638
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 639
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v2, 0x7f020017

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 640
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 641
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 643
    new-instance v1, Lcom/android/camera/PhotoModule$ImageSaver;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$ImageSaver;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    .line 644
    new-instance v1, Lcom/android/camera/PhotoModule$ImageNamer;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule$ImageNamer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    .line 646
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    .line 647
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->addIdleHandler()V

    .line 649
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 2000
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 2003
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 2004
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 2014
    :goto_0
    return-void

    .line 2006
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v0, v1

    .line 2007
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v5, :cond_1

    .line 2008
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2010
    new-instance v0, Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    goto :goto_0

    .line 2007
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 2020
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSingleTapUpListener(Landroid/view/View;)V

    .line 2022
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 2023
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 2024
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewFrameLayout;->setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 2025
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewSurfaceView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    .line 2028
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 2029
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2031
    :cond_0
    return-void
.end method

.method private initializePhotoControl()V
    .locals 2

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 597
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 600
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSceneModeUI()V

    .line 601
    return-void
.end method

.method private initializeRenderOverlay()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 544
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFocusRenderer(Lcom/android/camera/ui/PieRenderer;)V

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_3

    .line 550
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0}, Lcom/android/camera/PreviewGestures;->clearTouchReceivers()V

    .line 551
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 552
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 553
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 555
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 556
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_2

    .line 557
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_3

    .line 560
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 564
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderOverlay;->requestLayout()V

    .line 565
    return-void
.end method

.method private initializeSecondTime()V
    .locals 3

    .prologue
    .line 677
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 679
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 681
    new-instance v1, Lcom/android/camera/PhotoModule$ImageSaver;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$ImageSaver;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    .line 682
    new-instance v1, Lcom/android/camera/PhotoModule$ImageNamer;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule$ImageNamer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    .line 683
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeZoom()V

    .line 684
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepMediaProviderInstance()V

    .line 685
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->hidePostCaptureAlert()V

    .line 687
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    invoke-virtual {v1}, Lcom/android/camera/PhotoController;->reloadPreferences()V

    .line 690
    :cond_0
    return-void
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mZoomMax:I

    .line 743
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRatios:Ljava/util/List;

    .line 746
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 748
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 749
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRatios:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 750
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v1, Lcom/android/camera/PhotoModule$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/PhotoModule$ZoomChangeListener;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method private isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2647
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2654
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 622
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 2810
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2811
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2812
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2813
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 5

    .prologue
    .line 1474
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 1476
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 1477
    return-void
.end method

.method private locationFirstRun()V
    .locals 4

    .prologue
    .line 497
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v1}, Lcom/android/camera/RecordLocationPreference;->isSet(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 503
    .local v0, backCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 508
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0125

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0126

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0128

    new-instance v3, Lcom/android/camera/PhotoModule$4;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoModule$4;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0127

    new-instance v3, Lcom/android/camera/PhotoModule$3;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoModule$3;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/camera/PhotoModule$2;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoModule$2;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_flashmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, "pref_camera_whitebalance_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string v3, "pref_camera_focusmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoController;->overrideSettings([Ljava/lang/String;)V

    .line 1471
    :cond_0
    return-void
.end method

.method private processZoomValueChanged(I)V
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 693
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mZoomMax:I

    if-gt p1, v0, :cond_0

    .line 694
    invoke-direct {p0, p1, v1}, Lcom/android/camera/PhotoModule;->processZoomValueChanged(IZ)V

    .line 695
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mZoomSetByKey:Z

    .line 697
    :cond_0
    return-void
.end method

.method private processZoomValueChanged(IZ)V
    .locals 4
    .parameter "index"
    .parameter "fromKey"

    .prologue
    .line 701
    if-nez p2, :cond_0

    if-nez p2, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mZoomSetByKey:Z

    if-nez v1, :cond_3

    .line 703
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_2

    .line 716
    :cond_1
    :goto_0
    return-void

    .line 704
    :cond_2
    iput p1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 705
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_1

    .line 707
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 708
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 709
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v1, :cond_1

    .line 710
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 711
    .local v0, p:Landroid/hardware/Camera$Parameters;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    goto :goto_0

    .line 714
    .end local v0           #p:Landroid/hardware/Camera$Parameters;
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mZoomSetByKey:Z

    goto :goto_0
.end method

.method private resetExposureCompensation()V
    .locals 5

    .prologue
    .line 605
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_exposure_key"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, value:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 608
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 609
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 610
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 612
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2806
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2807
    return-void
.end method

.method private setAutoExposureLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 2382
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 2383
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2385
    :cond_0
    return-void
.end method

.method private setAutoWhiteBalanceLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 2389
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 2390
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 2392
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .parameter "updateSet"

    .prologue
    .line 2595
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2596
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersInitialize()V

    .line 2599
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setVideoMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 2602
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 2603
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersZoom()V

    .line 2606
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 2607
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersPreference()V

    .line 2610
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->dumpParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2611
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2612
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2617
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 2618
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 2621
    iput v3, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 2644
    :cond_0
    :goto_0
    return-void

    .line 2623
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2624
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    if-eqz v0, :cond_2

    .line 2625
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Restarting preview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 2627
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 2629
    :cond_2
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 2630
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSceneModeUI()V

    .line 2631
    iput v3, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 2638
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAspectRatioChanged:Z

    if-eqz v0, :cond_0

    .line 2639
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Aspect ratio changed, restarting preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 2641
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mAspectRatioChanged:Z

    .line 2642
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2633
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2634
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private setCameraState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1289
    iput p1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 1290
    packed-switch p1, :pswitch_data_0

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1295
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    goto :goto_0

    .line 1298
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    goto :goto_0

    .line 1290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    .line 2262
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    .line 2263
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    .line 2264
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2265
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 2267
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 2268
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 2271
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 2272
    return-void
.end method

.method private setFocusAreasIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 2396
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2397
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2399
    :cond_0
    return-void
.end method

.method private setLocationPreference(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 538
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 539
    return-void
.end method

.method private setMeteringAreasIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 2403
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2405
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2407
    :cond_0
    return-void
.end method

.method private setShowMenu(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1379
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1380
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1383
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1385
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1380
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1383
    goto :goto_1
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 2659
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2660
    if-eqz v1, :cond_0

    .line 2661
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    .line 2662
    const-string v0, "crop"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    .line 2664
    :cond_0
    return-void
.end method

.method private setupPreview()V
    .locals 1

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 2277
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 2278
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2279
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 2280
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2667
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2668
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2669
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2670
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2671
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 2672
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2674
    :cond_0
    return-void
.end method

.method private showTapToFocusToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2832
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a00cf

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2834
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2835
    const-string v1, "pref_camera_first_use_hint_shown_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2836
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2837
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 659
    :cond_0
    return-void
.end method

.method private startPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2285
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2290
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 2294
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 2296
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 2298
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAspectRatioChanged:Z

    if-nez v0, :cond_3

    .line 2301
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2302
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2304
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 2306
    :cond_3
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 2308
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_7

    .line 2309
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 2310
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    if-nez v1, :cond_4

    .line 2311
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2312
    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_6

    .line 2313
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 2317
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 2318
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 2319
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 2320
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    .line 2322
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 2323
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 2329
    :goto_1
    const-string v0, "CAM_PhotoModule"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 2332
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 2335
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->setVideoMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 2336
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2338
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/PhotoModule;->mBurstShotsDone:I

    if-lez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    if-nez v0, :cond_5

    .line 2339
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2341
    :cond_5
    return-void

    .line 2315
    :cond_6
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    goto :goto_0

    .line 2325
    :cond_7
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 2326
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    goto :goto_1
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2344
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 2345
    const-string v0, "CAM_PhotoModule"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 2347
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 2349
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2350
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 2351
    :cond_1
    return-void
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2724
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 2769
    :cond_0
    :goto_0
    return-void

    .line 2726
    :cond_1
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to switch camera. id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    iget v1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    iput v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 2728
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 2729
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoController;->setCameraId(I)V

    .line 2732
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 2733
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->collapseCameraControls()Z

    .line 2734
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 2735
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 2738
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2739
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2741
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 2742
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2750
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    .line 2751
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v1, v1, v2

    .line 2752
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v0, :cond_4

    .line 2753
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 2754
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2755
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    .line 2756
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 2757
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializePhotoControl()V

    .line 2760
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeZoom()V

    .line 2761
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOnScreenIndicators()V

    .line 2762
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToastIfNeeded()V

    .line 2764
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 2767
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2743
    :catch_0
    move-exception v0

    .line 2744
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0a007a

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 2746
    :catch_1
    move-exception v0

    .line 2747
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0a007b

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 2752
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2584
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 2589
    :goto_0
    return-void

    .line 2587
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 3

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 2358
    if-eqz v0, :cond_0

    .line 2359
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2360
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2363
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "recording-hint"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2368
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2369
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    :cond_1
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2410
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setAutoExposureLockIfSupported()V

    .line 2411
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 2412
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setFocusAreasIfSupported()V

    .line 2413
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setMeteringAreasIfSupported()V

    .line 2416
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_picturesize_key"

    invoke-virtual {v0, v1, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2418
    if-nez v0, :cond_b

    .line 2419
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 2434
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2438
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 2439
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v3, v3

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v5, v0

    div-double/2addr v3, v5

    invoke-static {v2, v1, v3, v4}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2441
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2442
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2443
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2447
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2448
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2450
    :cond_1
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preview size is "

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

    .line 2455
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_hdr_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00c0

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2457
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a008e

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2458
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isCameraHdrSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/camera/Util;->useSoftwareHDR()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2459
    const-string v0, "hdr"

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 2472
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2473
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2474
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2479
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2480
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2489
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/camera/Util;->enableZSL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2490
    invoke-static {}, Lcom/android/camera/Util;->sendMagicSamsungZSLCommand()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2491
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->sendMagicSamsungZSLCommand()V

    .line 2494
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "camera-mode"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_jpeg_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a0049

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2503
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2509
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_iso_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a0038

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2511
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2512
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setISOValue(Ljava/lang/String;)V

    .line 2515
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a004f

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2518
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2519
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2523
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    if-nez v0, :cond_7

    .line 2524
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    .line 2525
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 2526
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 2527
    if-lt v0, v2, :cond_10

    if-gt v0, v1, :cond_10

    .line 2528
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 2534
    :cond_7
    :goto_3
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2536
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_flashmode_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00a7

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2539
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 2540
    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2541
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2551
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00ae

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2554
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2556
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2565
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v8}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 2566
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2569
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_focustime_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0a0068

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFocusTime(I)V

    .line 2576
    :goto_6
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mContinousFocusSupported:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_a

    .line 2577
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateAutoFocusMoveCallback()V

    .line 2579
    :cond_a
    return-void

    .line 2421
    :cond_b
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2422
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 2423
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v2, v3}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    .line 2425
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2426
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2427
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 2428
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Picture size changed. Restart preview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mAspectRatioChanged:Z

    .line 2430
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    goto/16 :goto_0

    .line 2461
    :cond_c
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 2462
    invoke-static {v7}, Lcom/android/camera/Util;->setDoSoftwareHDRShot(Z)V

    goto/16 :goto_1

    .line 2465
    :cond_d
    invoke-static {}, Lcom/android/camera/Util;->useSoftwareHDR()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2466
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Util;->setDoSoftwareHDRShot(Z)V

    .line 2468
    :cond_e
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_scenemode_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00b5

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 2483
    :cond_f
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 2484
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2485
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_2

    .line 2530
    :cond_10
    const-string v1, "CAM_PhotoModule"

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

    goto/16 :goto_3

    .line 2543
    :cond_11
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2544
    if-nez v0, :cond_8

    .line 2545
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0a00a8

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    goto/16 :goto_4

    .line 2558
    :cond_12
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 2559
    if-nez v0, :cond_9

    .line 2560
    const-string v0, "auto"

    goto/16 :goto_5

    .line 2573
    :cond_13
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 2375
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2376
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2378
    :cond_0
    return-void
.end method

.method private updateExposureOnScreenIndicator(I)V
    .locals 3
    .parameter

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mExposureIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 855
    :goto_0
    return-void

    .line 827
    :cond_0
    const/4 v0, 0x0

    .line 828
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v1

    .line 829
    int-to-float v2, p1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 830
    packed-switch v1, :pswitch_data_0

    .line 853
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mExposureIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 832
    :pswitch_0
    const v0, 0x7f02008f

    .line 833
    goto :goto_1

    .line 835
    :pswitch_1
    const v0, 0x7f02008e

    .line 836
    goto :goto_1

    .line 838
    :pswitch_2
    const v0, 0x7f02008d

    .line 839
    goto :goto_1

    .line 841
    :pswitch_3
    const v0, 0x7f02008c

    .line 842
    goto :goto_1

    .line 844
    :pswitch_4
    const v0, 0x7f020090

    .line 845
    goto :goto_1

    .line 847
    :pswitch_5
    const v0, 0x7f020091

    .line 848
    goto :goto_1

    .line 850
    :pswitch_6
    const v0, 0x7f020092

    goto :goto_1

    .line 830
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

    .line 858
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 872
    :goto_0
    return-void

    .line 861
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 864
    :cond_2
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 865
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 866
    :cond_3
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 867
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020095

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 869
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateHdrOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHdrIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 895
    :goto_0
    return-void

    .line 890
    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->getDoSoftwareHDRShot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHdrIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020097

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHdrIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020096

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateOnScreenIndicators()V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updateSceneOnScreenIndicator(Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updateExposureOnScreenIndicator(I)V

    .line 900
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updateHdrOnScreenIndicator(Ljava/lang/String;)V

    .line 902
    return-void
.end method

.method private updateSceneModeUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1453
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :goto_0
    return-void

    .line 1457
    :cond_0
    invoke-direct {p0, v2, v2, v2}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSceneOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 884
    :goto_0
    return-void

    .line 878
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 882
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 2110
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    .line 2112
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2113
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2115
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2120
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2121
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 2122
    return-void
.end method

.method public capture()Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1320
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v0, v10, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v8

    .line 1359
    :goto_0
    return v0

    .line 1324
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 1325
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    .line 1326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 1328
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "hdr"

    if-ne v0, v1, :cond_5

    move v9, v7

    .line 1330
    :goto_1
    if-eqz v9, :cond_2

    .line 1331
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->animateFlash()V

    .line 1335
    :cond_2
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    .line 1336
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1337
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    .line 1338
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v5}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1339
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1341
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterCallback:Lcom/android/camera/PhotoModule$ShutterCallback;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    new-instance v4, Lcom/android/camera/PhotoModule$JpegPictureCallback;

    invoke-direct {v4, p0, v5}, Lcom/android/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    iget v5, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v6}, Lcom/android/camera/FocusOverlayManager;->getFocusState()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture2(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)V

    .line 1345
    invoke-static {}, Lcom/android/camera/Util;->enableZSL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1346
    iput-boolean v8, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 1349
    :cond_3
    if-nez v9, :cond_4

    .line 1350
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->animateFlash()V

    .line 1353
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 1354
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    iget v4, v5, Landroid/hardware/Camera$Size;->width:I

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/PhotoModule$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    .line 1357
    iput-boolean v8, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1358
    invoke-direct {p0, v10}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    move v0, v7

    .line 1359
    goto :goto_0

    :cond_5
    move v9, v8

    .line 1328
    goto :goto_1
.end method

.method public collapseCameraControls()Z
    .locals 2

    .prologue
    .line 1482
    const/4 v0, 0x0

    .line 1483
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 1484
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->dismissPopup(Z)V

    .line 1485
    const/4 v0, 0x1

    .line 1487
    :cond_0
    return v0
.end method

.method public dismissPopup(Z)V
    .locals 1
    .parameter "topPopupOnly"

    .prologue
    .line 2879
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/PhotoModule;->dismissPopup(ZZ)V

    .line 2880
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 800
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 806
    :goto_0
    return v0

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_2

    .line 804
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->dispatchTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 806
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 0

    .prologue
    .line 821
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
    .locals 5
    .parameter "activity"
    .parameter "parent"
    .parameter "reuseNail"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 453
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 454
    iput-object p2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    .line 455
    new-instance v0, Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v3}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 456
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 457
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 459
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 463
    new-instance v0, Lcom/android/camera/PhotoModule$CameraStartUpThread;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/camera/PhotoModule$CameraStartUpThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 464
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->start()V

    .line 466
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040025

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 468
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 469
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 470
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraActivity;->setStoragePath(Landroid/content/SharedPreferences;)Z

    .line 474
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    .line 475
    if-eqz p3, :cond_1

    .line 476
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 482
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetExposureCompensation()V

    .line 485
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 487
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeControlByIntent()V

    .line 488
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    .line 489
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeMiscControls()V

    .line 490
    new-instance v0, Lcom/android/camera/LocationManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 491
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initOnScreenIndicator()V

    .line 492
    return-void

    :cond_0
    move v0, v2

    .line 476
    goto :goto_0

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->createCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 1813
    return-void
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 2863
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2084
    packed-switch p1, :pswitch_data_0

    .line 2102
    :goto_0
    return-void

    .line 2086
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2087
    if-eqz p3, :cond_0

    .line 2088
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2089
    if-eqz v1, :cond_0

    .line 2090
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2093
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, p2, v0}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 2094
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 2096
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "crop-temp"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2097
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 2084
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2144
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2145
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 2160
    :cond_0
    :goto_0
    return v0

    .line 2150
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_2

    .line 2151
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2153
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doCancel()V

    goto :goto_0

    .line 2156
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2160
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 3
    .parameter

    .prologue
    .line 2708
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2721
    :cond_0
    :goto_0
    return-void

    .line 2710
    :cond_1
    iput p1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 2711
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 2712
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to copy texture. cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 2717
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    goto :goto_0

    .line 2719
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 2797
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2035
    const-string v0, "CAM_PhotoModule"

    const-string v3, "onConfigurationChanged"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 2040
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2046
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 2048
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2049
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2050
    const v4, 0x7f040025

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2053
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeControlByIntent()V

    .line 2055
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFocusManager()V

    .line 2056
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeMiscControls()V

    .line 2057
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 2060
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 2061
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 2062
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeZoom()V

    .line 2063
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initOnScreenIndicator()V

    .line 2064
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOnScreenIndicators()V

    .line 2065
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_1

    .line 2066
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 2067
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 2068
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 2069
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v0, v3

    .line 2070
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 2071
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 2072
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 2074
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeRenderOverlay()V

    .line 2075
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isInCameraApp()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onFullScreenChanged(Z)V

    .line 2076
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    if-eqz v0, :cond_2

    .line 2077
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showPostCaptureAlert()V

    .line 2079
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 2070
    goto :goto_1

    .line 2042
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onFullScreenChanged(Z)V
    .locals 5
    .parameter "full"

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1389
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1390
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-nez p1, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 1393
    invoke-direct {p0, v2, p1}, Lcom/android/camera/PhotoModule;->dismissPopup(ZZ)V

    .line 1395
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_2

    .line 1396
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 1398
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_3

    .line 1400
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_8

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Lcom/android/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 1402
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_4

    .line 1403
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez p1, :cond_9

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1405
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setShowMenu(Z)V

    .line 1406
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1407
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    if-eqz p1, :cond_a

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1409
    :cond_5
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_b

    .line 1410
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_6

    .line 1411
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->setFullScreen(Z)V

    .line 1420
    :cond_6
    :goto_4
    return-void

    :cond_7
    move v0, v2

    .line 1390
    goto :goto_0

    :cond_8
    move v0, v3

    .line 1400
    goto :goto_1

    :cond_9
    move v1, v2

    .line 1403
    goto :goto_2

    :cond_a
    move v2, v3

    .line 1407
    goto :goto_3

    .line 1415
    :cond_b
    if-eqz p1, :cond_c

    .line 1416
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->expand()V

    goto :goto_4

    .line 1418
    :cond_c
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->shrink()V

    goto :goto_4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2166
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v3, v3, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-nez v3, :cond_0

    .line 2215
    :goto_0
    return v1

    .line 2169
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2183
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 2187
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    .line 2171
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 2172
    invoke-virtual {p0, v2}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    :cond_1
    move v1, v2

    .line 2174
    goto :goto_0

    .line 2176
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 2177
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    :cond_2
    move v1, v2

    .line 2179
    goto :goto_0

    .line 2188
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 2189
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2190
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 2194
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    :cond_4
    move v1, v2

    .line 2196
    goto :goto_0

    .line 2192
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    goto :goto_1

    .line 2198
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/android/camera/ActivityBase;->mPowerShutter:Z

    if-eqz v1, :cond_6

    .line 2199
    invoke-virtual {p0, v2}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    :cond_6
    move v1, v2

    .line 2201
    goto :goto_0

    .line 2203
    :sswitch_4
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v1, :cond_7

    .line 2204
    iget v1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    add-int/lit8 v0, v1, 0x1

    .line 2205
    .local v0, index:I
    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->processZoomValueChanged(I)V

    .end local v0           #index:I
    :cond_7
    move v1, v2

    .line 2207
    goto :goto_0

    .line 2209
    :sswitch_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v1, :cond_8

    .line 2210
    iget v1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    add-int/lit8 v0, v1, -0x1

    .line 2211
    .restart local v0       #index:I
    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->processZoomValueChanged(I)V

    .end local v0           #index:I
    :cond_8
    move v1, v2

    .line 2213
    goto/16 :goto_0

    .line 2169
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x18 -> :sswitch_4
        0x19 -> :sswitch_5
        0x1a -> :sswitch_3
        0x1b -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2220
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-nez v2, :cond_1

    .line 2241
    :cond_0
    :goto_0
    return v0

    .line 2223
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2236
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v2, :cond_0

    move v0, v1

    .line 2237
    goto :goto_0

    .line 2225
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_2

    .line 2226
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    :cond_2
    move v0, v1

    .line 2228
    goto :goto_0

    .line 2230
    :sswitch_2
    sget-boolean v0, Lcom/android/camera/ActivityBase;->mPowerShutter:Z

    if-eqz v0, :cond_3

    .line 2231
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    :cond_3
    move v0, v1

    .line 2233
    goto :goto_0

    .line 2223
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    const/4 v1, 0x6

    .line 1504
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    iget v0, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-static {p1, v0}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 1508
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1510
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToast()V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1879
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->waitCameraStartUpThread()V

    .line 1885
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ActivityBase;->isFirstStartAfterScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1887
    invoke-static {}, Lcom/android/camera/ActivityBase;->resetFirstStartAfterScreenOn()V

    .line 1888
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraHolder;->keep(I)V

    .line 1892
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_1

    .line 1893
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1895
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 1897
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 1898
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1899
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1900
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    .line 1902
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetScreenOn()V

    .line 1905
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->initPowerShutter(Lcom/android/camera/ComboPreferences;)V

    .line 1908
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->collapseCameraControls()Z

    .line 1909
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1911
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_4

    .line 1912
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    if-eqz v0, :cond_4

    .line 1913
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$ImageSaver;->finish()V

    .line 1914
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    .line 1915
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$ImageNamer;->finish()V

    .line 1916
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    .line 1920
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1924
    :cond_5
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 1927
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1928
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1929
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1930
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1931
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1932
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1933
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1934
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1935
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1937
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 1938
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1939
    :cond_6
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 1

    .prologue
    .line 1873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 1874
    return-void
.end method

.method public onPieClosed()V
    .locals 2

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2783
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2784
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 2786
    :cond_0
    return-void
.end method

.method public onPieOpened(II)V
    .locals 2
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->cancelActivityTouchHandling()V

    .line 2774
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2775
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2776
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 2778
    :cond_0
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2792
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2793
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1833
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 1856
    :cond_0
    :goto_0
    return-void

    .line 1835
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    .line 1836
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 1839
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-nez v0, :cond_2

    .line 1840
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetExposureCompensation()V

    .line 1841
    new-instance v0, Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/PhotoModule$CameraStartUpThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 1842
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->start()V

    .line 1847
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_3

    .line 1848
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1852
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 1855
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    goto :goto_0

    .line 1850
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeSecondTime()V

    goto :goto_1
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 1828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 1829
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1531
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doCancel()V

    .line 1532
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1525
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doAttach()V

    .line 1526
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1537
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1542
    :goto_0
    return-void

    .line 1540
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->hidePostCaptureAlert()V

    .line 1541
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged()V
    .locals 3

    .prologue
    .line 2689
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2704
    :goto_0
    return-void

    .line 2691
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 2693
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2695
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setStoragePath(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2696
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 2697
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 2700
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    .line 2701
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->setPreviewFrameLayoutAspectRatio()V

    .line 2702
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOnScreenIndicators()V

    .line 2703
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->initPowerShutter(Lcom/android/camera/ComboPreferences;)V

    goto :goto_0

    .line 2697
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 2897
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2898
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 2900
    :cond_0
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1650
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_burst_key"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1652
    invoke-static {}, Lcom/android/camera/Util;->getDoSoftwareHDRShot()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mHDRRendering:Z

    if-nez v1, :cond_1

    .line 1653
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Starting HDR shot - set min exposure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1655
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1656
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    .line 1657
    sget-object v0, Lcom/android/camera/PhotoModule;->sHDRShotsPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1660
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 1661
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v5}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1665
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/PhotoModule$7;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$7;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1809
    :cond_0
    :goto_0
    return-void

    .line 1673
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getDoSoftwareHDRShot()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mHDRExposureSet:Z

    if-nez v1, :cond_4

    .line 1675
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    .line 1676
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    .line 1683
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1684
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1685
    const-string v0, "CAM_PhotoModule"

    const-string v1, "HDR - Set exposure to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1688
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mHDRExposureSet:Z

    .line 1756
    :goto_1
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 1757
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/PhotoModule$9;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$9;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-static {}, Lcom/android/camera/Util;->getSoftwareHDRExposureSettleTime()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1689
    :cond_2
    if-nez v0, :cond_3

    .line 1690
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1691
    const-string v0, "CAM_PhotoModule"

    const-string v1, "HDR - Set exposure to max"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1694
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mHDRExposureSet:Z

    goto :goto_1

    .line 1697
    :cond_3
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    .line 1698
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mHDRRendering:Z

    .line 1699
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 1700
    iput v5, p0, Lcom/android/camera/PhotoModule;->mBurstShotsDone:I

    .line 1701
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Done shooting all exposures, computing HDR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 1705
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v6}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1708
    new-instance v0, Lcom/android/camera/HdrSoftwareProcessor;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/HdrSoftwareProcessor;-><init>(Landroid/content/Context;)V

    .line 1710
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00b8

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0a007e

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mHdrProgressDialog:Landroid/app/ProgressDialog;

    .line 1713
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/PhotoModule$8;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/PhotoModule$8;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/HdrSoftwareProcessor;)V

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1767
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    .line 1772
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v1

    const-wide/32 v3, 0x2faf080

    cmp-long v1, v1, v3

    if-gtz v1, :cond_5

    .line 1773
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1777
    :cond_5
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick: mCameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    :cond_6
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_7

    .line 1786
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    goto/16 :goto_0

    .line 1790
    :cond_7
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->doSnap()V

    .line 1791
    iget v1, p0, Lcom/android/camera/PhotoModule;->mBurstShotsDone:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mBurstShotsDone:I

    .line 1793
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    if-eqz v1, :cond_8

    .line 1794
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mHDRExposureSet:Z

    .line 1795
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 1798
    :cond_8
    iget v1, p0, Lcom/android/camera/PhotoModule;->mBurstShotsDone:I

    if-lt v1, v0, :cond_9

    .line 1799
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    if-nez v0, :cond_0

    .line 1800
    iput v5, p0, Lcom/android/camera/PhotoModule;->mBurstShotsDone:I

    .line 1801
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mBurstShotInProgress:Z

    .line 1802
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    goto/16 :goto_0

    .line 1804
    :cond_9
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-nez v0, :cond_0

    .line 1806
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 1807
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mBurstShotInProgress:Z

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1630
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 1646
    :cond_0
    :goto_0
    return-void

    .line 1635
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    :cond_2
    if-eqz p1, :cond_4

    .line 1638
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "hdr"

    if-ne v0, v1, :cond_3

    .line 1639
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 1640
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1642
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterDown()V

    goto :goto_0

    .line 1644
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterUp()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2127
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 2140
    :cond_0
    :goto_0
    return-void

    .line 2135
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2138
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 2139
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusOverlayManager;->setPreviewSize(II)V

    .line 2853
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1520
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 2802
    :cond_0
    return-void
.end method

.method public removeTopLevelPopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1492
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 1493
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->dismissPopup(Z)V

    .line 1496
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 1364
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 1365
    return-void
.end method

.method setPreviewFrameLayoutAspectRatio()V
    .locals 6

    .prologue
    .line 2857
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2858
    .local v0, size:Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 2859
    return-void
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 0
    .parameter "hasSignal"

    .prologue
    .line 818
    return-void
.end method

.method public showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V
    .locals 5
    .parameter "popup"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 2867
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 2868
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2869
    invoke-direct {p0, v4}, Lcom/android/camera/PhotoModule;->setShowMenu(Z)V

    .line 2870
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 2871
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 2872
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2874
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2875
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2876
    return-void
.end method

.method public startFaceDetection()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 757
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-nez v3, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->noFaceDetectOnFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v3, v3, v4

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eq v3, v1, :cond_0

    .line 765
    :cond_2
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-ne v3, v1, :cond_0

    .line 766
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v3

    if-lez v3, :cond_0

    .line 767
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 768
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 769
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 770
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 771
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v3, v4

    .line 772
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 773
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 774
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 775
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/PhotoModule$6;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoModule$6;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 781
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 772
    goto :goto_1
.end method

.method public stopFaceDetection()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 788
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-nez v0, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 792
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 793
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 794
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1424
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

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

    .line 1426
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 1430
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1433
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-eqz v0, :cond_1

    .line 1441
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 1438
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_0

    .line 1439
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 1445
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1447
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 1448
    return-void
.end method

.method public updateCameraAppView()V
    .locals 2

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->initPowerShutter(Lcom/android/camera/ComboPreferences;)V

    .line 1824
    return-void
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 1817
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    return v0
.end method

.method waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 1860
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 1861
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->cancel()V

    .line 1862
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->join()V

    .line 1863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 1864
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1869
    :cond_0
    :goto_0
    return-void

    .line 1866
    :catch_0
    move-exception v0

    goto :goto_0
.end method
