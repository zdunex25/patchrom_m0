.class public Lcom/sec/android/app/camera/CameraEngine;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;,
        Lcom/sec/android/app/camera/CameraEngine$LocationListener;,
        Lcom/sec/android/app/camera/CameraEngine$CameraPreviewCallback;,
        Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;,
        Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;,
        Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;,
        Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;,
        Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;,
        Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;,
        Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;,
        Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;,
        Lcom/sec/android/app/camera/CameraEngine$MainHandler;,
        Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;,
        Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;,
        Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;,
        Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;,
        Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;,
        Lcom/sec/android/app/camera/CameraEngine$OnFacePositionChangedListener;,
        Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;
    }
.end annotation


# static fields
.field protected static final AF_FAIL_SOUND:I = 0x2

.field protected static final AF_SUCCESS_SOUND:I = 0x1

.field protected static final CHANGE_STORAGE_TO_PHONE_MEMORY:I = 0x64

.field protected static final DEFAULT_IMEI_KTF:Ljava/lang/String; = "004400152020002"

.field protected static final DEFAULT_IMEI_SKT:Ljava/lang/String; = "357858010034783"

.field protected static final DELAY_TIME_TO_HIDE_FOCUS_RECT:I = 0x3e8

.field protected static final DELAY_TIME_TO_HIDE_FOCUS_RECT_SHORT:I = 0x12c

.field protected static final DELAY_TIME_TO_RESET_TOUCH_FOCUS:I = 0xbb8

.field public static final ERROR_BUFFER_OVERFLOW_FROM_RECORDER:I = -0x6

.field public static final ERROR_CAMCORDER_OPEN:I = -0x2

.field public static final ERROR_CAMERA_OPEN:I = -0x1

.field public static final ERROR_INVALID_FIRMWARE_VERSION:I = -0x7

.field public static final ERROR_MEDIA_SERVER_DIED:I = -0x8

.field public static final ERROR_RECORDING:I = -0x4

.field public static final ERROR_START_PREVIEW:I = -0x3

.field public static final ERROR_UNKOWN_CALLBACK_FROM_DEVICE:I = -0x5

.field public static final FOCUSING:I = 0x1

.field public static final FOCUS_CANCELLED:I = 0x4

.field public static final FOCUS_FAIL:I = 0x3

.field public static final FOCUS_NOT_STARTED:I = 0x0

.field public static final FOCUS_RESTART:I = 0x5

.field public static final FOCUS_SUCCESS:I = 0x2

.field private static final HDR_INDEX_ORIGINAL_IMG:I = 0x1

.field private static final HDR_INDEX_RESULT_IMG:I = 0x2

.field protected static final HIDE_FOCUS_RECT:I = 0x2

.field private static final LOCATION_DISTANCE:F = 100.0f

.field private static final LOCATION_INTERVAL:I = 0x3e8

.field public static final OPEN_RETRY_NUMBER:I = 0x0

.field protected static final RESET_TOUCH_FOCUS:I = 0x1

.field public static final RES_AUTOFOCUS_CANCELED:I = 0x2

.field public static final RES_AUTOFOCUS_FAIL:I = 0x0

.field public static final RES_AUTOFOCUS_FOCUSING:I = 0x3

.field public static final RES_AUTOFOCUS_RESTART:I = 0x4

.field public static final RES_AUTOFOCUS_SUCCESS:I = 0x1

.field public static SHUTTER_SOUND_SHORT:I = 0x0

.field public static final SHUTTER_TIMER_HANDLER_MSG:I = 0xa

.field private static final SINGLE_SHOT_BURST_OFF:I = 0x0

.field private static final SINGLE_SHOT_BURST_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraEngine"

.field protected static final URI_SEARCHING_ID:I = 0x0

.field protected static final URI_SEARCHING_INTERVAL:I = 0x1e

.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mIsBlockSingleShutter:Z

.field private static m_bIsTouchAutoFocusing:Z

.field private static m_bIsTouchFocusPositioned:Z

.field public static m_bRestartTouchAF:Z


# instance fields
.field private groupId:I

.field protected mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mAutoFocusCallback:Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field protected mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCaptureInitiated:Z

.field private mCheckingFace:I

.field protected mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

.field protected mDateTaken:J

.field protected mDateTakenForHDR:J

.field protected mDisplayOrientation:I

.field public mEnableWaitingAnimation:Z

.field private mErrorCallback:Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

.field protected mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

.field private mFaceDetectionCallback:Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;

.field protected mFocusState:I

.field protected mFocusToneGenerator:Landroid/media/ToneGenerator;

.field protected mInformedAboutFirmwareVersion:Z

.field private mIsFaceZoomed:Z

.field private mIsFinishOneShotPreviewCallback:Z

.field private mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

.field private mLandscapeActive:Z

.field protected mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

.field private mLastCapturedFileName:Ljava/lang/String;

.field private mLastCapturedTitle:Ljava/lang/String;

.field protected mLastContentUri:Landroid/net/Uri;

.field private mLastOrientation:I

.field mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

.field private mNumOfSavedImageInHDR:I

.field private mNumberOfPictureSavingThread:I

.field protected mOldViewFinderHeight:I

.field protected mOldViewFinderWidth:I

.field protected mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFacePositionChangedListener;

.field protected mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;

.field protected mOnTimerEventListener:Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;

.field protected mOpenCameraThread:Ljava/lang/Thread;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationOnTake:I

.field protected mOriginalViewFinderHeight:I

.field protected mOriginalViewFinderWidth:I

.field private mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

.field private mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

.field private mPictureSavingThread:Ljava/lang/Thread;

.field protected mPreviewHeight:I

.field protected mPreviewWidth:I

.field private mRawPictureCallback:Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

.field protected mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

.field protected mRetry:I

.field protected mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

.field private mSearchingLastContentUriThread:Ljava/lang/Thread;

.field private mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

.field private mShutterCallback:Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

.field private mShutterSoundEnable:Z

.field private mSingleShotBurst:I

.field protected mStartPreviewThread:Ljava/lang/Thread;

.field protected mStateDepot:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/AbstractCeState;",
            ">;"
        }
    .end annotation
.end field

.field protected mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

.field private mTapArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Area;",
            ">;"
        }
    .end annotation
.end field

.field protected mTimerEventHandler:Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

.field protected mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    .line 170
    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    .line 171
    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bRestartTouchAF:Z

    .line 176
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    .line 194
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/camera/CameraEngine;->SHUTTER_SOUND_SHORT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 10
    .parameter "activityContext"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 112
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    .line 115
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 122
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    .line 123
    new-instance v0, Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CeRequestQueue;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    .line 125
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mInformedAboutFirmwareVersion:Z

    .line 133
    iput v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    .line 137
    iput v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mRetry:I

    .line 153
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    .line 154
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    .line 155
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 156
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    .line 157
    iput v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumberOfPictureSavingThread:I

    .line 162
    iput v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumOfSavedImageInHDR:I

    .line 167
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mEnableWaitingAnimation:Z

    .line 173
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 174
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    .line 178
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    .line 179
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CameraEngine;->mLandscapeActive:Z

    .line 183
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mIsFaceZoomed:Z

    .line 185
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mIsFinishOneShotPreviewCallback:Z

    .line 188
    iput v6, p0, Lcom/sec/android/app/camera/CameraEngine;->groupId:I

    .line 192
    iput v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mDisplayOrientation:I

    .line 202
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;

    .line 212
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFacePositionChangedListener;

    .line 222
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnTimerEventListener:Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateIdle;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v6}, Lcom/sec/android/app/camera/CeStateIdle;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateInitializing;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v7}, Lcom/sec/android/app/camera/CeStateInitializing;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateInitialized;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v8}, Lcom/sec/android/app/camera/CeStateInitialized;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateStartingPreview;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v4, 0x3

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateStartingPreview;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStatePreviewing;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v4, 0x4

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStatePreviewing;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateShutdown;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v4, 0x7

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateShutdown;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    .line 257
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

    .line 280
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    .line 292
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 294
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mCaptureInitiated:Z

    .line 297
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;

    .line 298
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mFaceDetectionCallback:Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;

    .line 299
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShutterCallback:Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

    .line 300
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

    .line 301
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorCallback:Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

    .line 302
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    .line 304
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    .line 308
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 309
    iput v9, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastOrientation:I

    .line 310
    iput v9, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationOnTake:I

    .line 312
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 313
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    .line 314
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedTitle:Ljava/lang/String;

    .line 326
    iput v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mSingleShotBurst:I

    .line 347
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$MainHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    .line 735
    iput v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mCheckingFace:I

    .line 2401
    new-array v0, v8, [Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2, p0}, Lcom/sec/android/app/camera/CameraEngine$LocationListener;-><init>(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;Lcom/sec/android/app/camera/CameraEngine;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    const-string v2, "network"

    invoke-direct {v1, p0, v2, p0}, Lcom/sec/android/app/camera/CameraEngine$LocationListener;-><init>(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;Lcom/sec/android/app/camera/CameraEngine;)V

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    .line 3856
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CameraEngine;->mShutterSoundEnable:Z

    .line 394
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 395
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 398
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    .line 407
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    sget-object v1, Lcom/sec/android/app/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    #setter for: Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->access$502(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 411
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->openCameraDevice()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->startFaceDetection()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->updateOutdoorVisibility()V

    return-void
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/CameraEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mIsFinishOneShotPreviewCallback:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/CameraEngine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setLastOrientation(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1708(Lcom/sec/android/app/camera/CameraEngine;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumberOfPictureSavingThread:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumberOfPictureSavingThread:I

    return v0
.end method

.method static synthetic access$1710(Lcom/sec/android/app/camera/CameraEngine;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumberOfPictureSavingThread:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumberOfPictureSavingThread:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/CameraEngine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumOfSavedImageInHDR:I

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/camera/CameraEngine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumOfSavedImageInHDR:I

    return p1
.end method

.method static synthetic access$2002(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/CameraEngine;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/camera/CameraEngine;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/sec/android/app/camera/CameraEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCaptureInitiated:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    return-object v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->mIsBlockSingleShutter:Z

    return v0
.end method

.method static synthetic access$2502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    sput-boolean p0, Lcom/sec/android/app/camera/CameraEngine;->mIsBlockSingleShutter:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShutterCallback:Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/CameraEngine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCheckingFace:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/CameraEngine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCheckingFace:I

    return p1
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 2621
    if-le p0, p2, :cond_0

    .line 2623
    .end local p2
    :goto_0
    return p2

    .line 2622
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 2623
    goto :goto_0
.end method

.method private getCurrentStateId()I
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    return v0
.end method

.method private initializeLocationManager()V
    .locals 2

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 2321
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    .line 2323
    :cond_0
    return-void
.end method

.method private openCameraDevice()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1267
    const-string v1, "CameraEngine"

    const-string v2, "opening camera device..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const-string v1, "AXLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HW Open**StartU["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :try_start_0
    const-string v1, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera - cameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 1276
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1277
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    :cond_0
    :goto_0
    iput v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mRetry:I

    .line 1300
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_6

    .line 1301
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorCallback:Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 1302
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mFaceDetectionCallback:Lcom/sec/android/app/camera/CameraEngine$FaceDetectionCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V

    .line 1303
    const-string v1, "CameraEngine"

    const-string v2, "camera device is opened."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 1307
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v1, :cond_5

    .line 1308
    const-string v1, "CameraEngine"

    const-string v2, "CameraParameters is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 1322
    :cond_1
    :goto_1
    return-void

    .line 1279
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1281
    :catch_0
    move-exception v0

    .line 1283
    .local v0, e:Ljava/lang/Exception;
    iget v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRetry:I

    .line 1284
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRetry:I

    if-gez v1, :cond_3

    .line 1285
    const-string v1, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service cannot connect. retry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mRetry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->openCameraDevice()V

    .line 1288
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_1

    .line 1290
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRetry:I

    if-ltz v1, :cond_4

    .line 1291
    const-string v1, "CameraEngine"

    const-string v2, "service cannot connect. critical exception occured."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iput v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mRetry:I

    .line 1293
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1295
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRetry:I

    if-gez v1, :cond_0

    goto :goto_1

    .line 1317
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->setCameraDisplayOrientation()V

    .line 1321
    :cond_6
    const-string v1, "AXLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HW Open**EndU["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static roundOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 2751
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private setLastOrientation(I)V
    .locals 0
    .parameter "lastOrientation"

    .prologue
    .line 2755
    iput p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastOrientation:I

    .line 2756
    return-void
.end method

.method private startFaceDetection()V
    .locals 3

    .prologue
    .line 3784
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_1

    .line 3794
    :cond_0
    :goto_0
    return-void

    .line 3786
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getMaxNumDetectedFaces()I

    move-result v1

    if-lez v1, :cond_0

    .line 3790
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->startFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3791
    :catch_0
    move-exception v0

    .line 3792
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraEngine"

    const-string v2, "startFaceDetection failed. It seems to be started already."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateOutdoorVisibility()V
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraOutdoorVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 552
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    .line 560
    :goto_0
    return-void

    .line 554
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateSettingsWhenSwitchCamera()V
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->refreshCameraSettingValuesFromPreferences()V

    .line 1431
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->refreshCameraSettingValues()V

    .line 1432
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->updateShootingModeWhenSwitchCamera()V

    .line 1433
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSettingValuesAsDefault()V

    .line 1434
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->refreshButtonDimForCamera()V

    .line 1435
    return-void
.end method


# virtual methods
.method public CreateCaptureData(Landroid/content/Intent;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 2872
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 2873
    .local v1, PREVIEW_NORMAL_WIDTH:I
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 2874
    .local v0, PREVIEW_NORMAL_HEIGHT:I
    if-eqz p1, :cond_1

    .line 2875
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v3, :cond_0

    .line 2876
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 2877
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 2879
    :cond_0
    new-instance v3, Lcom/sec/android/app/camera/CaptureData;

    invoke-direct {v3}, Lcom/sec/android/app/camera/CaptureData;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 2880
    const-string v3, "inline-data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 2881
    .local v2, mdata:[B
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int v5, v1, v0

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v4, v5}, Lcom/sec/android/glview/TwGLUtil;->calculateSampleSize(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/app/camera/CaptureData;->setCaptureData([BI)V

    .line 2886
    .end local v2           #mdata:[B
    :cond_1
    return-void
.end method

.method public IsWaitingAnimation()Z
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mEnableWaitingAnimation:Z

    return v0
.end method

.method protected calculateOrientationForPicture(I)I
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v4, 0x1

    .line 2771
    const/4 v1, 0x0

    .line 2772
    .local v1, rotation:I
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 2774
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraHolder;->getCameraInfo()[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v3

    aget-object v0, v2, v3

    .line 2778
    .local v0, info:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    iget v2, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-ne v2, v4, :cond_2

    .line 2779
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 2783
    iget v2, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    add-int/lit16 v2, v2, 0xb4

    rem-int/lit16 v1, v2, 0x168

    .line 2794
    .end local v0           #info:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    :cond_0
    :goto_0
    return v1

    .line 2786
    .restart local v0       #info:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    :cond_1
    iget v2, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0

    .line 2789
    :cond_2
    iget v2, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_1

    .line 1004
    const-string v0, "CameraEngine"

    const-string v1, "cancelAutoFocus - this cmd is skiped because mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 1008
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isAutoFocusEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1009
    const-string v0, "CameraEngine"

    const-string v1, "Autofocus is disabled, cancelAutoFocus is not needed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1013
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    if-eqz v0, :cond_3

    .line 1014
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$1;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1025
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public cancelCaptureForPanorama()V
    .locals 2

    .prologue
    .line 1993
    const-string v0, "CameraEngine"

    const-string v1, "cancelCaptureForPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1995
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1997
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->cancelCaptureForPanorama()V

    .line 1998
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 1999
    return-void
.end method

.method public cancelFocusing()V
    .locals 1

    .prologue
    .line 2581
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    .line 2582
    return-void
.end method

.method public cancelSeriesActionShot()V
    .locals 1

    .prologue
    .line 2717
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->cancelSeriesActionShot()V

    .line 2718
    return-void
.end method

.method public captureBurstShot()V
    .locals 2

    .prologue
    .line 3647
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 3648
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->setOrientationAndSendItToFramework()V

    .line 3649
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->captureBurstShot()V

    .line 3650
    return-void
.end method

.method public changeEngineState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 563
    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AbstractCeState;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    if-eqz v0, :cond_0

    .line 570
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeEngineState => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkFocusMode(I)I
    .locals 1
    .parameter "focusMode"

    .prologue
    .line 1974
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1975
    :cond_0
    const/4 p1, 0x5

    .line 1979
    :cond_1
    :goto_0
    return p1

    .line 1976
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1977
    const/4 p1, 0x6

    goto :goto_0
.end method

.method public chkActionShotStarted()Z
    .locals 1

    .prologue
    .line 3576
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->chkActionShotStarted()Z

    move-result v0

    return v0
.end method

.method public clearCaptureImageData()V
    .locals 1

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v0, :cond_0

    .line 2615
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 2616
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 2618
    :cond_0
    return-void
.end method

.method public clearFocusState()V
    .locals 1

    .prologue
    .line 2577
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    .line 2578
    return-void
.end method

.method public clearLastContentUri()V
    .locals 1

    .prologue
    .line 2606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 2607
    return-void
.end method

.method public clearRequest()V
    .locals 3

    .prologue
    .line 1454
    const-string v1, "CameraEngine"

    const-string v2, "clearRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 1457
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;->removeMessages(I)V

    .line 1456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1460
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1461
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1462
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1463
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1464
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1465
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1466
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1467
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1468
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1469
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1470
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1472
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CeRequestQueue;->clear()V

    .line 1473
    return-void
.end method

.method public clearTimer()V
    .locals 3

    .prologue
    .line 2048
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 2049
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;->removeMessages(I)V

    .line 2048
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2052
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 2054
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 2055
    return-void
.end method

.method public closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 585
    const-string v0, "CameraEngine"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->release()V

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setZoomChangeListener(Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;)V

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 591
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 592
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 596
    :cond_0
    return-void
.end method

.method public convertExifOrientationToMediaOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 2811
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 2812
    const/16 v0, 0x5a

    .line 2818
    :goto_0
    return v0

    .line 2813
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2814
    const/16 v0, 0xb4

    goto :goto_0

    .line 2815
    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 2816
    const/16 v0, 0x10e

    goto :goto_0

    .line 2818
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public convertToExifInterfaceOrientation(I)I
    .locals 2
    .parameter "orientation"

    .prologue
    const/4 v0, 0x1

    .line 2798
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_1

    .line 2799
    const/4 v0, 0x6

    .line 2807
    :cond_0
    :goto_0
    return v0

    .line 2800
    :cond_1
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_2

    .line 2801
    const/4 v0, 0x3

    goto :goto_0

    .line 2802
    :cond_2
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_3

    .line 2803
    const/16 v0, 0x8

    goto :goto_0

    .line 2804
    :cond_3
    const/16 v1, 0x168

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_0

    goto :goto_0
.end method

.method public countForCurrenPictureSaving()I
    .locals 1

    .prologue
    .line 2832
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumberOfPictureSavingThread:I

    return v0
.end method

.method public doAutoFocusAsync()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 975
    const-string v0, "CameraEngine"

    const-string v1, "doAutoFocusAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-Autofocus**StartU["

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

    .line 979
    iput v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    .line 980
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 983
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 985
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 994
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 1000
    :cond_1
    return-void

    .line 987
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final doCancelShutterTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1063
    const-string v0, "CameraEngine"

    const-string v1, "doCancelShutterTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1066
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 1074
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->startContinuousAF()V

    .line 1076
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->clearTimer()V

    .line 1078
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1079
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1080
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1081
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1082
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1083
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1084
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1086
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1088
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1091
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1092
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 1093
    return-void

    .line 1070
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->resumeAudioPlayback_TimerBgm()V

    goto :goto_0
.end method

.method public doChangeParameterSync(II)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1774
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CameraEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    .line 1775
    return-void
.end method

.method public doChangeParameterSync(Ljava/lang/Object;)V
    .locals 9
    .parameter "param"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x3

    const/16 v4, 0x3a98

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1778
    const-string v2, "CameraEngine"

    const-string v3, "doChangeParameterSync"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_1

    .line 1781
    const-string v2, "CameraEngine"

    const-string v3, "returning because mCameraDevice is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :cond_0
    :goto_0
    return-void

    .line 1785
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v2, :cond_2

    .line 1786
    const-string v2, "CameraEngine"

    const-string v3, "mParameters is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 1790
    check-cast v1, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    .line 1791
    .local v1, p:Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;
    const/4 v0, 0x0

    .line 1793
    .local v0, fpsRange:[I
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1876
    :cond_3
    :goto_1
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/CeRequestQueue;->searchDuplicateRequest(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1882
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1887
    :goto_2
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1888
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_9

    .line 1889
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    goto :goto_0

    .line 1797
    :sswitch_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    .line 1798
    const-string v2, "CameraEngine"

    const-string v3, "preview-frame-rate 15"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p0, v2, v4, v4}, Lcom/sec/android/app/camera/CameraEngine;->findBestFpsRange(Lcom/sec/android/seccamera/SecCamera$Parameters;II)[I

    move-result-object v0

    .line 1803
    if-eqz v0, :cond_3

    .line 1804
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    aget v3, v0, v5

    aget v4, v0, v6

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_1

    .line 1807
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0x7530

    invoke-virtual {p0, v2, v4, v3}, Lcom/sec/android/app/camera/CameraEngine;->findBestFpsRange(Lcom/sec/android/seccamera/SecCamera$Parameters;II)[I

    move-result-object v0

    .line 1808
    if-eqz v0, :cond_3

    .line 1809
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    aget v3, v0, v5

    aget v4, v0, v6

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_1

    .line 1813
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1816
    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1819
    :sswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1823
    :sswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 1824
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraEngine;->checkFocusMode(I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x19

    if-eq v2, v3, :cond_3

    .line 1831
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    if-ne v2, v7, :cond_5

    .line 1833
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->startFaceDetection()V

    goto/16 :goto_1

    .line 1835
    :cond_5
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    if-eq v2, v7, :cond_3

    .line 1836
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v8, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1838
    :cond_6
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mIsFaceZoomed:Z

    if-eqz v2, :cond_7

    .line 1839
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceZoom()V

    .line 1840
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceDetection()V

    goto/16 :goto_1

    .line 1846
    :sswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1849
    :sswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1852
    :sswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1855
    :sswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1858
    :sswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getQualityValue(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1864
    :sswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1871
    :sswitch_c
    const-string v2, "CameraEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doChangeParameterSync : MENUID_BURST_SETTINGS - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    goto/16 :goto_1

    .line 1884
    :cond_8
    const-string v2, "CameraEngine"

    const-string v3, "parameter will set next operation coming"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1891
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    goto/16 :goto_0

    .line 1793
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x7 -> :sswitch_b
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xd -> :sswitch_b
        0xe -> :sswitch_b
        0x10 -> :sswitch_a
        0x12 -> :sswitch_b
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x2f -> :sswitch_c
    .end sparse-switch
.end method

.method public doHDRShotAllProgressCompleted()V
    .locals 2

    .prologue
    .line 3671
    const-string v0, "CameraEngine"

    const-string v1, "doHDRShotAllProgressCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 3673
    return-void
.end method

.method public final doPostInitSync()V
    .locals 2

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1387
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnPanoramaEventListener(Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;)V

    .line 1388
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnActionShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;)V

    .line 1389
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnCartoonShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;)V

    .line 1390
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setObjectTrackingMsgListener(Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;)V

    .line 1391
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnSmileShotDetectionSuccessListener(Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;)V

    .line 1392
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnHDRShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;)V

    .line 1393
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnContinuousShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;)V

    .line 1394
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnBurstShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;)V

    .line 1395
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnMultiFrameShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;)V

    .line 1397
    :cond_0
    return-void
.end method

.method public doProcessBackSync()V
    .locals 1

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 1749
    return-void
.end method

.method public doResetSettingsSync()V
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetButtonDim()V

    .line 1446
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraSettingsToDefault()V

    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->refreshButtonDimForCamera()V

    .line 1450
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateUIWhenResetSettings()V

    .line 1451
    return-void
.end method

.method public doSetAllParamsSync()V
    .locals 2

    .prologue
    .line 1102
    const-string v0, "CameraEngine"

    const-string v1, "doSetAllParamsSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->initialize()V

    .line 1104
    return-void
.end method

.method public doSetParametersSync(Ljava/lang/Object;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 1758
    const-string v1, "CameraEngine"

    const-string v2, "doSetParametersSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1761
    check-cast v0, Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;

    .line 1762
    .local v0, p:Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1765
    .end local v0           #p:Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;
    :cond_0
    return-void
.end method

.method public final doShutterTimerAsync(I)V
    .locals 5
    .parameter "value"

    .prologue
    .line 1039
    const-string v1, "CameraEngine"

    const-string v2, "doShutterTimerAsync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopContinuousAF()V

    .line 1044
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 1046
    move v0, p1

    .line 1047
    .local v0, i:I
    move v0, p1

    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 1048
    const-string v1, "AXLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerEventHandleMessage**StartU["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

    sub-int v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1047
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1052
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x4

    add-int/lit8 v3, p1, 0x1

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1053
    return-void
.end method

.method public final doStartActionShotSync()V
    .locals 2

    .prologue
    .line 1164
    const-string v0, "CameraEngine"

    const-string v1, "doStartActionShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->setOrientationAndSendItToFramework()V

    .line 1166
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 1167
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startSeriesActionShot()V

    .line 1168
    return-void
.end method

.method public doStartEngineAsync()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1325
    const-string v0, "CameraEngine"

    const-string v1, "doStartEngineAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCaptureInitiated:Z

    .line 1330
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 1331
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 1334
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1336
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 1337
    const-string v0, "CameraEngine"

    const-string v1, "camera device is already conntected for some reason (eg. onResume is called twice without calling onPause)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const-string v0, "CameraEngine"

    const-string v1, "skip connecting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1358
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1360
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->startReceivingLocationUpdates()V

    .line 1364
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->setOrientationListener()V

    .line 1367
    return-void

    .line 1345
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$3;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 1353
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    const-string v1, "openCameraThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1362
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1
.end method

.method public final doStartPanoramaAsync()V
    .locals 3

    .prologue
    .line 1121
    const-string v1, "CameraEngine"

    const-string v2, "doStartPanoramaSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopContinuousAF()V

    .line 1126
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$2;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1138
    .local v0, thread:Ljava/lang/Thread;
    const-string v1, "PanoramaStartingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1140
    return-void
.end method

.method public doStartPreviewAsync()V
    .locals 9

    .prologue
    const/4 v7, 0x3

    .line 1516
    const-string v5, "CameraEngine"

    const-string v6, "doStartPreviewAsync"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1521
    .local v2, _axtime_st_1:J
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v5, :cond_1

    .line 1522
    const-string v5, "CameraEngine"

    const-string v6, "return because mSurfaceHolder is null."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    if-eqz v5, :cond_0

    .line 1525
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1615
    :cond_0
    :goto_0
    return-void

    .line 1530
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v5, :cond_2

    .line 1531
    const-string v5, "CameraEngine"

    const-string v6, "return because mCameraDevice is null."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1539
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->resetPreviewSize()V

    .line 1542
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/sec/android/app/camera/CameraEngine$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/CameraEngine$4;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    .line 1603
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    const-string v6, "startPreviewThread"

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1604
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1605
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1607
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v5, :cond_3

    .line 1608
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v5}, Landroid/view/OrientationEventListener;->enable()V

    .line 1612
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1613
    .local v0, _axtime_ed_1:J
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PrepareStartPreview-End**End["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v0, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**[]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    move-wide v2, v0

    .line 1615
    goto :goto_0

    .line 1543
    .end local v0           #_axtime_ed_1:J
    :catch_0
    move-exception v4

    .line 1544
    .local v4, exception:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->closeCamera()V

    .line 1547
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 1548
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v6, -0x3

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1610
    .end local v4           #exception:Ljava/io/IOException;
    :cond_3
    const-string v5, "CameraEngine"

    const-string v6, "doStartPreviewAsync : mOrientationListener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public doStartPreviewDummySync()V
    .locals 2

    .prologue
    .line 1669
    const-string v0, "CameraEngine"

    const-string v1, "doStartPreviewDummySync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1673
    return-void
.end method

.method public doStartSmileDetectionAsync()V
    .locals 2

    .prologue
    .line 1714
    const-string v0, "CameraEngine"

    const-string v1, "startSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopContinuousAF()V

    .line 1718
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startSmileDetection(Z)V

    .line 1719
    return-void
.end method

.method public doStopActionShotSync()V
    .locals 2

    .prologue
    .line 1177
    const-string v0, "CameraEngine"

    const-string v1, "doStopActionShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 1180
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopSeriesActionShot()V

    .line 1181
    return-void
.end method

.method public doStopBurstShot()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3653
    const-string v1, "CameraEngine"

    const-string v2, "doStopBurstShot"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    #setter for: Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->access$2802(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;I)I

    .line 3655
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    .line 3656
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, v3, v3, v3}, Lcom/sec/android/seccamera/SecCamera;->startBurstShot(ZZI)V

    .line 3657
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getBurstShotProgress()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 3658
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 3668
    :goto_0
    return-void

    .line 3661
    :cond_1
    const-wide/16 v1, 0x96

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3666
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    goto :goto_0

    .line 3662
    :catch_0
    move-exception v0

    .line 3664
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public doStopEngineSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1482
    const-string v0, "CameraEngine"

    const-string v1, "doStopEngineSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 1486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 1488
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    if-eqz v0, :cond_1

    .line 1489
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 1491
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopReceivingLocationUpdates()V

    .line 1493
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSelectedMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1496
    const-string v0, "CameraEngine"

    const-string v1, "doStopEngineSync - set shooting mode as default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_2

    .line 1498
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    .line 1502
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->closeCamera()V

    .line 1506
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1507
    return-void
.end method

.method public doStopPanoramaSync()V
    .locals 2

    .prologue
    .line 1149
    const-string v0, "CameraEngine"

    const-string v1, "doStopPanoramaSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startPanorama(Z)V

    .line 1154
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->startContinuousAF()V

    .line 1155
    return-void
.end method

.method public doStopPreviewDummySync()V
    .locals 3

    .prologue
    const/16 v2, 0x1c

    .line 1647
    const-string v0, "CameraEngine"

    const-string v1, "doStopPreviewDummySync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1651
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceDetection()V

    .line 1653
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 1654
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1659
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1661
    :cond_0
    return-void

    .line 1656
    :cond_1
    const-string v0, "CameraEngine"

    const-string v1, "doStopPreviewSync : mOrientationListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doStopPreviewSync()V
    .locals 8

    .prologue
    .line 1677
    const-string v4, "CameraEngine"

    const-string v5, "doStopPreviewSync"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1685
    .local v2, _axtime_st_1:J
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceDetection()V

    .line 1686
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_0

    .line 1687
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 1690
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1692
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v4, :cond_1

    .line 1693
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v4}, Landroid/view/OrientationEventListener;->disable()V

    .line 1696
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1697
    .local v0, _axtime_ed_1:J
    const-string v4, "AXLOG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StopPreview**End["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]**["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v0, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]**[]**"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    move-wide v2, v0

    .line 1699
    return-void

    .line 1695
    .end local v0           #_axtime_ed_1:J
    :cond_1
    const-string v4, "CameraEngine"

    const-string v5, "doStopPreviewSync : mOrientationListener is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doStopSmileDetectionSync()V
    .locals 2

    .prologue
    .line 1734
    const-string v0, "CameraEngine"

    const-string v1, "stopSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->startContinuousAF()V

    .line 1738
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startSmileDetection(Z)V

    .line 1739
    return-void
.end method

.method public final doSwitchCameraSync()V
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1406
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->switchToFront()V

    .line 1411
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateUIWhenSwitchCamera()V

    .line 1412
    return-void

    .line 1408
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->switchToBack()V

    goto :goto_0
.end method

.method public doTakePictureAsync()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1194
    const-string v1, "AXLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shot2Shot-TakePicture**StartU["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 1202
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setOrientationOnTake(I)V

    .line 1203
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 1205
    .local v0, rotation:I
    const-string v1, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doTakePictureAsync - rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 1208
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 1211
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_3

    .line 1212
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_0

    .line 1213
    const-string v1, "CameraEngine"

    const-string v2, "doTakePictureAsync : multi frame shot"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopContinuousAF()V

    .line 1215
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onMultiFrameShotStarted()V

    .line 1216
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->startMultiFrameShot()V

    .line 1217
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/CameraEngine;->SHUTTER_SOUND_SHORT:I

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 1220
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->startBlinkShutterAnimation()V

    .line 1227
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1228
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1229
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getShutterSoundEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v1

    if-nez v1, :cond_4

    .line 1230
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, v5}, Lcom/sec/android/seccamera/SecCamera;->setShutterSooundEnable(Z)V

    .line 1235
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mShutterCallback:Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 1237
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3

    .line 1238
    const-string v1, "CameraEngine"

    const-string v2, "[HDR] mNumOfSavedImageInHDR = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iput v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumOfSavedImageInHDR:I

    .line 1243
    :cond_3
    return-void

    .line 1232
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, v6}, Lcom/sec/android/seccamera/SecCamera;->setShutterSooundEnable(Z)V

    goto :goto_0
.end method

.method public final doWaitAsync(I)V
    .locals 4
    .parameter "milisec"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v1, 0x8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1258
    return-void
.end method

.method protected findBestFpsRange(Lcom/sec/android/seccamera/SecCamera$Parameters;II)[I
    .locals 10
    .parameter "parameters"
    .parameter "requestedMinFps"
    .parameter "requestedMaxFps"

    .prologue
    .line 1897
    const-string v7, "CameraEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requsted fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const/4 v1, 0x0

    .line 1900
    .local v1, MIN_IDX:I
    const/4 v0, 0x1

    .line 1901
    .local v0, MAX_IDX:I
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 1902
    .local v3, fpsRange:[I
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 1904
    .local v2, bestFpsRange:[I
    invoke-virtual {p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v4

    .line 1906
    .local v4, fpsRangeList:Ljava/util/List;,"Ljava/util/List<[I>;"
    if-nez v4, :cond_0

    .line 1907
    const-string v7, "CameraEngine"

    const-string v8, "supported preview fps range is null"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    const/4 v3, 0x0

    .line 1959
    .end local v3           #fpsRange:[I
    :goto_0
    return-object v3

    .line 1911
    .restart local v3       #fpsRange:[I
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, i:I
    :goto_1
    if-ltz v5, :cond_8

    .line 1912
    const/4 v8, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x0

    aget v7, v7, v9

    aput v7, v3, v8

    .line 1913
    const/4 v8, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x1

    aget v7, v7, v9

    aput v7, v3, v8

    .line 1915
    const/4 v7, 0x1

    aget v7, v3, v7

    if-ne p3, v7, :cond_6

    .line 1916
    const/4 v7, 0x0

    aget v7, v3, v7

    if-ne p2, v7, :cond_1

    .line 1918
    move-object v2, v3

    .line 1919
    const-string v7, "CameraEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1921
    :cond_1
    if-nez v5, :cond_2

    .line 1923
    move-object v2, v3

    .line 1924
    const-string v7, "CameraEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1928
    :cond_2
    move v6, v5

    .local v6, j:I
    :goto_2
    if-ltz v6, :cond_5

    .line 1929
    const/4 v8, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x0

    aget v7, v7, v9

    aput v7, v3, v8

    .line 1930
    const/4 v8, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x1

    aget v7, v7, v9

    aput v7, v3, v8

    .line 1932
    const/4 v7, 0x0

    aget v7, v3, v7

    if-ne p2, v7, :cond_3

    .line 1934
    move-object v2, v3

    .line 1935
    const-string v7, "CameraEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1937
    :cond_3
    const/4 v7, 0x0

    aget v7, v3, v7

    if-le p2, v7, :cond_4

    .line 1938
    move-object v2, v3

    .line 1939
    const-string v7, "CameraEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1928
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1945
    :cond_5
    move-object v2, v3

    .line 1946
    const-string v7, "CameraEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1949
    .end local v6           #j:I
    :cond_6
    const/4 v7, 0x1

    aget v7, v3, v7

    if-le p3, v7, :cond_7

    .line 1950
    move-object v2, v3

    .line 1951
    const-string v7, "CameraEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1911
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    .line 1957
    :cond_8
    move-object v2, v3

    .line 1958
    const-string v7, "CameraEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public findOptimalPreviewSize(Ljava/util/List;D)Lcom/sec/android/seccamera/SecCamera$Size;
    .locals 15
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Size;",
            ">;D)",
            "Lcom/sec/android/seccamera/SecCamera$Size;"
        }
    .end annotation

    .prologue
    .line 2157
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL

    .line 2158
    .local v0, ASPECT_TOLERANCE:D
    if-nez p1, :cond_1

    .line 2159
    const/4 v6, 0x0

    .line 2204
    :cond_0
    return-object v6

    .line 2161
    :cond_1
    const/4 v6, 0x0

    .line 2162
    .local v6, optimalSize:Lcom/sec/android/seccamera/SecCamera$Size;
    const-wide v4, 0x7fefffffffffffffL

    .line 2170
    .local v4, minDiff:D
    iget-object v11, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 2171
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v11

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2173
    .local v10, targetHeight:I
    const-string v11, "CameraEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "display.getHeight() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " display.getWidth() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    if-gtz v10, :cond_2

    .line 2178
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v10

    .line 2182
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 2183
    .local v9, size:Lcom/sec/android/seccamera/SecCamera$Size;
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    int-to-double v11, v11

    iget v13, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    int-to-double v13, v13

    div-double v7, v11, v13

    .line 2184
    .local v7, ratio:D
    sub-double v11, v7, p2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3f50624dd2f1a9fcL

    cmpl-double v11, v11, v13

    if-gtz v11, :cond_3

    .line 2186
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v11, v11, v4

    if-gez v11, :cond_3

    .line 2187
    move-object v6, v9

    .line 2188
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v4, v11

    goto :goto_0

    .line 2194
    .end local v7           #ratio:D
    .end local v9           #size:Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_4
    if-nez v6, :cond_0

    .line 2195
    const-string v11, "CameraEngine"

    const-string v12, "No preview size match the aspect ratio"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    const-wide v4, 0x7fefffffffffffffL

    .line 2197
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 2198
    .restart local v9       #size:Lcom/sec/android/seccamera/SecCamera$Size;
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v11, v11, v4

    if-gez v11, :cond_5

    .line 2199
    move-object v6, v9

    .line 2200
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v4, v11

    goto :goto_1
.end method

.method public findThumbnailSize(Ljava/util/List;II)Lcom/sec/android/seccamera/SecCamera$Size;
    .locals 15
    .parameter
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Size;",
            ">;II)",
            "Lcom/sec/android/seccamera/SecCamera$Size;"
        }
    .end annotation

    .prologue
    .line 2106
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-nez p1, :cond_0

    .line 2107
    const/4 v9, 0x0

    .line 2127
    :goto_0
    return-object v9

    .line 2109
    :cond_0
    const/4 v9, 0x0

    .line 2110
    .local v9, thumbnailSize:Lcom/sec/android/seccamera/SecCamera$Size;
    const-wide v4, 0x3f847ae147ae147bL

    .line 2111
    .local v4, minRatioDiff:D
    const v3, 0x186a0

    .line 2112
    .local v3, minGap:I
    const/4 v2, 0x0

    .line 2114
    .local v2, index:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 2115
    .local v8, size:Lcom/sec/android/seccamera/SecCamera$Size;
    iget v11, v8, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    int-to-double v11, v11

    iget v13, v8, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    int-to-double v13, v13

    div-double v6, v11, v13

    .line 2116
    .local v6, ratio:D
    move/from16 v0, p2

    int-to-double v11, v0

    move/from16 v0, p3

    int-to-double v13, v0

    div-double/2addr v11, v13

    sub-double v11, v6, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpl-double v11, v11, v4

    if-gtz v11, :cond_1

    .line 2119
    iget v11, v8, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    sub-int v11, v11, p2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 2120
    .local v10, widthGap:I
    if-le v3, v10, :cond_1

    .line 2121
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 2122
    move v3, v10

    goto :goto_1

    .line 2125
    .end local v6           #ratio:D
    .end local v8           #size:Lcom/sec/android/seccamera/SecCamera$Size;
    .end local v10           #widthGap:I
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #thumbnailSize:Lcom/sec/android/seccamera/SecCamera$Size;
    check-cast v9, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 2126
    .restart local v9       #thumbnailSize:Lcom/sec/android/seccamera/SecCamera$Size;
    const-string v11, "CameraEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setThumbnailSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public findePreviewSize(Ljava/util/List;II)Lcom/sec/android/seccamera/SecCamera$Size;
    .locals 15
    .parameter
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Size;",
            ">;II)",
            "Lcom/sec/android/seccamera/SecCamera$Size;"
        }
    .end annotation

    .prologue
    .line 2131
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-nez p1, :cond_0

    .line 2132
    const/4 v6, 0x0

    .line 2152
    :goto_0
    return-object v6

    .line 2134
    :cond_0
    const/4 v6, 0x0

    .line 2135
    .local v6, previewSize:Lcom/sec/android/seccamera/SecCamera$Size;
    const-wide v4, 0x3f847ae147ae147bL

    .line 2136
    .local v4, minRatioDiff:D
    const v3, 0x186a0

    .line 2137
    .local v3, minGap:I
    const/4 v2, 0x0

    .line 2139
    .local v2, index:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 2140
    .local v9, size:Lcom/sec/android/seccamera/SecCamera$Size;
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    int-to-double v11, v11

    iget v13, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    int-to-double v13, v13

    div-double v7, v11, v13

    .line 2141
    .local v7, ratio:D
    move/from16 v0, p2

    int-to-double v11, v0

    move/from16 v0, p3

    int-to-double v13, v0

    div-double/2addr v11, v13

    sub-double v11, v7, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpl-double v11, v11, v4

    if-gtz v11, :cond_1

    .line 2144
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    sub-int v11, v11, p2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 2145
    .local v10, widthGap:I
    if-le v3, v10, :cond_1

    .line 2146
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 2147
    move v3, v10

    goto :goto_1

    .line 2150
    .end local v7           #ratio:D
    .end local v9           #size:Lcom/sec/android/seccamera/SecCamera$Size;
    .end local v10           #widthGap:I
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #previewSize:Lcom/sec/android/seccamera/SecCamera$Size;
    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 2151
    .restart local v6       #previewSize:Lcom/sec/android/seccamera/SecCamera$Size;
    const-string v11, "CameraEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setPreviewSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v6, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v6, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3822
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    if-nez v1, :cond_0

    .line 3823
    const-string v0, ""

    .line 3827
    .local v0, currentAddress:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 3825
    .end local v0           #currentAddress:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ReverseGeocoder;->getCurrentAddress()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #currentAddress:Ljava/lang/String;
    goto :goto_0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 5

    .prologue
    .line 2381
    const/4 v1, 0x0

    .line 2382
    .local v1, l:Landroid/location/Location;
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    array-length v2, v4

    .line 2383
    .local v2, length:I
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    .line 2385
    .local v3, localArray:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2386
    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 2387
    if-eqz v1, :cond_0

    move-object v4, v1

    .line 2390
    :goto_1
    return-object v4

    .line 2385
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2390
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;
    .locals 1

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    return-object v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    .prologue
    .line 3717
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mDisplayOrientation:I

    return v0
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 2585
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    return v0
.end method

.method public getGpsLocation()Landroid/location/Location;
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const-wide/16 v9, 0x0

    .line 2274
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v8, :cond_1

    .line 2315
    :cond_0
    :goto_0
    return-object v3

    .line 2278
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->removeGpsData()V

    .line 2281
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v8

    if-ne v8, v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 2284
    .local v3, loc:Landroid/location/Location;
    :cond_2
    if-eqz v3, :cond_0

    .line 2285
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 2286
    .local v1, lat:D
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 2287
    .local v4, lon:D
    cmpl-double v8, v1, v9

    if-nez v8, :cond_3

    cmpl-double v8, v4, v9

    if-eqz v8, :cond_4

    .line 2290
    .local v0, hasLatLon:Z
    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    .line 2291
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsLatitude(D)V

    .line 2292
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsLongitude(D)V

    .line 2293
    invoke-virtual {v3}, Landroid/location/Location;->hasAltitude()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2294
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsAltitude(D)V

    .line 2301
    :goto_2
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 2304
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 2305
    .local v6, utcTimeSeconds:J
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v6, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsTimestamp(J)V

    goto :goto_0

    .line 2287
    .end local v0           #hasLatLon:Z
    .end local v6           #utcTimeSeconds:J
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 2299
    .restart local v0       #hasLatLon:Z
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsAltitude(D)V

    goto :goto_2

    .line 2308
    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getGroupID()I
    .locals 1

    .prologue
    .line 3894
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->groupId:I

    return v0
.end method

.method public getLandscapeActive()Z
    .locals 1

    .prologue
    .line 2725
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLandscapeActive:Z

    return v0
.end method

.method public getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;
    .locals 1

    .prologue
    .line 2610
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    return-object v0
.end method

.method public getLastCapturedFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2602
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getLastDateTaken()J
    .locals 2

    .prologue
    .line 2270
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mDateTaken:J

    return-wide v0
.end method

.method public getLastOrientation()I
    .locals 1

    .prologue
    .line 2759
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastOrientation:I

    return v0
.end method

.method public getOrientationOnTake()I
    .locals 1

    .prologue
    .line 2767
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationOnTake:I

    return v0
.end method

.method public getOriginalViewFinderHeight()I
    .locals 1

    .prologue
    .line 3733
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    return v0
.end method

.method public getOriginalViewFinderWidth()I
    .locals 1

    .prologue
    .line 3729
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    return v0
.end method

.method public getPanoramaLowResolutionBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3746
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 3725
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mPreviewHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .prologue
    .line 3721
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mPreviewWidth:I

    return v0
.end method

.method public getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;
    .locals 1

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    return-object v0
.end method

.method public getShutterSoundEnable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3874
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v1, :cond_0

    .line 3876
    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShutterSoundEnable:Z

    .line 3886
    :goto_0
    return v0

    .line 3880
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkOutgoingCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3882
    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShutterSoundEnable:Z

    goto :goto_0

    .line 3886
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShutterSoundEnable:Z

    goto :goto_0
.end method

.method public getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;
    .locals 1

    .prologue
    .line 3816
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    return-object v0
.end method

.method public getTouchFocusPositioned()Z
    .locals 1

    .prologue
    .line 2669
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    return v0
.end method

.method public handleDoubleTap(IIZ)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "touchedOnFace"

    .prologue
    const/4 v2, 0x0

    .line 3750
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mIsFaceZoomed:Z

    if-eqz v0, :cond_1

    .line 3751
    const-string v0, "CameraEngine"

    const-string v1, "Stop Face Zoom"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopFaceZoom()V

    .line 3753
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mIsFaceZoomed:Z

    .line 3754
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraZoomValue()V

    .line 3768
    :cond_0
    :goto_0
    return-void

    .line 3757
    :cond_1
    if-eqz p3, :cond_0

    .line 3758
    const-string v0, "CameraEngine"

    const-string v1, "Start Face Zoom"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideFaceRect()V

    .line 3760
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->startFaceZoom(II)V

    .line 3761
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mIsFaceZoomed:Z

    .line 3762
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3763
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraZoomValue()V

    .line 3764
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mIsFaceZoomed:Z

    goto :goto_0
.end method

.method public handleShutterEvent()V
    .locals 2

    .prologue
    .line 1983
    const-string v0, "CameraEngine"

    const-string v1, "handleShutterEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleShutterEvent()V

    .line 1985
    return-void
.end method

.method public handleShutterReleaseEvent()V
    .locals 2

    .prologue
    .line 1988
    const-string v0, "CameraEngine"

    const-string v1, "handleShutterReleaseEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleShutterReleaseEvent()V

    .line 1990
    return-void
.end method

.method public imageStoringCompleted()V
    .locals 3

    .prologue
    .line 2016
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 2017
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 2019
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->shareFile(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2044
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onImageStoringCompleted()V

    .line 2045
    :goto_1
    return-void

    .line 2020
    :catch_0
    move-exception v0

    .line 2022
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2039
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2040
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public initialize()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 445
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 447
    .local v2, tm:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v3, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 451
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x25

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 452
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x8

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x9

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x12

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 456
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v4, 0x7

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 459
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraEngine;->checkFocusMode(I)I

    move-result v1

    .line 467
    .local v1, focus:I
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 474
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x10

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getQualityValue(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 476
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0xb

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0xd

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 478
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0xe

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutoContrast()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 480
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 481
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getShutterSoundEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v3

    if-nez v3, :cond_5

    .line 482
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3, v6}, Lcom/sec/android/seccamera/SecCamera;->setShutterSooundEnable(Z)V

    .line 490
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "video_recording_gamma"

    const-string v5, "off"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "slow_ae"

    const-string v5, "off"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 495
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 531
    .end local v1           #focus:I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    .line 532
    const/16 v3, 0x13

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 534
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 536
    const-string v3, "357858010034783"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "004400152020002"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 537
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3, v7}, Lcom/sec/android/seccamera/SecCamera;->setDefaultIMEI(I)V

    .line 541
    :goto_3
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mIsFaceZoomed:Z

    .line 542
    sput-boolean v6, Lcom/sec/android/app/camera/CameraEngine;->mIsBlockSingleShutter:Z

    goto/16 :goto_0

    .line 485
    .restart local v1       #focus:I
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3, v7}, Lcom/sec/android/seccamera/SecCamera;->setShutterSooundEnable(Z)V

    goto :goto_1

    .line 497
    .end local v1           #focus:I
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x25

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 499
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 500
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getShutterSoundEnable()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v3

    if-nez v3, :cond_9

    .line 501
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3, v6}, Lcom/sec/android/seccamera/SecCamera;->setShutterSooundEnable(Z)V

    .line 508
    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v4, 0x7

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 512
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x10

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getQualityValue(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 513
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x8

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x9

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "video_recording_gamma"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "slow_ae"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 520
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 523
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraEngine;->setFrontSensorMirror(I)V

    goto/16 :goto_2

    .line 504
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3, v7}, Lcom/sec/android/seccamera/SecCamera;->setShutterSooundEnable(Z)V

    goto/16 :goto_4

    .line 539
    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3, v6}, Lcom/sec/android/seccamera/SecCamera;->setDefaultIMEI(I)V

    goto/16 :goto_3
.end method

.method public isAutoFocusing()Z
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    const/4 v0, 0x1

    .line 872
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    :cond_0
    const/4 v0, 0x1

    .line 881
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentState(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 932
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentStateId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 933
    const/4 v0, 0x1

    .line 934
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFaceZoomed()Z
    .locals 1

    .prologue
    .line 3771
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mIsFaceZoomed:Z

    return v0
.end method

.method public isFinishOneShotPreviewCallback()Z
    .locals 1

    .prologue
    .line 3780
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mIsFinishOneShotPreviewCallback:Z

    return v0
.end method

.method public isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 3580
    const/4 v7, 0x0

    .line 3581
    .local v7, result:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3582
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "volume"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3584
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3585
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_1

    .line 3586
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3587
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3588
    .local v8, volumeName:Ljava/lang/String;
    const-string v1, "external"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "internal"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3589
    :cond_0
    const/4 v7, 0x1

    .line 3591
    .end local v8           #volumeName:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3593
    :cond_2
    const-string v1, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaScanning..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    return v7
.end method

.method public isOnResumePending()Z
    .locals 1

    .prologue
    .line 3812
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnResumePending:Z

    return v0
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->isPanoramaCapturing()Z

    move-result v0

    return v0
.end method

.method public isPrepareRecording()Z
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    :cond_0
    const/4 v0, 0x1

    .line 580
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewStarted()Z
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    const/4 v0, 0x1

    .line 912
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProviderEnabled()Z
    .locals 2

    .prologue
    .line 2326
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->initializeLocationManager()V

    .line 2327
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSingleShotBurst()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3627
    iget v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSingleShotBurst:I

    if-ne v1, v0, :cond_0

    .line 3630
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmileDetecting()Z
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    const/4 v0, 0x1

    .line 905
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartingEngine()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 885
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isStartingPreview()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 892
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 898
    :cond_0
    :goto_0
    return v0

    .line 895
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 898
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopPreviewPending()Z
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 918
    const/4 v0, 0x1

    .line 920
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimerCounting()Z
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 926
    const/4 v0, 0x1

    .line 928
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchAutoFocusing()Z
    .locals 1

    .prologue
    .line 2698
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    return v0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 3
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 2501
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraSettingsChanged menuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " modeid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2504
    :cond_0
    const-string v0, "CameraEngine"

    const-string v1, "capture in progress, setparameters are not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    :goto_0
    return-void

    .line 2508
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2557
    :goto_1
    :pswitch_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2565
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iput p2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mFlashMode:I

    goto :goto_0

    .line 2526
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto :goto_1

    .line 2549
    :pswitch_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 2550
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->startReceivingLocationUpdates()V

    goto :goto_1

    .line 2552
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopReceivingLocationUpdates()V

    goto :goto_1

    .line 2559
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iput p2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mStorage:I

    goto :goto_0

    .line 2562
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iput p2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mWhiteBalance:I

    goto :goto_0

    .line 2508
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2557
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x9 -> :sswitch_2
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPanoramaLowResolutionData([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 3737
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanoramaLowResolutionData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3740
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3742
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    .line 3743
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 428
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 430
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    if-eqz v1, :cond_1

    .line 431
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 432
    .local v0, holder:Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_0

    .line 433
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 441
    .end local v0           #holder:Landroid/view/SurfaceHolder;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 414
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 416
    .local v0, holder:Landroid/view/SurfaceHolder;
    const-string v1, "AXLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceCreate**StartU["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-eqz v0, :cond_0

    .line 418
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 419
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 425
    .end local v0           #holder:Landroid/view/SurfaceHolder;
    :cond_1
    return-void
.end method

.method public resetPanoramaCapturing()V
    .locals 1

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->resetPanoramaCapturing()V

    .line 2007
    return-void
.end method

.method protected resetPreviewSize()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2058
    const-string v4, "CameraEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetPreviewSize()- WH: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v4, :cond_6

    .line 2062
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 2063
    .local v1, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-nez v1, :cond_0

    .line 2064
    const-string v4, "CameraEngine"

    const-string v5, "supported preview size is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    .end local v1           #sizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :goto_0
    return-void

    .line 2067
    .restart local v1       #sizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRecordingHint(Z)V

    .line 2068
    const/4 v0, 0x0

    .line 2070
    .local v0, previewsize:Lcom/sec/android/seccamera/SecCamera$Size;
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/sec/android/app/camera/CameraEngine;->findOptimalPreviewSize(Ljava/util/List;D)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v0

    .line 2072
    if-eqz v0, :cond_1

    .line 2073
    iget v4, v0, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iput v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mPreviewWidth:I

    .line 2074
    iget v4, v0, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    iput v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mPreviewHeight:I

    .line 2076
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mPreviewWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mPreviewHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 2079
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v3

    .line 2080
    .local v3, thumbnailSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_2

    .line 2081
    const/4 v2, 0x0

    .line 2082
    .local v2, thumbnaiSize:Lcom/sec/android/seccamera/SecCamera$Size;
    iget v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mPreviewWidth:I

    iget v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mPreviewHeight:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/android/app/camera/CameraEngine;->findThumbnailSize(Ljava/util/List;II)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v2

    .line 2083
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v5, v2, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v6, v2, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setJpegThumbnailSize(II)V

    .line 2086
    .end local v2           #thumbnaiSize:Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_5

    .line 2087
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 2090
    :cond_3
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2091
    const-string v4, "CameraEngine"

    const-string v5, "resetPreviewSize()- isCurrentState is INITIALIZING"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2094
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0

    .line 2096
    :cond_5
    const-string v4, "CameraEngine"

    const-string v5, "resetPreviewSize()- mCameraDevice is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2100
    .end local v0           #previewsize:Lcom/sec/android/seccamera/SecCamera$Size;
    .end local v1           #sizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    .end local v3           #thumbnailSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_6
    const-string v4, "CameraEngine"

    const-string v5, "resetPreviewSize()- mParameters is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resumeAudioplayback_TimerBgm()V
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->resumeAudioPlayback_TimerBgm()V

    .line 1060
    :cond_0
    return-void
.end method

.method public final scheduleAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 938
    const-string v0, "CameraEngine"

    const-string v1, "scheduleAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isStartingPreview()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 941
    :cond_0
    const-string v0, "CameraEngine"

    const-string v1, "scheduleAutoFocus is skipped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 972
    :cond_1
    :goto_0
    return-void

    .line 946
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 947
    const-string v0, "CameraEngine"

    const-string v1, "scheduleAutoFocus - current focus mode is off"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 951
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 966
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 968
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(IZ)V

    .line 969
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 971
    sput-boolean v2, Lcom/sec/android/app/camera/CameraEngine;->m_bRestartTouchAF:Z

    goto :goto_0
.end method

.method public final scheduleChangeParameter(II)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1768
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleChangeParameter key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x7

    new-instance v2, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CameraEngine;II)V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1771
    return-void
.end method

.method public final scheduleContinuousAF()V
    .locals 3

    .prologue
    .line 1246
    const-string v0, "CameraEngine"

    const-string v1, "scheduleContinuousAF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1248
    return-void
.end method

.method public final schedulePostInit()V
    .locals 3

    .prologue
    .line 1380
    const-string v0, "CameraEngine"

    const-string v1, "schedulePostInit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1383
    return-void
.end method

.method public scheduleProcessBack()V
    .locals 3

    .prologue
    .line 1742
    const-string v0, "CameraEngine"

    const-string v1, "scheduleProcessBack"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1745
    return-void
.end method

.method public final scheduleResetSettings()V
    .locals 3

    .prologue
    .line 1438
    const-string v0, "CameraEngine"

    const-string v1, "scheduleResetSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1440
    return-void
.end method

.method public final scheduleSetAllParams()V
    .locals 3

    .prologue
    .line 1096
    const-string v0, "CameraEngine"

    const-string v1, "scheduleSetAllParams"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1099
    return-void
.end method

.method public final scheduleSetParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1752
    const-string v0, "CameraEngine"

    const-string v1, "scheduleSetParameter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x8

    new-instance v2, Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;-><init>(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1755
    return-void
.end method

.method public final scheduleShutterTimer(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1033
    const-string v0, "CameraEngine"

    const-string v1, "scheduleShutterTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1036
    return-void
.end method

.method public final scheduleStartActionShot()V
    .locals 3

    .prologue
    .line 1158
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartActionShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1161
    return-void
.end method

.method public final scheduleStartEngine()V
    .locals 3

    .prologue
    .line 1261
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1264
    return-void
.end method

.method public final scheduleStartPanorama()V
    .locals 3

    .prologue
    .line 1115
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1118
    return-void
.end method

.method public final scheduleStartPreview()V
    .locals 3

    .prologue
    .line 1510
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1513
    return-void
.end method

.method public final scheduleStartPreviewDummy()V
    .locals 3

    .prologue
    .line 1664
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartPreviewDummy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1666
    return-void
.end method

.method public scheduleStartSmileDetection()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 1702
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1711
    :cond_0
    :goto_0
    return-void

    .line 1710
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    goto :goto_0
.end method

.method public final scheduleStopActionShot()V
    .locals 3

    .prologue
    .line 1171
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopActionShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1174
    return-void
.end method

.method public final scheduleStopEngine()V
    .locals 3

    .prologue
    .line 1476
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1479
    return-void
.end method

.method public final scheduleStopPanorama()V
    .locals 3

    .prologue
    .line 1143
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1146
    return-void
.end method

.method public final scheduleStopPreview()V
    .locals 3

    .prologue
    .line 1638
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1644
    return-void
.end method

.method public final scheduleStopPreviewDummy()V
    .locals 3

    .prologue
    .line 1633
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopPreviewDummy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1635
    return-void
.end method

.method public scheduleStopSmileDetection()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 1722
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    :goto_0
    return-void

    .line 1729
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1730
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    goto :goto_0
.end method

.method public final scheduleSwitchCamera()V
    .locals 3

    .prologue
    .line 1400
    const-string v0, "CameraEngine"

    const-string v1, "scheduleSwitchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1402
    return-void
.end method

.method public scheduleTakePicture()V
    .locals 3

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1188
    return-void
.end method

.method public final scheduleWait(I)V
    .locals 3
    .parameter "milisec"

    .prologue
    .line 1251
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleWait: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mili seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1254
    return-void
.end method

.method protected searchForLastContentUri()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 866
    :goto_0
    return-void

    .line 836
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 837
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/sec/android/app/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 839
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 840
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 842
    .local v8, idIndex:I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 844
    .local v7, dataIndex:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSearchingLastContentUriCompleted()V

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.NEW_PICTURE"

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 847
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    .line 848
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 851
    .end local v7           #dataIndex:I
    .end local v8           #idIndex:I
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCaptureInitiated:Z

    if-eqz v0, :cond_3

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_2

    .line 853
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 856
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 862
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 859
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSearchingLastContentUriCompleted()V

    goto :goto_1

    .line 864
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSearchingLastContentUriCompleted()V

    goto/16 :goto_0
.end method

.method public setBurstShotStoring()V
    .locals 2

    .prologue
    .line 3635
    const-string v0, "CameraEngine"

    const-string v1, "setBurstShotStoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 3637
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->setBurstShotStoring()V

    .line 3638
    :cond_0
    return-void
.end method

.method public setCameraDisplayOrientation()V
    .locals 7

    .prologue
    .line 3683
    new-instance v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v1}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    .line 3684
    .local v1, info:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v4

    invoke-static {v4, v1}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 3685
    const/4 v3, 0x0

    .line 3687
    .local v3, rotation:I
    const/4 v3, 0x1

    .line 3691
    const-string v4, "CameraEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rotation is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3693
    const/4 v0, 0x0

    .line 3694
    .local v0, degrees:I
    packed-switch v3, :pswitch_data_0

    .line 3701
    :goto_0
    iget v4, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3702
    iget v4, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v2, v4, 0x168

    .line 3703
    .local v2, result:I
    rsub-int v4, v2, 0x168

    rem-int/lit16 v2, v4, 0x168

    .line 3707
    :goto_1
    iget v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mDisplayOrientation:I

    if-eq v4, v2, :cond_0

    .line 3709
    add-int/lit16 v4, v2, 0x168

    iget v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mDisplayOrientation:I

    sub-int/2addr v4, v5

    rem-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mDisplayOrientation:I

    .line 3711
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mDisplayOrientation:I

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->setDisplayOrientation(I)V

    .line 3713
    :cond_0
    const-string v4, "CameraEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orientation degrees is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " info.orientation is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    return-void

    .line 3695
    .end local v2           #result:I
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3696
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 3697
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 3698
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 3705
    :cond_1
    iget v4, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v2, v4, 0x168

    .restart local v2       #result:I
    goto :goto_1

    .line 3694
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setContextualFilename(I)V
    .locals 7
    .parameter "contextualFilename"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 3831
    if-ne p1, v6, :cond_3

    .line 3832
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 3834
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3

    .line 3835
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 3837
    .local v1, location:[F
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v1, v2

    .line 3838
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v6

    .line 3840
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    if-nez v2, :cond_1

    .line 3841
    new-instance v2, Lcom/sec/android/app/camera/ReverseGeocoder;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    .line 3844
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    if-eqz v2, :cond_2

    .line 3845
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/ReverseGeocoder;->execute([F)V

    .line 3854
    .end local v0           #loc:Landroid/location/Location;
    .end local v1           #location:[F
    :cond_2
    :goto_0
    return-void

    .line 3852
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    if-eqz v2, :cond_2

    .line 3853
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ReverseGeocoder;->cancel()V

    goto :goto_0
.end method

.method public setFocusParameter(I)V
    .locals 3
    .parameter "focus"

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_1

    .line 1971
    :cond_0
    :goto_0
    return-void

    .line 1967
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraEngine;->checkFocusMode(I)I

    move-result p1

    .line 1969
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0
.end method

.method public setFrontSensorMirror(I)V
    .locals 3
    .parameter "flip"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3612
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    .line 3613
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setFrontSensorMirror(ZI)V

    .line 3614
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3613
    goto :goto_0
.end method

.method public setGroupID(I)V
    .locals 0
    .parameter "pId"

    .prologue
    .line 3890
    iput p1, p0, Lcom/sec/android/app/camera/CameraEngine;->groupId:I

    .line 3891
    return-void
.end method

.method public setHDRShotModeChanged(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 3676
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHDRShotModeChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 3678
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setHDRModeLevel(I)V

    .line 3679
    :cond_0
    return-void
.end method

.method public setLandscapeActive(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 2721
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLandscapeActive:Z

    .line 2722
    return-void
.end method

.method public setLastCapturedTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 2597
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedTitle:Ljava/lang/String;

    .line 2598
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 2593
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 2594
    return-void
.end method

.method public final setOnFacePositionChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFacePositionChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFacePositionChangedListener;

    .line 216
    return-void
.end method

.method public final setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;

    .line 206
    return-void
.end method

.method public setOnShutterSound(I)V
    .locals 3
    .parameter "shuttersound"

    .prologue
    .line 3598
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnShutterSound. shuttersound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_0

    .line 3601
    const-string v0, "CameraEngine"

    const-string v1, "mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    :goto_0
    return-void

    .line 3605
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getShutterSoundEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 3606
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setShutterSooundEnable(Z)V

    goto :goto_0

    .line 3608
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setShutterSooundEnable(Z)V

    goto :goto_0
.end method

.method public final setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnTimerEventListener:Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;

    .line 226
    return-void
.end method

.method public setOrientationAndSendItToFramework()V
    .locals 4

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setOrientationOnTake(I)V

    .line 1108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 1109
    .local v0, rotation:I
    const-string v1, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOrientationAndSendItToFramework - rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 1111
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1112
    return-void
.end method

.method protected setOrientationListener()V
    .locals 2

    .prologue
    .line 2729
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 2730
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$5;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CameraEngine$5;-><init>(Lcom/sec/android/app/camera/CameraEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 2747
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 2748
    return-void
.end method

.method protected setOrientationOnTake(I)V
    .locals 0
    .parameter "orientationOnTake"

    .prologue
    .line 2763
    iput p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationOnTake:I

    .line 2764
    return-void
.end method

.method public setShutterSoundEnable(Z)V
    .locals 2
    .parameter "shutterSoundEnable"

    .prologue
    .line 3859
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mShutterSoundEnable:Z

    .line 3861
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3863
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_1

    .line 3864
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-nez v0, :cond_2

    .line 3865
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setShutterSooundEnable(Z)V

    .line 3871
    :cond_1
    :goto_0
    return-void

    .line 3867
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setShutterSooundEnable(Z)V

    goto :goto_0
.end method

.method public setSingleShotBurst(Z)V
    .locals 2
    .parameter "burst"

    .prologue
    const/4 v1, 0x0

    .line 3617
    if-eqz p1, :cond_0

    .line 3618
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    .line 3619
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSingleShotBurst:I

    .line 3624
    :goto_0
    return-void

    .line 3621
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    .line 3622
    iput v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSingleShotBurst:I

    goto :goto_0
.end method

.method public setTouchFocusPosition(II)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x44fa

    const/high16 v10, 0x447a

    const/4 v9, 0x0

    .line 2627
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v6, :cond_1

    .line 2666
    :cond_0
    :goto_0
    return-void

    .line 2632
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 2633
    .local v1, focusWidth:I
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 2634
    .local v0, focusHeight:I
    iget v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    .line 2635
    .local v5, width:I
    iget v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    .line 2637
    .local v2, height:I
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    if-nez v6, :cond_2

    .line 2638
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    .line 2639
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    new-instance v7, Lcom/sec/android/seccamera/SecCamera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v7, v8, v12}, Lcom/sec/android/seccamera/SecCamera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2642
    :cond_2
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p1, v6

    sub-int v7, v5, v1

    invoke-static {v6, v9, v7}, Lcom/sec/android/app/camera/CameraEngine;->clamp(III)I

    move-result v3

    .line 2643
    .local v3, left:I
    div-int/lit8 v6, v0, 0x2

    sub-int v6, p2, v6

    sub-int v7, v2, v0

    invoke-static {v6, v9, v7}, Lcom/sec/android/app/camera/CameraEngine;->clamp(III)I

    move-result v4

    .line 2645
    .local v4, top:I
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    int-to-float v7, v3

    int-to-float v8, v5

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 2646
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    int-to-float v7, v4

    int-to-float v8, v2

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 2647
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    add-int v7, v3, v1

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 2648
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    add-int v7, v4, v0

    int-to-float v7, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 2658
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v7, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2663
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v7, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2665
    sput-boolean v12, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    goto/16 :goto_0
.end method

.method public setWaitingAnimation(Z)V
    .locals 0
    .parameter "waitinganimation"

    .prologue
    .line 675
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mEnableWaitingAnimation:Z

    .line 676
    return-void
.end method

.method public smileDetectionCompleted()V
    .locals 2

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 2011
    return-void
.end method

.method public startContinuousAF()V
    .locals 1

    .prologue
    .line 2702
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 2703
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startContinuousAF()V

    .line 2704
    :cond_0
    return-void
.end method

.method protected startReceivingLocationUpdates()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 2331
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->initializeLocationManager()V

    .line 2333
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2334
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 2339
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x42c8

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2348
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x42c8

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2356
    :goto_1
    return-void

    .line 2342
    :catch_0
    move-exception v6

    .line 2343
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "CameraEngine"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2344
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 2345
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2351
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 2352
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "CameraEngine"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2353
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v6

    .line 2354
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startTouchAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2673
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 2674
    sput-boolean v1, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    .line 2675
    return-void
.end method

.method public startingPreviewCompleted()V
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onStartingPreviewCompleted()V

    .line 1630
    return-void
.end method

.method public stopContinuousAF()V
    .locals 2

    .prologue
    .line 2707
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 2708
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopContinuousAF()V

    .line 2709
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2710
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 2711
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2712
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 2713
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2714
    return-void
.end method

.method public stopFaceDetection()V
    .locals 3

    .prologue
    .line 3797
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_1

    .line 3809
    :cond_0
    :goto_0
    return-void

    .line 3799
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getMaxNumDetectedFaces()I

    move-result v1

    if-lez v1, :cond_0

    .line 3801
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 3805
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->stopFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3806
    :catch_0
    move-exception v0

    .line 3807
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraEngine"

    const-string v2, "stopFaceDetection failed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopFaceZoom()V
    .locals 1

    .prologue
    .line 3775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mIsFaceZoomed:Z

    .line 3776
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopFaceZoom()V

    .line 3777
    return-void
.end method

.method public stopLongTouchAutoFocus()V
    .locals 1

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 2679
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopTouchAutoFocus()V

    .line 2681
    :cond_0
    return-void
.end method

.method protected stopReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 2359
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_0

    .line 2360
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2362
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2360
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2363
    :catch_0
    move-exception v0

    .line 2364
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "CameraEngine"

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2369
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    if-eqz v2, :cond_1

    .line 2370
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ReverseGeocoder;->cancel()V

    .line 2372
    :cond_1
    return-void
.end method

.method public stopTouchAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2684
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_0

    .line 2685
    const-string v0, "CameraEngine"

    const-string v1, "Parameters is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    :goto_0
    return-void

    .line 2689
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2690
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2692
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->setFocusParameter(I)V

    .line 2693
    sput-boolean v2, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    .line 2694
    sput-boolean v2, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2208
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreate**EndU["

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

    .line 2211
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    if-ne v0, p4, :cond_0

    .line 2246
    :goto_0
    return-void

    .line 2214
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    if-eqz v0, :cond_1

    .line 2215
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2216
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 2220
    :cond_1
    iput p3, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    .line 2221
    iput p4, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    .line 2231
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 2233
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->resetPreviewSize()V

    .line 2235
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2236
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->doStartPreviewAsync()V

    .line 2244
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setGuideLineSize(Landroid/view/View;)V

    .line 2245
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->resetFocus(Landroid/view/View;)V

    goto :goto_0

    .line 2238
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2240
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 2249
    const-string v0, "CameraEngine"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2252
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 2253
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 2256
    const-string v0, "CameraEngine"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2260
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 2261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2263
    :cond_1
    return-void
.end method

.method public switchToBack()V
    .locals 3

    .prologue
    .line 1424
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToBackCamera - setSelfMode - SELF_OFF, setCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 1426
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->updateSettingsWhenSwitchCamera()V

    .line 1427
    return-void
.end method

.method public switchToFront()V
    .locals 3

    .prologue
    .line 1415
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToFrontCamera - setCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 1417
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->updateSettingsWhenSwitchCamera()V

    .line 1418
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1421
    :cond_0
    return-void
.end method

.method public terminateBurstShot()V
    .locals 2

    .prologue
    .line 3641
    const-string v0, "CameraEngine"

    const-string v1, "terminateBurstShot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 3643
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->terminateBurstShot()V

    .line 3644
    :cond_0
    return-void
.end method

.method public updateFocusIndicator()V
    .locals 2

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;

    if-eqz v0, :cond_0

    .line 2572
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;->onFocusStateChanged(I)V

    .line 2574
    :cond_0
    return-void
.end method

.method public updateStorage()V
    .locals 2

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mStorage:I

    .line 2267
    return-void
.end method

.method public waitForCurrentPictureSaving()V
    .locals 1

    .prologue
    .line 2823
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2824
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2829
    :cond_0
    :goto_0
    return-void

    .line 2826
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForCurrentSearchingLastContentUri()V
    .locals 1

    .prologue
    .line 2863
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2864
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2869
    :cond_0
    :goto_0
    return-void

    .line 2866
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForEngineStartingThread()V
    .locals 1

    .prologue
    .line 1371
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1377
    :cond_0
    :goto_0
    return-void

    .line 1374
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForLastFileToSync()V
    .locals 6

    .prologue
    .line 2836
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 2849
    :goto_0
    return-void

    .line 2840
    :cond_0
    :try_start_0
    const-string v2, "CameraEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before file sync::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    sget-object v2, Lcom/sec/android/app/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    const-string v4, "rw"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 2842
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 2843
    const-string v2, "CameraEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after file sync::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2844
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 2845
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2846
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 2847
    .local v0, e:Ljava/io/SyncFailedException;
    invoke-virtual {v0}, Ljava/io/SyncFailedException;->printStackTrace()V

    goto :goto_0
.end method

.method public waitForStartPreviewThreadComplete()V
    .locals 1

    .prologue
    .line 2853
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2854
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2859
    :cond_0
    :goto_0
    return-void

    .line 2856
    :catch_0
    move-exception v0

    goto :goto_0
.end method
