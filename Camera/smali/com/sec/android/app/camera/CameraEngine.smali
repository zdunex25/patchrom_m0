.class public Lcom/android/camera/CameraEngine;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/camera/CameraSettings$OnCameraSettingsChangedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraEngine$ShootingModeManager;,
        Lcom/android/camera/CameraEngine$LocationListener;,
        Lcom/android/camera/CameraEngine$CameraPreviewCallback;,
        Lcom/android/camera/CameraEngine$AutoFocusCallback;,
        Lcom/android/camera/CameraEngine$FaceDetectionCallback;,
        Lcom/android/camera/CameraEngine$JpegPictureCallback;,
        Lcom/android/camera/CameraEngine$RawPictureCallback;,
        Lcom/android/camera/CameraEngine$ShutterCallback;,
        Lcom/android/camera/CameraEngine$ErrorCallback;,
        Lcom/android/camera/CameraEngine$CeSettingsParameter;,
        Lcom/android/camera/CameraEngine$CeSecCameraParameter;,
        Lcom/android/camera/CameraEngine$MainHandler;,
        Lcom/android/camera/CameraEngine$UriSearchingHandler;,
        Lcom/android/camera/CameraEngine$ErrorMessageHandler;,
        Lcom/android/camera/CameraEngine$TimerEventHandler;,
        Lcom/android/camera/CameraEngine$StateMessageHandler;,
        Lcom/android/camera/CameraEngine$OnTimerEventListener;,
        Lcom/android/camera/CameraEngine$OnFacePositionChangedListener;,
        Lcom/android/camera/CameraEngine$OnFocusStateChangedListener;
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

.field protected static final DELAY_TIME_TO_START_NZSL_BURST_SHOT:I = 0x3e8

.field public static final ERROR_BUFFER_OVERFLOW_FROM_RECORDER:I = -0x6

.field public static final ERROR_CAMCORDER_OPEN:I = -0x2

.field public static final ERROR_CAMERA_OPEN:I = -0x1

.field public static final ERROR_INVALID_FIRMWARE_VERSION:I = -0x7

.field public static final ERROR_MEDIA_SERVER_DIED:I = -0x8

.field public static final ERROR_PREVIEWFRAME_TIMEOUT:I = -0x9

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

.field protected static final START_NZSL_BURST_SHOT:I = 0x1f4

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

.field public lockObject:Ljava/lang/Object;

.field protected mActivityContext:Lcom/android/camera/AbstractCameraActivity;

.field private mAeLockSupported:Z

.field private mAutoFocusCallback:Lcom/android/camera/CameraEngine$AutoFocusCallback;

.field private mAwbLockSupported:Z

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field protected mCameraSettings:Lcom/android/camera/CameraSettings;

.field private mCaptureInitiated:Z

.field private mCheckingFace:I

.field protected mCurrentState:Lcom/android/camera/AbstractCeState;

.field protected mDateTaken:J

.field protected mDateTakenForHDR:J

.field protected mDisplayOrientation:I

.field public mEnableWaitingAnimation:Z

.field private mErrorCallback:Lcom/android/camera/CameraEngine$ErrorCallback;

.field protected mErrorMessageHandler:Lcom/android/camera/CameraEngine$ErrorMessageHandler;

.field private mFaceDetectionCallback:Lcom/android/camera/CameraEngine$FaceDetectionCallback;

.field protected mFocusState:I

.field protected mFocusToneGenerator:Landroid/media/ToneGenerator;

.field protected mInformedAboutFirmwareVersion:Z

.field private mIsFaceZoomed:Z

.field private mIsFinishOneShotPreviewCallback:Z

.field private mJpegPictureCallback:Lcom/android/camera/CameraEngine$JpegPictureCallback;

.field private mLandscapeActive:Z

.field protected mLastCaptureData:Lcom/android/camera/CaptureData;

.field private mLastCapturedFileName:Ljava/lang/String;

.field private mLastCapturedTitle:Ljava/lang/String;

.field protected mLastContentUri:Landroid/net/Uri;

.field private mLastOrientation:I

.field mLocationListeners:[Lcom/android/camera/CameraEngine$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mMainHandler:Lcom/android/camera/CameraEngine$MainHandler;

.field private mNumOfSavedImageInHDR:I

.field private mNumberOfPictureSavingThread:I

.field protected mOldViewFinderHeight:I

.field protected mOldViewFinderWidth:I

.field protected mOnFacePositionChangedListener:Lcom/android/camera/CameraEngine$OnFacePositionChangedListener;

.field protected mOnFocusStateChangedListener:Lcom/android/camera/CameraEngine$OnFocusStateChangedListener;

.field protected mOnTimerEventListener:Lcom/android/camera/CameraEngine$OnTimerEventListener;

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

.field private mRawPictureCallback:Lcom/android/camera/CameraEngine$RawPictureCallback;

.field protected mRequestQueue:Lcom/android/camera/CeRequestQueue;

.field protected mRetry:I

.field protected mReverseGeocoder:Lcom/android/camera/ReverseGeocoder;

.field private mSearchingLastContentUriThread:Ljava/lang/Thread;

.field private mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

.field private mShutterCallback:Lcom/android/camera/CameraEngine$ShutterCallback;

.field private mShutterSoundEnable:Z

.field private mSingleShotBurst:I

.field protected mStartPreviewThread:Ljava/lang/Thread;

.field protected mStateDepot:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/camera/AbstractCeState;",
            ">;"
        }
    .end annotation
.end field

.field protected mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mSurfaceView:Lcom/android/camera/PreviewFrameLayout;

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

.field protected mTimerEventHandler:Lcom/android/camera/CameraEngine$TimerEventHandler;

.field protected mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 172
    sput-boolean v0, Lcom/android/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    .line 173
    sput-boolean v0, Lcom/android/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    .line 174
    sput-boolean v0, Lcom/android/camera/CameraEngine;->m_bRestartTouchAF:Z

    .line 179
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    .line 197
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/CameraEngine;->SHUTTER_SOUND_SHORT:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;)V
    .locals 10
    .parameter "activityContext"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 407
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    .line 115
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mReverseGeocoder:Lcom/android/camera/ReverseGeocoder;

    .line 118
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 125
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    .line 126
    new-instance v0, Lcom/android/camera/CeRequestQueue;

    invoke-direct {v0, p0}, Lcom/android/camera/CeRequestQueue;-><init>(Lcom/android/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    .line 128
    iput-boolean v6, p0, Lcom/android/camera/CameraEngine;->mInformedAboutFirmwareVersion:Z

    .line 136
    iput v6, p0, Lcom/android/camera/CameraEngine;->mFocusState:I

    .line 140
    iput v6, p0, Lcom/android/camera/CameraEngine;->mRetry:I

    .line 156
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    .line 157
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    .line 158
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 159
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    .line 160
    iput v6, p0, Lcom/android/camera/CameraEngine;->mNumberOfPictureSavingThread:I

    .line 165
    iput v6, p0, Lcom/android/camera/CameraEngine;->mNumOfSavedImageInHDR:I

    .line 170
    iput-boolean v6, p0, Lcom/android/camera/CameraEngine;->mEnableWaitingAnimation:Z

    .line 176
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    .line 177
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    .line 181
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    .line 182
    iput-boolean v7, p0, Lcom/android/camera/CameraEngine;->mLandscapeActive:Z

    .line 186
    iput-boolean v6, p0, Lcom/android/camera/CameraEngine;->mIsFaceZoomed:Z

    .line 188
    iput-boolean v6, p0, Lcom/android/camera/CameraEngine;->mIsFinishOneShotPreviewCallback:Z

    .line 191
    iput v6, p0, Lcom/android/camera/CameraEngine;->groupId:I

    .line 195
    iput v6, p0, Lcom/android/camera/CameraEngine;->mDisplayOrientation:I

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->lockObject:Ljava/lang/Object;

    .line 203
    iput-boolean v6, p0, Lcom/android/camera/CameraEngine;->mAeLockSupported:Z

    .line 204
    iput-boolean v6, p0, Lcom/android/camera/CameraEngine;->mAwbLockSupported:Z

    .line 210
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mOnFocusStateChangedListener:Lcom/android/camera/CameraEngine$OnFocusStateChangedListener;

    .line 220
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mOnFacePositionChangedListener:Lcom/android/camera/CameraEngine$OnFacePositionChangedListener;

    .line 230
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mOnTimerEventListener:Lcom/android/camera/CameraEngine$OnTimerEventListener;

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    .line 238
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/camera/CeStateIdle;

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v6}, Lcom/android/camera/CeStateIdle;-><init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/camera/CeStateInitializing;

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v7}, Lcom/android/camera/CeStateInitializing;-><init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/camera/CeStateInitialized;

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v8}, Lcom/android/camera/CeStateInitialized;-><init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/camera/CeStateStartingPreview;

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v4, 0x3

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/CeStateStartingPreview;-><init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/camera/CeStatePreviewing;

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v4, 0x4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/CeStatePreviewing;-><init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/camera/CeStateShutdown;

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v4, 0x7

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/CeStateShutdown;-><init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v0, Lcom/android/camera/CameraEngine$StateMessageHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraEngine$StateMessageHandler;-><init>(Lcom/android/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    .line 265
    new-instance v0, Lcom/android/camera/CameraEngine$TimerEventHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraEngine$TimerEventHandler;-><init>(Lcom/android/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mTimerEventHandler:Lcom/android/camera/CameraEngine$TimerEventHandler;

    .line 289
    new-instance v0, Lcom/android/camera/CameraEngine$ErrorMessageHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraEngine$ErrorMessageHandler;-><init>(Lcom/android/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mErrorMessageHandler:Lcom/android/camera/CameraEngine$ErrorMessageHandler;

    .line 301
    new-instance v0, Lcom/android/camera/CameraEngine$UriSearchingHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraEngine$UriSearchingHandler;-><init>(Lcom/android/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    .line 303
    iput-boolean v6, p0, Lcom/android/camera/CameraEngine;->mCaptureInitiated:Z

    .line 306
    new-instance v0, Lcom/android/camera/CameraEngine$AutoFocusCallback;

    invoke-direct {v0, p0, v5}, Lcom/android/camera/CameraEngine$AutoFocusCallback;-><init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CameraEngine$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mAutoFocusCallback:Lcom/android/camera/CameraEngine$AutoFocusCallback;

    .line 307
    new-instance v0, Lcom/android/camera/CameraEngine$FaceDetectionCallback;

    invoke-direct {v0, p0, v5}, Lcom/android/camera/CameraEngine$FaceDetectionCallback;-><init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CameraEngine$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mFaceDetectionCallback:Lcom/android/camera/CameraEngine$FaceDetectionCallback;

    .line 308
    new-instance v0, Lcom/android/camera/CameraEngine$ShutterCallback;

    invoke-direct {v0, p0, v5}, Lcom/android/camera/CameraEngine$ShutterCallback;-><init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CameraEngine$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mShutterCallback:Lcom/android/camera/CameraEngine$ShutterCallback;

    .line 309
    new-instance v0, Lcom/android/camera/CameraEngine$RawPictureCallback;

    invoke-direct {v0, p0, v5}, Lcom/android/camera/CameraEngine$RawPictureCallback;-><init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CameraEngine$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mRawPictureCallback:Lcom/android/camera/CameraEngine$RawPictureCallback;

    .line 310
    new-instance v0, Lcom/android/camera/CameraEngine$ErrorCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraEngine$ErrorCallback;-><init>(Lcom/android/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mErrorCallback:Lcom/android/camera/CameraEngine$ErrorCallback;

    .line 311
    new-instance v0, Lcom/android/camera/CameraEngine$JpegPictureCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraEngine$JpegPictureCallback;-><init>(Lcom/android/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mJpegPictureCallback:Lcom/android/camera/CameraEngine$JpegPictureCallback;

    .line 313
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    .line 317
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 318
    iput v9, p0, Lcom/android/camera/CameraEngine;->mLastOrientation:I

    .line 319
    iput v9, p0, Lcom/android/camera/CameraEngine;->mOrientationOnTake:I

    .line 321
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 322
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    .line 323
    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mLastCapturedTitle:Ljava/lang/String;

    .line 337
    iput v6, p0, Lcom/android/camera/CameraEngine;->mSingleShotBurst:I

    .line 361
    new-instance v0, Lcom/android/camera/CameraEngine$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraEngine$MainHandler;-><init>(Lcom/android/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mMainHandler:Lcom/android/camera/CameraEngine$MainHandler;

    .line 789
    iput v6, p0, Lcom/android/camera/CameraEngine;->mCheckingFace:I

    .line 2649
    new-array v0, v8, [Lcom/android/camera/CameraEngine$LocationListener;

    new-instance v1, Lcom/android/camera/CameraEngine$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2, p0}, Lcom/android/camera/CameraEngine$LocationListener;-><init>(Lcom/android/camera/CameraEngine;Ljava/lang/String;Lcom/android/camera/CameraEngine;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/camera/CameraEngine$LocationListener;

    const-string v2, "network"

    invoke-direct {v1, p0, v2, p0}, Lcom/android/camera/CameraEngine$LocationListener;-><init>(Lcom/android/camera/CameraEngine;Ljava/lang/String;Lcom/android/camera/CameraEngine;)V

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mLocationListeners:[Lcom/android/camera/CameraEngine$LocationListener;

    .line 4260
    iput-boolean v7, p0, Lcom/android/camera/CameraEngine;->mShutterSoundEnable:Z

    .line 408
    iput-object p1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 409
    invoke-virtual {p1}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    .line 410
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mSurfaceView:Lcom/android/camera/PreviewFrameLayout;

    .line 411
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/android/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 412
    new-instance v0, Lcom/android/camera/CameraEngine$ShootingModeManager;

    invoke-direct {v0, p0, v5}, Lcom/android/camera/CameraEngine$ShootingModeManager;-><init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CameraEngine$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    .line 421
    invoke-virtual {p0, v6}, Lcom/android/camera/CameraEngine;->changeEngineState(I)V

    .line 423
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    .line 424
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    sget-object v1, Lcom/android/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    #setter for: Lcom/android/camera/CameraEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0, v1}, Lcom/android/camera/CameraEngine$ShootingModeManager;->access$502(Lcom/android/camera/CameraEngine$ShootingModeManager;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 425
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/CameraEngine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/camera/CameraEngine;->mCheckingFace:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/CameraEngine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/android/camera/CameraEngine;->mCheckingFace:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/CameraEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/CameraEngine;->openCameraDevice()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/CameraEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/CameraEngine;->startFaceDetection()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/CameraEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/CameraEngine;->updateOutdoorVisibility()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/camera/CameraEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/camera/CameraEngine;->mIsFinishOneShotPreviewCallback:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/camera/CameraEngine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/camera/CameraEngine;->setLastOrientation(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/CameraEngine;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/camera/CameraEngine;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1708(Lcom/android/camera/CameraEngine;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/camera/CameraEngine;->mNumberOfPictureSavingThread:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/CameraEngine;->mNumberOfPictureSavingThread:I

    return v0
.end method

.method static synthetic access$1710(Lcom/android/camera/CameraEngine;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/camera/CameraEngine;->mNumberOfPictureSavingThread:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/camera/CameraEngine;->mNumberOfPictureSavingThread:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/CameraEngine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/camera/CameraEngine;->mNumOfSavedImageInHDR:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/camera/CameraEngine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/android/camera/CameraEngine;->mNumOfSavedImageInHDR:I

    return p1
.end method

.method static synthetic access$2002(Lcom/android/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/camera/CameraEngine;->mLastCapturedTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/CameraEngine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/camera/CameraEngine;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/camera/CameraEngine;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/camera/CameraEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/camera/CameraEngine;->mCaptureInitiated:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/camera/CameraEngine;)Lcom/android/camera/CameraEngine$JpegPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mJpegPictureCallback:Lcom/android/camera/CameraEngine$JpegPictureCallback;

    return-object v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/camera/CameraEngine;->mIsBlockSingleShutter:Z

    return v0
.end method

.method static synthetic access$2502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    sput-boolean p0, Lcom/android/camera/CameraEngine;->mIsBlockSingleShutter:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/android/camera/CameraEngine;)Lcom/android/camera/CameraEngine$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mShutterCallback:Lcom/android/camera/CameraEngine$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/CameraEngine;)Lcom/android/camera/CameraEngine$RawPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRawPictureCallback:Lcom/android/camera/CameraEngine$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/CameraEngine;)Lcom/android/camera/CameraEngine$ShootingModeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    return v0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 2877
    if-le p0, p2, :cond_0

    .line 2879
    .end local p2
    :goto_0
    return p2

    .line 2878
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 2879
    goto :goto_0
.end method

.method private getCurrentStateId()I
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getCurrentStateHandler()Lcom/android/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v0

    return v0
.end method

.method private initializeLocationManager()V
    .locals 2

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 2564
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    .line 2566
    :cond_0
    return-void
.end method

.method private openCameraDevice()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1429
    const-string v1, "CameraEngine"

    const-string v2, "opening camera device..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
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

    .line 1435
    :try_start_0
    const-string v1, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera - cameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 1438
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1439
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.ACTION_START_BACK_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    :cond_0
    :goto_0
    iput v6, p0, Lcom/android/camera/CameraEngine;->mRetry:I

    .line 1462
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_6

    .line 1463
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mErrorCallback:Lcom/android/camera/CameraEngine$ErrorCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 1464
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mFaceDetectionCallback:Lcom/android/camera/CameraEngine$FaceDetectionCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V

    .line 1465
    const-string v1, "CameraEngine"

    const-string v2, "camera device is opened."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 1469
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v1, :cond_5

    .line 1470
    const-string v1, "CameraEngine"

    const-string v2, "CameraParameters is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mErrorMessageHandler:Lcom/android/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v5}, Lcom/android/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 1484
    :cond_1
    :goto_1
    return-void

    .line 1441
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.ACTION_START_FRONT_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1443
    :catch_0
    move-exception v0

    .line 1445
    .local v0, e:Ljava/lang/Exception;
    iget v1, p0, Lcom/android/camera/CameraEngine;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/CameraEngine;->mRetry:I

    .line 1446
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/camera/CameraEngine;->mRetry:I

    if-gez v1, :cond_3

    .line 1447
    const-string v1, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service cannot connect. retry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CameraEngine;->mRetry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    invoke-direct {p0}, Lcom/android/camera/CameraEngine;->openCameraDevice()V

    .line 1450
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_1

    .line 1452
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/camera/CameraEngine;->mRetry:I

    if-ltz v1, :cond_4

    .line 1453
    const-string v1, "CameraEngine"

    const-string v2, "service cannot connect. critical exception occured."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iput v6, p0, Lcom/android/camera/CameraEngine;->mRetry:I

    .line 1455
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mErrorMessageHandler:Lcom/android/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v5}, Lcom/android/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1457
    :cond_4
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/CameraEngine;->mRetry:I

    if-gez v1, :cond_0

    goto :goto_1

    .line 1479
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->setCameraDisplayOrientation()V

    .line 1483
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
    .line 3010
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
    .line 3014
    iput p1, p0, Lcom/android/camera/CameraEngine;->mLastOrientation:I

    .line 3015
    return-void
.end method

.method private startFaceDetection()V
    .locals 3

    .prologue
    .line 4174
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_1

    .line 4196
    :cond_0
    :goto_0
    return-void

    .line 4176
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getMaxNumDetectedFaces()I

    move-result v1

    if-lez v1, :cond_0

    .line 4180
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4184
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->startFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4193
    :catch_0
    move-exception v0

    .line 4194
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraEngine"

    const-string v2, "startFaceDetection failed. It seems to be started already."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4190
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->startFaceDetection()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateOutdoorVisibility()V
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 583
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraOutdoorVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 584
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    .line 592
    :goto_0
    return-void

    .line 586
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateSettingsWhenSwitchCamera()V
    .locals 1

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->refreshCameraSettingValuesFromPreferences()V

    .line 1593
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->refreshCameraSettingValues()V

    .line 1595
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->setCameraSettingValuesAsDefault()V

    .line 1596
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->updateShootingModeWhenSwitchCamera()V

    .line 1597
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->refreshButtonDimForCamera()V

    .line 1598
    return-void
.end method


# virtual methods
.method public CreateCaptureData(Landroid/content/Intent;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 3132
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 3133
    .local v1, PREVIEW_NORMAL_WIDTH:I
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07009f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 3134
    .local v0, PREVIEW_NORMAL_HEIGHT:I
    if-eqz p1, :cond_1

    .line 3135
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    if-eqz v3, :cond_0

    .line 3136
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    invoke-virtual {v3}, Lcom/android/camera/CaptureData;->clear()V

    .line 3137
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    .line 3139
    :cond_0
    new-instance v3, Lcom/android/camera/CaptureData;

    invoke-direct {v3}, Lcom/android/camera/CaptureData;-><init>()V

    iput-object v3, p0, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    .line 3140
    const-string v3, "inline-data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 3141
    .local v2, mdata:[B
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraResolution;->getIntWidth(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraResolution;->getIntHeight(I)I

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

    invoke-virtual {v3, v2, v4}, Lcom/android/camera/CaptureData;->setCaptureData([BI)V

    .line 3146
    .end local v2           #mdata:[B
    :cond_1
    return-void
.end method

.method public IsWaitingAnimation()Z
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/android/camera/CameraEngine;->mEnableWaitingAnimation:Z

    return v0
.end method

.method protected calculateOrientationForPicture(I)I
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v4, 0x1

    .line 3030
    const/4 v1, 0x0

    .line 3031
    .local v1, rotation:I
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 3033
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v3

    aget-object v0, v2, v3

    .line 3037
    .local v0, info:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    iget v2, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-ne v2, v4, :cond_2

    .line 3038
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getSelfFlip()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 3042
    iget v2, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    add-int/lit16 v2, v2, 0xb4

    rem-int/lit16 v1, v2, 0x168

    .line 3053
    .end local v0           #info:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    :cond_0
    :goto_0
    return v1

    .line 3045
    .restart local v0       #info:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    :cond_1
    iget v2, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0

    .line 3048
    :cond_2
    iget v2, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_1

    .line 1098
    const-string v0, "CameraEngine"

    const-string v1, "cancelAutoFocus - this cmd is skiped because mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isAutoFocusEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1103
    const-string v0, "CameraEngine"

    const-string v1, "Autofocus is disabled, cancelAutoFocus is not needed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1107
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    if-eqz v0, :cond_3

    .line 1108
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    new-instance v1, Lcom/android/camera/CameraEngine$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraEngine$1;-><init>(Lcom/android/camera/CameraEngine;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$StateMessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1119
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public cancelCaptureForPanorama()V
    .locals 2

    .prologue
    .line 2200
    const-string v0, "CameraEngine"

    const-string v1, "cancelCaptureForPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2202
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->doStopPreviewSync()V

    .line 2204
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$ShootingModeManager;->cancelCaptureForPanorama()V

    .line 2205
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->scheduleStartPreview()V

    .line 2206
    return-void
.end method

.method public cancelFocusing()V
    .locals 1

    .prologue
    .line 2835
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/CameraEngine;->mFocusState:I

    .line 2836
    return-void
.end method

.method public cancelSeriesActionShot()V
    .locals 1

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$ShootingModeManager;->cancelSeriesActionShot()V

    .line 2974
    return-void
.end method

.method public captureBurstShot()V
    .locals 2

    .prologue
    .line 4012
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mMainHandler:Lcom/android/camera/CameraEngine$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 4013
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->setOrientationAndSendItToFramework()V

    .line 4014
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->captureBurstShot()V

    .line 4015
    return-void
.end method

.method public changeEngineState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 595
    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AbstractCeState;

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    .line 601
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    if-eqz v0, :cond_0

    .line 602
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

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

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
    .line 2176
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2177
    const/4 p1, 0x5

    .line 2186
    :cond_0
    :goto_0
    return p1

    .line 2178
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 2182
    const/4 p1, 0x5

    goto :goto_0

    .line 2183
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2184
    const/4 p1, 0x6

    goto :goto_0
.end method

.method public chkActionShotStarted()Z
    .locals 1

    .prologue
    .line 3941
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$ShootingModeManager;->chkActionShotStarted()Z

    move-result v0

    return v0
.end method

.method public clearCaptureImageData()V
    .locals 2

    .prologue
    .line 2868
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 2869
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    if-eqz v0, :cond_0

    .line 2870
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    invoke-virtual {v0}, Lcom/android/camera/CaptureData;->clear()V

    .line 2871
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    .line 2873
    :cond_0
    monitor-exit v1

    .line 2874
    return-void

    .line 2873
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearFocusState()V
    .locals 1

    .prologue
    .line 2831
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraEngine;->mFocusState:I

    .line 2832
    return-void
.end method

.method public clearLastContentUri()V
    .locals 1

    .prologue
    .line 2860
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 2861
    return-void
.end method

.method public clearRequest()V
    .locals 3

    .prologue
    .line 1619
    const-string v1, "CameraEngine"

    const-string v2, "clearRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 1622
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mTimerEventHandler:Lcom/android/camera/CameraEngine$TimerEventHandler;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraEngine$TimerEventHandler;->removeMessages(I)V

    .line 1621
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1625
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1626
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1627
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1628
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1629
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1630
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1631
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1632
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1633
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1634
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1635
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1637
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v1}, Lcom/android/camera/CeRequestQueue;->clear()V

    .line 1638
    return-void
.end method

.method public clearTimer()V
    .locals 3

    .prologue
    .line 2255
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 2256
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mTimerEventHandler:Lcom/android/camera/CameraEngine$TimerEventHandler;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraEngine$TimerEventHandler;->removeMessages(I)V

    .line 2255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2259
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 2261
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/camera/CeRequestQueue;->removeRequest(I)V

    .line 2262
    return-void
.end method

.method public closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 616
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 617
    const-string v0, "CameraEngine"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 620
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setZoomChangeListener(Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;)V

    .line 621
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V

    .line 622
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 623
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setOnHDRShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;)V

    .line 624
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setOnMultiFrameShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;)V

    .line 625
    iput-object v2, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 626
    iput-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 630
    :cond_0
    return-void
.end method

.method public convertExifOrientationToMediaOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 3070
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 3071
    const/16 v0, 0x5a

    .line 3077
    :goto_0
    return v0

    .line 3072
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 3073
    const/16 v0, 0xb4

    goto :goto_0

    .line 3074
    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 3075
    const/16 v0, 0x10e

    goto :goto_0

    .line 3077
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public convertToExifInterfaceOrientation(I)I
    .locals 2
    .parameter "orientation"

    .prologue
    const/4 v0, 0x1

    .line 3057
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_1

    .line 3058
    const/4 v0, 0x6

    .line 3066
    :cond_0
    :goto_0
    return v0

    .line 3059
    :cond_1
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_2

    .line 3060
    const/4 v0, 0x3

    goto :goto_0

    .line 3061
    :cond_2
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_3

    .line 3062
    const/16 v0, 0x8

    goto :goto_0

    .line 3063
    :cond_3
    const/16 v1, 0x168

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_0

    goto :goto_0
.end method

.method public countForCurrenPictureSaving()I
    .locals 1

    .prologue
    .line 3092
    iget v0, p0, Lcom/android/camera/CameraEngine;->mNumberOfPictureSavingThread:I

    return v0
.end method

.method public doAutoFocusAsync()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1069
    const-string v0, "CameraEngine"

    const-string v1, "doAutoFocusAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
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

    .line 1073
    iput v4, p0, Lcom/android/camera/CameraEngine;->mFocusState:I

    .line 1074
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mMainHandler:Lcom/android/camera/CameraEngine$MainHandler;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 1077
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 1079
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mAutoFocusCallback:Lcom/android/camera/CameraEngine$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1092
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showFocusIndicator(I)V

    .line 1094
    :cond_2
    return-void

    .line 1081
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final doCancelShutterTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1157
    const-string v0, "CameraEngine"

    const-string v1, "doCancelShutterTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1160
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->resumeAudioPlayback()V

    .line 1169
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->startContinuousAF()V

    .line 1172
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->clearTimer()V

    .line 1174
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1175
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->removeRequest(I)V

    .line 1176
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/android/camera/CeRequestQueue;->removeRequest(I)V

    .line 1177
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->removeRequest(I)V

    .line 1178
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->removeRequest(I)V

    .line 1179
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->removeRequest(I)V

    .line 1180
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->removeRequest(I)V

    .line 1182
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1184
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->cancelAutoFocus()V

    .line 1187
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->clearFocusState()V

    .line 1188
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->updateFocusIndicator()V

    .line 1189
    return-void

    .line 1164
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->resumeAudioPlayback_TimerBgm()V

    goto :goto_0
.end method

.method public doChangeParameterSync(II)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1952
    new-instance v0, Lcom/android/camera/CameraEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/CameraEngine$CeSettingsParameter;-><init>(Lcom/android/camera/CameraEngine;II)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    .line 1953
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

    .line 1956
    const-string v2, "CameraEngine"

    const-string v3, "doChangeParameterSync"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_1

    .line 1959
    const-string v2, "CameraEngine"

    const-string v3, "returning because mCameraDevice is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    :cond_0
    :goto_0
    return-void

    .line 1963
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v2, :cond_2

    .line 1964
    const-string v2, "CameraEngine"

    const-string v3, "mParameters is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 1968
    check-cast v1, Lcom/android/camera/CameraEngine$CeSettingsParameter;

    .line 1969
    .local v1, p:Lcom/android/camera/CameraEngine$CeSettingsParameter;
    const/4 v0, 0x0

    .line 1971
    .local v0, fpsRange:[I
    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2076
    :cond_3
    :goto_1
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v2, v8}, Lcom/android/camera/CeRequestQueue;->searchDuplicateRequest(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2082
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2087
    :goto_2
    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 2088
    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_b

    .line 2089
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    goto :goto_0

    .line 1982
    :sswitch_1
    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    .line 1983
    const-string v2, "CameraEngine"

    const-string v3, "preview-frame-rate 15 by Add Me"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/camera/CameraEngine;->findBestFpsRange(Lcom/sec/android/seccamera/SecCamera$Parameters;II)[I

    move-result-object v0

    .line 1988
    if-eqz v0, :cond_3

    .line 1989
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    aget v3, v0, v5

    aget v4, v0, v6

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_1

    .line 1991
    :cond_4
    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_5

    .line 2000
    :cond_5
    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_6

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_6

    .line 2003
    :cond_6
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0x7530

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/camera/CameraEngine;->findBestFpsRange(Lcom/sec/android/seccamera/SecCamera$Parameters;II)[I

    move-result-object v0

    .line 2004
    if-eqz v0, :cond_3

    .line 2005
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    aget v3, v0, v5

    aget v4, v0, v6

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_1

    .line 2009
    :sswitch_2
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2012
    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2015
    :sswitch_4
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2016
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2021
    :sswitch_5
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mAutoFocusCallback:Lcom/android/camera/CameraEngine$AutoFocusCallback;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 2022
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/CameraEngine;->checkFocusMode(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x19

    if-eq v2, v3, :cond_3

    .line 2029
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    if-ne v2, v7, :cond_7

    .line 2031
    invoke-direct {p0}, Lcom/android/camera/CameraEngine;->startFaceDetection()V

    goto/16 :goto_1

    .line 2033
    :cond_7
    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    if-eq v2, v7, :cond_3

    .line 2034
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v8, :cond_8

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2036
    :cond_8
    iget-boolean v2, p0, Lcom/android/camera/CameraEngine;->mIsFaceZoomed:Z

    if-eqz v2, :cond_9

    .line 2037
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->stopFaceZoom()V

    .line 2038
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->stopFaceDetection()V

    goto/16 :goto_1

    .line 2044
    :sswitch_6
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2047
    :sswitch_7
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2050
    :sswitch_8
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2053
    :sswitch_9
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2056
    :sswitch_a
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getQualityValue(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2064
    :sswitch_b
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2071
    :sswitch_c
    const-string v2, "CameraEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doChangeParameterSync : MENUID_BURST_SETTINGS - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    goto/16 :goto_1

    .line 2084
    :cond_a
    const-string v2, "CameraEngine"

    const-string v3, "parameter will set next operation coming"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2090
    :cond_b
    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_c

    .line 2091
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    goto/16 :goto_0

    .line 2093
    :cond_c
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    goto/16 :goto_0

    .line 1971
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
        0x38 -> :sswitch_b
        0x39 -> :sswitch_b
    .end sparse-switch
.end method

.method public doHDRShotAllProgressCompleted()V
    .locals 2

    .prologue
    .line 4052
    const-string v0, "CameraEngine"

    const-string v1, "doHDRShotAllProgressCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4053
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 4054
    return-void
.end method

.method public final doPostInitSync()V
    .locals 2

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1548
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnPanoramaEventListener(Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;)V

    .line 1549
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnActionShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;)V

    .line 1550
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnCartoonShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;)V

    .line 1551
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setObjectTrackingMsgListener(Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;)V

    .line 1552
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnSmileShotDetectionSuccessListener(Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;)V

    .line 1553
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnHDRShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;)V

    .line 1554
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnContinuousShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;)V

    .line 1555
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnBurstShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;)V

    .line 1556
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnMultiFrameShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;)V

    .line 1557
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnNotifyFirstPreviewFrameEventListener(Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;)V

    .line 1559
    :cond_0
    return-void
.end method

.method public doProcessBackSync()V
    .locals 1

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->processBack()V

    .line 1927
    return-void
.end method

.method public doResetSettingsSync()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1607
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->resetButtonDim()V

    .line 1609
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->resetCameraSettingsToDefault()V

    .line 1611
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/MenuDimController;->setPreviousFlashValue(I)V

    .line 1612
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/MenuDimController;->setPreviousMeteringValue(I)V

    .line 1613
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->refreshButtonDimForCamera()V

    .line 1615
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->updateUIWhenResetSettings()V

    .line 1616
    return-void
.end method

.method public doSetAllParamsSync()V
    .locals 2

    .prologue
    .line 1198
    const-string v0, "CameraEngine"

    const-string v1, "doSetAllParamsSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->initialize()V

    .line 1200
    return-void
.end method

.method public doSetParametersSync(Ljava/lang/Object;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 1936
    const-string v1, "CameraEngine"

    const-string v2, "doSetParametersSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1939
    check-cast v0, Lcom/android/camera/CameraEngine$CeSecCameraParameter;

    .line 1940
    .local v0, p:Lcom/android/camera/CameraEngine$CeSecCameraParameter;
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSecCameraParameter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSecCameraParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1943
    .end local v0           #p:Lcom/android/camera/CameraEngine$CeSecCameraParameter;
    :cond_0
    return-void
.end method

.method public final doShutterTimerAsync(I)V
    .locals 5
    .parameter "value"

    .prologue
    .line 1133
    const-string v1, "CameraEngine"

    const-string v2, "doShutterTimerAsync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->stopContinuousAF()V

    .line 1138
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mMainHandler:Lcom/android/camera/CameraEngine$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 1140
    move v0, p1

    .line 1141
    .local v0, i:I
    move v0, p1

    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 1142
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

    .line 1143
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mTimerEventHandler:Lcom/android/camera/CameraEngine$TimerEventHandler;

    sub-int v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/camera/CameraEngine$TimerEventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1141
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1146
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x4

    add-int/lit8 v3, p1, 0x1

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1147
    return-void
.end method

.method public final doStartActionShotSync()V
    .locals 2

    .prologue
    .line 1273
    const-string v0, "CameraEngine"

    const-string v1, "doStartActionShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->setOrientationAndSendItToFramework()V

    .line 1275
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pauseAudioPlayback()V

    .line 1276
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startSeriesActionShot()V

    .line 1277
    return-void
.end method

.method public doStartBurstShotSync()V
    .locals 4

    .prologue
    .line 1299
    const-string v0, "CameraEngine"

    const-string v1, "doStartBurstShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->stopContinuousAF()V

    .line 1307
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onBurstShotStarted()V

    .line 1308
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isBestPicMode()Z

    move-result v0

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/seccamera/SecCamera;->startBurstShot(ZZI)V

    .line 1309
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->captureBurstShot()V

    .line 1310
    return-void
.end method

.method public doStartEngineAsync()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1487
    const-string v0, "CameraEngine"

    const-string v1, "doStartEngineAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iput-boolean v2, p0, Lcom/android/camera/CameraEngine;->mCaptureInitiated:Z

    .line 1492
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 1493
    new-instance v0, Lcom/android/camera/CameraEngine$UriSearchingHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraEngine$UriSearchingHandler;-><init>(Lcom/android/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    .line 1496
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/camera/CameraEngine;->changeEngineState(I)V

    .line 1498
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_2

    .line 1499
    const-string v0, "CameraEngine"

    const-string v1, "camera device is already conntected for some reason (eg. onResume is called twice without calling onPause)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    const-string v0, "CameraEngine"

    const-string v1, "skip connecting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1515
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getGPS()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->isNetworkProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1517
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->startReceivingLocationUpdates()V

    .line 1521
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->setOrientationListener()V

    .line 1524
    return-void

    .line 1503
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/CameraEngine$3;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraEngine$3;-><init>(Lcom/android/camera/CameraEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 1511
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    const-string v1, "openCameraThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1512
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1519
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setGPS(I)V

    goto :goto_1
.end method

.method public final doStartPanoramaAsync()V
    .locals 3

    .prologue
    .line 1227
    const-string v1, "CameraEngine"

    const-string v2, "doStartPanoramaSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->stopContinuousAF()V

    .line 1232
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/CameraEngine$2;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraEngine$2;-><init>(Lcom/android/camera/CameraEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1244
    .local v0, thread:Ljava/lang/Thread;
    const-string v1, "PanoramaStartingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1246
    return-void
.end method

.method public doStartPreviewAsync()V
    .locals 9

    .prologue
    const/4 v7, 0x3

    .line 1681
    const-string v5, "CameraEngine"

    const-string v6, "doStartPreviewAsync"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1686
    .local v2, _axtime_st_1:J
    iget-object v5, p0, Lcom/android/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v5, :cond_1

    .line 1687
    const-string v5, "CameraEngine"

    const-string v6, "return because mSurfaceHolder is null."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget-object v5, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    if-eqz v5, :cond_0

    .line 1690
    iget-object v5, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v5, v7}, Lcom/android/camera/CeRequestQueue;->removeRequest(I)V

    .line 1787
    :cond_0
    :goto_0
    return-void

    .line 1695
    :cond_1
    iget-object v5, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v5, :cond_2

    .line 1696
    const-string v5, "CameraEngine"

    const-string v6, "return because mCameraDevice is null."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1704
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->resetPreviewSize()V

    .line 1707
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v6, p0, Lcom/android/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1717
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/camera/CameraEngine$4;

    invoke-direct {v6, p0}, Lcom/android/camera/CameraEngine$4;-><init>(Lcom/android/camera/CameraEngine;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/android/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    .line 1775
    iget-object v5, p0, Lcom/android/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    const-string v6, "startPreviewThread"

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1776
    iget-object v5, p0, Lcom/android/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1777
    invoke-virtual {p0, v7}, Lcom/android/camera/CameraEngine;->changeEngineState(I)V

    .line 1779
    iget-object v5, p0, Lcom/android/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v5, :cond_3

    .line 1780
    iget-object v5, p0, Lcom/android/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v5}, Landroid/view/OrientationEventListener;->enable()V

    .line 1784
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1785
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

    .line 1786
    move-wide v2, v0

    .line 1787
    goto :goto_0

    .line 1708
    .end local v0           #_axtime_ed_1:J
    :catch_0
    move-exception v4

    .line 1709
    .local v4, exception:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->closeCamera()V

    .line 1712
    iget-object v5, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v5}, Lcom/android/camera/CeRequestQueue;->completeRequest()V

    .line 1713
    iget-object v5, p0, Lcom/android/camera/CameraEngine;->mErrorMessageHandler:Lcom/android/camera/CameraEngine$ErrorMessageHandler;

    const/4 v6, -0x3

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1782
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
    .line 1845
    const-string v0, "CameraEngine"

    const-string v1, "doStartPreviewDummySync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraEngine;->changeEngineState(I)V

    .line 1848
    return-void
.end method

.method public doStartSmileDetectionAsync()V
    .locals 2

    .prologue
    .line 1892
    const-string v0, "CameraEngine"

    const-string v1, "startSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->stopContinuousAF()V

    .line 1896
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startSmileDetection(Z)V

    .line 1897
    return-void
.end method

.method public doStopActionShotSync()V
    .locals 2

    .prologue
    .line 1286
    const-string v0, "CameraEngine"

    const-string v1, "doStopActionShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->resumeAudioPlayback()V

    .line 1289
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopSeriesActionShot()V

    .line 1290
    return-void
.end method

.method public doStopBurstShot()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4018
    const-string v1, "CameraEngine"

    const-string v2, "doStopBurstShot"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->setBurstStopping(Z)V

    .line 4020
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    #setter for: Lcom/android/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I
    invoke-static {v1, v4}, Lcom/android/camera/CameraEngine$ShootingModeManager;->access$2802(Lcom/android/camera/CameraEngine$ShootingModeManager;I)I

    .line 4021
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    .line 4022
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, v3, v3, v3}, Lcom/sec/android/seccamera/SecCamera;->startBurstShot(ZZI)V

    .line 4023
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getBurstShotProgress()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 4025
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camera;

    sget v2, Lcom/android/camera/Camera;->SHUTTER_SOUND_SHORT:I

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->stopCameraSound(I)V

    .line 4036
    :goto_0
    return-void

    .line 4029
    :cond_1
    const-wide/16 v1, 0x96

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4034
    :goto_1
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camera;

    sget v2, Lcom/android/camera/Camera;->SHUTTER_SOUND_SHORT:I

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->stopCameraSound(I)V

    goto :goto_0

    .line 4030
    :catch_0
    move-exception v0

    .line 4032
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public doStopBurstShotSync()V
    .locals 2

    .prologue
    .line 1323
    const-string v0, "CameraEngine"

    const-string v1, "doStopBurstShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->doStopBurstShot()V

    .line 1326
    return-void
.end method

.method public doStopEngineSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1647
    const-string v0, "CameraEngine"

    const-string v1, "doStopEngineSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 1651
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    .line 1653
    :cond_0
    sget-boolean v0, Lcom/android/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    if-eqz v0, :cond_1

    .line 1654
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 1656
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->stopReceivingLocationUpdates()V

    .line 1658
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getSelectedMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1661
    const-string v0, "CameraEngine"

    const-string v1, "doStopEngineSync - set shooting mode as default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_2

    .line 1663
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    .line 1667
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->closeCamera()V

    .line 1671
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraEngine;->changeEngineState(I)V

    .line 1672
    return-void
.end method

.method public doStopNZSLBurstShot()V
    .locals 3

    .prologue
    const/16 v2, 0x1d

    .line 4039
    const-string v0, "CameraEngine"

    const-string v1, "doStopNZSLBurstShot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4040
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setNZSLBurstStopping(Z)V

    .line 4041
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isBurstCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4042
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mMainHandler:Lcom/android/camera/CameraEngine$MainHandler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 4044
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4045
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/android/camera/CeRequestQueue;->removeRequest(I)V

    .line 4049
    :cond_0
    :goto_0
    return-void

    .line 4048
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->doStopBurstShot()V

    goto :goto_0
.end method

.method public doStopPanoramaSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1255
    const-string v0, "CameraEngine"

    const-string v1, "doStopPanoramaSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/AbstractCameraActivity;->playCameraSound(II)V

    .line 1260
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->startPanorama(Z)V

    .line 1263
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->startContinuousAF()V

    .line 1264
    return-void
.end method

.method public doStopPreviewDummySync()V
    .locals 3

    .prologue
    const/16 v2, 0x1c

    .line 1821
    const-string v0, "CameraEngine"

    const-string v1, "doStopPreviewDummySync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraEngine;->changeEngineState(I)V

    .line 1826
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->stopFaceDetection()V

    .line 1829
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 1830
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1835
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/android/camera/CeRequestQueue;->removeRequest(I)V

    .line 1837
    :cond_0
    return-void

    .line 1832
    :cond_1
    const-string v0, "CameraEngine"

    const-string v1, "doStopPreviewSync : mOrientationListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doStopPreviewSync()V
    .locals 8

    .prologue
    .line 1851
    const-string v4, "CameraEngine"

    const-string v5, "doStopPreviewSync"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1861
    .local v2, _axtime_st_1:J
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->stopFaceDetection()V

    .line 1864
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_0

    .line 1865
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 1868
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/camera/CameraEngine;->changeEngineState(I)V

    .line 1870
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v4, :cond_1

    .line 1871
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v4}, Landroid/view/OrientationEventListener;->disable()V

    .line 1874
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1875
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

    .line 1876
    move-wide v2, v0

    .line 1877
    return-void

    .line 1873
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
    .line 1912
    const-string v0, "CameraEngine"

    const-string v1, "stopSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->startContinuousAF()V

    .line 1916
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startSmileDetection(Z)V

    .line 1917
    return-void
.end method

.method public final doSwitchCameraSync()V
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1568
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->switchToFront()V

    .line 1573
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->updateUIWhenSwitchCamera()V

    .line 1574
    return-void

    .line 1570
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->switchToBack()V

    goto :goto_0
.end method

.method public doTakePictureAsync()V
    .locals 8

    .prologue
    const/16 v7, 0x17

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1339
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

    .line 1351
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1352
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v5, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1355
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mMainHandler:Lcom/android/camera/CameraEngine$MainHandler;

    invoke-virtual {v1, v6}, Lcom/android/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 1356
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraEngine;->setOrientationOnTake(I)V

    .line 1357
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getOrientationOnTake()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 1359
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

    .line 1360
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 1362
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mJpegPictureCallback:Lcom/android/camera/CameraEngine$JpegPictureCallback;

    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 1364
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_6

    .line 1365
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 1366
    const-string v1, "CameraEngine"

    const-string v2, "doTakePictureAsync : multi frame shot"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->stopContinuousAF()V

    .line 1368
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->onMultiFrameShotStarted()V

    .line 1369
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->startMultiFrameShot()V

    .line 1370
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    sget v2, Lcom/android/camera/CameraEngine;->SHUTTER_SOUND_SHORT:I

    invoke-virtual {v1, v2, v5}, Lcom/android/camera/Camera;->playCameraSound(II)V

    .line 1373
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startBlinkShutterAnimation()V

    .line 1377
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1378
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getWeather()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setWeather(I)V

    .line 1379
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getCityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setCityId(J)V

    .line 1383
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1385
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Camera_EnableCameraDuringCall"

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->enableDuringCallDefaultValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1386
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getShutterSoundEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraShutterSound()I

    move-result v1

    if-nez v1, :cond_7

    .line 1387
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, v5}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    .line 1393
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v7, :cond_5

    .line 1394
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, v5}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    .line 1396
    :cond_5
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mShutterCallback:Lcom/android/camera/CameraEngine$ShutterCallback;

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mRawPictureCallback:Lcom/android/camera/CameraEngine$RawPictureCallback;

    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mJpegPictureCallback:Lcom/android/camera/CameraEngine$JpegPictureCallback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 1398
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_6

    .line 1399
    const-string v1, "CameraEngine"

    const-string v2, "[HDR] mNumOfSavedImageInHDR = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iput v5, p0, Lcom/android/camera/CameraEngine;->mNumOfSavedImageInHDR:I

    .line 1404
    :cond_6
    return-void

    .line 1389
    :cond_7
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, v6}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    goto :goto_0
.end method

.method public final doWaitAsync(I)V
    .locals 4
    .parameter "milisec"

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/16 v1, 0x8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1420
    return-void
.end method

.method protected findBestFpsRange(Lcom/sec/android/seccamera/SecCamera$Parameters;II)[I
    .locals 10
    .parameter "parameters"
    .parameter "requestedMinFps"
    .parameter "requestedMaxFps"

    .prologue
    .line 2099
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

    .line 2101
    const/4 v1, 0x0

    .line 2102
    .local v1, MIN_IDX:I
    const/4 v0, 0x1

    .line 2103
    .local v0, MAX_IDX:I
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 2104
    .local v3, fpsRange:[I
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 2106
    .local v2, bestFpsRange:[I
    invoke-virtual {p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v4

    .line 2108
    .local v4, fpsRangeList:Ljava/util/List;,"Ljava/util/List<[I>;"
    if-nez v4, :cond_0

    .line 2109
    const-string v7, "CameraEngine"

    const-string v8, "supported preview fps range is null"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    const/4 v3, 0x0

    .line 2161
    .end local v3           #fpsRange:[I
    :goto_0
    return-object v3

    .line 2113
    .restart local v3       #fpsRange:[I
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, i:I
    :goto_1
    if-ltz v5, :cond_8

    .line 2114
    const/4 v8, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x0

    aget v7, v7, v9

    aput v7, v3, v8

    .line 2115
    const/4 v8, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x1

    aget v7, v7, v9

    aput v7, v3, v8

    .line 2117
    const/4 v7, 0x1

    aget v7, v3, v7

    if-ne p3, v7, :cond_6

    .line 2118
    const/4 v7, 0x0

    aget v7, v3, v7

    if-ne p2, v7, :cond_1

    .line 2120
    move-object v2, v3

    .line 2121
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

    .line 2123
    :cond_1
    if-nez v5, :cond_2

    .line 2125
    move-object v2, v3

    .line 2126
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

    .line 2130
    :cond_2
    move v6, v5

    .local v6, j:I
    :goto_2
    if-ltz v6, :cond_5

    .line 2131
    const/4 v8, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x0

    aget v7, v7, v9

    aput v7, v3, v8

    .line 2132
    const/4 v8, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x1

    aget v7, v7, v9

    aput v7, v3, v8

    .line 2134
    const/4 v7, 0x0

    aget v7, v3, v7

    if-ne p2, v7, :cond_3

    .line 2136
    move-object v2, v3

    .line 2137
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

    .line 2139
    :cond_3
    const/4 v7, 0x0

    aget v7, v3, v7

    if-le p2, v7, :cond_4

    .line 2140
    move-object v2, v3

    .line 2141
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

    .line 2130
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 2147
    :cond_5
    move-object v2, v3

    .line 2148
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

    .line 2151
    .end local v6           #j:I
    :cond_6
    const/4 v7, 0x1

    aget v7, v3, v7

    if-le p3, v7, :cond_7

    .line 2152
    move-object v2, v3

    .line 2153
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

    .line 2113
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    .line 2159
    :cond_8
    move-object v2, v3

    .line 2160
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
    .line 2387
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL

    .line 2388
    .local v0, ASPECT_TOLERANCE:D
    if-nez p1, :cond_1

    .line 2389
    const/4 v6, 0x0

    .line 2446
    :cond_0
    return-object v6

    .line 2391
    :cond_1
    const/4 v6, 0x0

    .line 2392
    .local v6, optimalSize:Lcom/sec/android/seccamera/SecCamera$Size;
    const-wide v4, 0x7fefffffffffffffL

    .line 2400
    .local v4, minDiff:D
    iget-object v11, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v11}, Lcom/android/camera/AbstractCameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 2401
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v11

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2403
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

    .line 2406
    if-gtz v10, :cond_2

    .line 2408
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v10

    .line 2412
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

    .line 2413
    .local v9, size:Lcom/sec/android/seccamera/SecCamera$Size;
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    int-to-double v11, v11

    iget v13, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    int-to-double v13, v13

    div-double v7, v11, v13

    .line 2414
    .local v7, ratio:D
    sub-double v11, v7, p2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3f50624dd2f1a9fcL

    cmpl-double v11, v11, v13

    if-gtz v11, :cond_3

    .line 2416
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v11

    iget v12, v9, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    if-ne v11, v12, :cond_6

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v11

    iget v12, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    if-ne v11, v12, :cond_6

    .line 2417
    move-object v6, v9

    .line 2427
    .end local v7           #ratio:D
    .end local v9           #size:Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_4
    if-nez v6, :cond_0

    .line 2428
    const-string v11, "CameraEngine"

    const-string v12, "No preview size match the aspect ratio"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    const-wide v4, 0x7fefffffffffffffL

    .line 2430
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

    .line 2431
    .restart local v9       #size:Lcom/sec/android/seccamera/SecCamera$Size;
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v11, v11, v4

    if-gez v11, :cond_5

    .line 2432
    move-object v6, v9

    .line 2433
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v4, v11

    goto :goto_1

    .line 2419
    .restart local v7       #ratio:D
    :cond_6
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v11, v11, v4

    if-gez v11, :cond_3

    .line 2420
    move-object v6, v9

    .line 2421
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v4, v11

    goto :goto_0
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
    .line 2336
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-nez p1, :cond_0

    .line 2337
    const/4 v9, 0x0

    .line 2357
    :goto_0
    return-object v9

    .line 2339
    :cond_0
    const/4 v9, 0x0

    .line 2340
    .local v9, thumbnailSize:Lcom/sec/android/seccamera/SecCamera$Size;
    const-wide v4, 0x3f847ae147ae147bL

    .line 2341
    .local v4, minRatioDiff:D
    const v3, 0x186a0

    .line 2342
    .local v3, minGap:I
    const/4 v2, 0x0

    .line 2344
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

    .line 2345
    .local v8, size:Lcom/sec/android/seccamera/SecCamera$Size;
    iget v11, v8, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    int-to-double v11, v11

    iget v13, v8, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    int-to-double v13, v13

    div-double v6, v11, v13

    .line 2346
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

    .line 2349
    iget v11, v8, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    sub-int v11, v11, p2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 2350
    .local v10, widthGap:I
    if-le v3, v10, :cond_1

    .line 2351
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 2352
    move v3, v10

    goto :goto_1

    .line 2355
    .end local v6           #ratio:D
    .end local v8           #size:Lcom/sec/android/seccamera/SecCamera$Size;
    .end local v10           #widthGap:I
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #thumbnailSize:Lcom/sec/android/seccamera/SecCamera$Size;
    check-cast v9, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 2356
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
    .line 2361
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-nez p1, :cond_0

    .line 2362
    const/4 v6, 0x0

    .line 2382
    :goto_0
    return-object v6

    .line 2364
    :cond_0
    const/4 v6, 0x0

    .line 2365
    .local v6, previewSize:Lcom/sec/android/seccamera/SecCamera$Size;
    const-wide v4, 0x3f847ae147ae147bL

    .line 2366
    .local v4, minRatioDiff:D
    const v3, 0x186a0

    .line 2367
    .local v3, minGap:I
    const/4 v2, 0x0

    .line 2369
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

    .line 2370
    .local v9, size:Lcom/sec/android/seccamera/SecCamera$Size;
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    int-to-double v11, v11

    iget v13, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    int-to-double v13, v13

    div-double v7, v11, v13

    .line 2371
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

    .line 2374
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    sub-int v11, v11, p2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 2375
    .local v10, widthGap:I
    if-le v3, v10, :cond_1

    .line 2376
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 2377
    move v3, v10

    goto :goto_1

    .line 2380
    .end local v7           #ratio:D
    .end local v9           #size:Lcom/sec/android/seccamera/SecCamera$Size;
    .end local v10           #widthGap:I
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #previewSize:Lcom/sec/android/seccamera/SecCamera$Size;
    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 2381
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
    .line 4222
    const-string v0, ""

    .line 4224
    .local v0, currentAddress:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mReverseGeocoder:Lcom/android/camera/ReverseGeocoder;

    if-nez v1, :cond_0

    .line 4225
    const-string v0, ""

    .line 4231
    :goto_0
    return-object v0

    .line 4226
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mReverseGeocoder:Lcom/android/camera/ReverseGeocoder;

    invoke-virtual {v1}, Lcom/android/camera/ReverseGeocoder;->getCurrentAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4227
    const-string v0, ""

    goto :goto_0

    .line 4229
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mReverseGeocoder:Lcom/android/camera/ReverseGeocoder;

    invoke-virtual {v1}, Lcom/android/camera/ReverseGeocoder;->getCurrentAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 5

    .prologue
    .line 2629
    const/4 v1, 0x0

    .line 2630
    .local v1, l:Landroid/location/Location;
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mLocationListeners:[Lcom/android/camera/CameraEngine$LocationListener;

    array-length v2, v4

    .line 2631
    .local v2, length:I
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mLocationListeners:[Lcom/android/camera/CameraEngine$LocationListener;

    .line 2633
    .local v3, localArray:[Lcom/android/camera/CameraEngine$LocationListener;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2634
    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/android/camera/CameraEngine$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 2635
    if-eqz v1, :cond_0

    move-object v4, v1

    .line 2638
    :goto_1
    return-object v4

    .line 2633
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2638
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getCurrentStateHandler()Lcom/android/camera/AbstractCeState;
    .locals 1

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    return-object v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    .prologue
    .line 4104
    iget v0, p0, Lcom/android/camera/CameraEngine;->mDisplayOrientation:I

    return v0
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 2839
    iget v0, p0, Lcom/android/camera/CameraEngine;->mFocusState:I

    return v0
.end method

.method public getGpsLocation()Landroid/location/Location;
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const-wide/16 v10, 0x0

    .line 2516
    iget-object v8, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v8, :cond_1

    .line 2558
    :cond_0
    :goto_0
    return-object v3

    .line 2520
    :cond_1
    iget-object v8, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->removeGpsData()V

    .line 2523
    iget-object v8, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->getGPS()I

    move-result v8

    if-ne v8, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 2526
    .local v3, loc:Landroid/location/Location;
    :cond_2
    if-eqz v3, :cond_0

    .line 2527
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 2528
    .local v1, lat:D
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 2529
    .local v4, lon:D
    cmpl-double v8, v1, v10

    if-nez v8, :cond_3

    cmpl-double v8, v4, v10

    if-eqz v8, :cond_4

    .line 2532
    .local v0, hasLatLon:Z
    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    .line 2533
    iget-object v8, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsLatitude(D)V

    .line 2534
    iget-object v8, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsLongitude(D)V

    .line 2535
    iget-object v8, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 2536
    invoke-virtual {v3}, Landroid/location/Location;->hasAltitude()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2537
    iget-object v8, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsAltitude(D)V

    .line 2544
    :goto_2
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 2547
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 2548
    .local v6, utcTimeSeconds:J
    iget-object v8, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v6, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsTimestamp(J)V

    goto :goto_0

    .line 2529
    .end local v0           #hasLatLon:Z
    .end local v6           #utcTimeSeconds:J
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 2542
    .restart local v0       #hasLatLon:Z
    :cond_5
    iget-object v8, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsAltitude(D)V

    goto :goto_2

    .line 2551
    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getGroupID()I
    .locals 1

    .prologue
    .line 4310
    iget v0, p0, Lcom/android/camera/CameraEngine;->groupId:I

    return v0
.end method

.method public getLandscapeActive()Z
    .locals 1

    .prologue
    .line 2981
    iget-boolean v0, p0, Lcom/android/camera/CameraEngine;->mLandscapeActive:Z

    return v0
.end method

.method public getLastCaptureData()Lcom/android/camera/CaptureData;
    .locals 1

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    return-object v0
.end method

.method public getLastCapturedFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2856
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getLastDateTaken()J
    .locals 2

    .prologue
    .line 2512
    iget-wide v0, p0, Lcom/android/camera/CameraEngine;->mDateTaken:J

    return-wide v0
.end method

.method public getLastOrientation()I
    .locals 1

    .prologue
    .line 3018
    iget v0, p0, Lcom/android/camera/CameraEngine;->mLastOrientation:I

    return v0
.end method

.method public getOrientationOnTake()I
    .locals 1

    .prologue
    .line 3026
    iget v0, p0, Lcom/android/camera/CameraEngine;->mOrientationOnTake:I

    return v0
.end method

.method public getOriginalViewFinderHeight()I
    .locals 1

    .prologue
    .line 4120
    iget v0, p0, Lcom/android/camera/CameraEngine;->mOriginalViewFinderHeight:I

    return v0
.end method

.method public getOriginalViewFinderWidth()I
    .locals 1

    .prologue
    .line 4116
    iget v0, p0, Lcom/android/camera/CameraEngine;->mOriginalViewFinderWidth:I

    return v0
.end method

.method public getPanoramaLowResolutionBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 4133
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 4112
    iget v0, p0, Lcom/android/camera/CameraEngine;->mPreviewHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .prologue
    .line 4108
    iget v0, p0, Lcom/android/camera/CameraEngine;->mPreviewWidth:I

    return v0
.end method

.method public getRequestQueue()Lcom/android/camera/CeRequestQueue;
    .locals 1

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    return-object v0
.end method

.method public getShutterSoundEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4284
    const/4 v0, 0x0

    .line 4286
    .local v0, defaultValue:Z
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v1, :cond_0

    .line 4287
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->enableDuringCallDefaultValue()Z

    move-result v0

    .line 4289
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4291
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->checkOutgoingCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4293
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/CameraEngine;->mShutterSoundEnable:Z

    .line 4294
    iget-boolean v1, p0, Lcom/android/camera/CameraEngine;->mShutterSoundEnable:Z

    .line 4302
    :goto_0
    return v1

    .line 4299
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/CameraEngine;->mShutterSoundEnable:Z

    .line 4302
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/CameraEngine;->mShutterSoundEnable:Z

    goto :goto_0
.end method

.method public getSurfaceView()Lcom/android/camera/PreviewFrameLayout;
    .locals 1

    .prologue
    .line 4218
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mSurfaceView:Lcom/android/camera/PreviewFrameLayout;

    return-object v0
.end method

.method public getTouchFocusPositioned()Z
    .locals 1

    .prologue
    .line 2925
    sget-boolean v0, Lcom/android/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    return v0
.end method

.method public handleDoubleTap(IIZ)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "touchedOnFace"

    .prologue
    const/4 v2, 0x0

    .line 4137
    iget-boolean v0, p0, Lcom/android/camera/CameraEngine;->mIsFaceZoomed:Z

    if-eqz v0, :cond_1

    .line 4138
    const-string v0, "CameraEngine"

    const-string v1, "Stop Face Zoom"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4139
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopFaceZoom()V

    .line 4140
    iput-boolean v2, p0, Lcom/android/camera/CameraEngine;->mIsFaceZoomed:Z

    .line 4141
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->resetCameraZoomValue()V

    .line 4158
    :cond_0
    :goto_0
    return-void

    .line 4144
    :cond_1
    if-eqz p3, :cond_0

    .line 4145
    const-string v0, "CameraEngine"

    const-string v1, "Start Face Zoom"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4146
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->hideFaceRect()V

    .line 4148
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->informFaceOrientationToHAL(I)V

    .line 4150
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->startFaceZoom(II)V

    .line 4151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraEngine;->mIsFaceZoomed:Z

    .line 4152
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraZoomValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4153
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->resetCameraZoomValue()V

    .line 4154
    iput-boolean v2, p0, Lcom/android/camera/CameraEngine;->mIsFaceZoomed:Z

    goto :goto_0
.end method

.method public handleShutterEvent()V
    .locals 2

    .prologue
    .line 2190
    const-string v0, "CameraEngine"

    const-string v1, "handleShutterEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$ShootingModeManager;->handleShutterEvent()V

    .line 2192
    return-void
.end method

.method public handleShutterReleaseEvent()V
    .locals 2

    .prologue
    .line 2195
    const-string v0, "CameraEngine"

    const-string v1, "handleShutterReleaseEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$ShootingModeManager;->handleShutterReleaseEvent()V

    .line 2197
    return-void
.end method

.method public imageStoringCompleted()V
    .locals 3

    .prologue
    .line 2223
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 2224
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 2226
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->shareFile(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2251
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->onImageStoringCompleted()V

    .line 2252
    :goto_1
    return-void

    .line 2227
    :catch_0
    move-exception v0

    .line 2229
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2246
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2247
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

    .line 458
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    .line 459
    .local v0, camSettings:Lcom/android/camera/CameraSettings;
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/android/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 461
    .local v2, tm:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v3, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 465
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x25

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 466
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getSceneMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x8

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraEffect()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x9

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getWhiteBalance()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x12

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraZoomValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 470
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v4, 0x7

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraExposureValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 473
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraFlashMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraFocusMode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/CameraEngine;->checkFocusMode(I)I

    move-result v1

    .line 481
    .local v1, focus:I
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v10}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mAutoFocusCallback:Lcom/android/camera/CameraEngine$AutoFocusCallback;

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 488
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraISO()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x10

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraQuality()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getQualityValue(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 490
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0xb

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0xd

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraAntiShake()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 492
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0xe

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraAutoContrast()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 501
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 502
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getShutterSoundEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraShutterSound()I

    move-result v3

    if-nez v3, :cond_5

    .line 503
    :cond_2
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3, v6}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    .line 511
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "video_recording_gamma"

    const-string v5, "off"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "slow_ae"

    const-string v5, "off"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 516
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 560
    .end local v1           #focus:I
    :goto_2
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    .line 561
    const/16 v3, 0x13

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getGuideline()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 563
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->isAutoExposureLockSupported()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/CameraEngine;->mAeLockSupported:Z

    .line 564
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/CameraEngine;->mAwbLockSupported:Z

    .line 566
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 568
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

    .line 569
    :cond_4
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3, v7}, Lcom/sec/android/seccamera/SecCamera;->setDefaultIMEI(I)V

    .line 573
    :goto_3
    iput-boolean v6, p0, Lcom/android/camera/CameraEngine;->mIsFaceZoomed:Z

    .line 574
    sput-boolean v6, Lcom/android/camera/CameraEngine;->mIsBlockSingleShutter:Z

    goto/16 :goto_0

    .line 506
    .restart local v1       #focus:I
    :cond_5
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3, v7}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    goto :goto_1

    .line 518
    .end local v1           #focus:I
    :cond_6
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x25

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 520
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 521
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getShutterSoundEnable()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraShutterSound()I

    move-result v3

    if-nez v3, :cond_9

    .line 522
    :cond_7
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3, v6}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    .line 529
    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v10}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v4, 0x7

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraExposureValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 533
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x10

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraQuality()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getQualityValue(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 534
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x8

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraEffect()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x9

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getWhiteBalance()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "video_recording_gamma"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "slow_ae"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 549
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 552
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/android/camera/CameraSettings;->getSelfFlip()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/CameraEngine;->setFrontSensorMirror(I)V

    goto/16 :goto_2

    .line 525
    :cond_9
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3, v7}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    goto/16 :goto_4

    .line 571
    :cond_a
    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3, v6}, Lcom/sec/android/seccamera/SecCamera;->setDefaultIMEI(I)V

    goto/16 :goto_3
.end method

.method public isAutoFocusing()Z
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    const/4 v0, 0x1

    .line 951
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 956
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 959
    :cond_0
    const/4 v1, 0x1

    .line 963
    :cond_1
    :goto_0
    return v1

    .line 962
    :catch_0
    move-exception v0

    .line 963
    .local v0, ex:Ljava/util/ConcurrentModificationException;
    goto :goto_0
.end method

.method public isCurrentState(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 1021
    invoke-direct {p0}, Lcom/android/camera/CameraEngine;->getCurrentStateId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1022
    const/4 v0, 0x1

    .line 1023
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFaceZoomed()Z
    .locals 1

    .prologue
    .line 4161
    iget-boolean v0, p0, Lcom/android/camera/CameraEngine;->mIsFaceZoomed:Z

    return v0
.end method

.method public isFinishOneShotPreviewCallback()Z
    .locals 1

    .prologue
    .line 4170
    iget-boolean v0, p0, Lcom/android/camera/CameraEngine;->mIsFinishOneShotPreviewCallback:Z

    return v0
.end method

.method public isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 3945
    const/4 v7, 0x0

    .line 3946
    .local v7, result:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3947
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

    .line 3949
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3950
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_1

    .line 3951
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3952
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3953
    .local v8, volumeName:Ljava/lang/String;
    const-string v1, "external"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "internal"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3954
    :cond_0
    const/4 v7, 0x1

    .line 3956
    .end local v8           #volumeName:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3958
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

    .line 3959
    return v7
.end method

.method public isNetworkProviderEnabled()Z
    .locals 2

    .prologue
    .line 2574
    invoke-direct {p0}, Lcom/android/camera/CameraEngine;->initializeLocationManager()V

    .line 2575
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$ShootingModeManager;->isPanoramaCapturing()Z

    move-result v0

    return v0
.end method

.method public isPrepareRecording()Z
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    :cond_0
    const/4 v0, 0x1

    .line 612
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewStarted()Z
    .locals 1

    .prologue
    .line 998
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    const/4 v0, 0x1

    .line 1001
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProviderEnabled()Z
    .locals 2

    .prologue
    .line 2569
    invoke-direct {p0}, Lcom/android/camera/CameraEngine;->initializeLocationManager()V

    .line 2570
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSingleShotBurst()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3992
    iget v1, p0, Lcom/android/camera/CameraEngine;->mSingleShotBurst:I

    if-ne v1, v0, :cond_0

    .line 3995
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmileDetecting()Z
    .locals 2

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    const/4 v0, 0x1

    .line 994
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

    .line 968
    invoke-virtual {p0, v0}, Lcom/android/camera/CameraEngine;->isCurrentState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v2, v1}, Lcom/android/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 971
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isStartingInitialized()Z
    .locals 1

    .prologue
    .line 975
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    const/4 v0, 0x1

    .line 978
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartingPreview()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 981
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraEngine;->isCurrentState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 987
    :cond_0
    :goto_0
    return v0

    .line 984
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v1, v2}, Lcom/android/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 987
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopPreviewPending()Z
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/android/camera/CeRequestQueue;->firstElement()Lcom/android/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/android/camera/CeRequestQueue;->firstElement()Lcom/android/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CeRequest;->getRequest()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1007
    const/4 v0, 0x1

    .line 1009
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimerCounting()Z
    .locals 2

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/android/camera/CeRequestQueue;->firstElement()Lcom/android/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/android/camera/CeRequestQueue;->firstElement()Lcom/android/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CeRequest;->getRequest()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1015
    const/4 v0, 0x1

    .line 1017
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchAutoFocusing()Z
    .locals 1

    .prologue
    .line 2954
    sget-boolean v0, Lcom/android/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    return v0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 3
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 2753
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

    .line 2755
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isBurstCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2756
    :cond_0
    const-string v0, "CameraEngine"

    const-string v1, "capture in progress, setparameters are not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :goto_0
    return-void

    .line 2760
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2811
    :goto_1
    :pswitch_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2819
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    iput p2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mFlashMode:I

    goto :goto_0

    .line 2780
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto :goto_1

    .line 2803
    :pswitch_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 2804
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->startReceivingLocationUpdates()V

    goto :goto_1

    .line 2806
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->stopReceivingLocationUpdates()V

    goto :goto_1

    .line 2813
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    iput p2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mStorage:I

    goto :goto_0

    .line 2816
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    iput p2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mWhiteBalance:I

    goto :goto_0

    .line 2760
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2811
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
    .line 4124
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

    .line 4126
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 4127
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4129
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    .line 4130
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mMainHandler:Lcom/android/camera/CameraEngine$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 444
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mSurfaceView:Lcom/android/camera/PreviewFrameLayout;

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mSurfaceView:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/android/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 446
    .local v0, holder:Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_0

    .line 447
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mSurfaceView:Lcom/android/camera/PreviewFrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 455
    .end local v0           #holder:Landroid/view/SurfaceHolder;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mSurfaceView:Lcom/android/camera/PreviewFrameLayout;

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mSurfaceView:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/android/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 430
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

    .line 431
    if-eqz v0, :cond_0

    .line 432
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 433
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mSurfaceView:Lcom/android/camera/PreviewFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 439
    .end local v0           #holder:Landroid/view/SurfaceHolder;
    :cond_1
    return-void
.end method

.method public resetPanoramaCapturing()V
    .locals 1

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$ShootingModeManager;->resetPanoramaCapturing()V

    .line 2214
    return-void
.end method

.method protected resetPreviewSize()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2265
    const-string v4, "CameraEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetPreviewSize()- WH: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraEngine;->mOriginalViewFinderWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraEngine;->mOriginalViewFinderHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v4, :cond_6

    .line 2269
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 2270
    .local v1, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-nez v1, :cond_0

    .line 2271
    const-string v4, "CameraEngine"

    const-string v5, "supported preview size is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    .end local v1           #sizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :goto_0
    return-void

    .line 2274
    .restart local v1       #sizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRecordingHint(Z)V

    .line 2275
    const/4 v0, 0x0

    .line 2289
    .local v0, previewsize:Lcom/sec/android/seccamera/SecCamera$Size;
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mSurfaceView:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v4}, Lcom/android/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/camera/CameraEngine;->findOptimalPreviewSize(Ljava/util/List;D)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v0

    .line 2292
    if-eqz v0, :cond_1

    .line 2293
    iget v4, v0, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iput v4, p0, Lcom/android/camera/CameraEngine;->mPreviewWidth:I

    .line 2294
    iget v4, v0, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    iput v4, p0, Lcom/android/camera/CameraEngine;->mPreviewHeight:I

    .line 2296
    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v5, p0, Lcom/android/camera/CameraEngine;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/CameraEngine;->mPreviewHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 2299
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v3

    .line 2300
    .local v3, thumbnailSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_2

    .line 2301
    const/4 v2, 0x0

    .line 2302
    .local v2, thumbnaiSize:Lcom/sec/android/seccamera/SecCamera$Size;
    iget v4, p0, Lcom/android/camera/CameraEngine;->mPreviewWidth:I

    iget v5, p0, Lcom/android/camera/CameraEngine;->mPreviewHeight:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/camera/CameraEngine;->findThumbnailSize(Ljava/util/List;II)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v2

    .line 2303
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v5, v2, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v6, v2, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setJpegThumbnailSize(II)V

    .line 2316
    .end local v2           #thumbnaiSize:Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_2
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_5

    .line 2317
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 2320
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/camera/CameraEngine;->isCurrentState(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2321
    const-string v4, "CameraEngine"

    const-string v5, "resetPreviewSize()- isCurrentState is INITIALIZING"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2324
    :cond_4
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v5, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0

    .line 2326
    :cond_5
    const-string v4, "CameraEngine"

    const-string v5, "resetPreviewSize()- mCameraDevice is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2330
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
    .line 1150
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->resumeAudioPlayback_TimerBgm()V

    .line 1154
    :cond_0
    return-void
.end method

.method public final scheduleAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 1027
    const-string v0, "CameraEngine"

    const-string v1, "scheduleAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->isStartingPreview()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1030
    :cond_0
    const-string v0, "CameraEngine"

    const-string v1, "scheduleAutoFocus is skipped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->clearFocusState()V

    .line 1066
    :cond_1
    :goto_0
    return-void

    .line 1035
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 1036
    const-string v0, "CameraEngine"

    const-string v1, "scheduleAutoFocus - current focus mode is off"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1040
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1044
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->isPanoramaCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1045
    const-string v0, "CameraEngine"

    const-string v1, "returning because of PanoramaCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1059
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1060
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1062
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/CeRequestQueue;->removeRequest(IZ)V

    .line 1063
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1065
    sput-boolean v2, Lcom/android/camera/CameraEngine;->m_bRestartTouchAF:Z

    goto :goto_0
.end method

.method public final scheduleChangeParameter(II)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1946
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

    .line 1948
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x7

    new-instance v2, Lcom/android/camera/CameraEngine$CeSettingsParameter;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/camera/CameraEngine$CeSettingsParameter;-><init>(Lcom/android/camera/CameraEngine;II)V

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1949
    return-void
.end method

.method public final scheduleContinuousAF()V
    .locals 3

    .prologue
    const/16 v2, 0x1c

    .line 1407
    const-string v0, "CameraEngine"

    const-string v1, "scheduleContinuousAF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CeRequestQueue;->removeRequest(IZ)V

    .line 1409
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1410
    return-void
.end method

.method public final schedulePostInit()V
    .locals 3

    .prologue
    .line 1541
    const-string v0, "CameraEngine"

    const-string v1, "schedulePostInit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1544
    return-void
.end method

.method public scheduleProcessBack()V
    .locals 3

    .prologue
    .line 1920
    const-string v0, "CameraEngine"

    const-string v1, "scheduleProcessBack"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1923
    return-void
.end method

.method public final scheduleResetSettings()V
    .locals 3

    .prologue
    .line 1601
    const-string v0, "CameraEngine"

    const-string v1, "scheduleResetSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1603
    return-void
.end method

.method public final scheduleSetAllParams()V
    .locals 3

    .prologue
    .line 1192
    const-string v0, "CameraEngine"

    const-string v1, "scheduleSetAllParams"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1195
    return-void
.end method

.method public final scheduleSetParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1930
    const-string v0, "CameraEngine"

    const-string v1, "scheduleSetParameter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x8

    new-instance v2, Lcom/android/camera/CameraEngine$CeSecCameraParameter;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/camera/CameraEngine$CeSecCameraParameter;-><init>(Lcom/android/camera/CameraEngine;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1933
    return-void
.end method

.method public final scheduleShutterTimer(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1127
    const-string v0, "CameraEngine"

    const-string v1, "scheduleShutterTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1130
    return-void
.end method

.method public final scheduleStartActionShot()V
    .locals 3

    .prologue
    .line 1267
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartActionShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1270
    return-void
.end method

.method public final scheduleStartBurstShot()V
    .locals 3

    .prologue
    .line 1293
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartBurstShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1296
    return-void
.end method

.method public final scheduleStartEngine()V
    .locals 3

    .prologue
    .line 1423
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1426
    return-void
.end method

.method public final scheduleStartPanorama()V
    .locals 3

    .prologue
    .line 1221
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1224
    return-void
.end method

.method public final scheduleStartPreview()V
    .locals 3

    .prologue
    .line 1675
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1678
    return-void
.end method

.method public final scheduleStartPreviewDummy()V
    .locals 3

    .prologue
    .line 1840
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartPreviewDummy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1842
    return-void
.end method

.method public scheduleStartSmileDetection()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 1880
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1889
    :cond_0
    :goto_0
    return-void

    .line 1888
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    goto :goto_0
.end method

.method public final scheduleStopActionShot()V
    .locals 3

    .prologue
    .line 1280
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopActionShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1283
    return-void
.end method

.method public final scheduleStopBurstShot()V
    .locals 3

    .prologue
    const/16 v2, 0x1d

    .line 1313
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopBurstShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isBurstCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/android/camera/CeRequestQueue;->removeRequest(I)V

    .line 1320
    :goto_0
    return-void

    .line 1318
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    goto :goto_0
.end method

.method public final scheduleStopEngine()V
    .locals 3

    .prologue
    .line 1641
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1644
    return-void
.end method

.method public final scheduleStopPanorama()V
    .locals 3

    .prologue
    .line 1249
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1252
    return-void
.end method

.method public final scheduleStopPreview()V
    .locals 3

    .prologue
    .line 1810
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1818
    return-void
.end method

.method public final scheduleStopPreviewDummy()V
    .locals 3

    .prologue
    .line 1805
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopPreviewDummy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1807
    return-void
.end method

.method public scheduleStopSmileDetection()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 1900
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1909
    :goto_0
    return-void

    .line 1907
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1908
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    goto :goto_0
.end method

.method public final scheduleSwitchCamera()V
    .locals 3

    .prologue
    .line 1562
    const-string v0, "CameraEngine"

    const-string v1, "scheduleSwitchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1564
    return-void
.end method

.method public scheduleTakePicture()V
    .locals 3

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1333
    return-void
.end method

.method public final scheduleWait(I)V
    .locals 3
    .parameter "milisec"

    .prologue
    .line 1413
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

    .line 1415
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0xd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1416
    return-void
.end method

.method protected searchForLastContentUri()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 909
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 945
    :goto_0
    return-void

    .line 913
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mLastCapturedTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/android/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 916
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 917
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 918
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 919
    .local v8, idIndex:I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 921
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

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 922
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onSearchingLastContentUriCompleted()V

    .line 923
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 926
    :cond_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    .line 927
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 930
    .end local v7           #dataIndex:I
    .end local v8           #idIndex:I
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/CameraEngine;->mCaptureInitiated:Z

    if-eqz v0, :cond_4

    .line 931
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_3

    .line 932
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 935
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v9}, Lcom/android/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 936
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/camera/CameraEngine$UriSearchingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 941
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 938
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onSearchingLastContentUriCompleted()V

    goto :goto_1

    .line 943
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onSearchingLastContentUriCompleted()V

    goto/16 :goto_0
.end method

.method public setAutoExposureLockIfSupported(Z)V
    .locals 0
    .parameter "AeAwbLock"

    .prologue
    .line 4324
    return-void
.end method

.method public setAutoWhiteBalanceLockIfSupported(Z)V
    .locals 0
    .parameter "AeAwbLock"

    .prologue
    .line 4331
    return-void
.end method

.method public setBurstShotStoring()V
    .locals 2

    .prologue
    .line 4000
    const-string v0, "CameraEngine"

    const-string v1, "setBurstShotStoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4001
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 4002
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->setBurstShotStoring()V

    .line 4003
    :cond_0
    return-void
.end method

.method public setCameraDisplayOrientation()V
    .locals 7

    .prologue
    .line 4070
    new-instance v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v1}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    .line 4071
    .local v1, info:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v4

    invoke-static {v4, v1}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 4072
    const/4 v3, 0x0

    .line 4074
    .local v3, rotation:I
    const/4 v3, 0x1

    .line 4078
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

    .line 4080
    const/4 v0, 0x0

    .line 4081
    .local v0, degrees:I
    packed-switch v3, :pswitch_data_0

    .line 4088
    :goto_0
    iget v4, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 4089
    iget v4, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v2, v4, 0x168

    .line 4090
    .local v2, result:I
    rsub-int v4, v2, 0x168

    rem-int/lit16 v2, v4, 0x168

    .line 4094
    :goto_1
    iget v4, p0, Lcom/android/camera/CameraEngine;->mDisplayOrientation:I

    if-eq v4, v2, :cond_0

    .line 4096
    add-int/lit16 v4, v2, 0x168

    iget v5, p0, Lcom/android/camera/CameraEngine;->mDisplayOrientation:I

    sub-int/2addr v4, v5

    rem-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/android/camera/CameraEngine;->mDisplayOrientation:I

    .line 4098
    iget-object v4, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget v5, p0, Lcom/android/camera/CameraEngine;->mDisplayOrientation:I

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->setDisplayOrientation(I)V

    .line 4100
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

    .line 4101
    return-void

    .line 4082
    .end local v2           #result:I
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4083
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 4084
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 4085
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 4092
    :cond_1
    iget v4, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v2, v4, 0x168

    .restart local v2       #result:I
    goto :goto_1

    .line 4081
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

    .line 4235
    if-ne p1, v6, :cond_3

    .line 4236
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 4238
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

    .line 4239
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [D

    .line 4241
    .local v1, location:[D
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 4242
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v1, v6

    .line 4244
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mReverseGeocoder:Lcom/android/camera/ReverseGeocoder;

    if-nez v2, :cond_1

    .line 4245
    new-instance v2, Lcom/android/camera/ReverseGeocoder;

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v2, v3}, Lcom/android/camera/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/CameraEngine;->mReverseGeocoder:Lcom/android/camera/ReverseGeocoder;

    .line 4248
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mReverseGeocoder:Lcom/android/camera/ReverseGeocoder;

    if-eqz v2, :cond_2

    .line 4249
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mReverseGeocoder:Lcom/android/camera/ReverseGeocoder;

    invoke-virtual {v2, v1}, Lcom/android/camera/ReverseGeocoder;->execute([D)V

    .line 4258
    .end local v0           #loc:Landroid/location/Location;
    .end local v1           #location:[D
    :cond_2
    :goto_0
    return-void

    .line 4256
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mReverseGeocoder:Lcom/android/camera/ReverseGeocoder;

    if-eqz v2, :cond_2

    .line 4257
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mReverseGeocoder:Lcom/android/camera/ReverseGeocoder;

    invoke-virtual {v2}, Lcom/android/camera/ReverseGeocoder;->cancel()V

    goto :goto_0
.end method

.method public setFocusParameter(I)V
    .locals 3
    .parameter "focus"

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_1

    .line 2173
    :cond_0
    :goto_0
    return-void

    .line 2169
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraEngine;->checkFocusMode(I)I

    move-result p1

    .line 2171
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0
.end method

.method public setFrontSensorMirror(I)V
    .locals 3
    .parameter "flip"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3977
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    .line 3978
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setFrontSensorMirror(ZI)V

    .line 3979
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3978
    goto :goto_0
.end method

.method public setGroupID(I)V
    .locals 0
    .parameter "pId"

    .prologue
    .line 4306
    iput p1, p0, Lcom/android/camera/CameraEngine;->groupId:I

    .line 4307
    return-void
.end method

.method public setHDRPictureModeChanged(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 4063
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHDRPictureModeChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4064
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 4065
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setPictureMode(I)V

    .line 4066
    :cond_0
    return-void
.end method

.method public setHDRShotModeChanged(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 4057
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

    .line 4058
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 4059
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setHDRModeLevel(I)V

    .line 4060
    :cond_0
    return-void
.end method

.method public setLandscapeActive(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 2977
    iput-boolean p1, p0, Lcom/android/camera/CameraEngine;->mLandscapeActive:Z

    .line 2978
    return-void
.end method

.method public setLastCapturedTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 2851
    iput-object p1, p0, Lcom/android/camera/CameraEngine;->mLastCapturedTitle:Ljava/lang/String;

    .line 2852
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 2847
    iput-object p1, p0, Lcom/android/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 2848
    return-void
.end method

.method public setLowLightShot(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 4314
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraDevice - setLowLightShot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4315
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 4316
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setLowLightShot(I)V

    .line 4317
    :cond_0
    return-void
.end method

.method public final setOnFacePositionChangedListener(Lcom/android/camera/CameraEngine$OnFacePositionChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/camera/CameraEngine;->mOnFacePositionChangedListener:Lcom/android/camera/CameraEngine$OnFacePositionChangedListener;

    .line 224
    return-void
.end method

.method public final setOnFocusStateChangedListener(Lcom/android/camera/CameraEngine$OnFocusStateChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/camera/CameraEngine;->mOnFocusStateChangedListener:Lcom/android/camera/CameraEngine$OnFocusStateChangedListener;

    .line 214
    return-void
.end method

.method public setOnShutterSound(I)V
    .locals 3
    .parameter "shuttersound"

    .prologue
    .line 3963
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

    .line 3965
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_0

    .line 3966
    const-string v0, "CameraEngine"

    const-string v1, "mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3974
    :goto_0
    return-void

    .line 3970
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getShutterSoundEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 3971
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    goto :goto_0

    .line 3973
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    goto :goto_0
.end method

.method public final setOnTimerEventListener(Lcom/android/camera/CameraEngine$OnTimerEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/camera/CameraEngine;->mOnTimerEventListener:Lcom/android/camera/CameraEngine$OnTimerEventListener;

    .line 234
    return-void
.end method

.method public setOrientationAndSendItToFramework()V
    .locals 4

    .prologue
    .line 1203
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraEngine;->setOrientationOnTake(I)V

    .line 1204
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getOrientationOnTake()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 1205
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

    .line 1206
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 1209
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v1, :cond_0

    .line 1210
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1211
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getWeather()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setWeather(I)V

    .line 1212
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getCityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setCityId(J)V

    .line 1217
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1218
    return-void
.end method

.method protected setOrientationListener()V
    .locals 2

    .prologue
    .line 2985
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 2986
    new-instance v0, Lcom/android/camera/CameraEngine$5;

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CameraEngine$5;-><init>(Lcom/android/camera/CameraEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 3006
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 3007
    return-void
.end method

.method protected setOrientationOnTake(I)V
    .locals 0
    .parameter "orientationOnTake"

    .prologue
    .line 3022
    iput p1, p0, Lcom/android/camera/CameraEngine;->mOrientationOnTake:I

    .line 3023
    return-void
.end method

.method public setShutterSoundEnable(Z)V
    .locals 4
    .parameter "shutterSoundEnable"

    .prologue
    const/4 v3, 0x1

    .line 4263
    const/4 v0, 0x0

    .line 4265
    .local v0, defaultValue:Z
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v1, :cond_0

    .line 4266
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->enableDuringCallDefaultValue()Z

    move-result v0

    .line 4268
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4270
    iput-boolean p1, p0, Lcom/android/camera/CameraEngine;->mShutterSoundEnable:Z

    .line 4271
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    if-eqz v1, :cond_2

    .line 4272
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraShutterSound()I

    move-result v1

    if-nez v1, :cond_3

    .line 4273
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    .line 4281
    :cond_2
    :goto_0
    return-void

    .line 4275
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, v3}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    goto :goto_0

    .line 4280
    :cond_4
    iput-boolean v3, p0, Lcom/android/camera/CameraEngine;->mShutterSoundEnable:Z

    goto :goto_0
.end method

.method public setSingleShotBurst(Z)V
    .locals 2
    .parameter "burst"

    .prologue
    const/4 v1, 0x0

    .line 3982
    if-eqz p1, :cond_0

    .line 3983
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    .line 3984
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraEngine;->mSingleShotBurst:I

    .line 3989
    :goto_0
    return-void

    .line 3986
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    .line 3987
    iput v1, p0, Lcom/android/camera/CameraEngine;->mSingleShotBurst:I

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

    .line 2883
    iget-object v6, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v6, :cond_1

    .line 2922
    :cond_0
    :goto_0
    return-void

    .line 2888
    :cond_1
    iget-object v6, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 2889
    .local v1, focusWidth:I
    iget-object v6, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 2890
    .local v0, focusHeight:I
    iget v5, p0, Lcom/android/camera/CameraEngine;->mOriginalViewFinderWidth:I

    .line 2891
    .local v5, width:I
    iget v2, p0, Lcom/android/camera/CameraEngine;->mOriginalViewFinderHeight:I

    .line 2893
    .local v2, height:I
    iget-object v6, p0, Lcom/android/camera/CameraEngine;->mTapArea:Ljava/util/List;

    if-nez v6, :cond_2

    .line 2894
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/camera/CameraEngine;->mTapArea:Ljava/util/List;

    .line 2895
    iget-object v6, p0, Lcom/android/camera/CameraEngine;->mTapArea:Ljava/util/List;

    new-instance v7, Lcom/sec/android/seccamera/SecCamera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v7, v8, v12}, Lcom/sec/android/seccamera/SecCamera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2898
    :cond_2
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p1, v6

    sub-int v7, v5, v1

    invoke-static {v6, v9, v7}, Lcom/android/camera/CameraEngine;->clamp(III)I

    move-result v3

    .line 2899
    .local v3, left:I
    div-int/lit8 v6, v0, 0x2

    sub-int v6, p2, v6

    sub-int v7, v2, v0

    invoke-static {v6, v9, v7}, Lcom/android/camera/CameraEngine;->clamp(III)I

    move-result v4

    .line 2901
    .local v4, top:I
    iget-object v6, p0, Lcom/android/camera/CameraEngine;->mTapArea:Ljava/util/List;

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

    .line 2902
    iget-object v6, p0, Lcom/android/camera/CameraEngine;->mTapArea:Ljava/util/List;

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

    .line 2903
    iget-object v6, p0, Lcom/android/camera/CameraEngine;->mTapArea:Ljava/util/List;

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

    .line 2904
    iget-object v6, p0, Lcom/android/camera/CameraEngine;->mTapArea:Ljava/util/List;

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

    .line 2914
    iget-object v6, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/android/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    iget-object v6, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v7, p0, Lcom/android/camera/CameraEngine;->mTapArea:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2919
    iget-object v6, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v7, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2921
    sput-boolean v12, Lcom/android/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    goto/16 :goto_0
.end method

.method public setWaitingAnimation(Z)V
    .locals 0
    .parameter "waitinganimation"

    .prologue
    .line 726
    iput-boolean p1, p0, Lcom/android/camera/CameraEngine;->mEnableWaitingAnimation:Z

    .line 727
    return-void
.end method

.method public smileDetectionCompleted()V
    .locals 2

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 2218
    return-void
.end method

.method public startContinuousAF()V
    .locals 1

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 2959
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startContinuousAF()V

    .line 2960
    :cond_0
    return-void
.end method

.method protected startReceivingLocationUpdates()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 2579
    invoke-direct {p0}, Lcom/android/camera/CameraEngine;->initializeLocationManager()V

    .line 2581
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->isNetworkProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2582
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 2587
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x42c8

    iget-object v5, p0, Lcom/android/camera/CameraEngine;->mLocationListeners:[Lcom/android/camera/CameraEngine$LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2596
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x42c8

    iget-object v5, p0, Lcom/android/camera/CameraEngine;->mLocationListeners:[Lcom/android/camera/CameraEngine$LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2604
    :goto_1
    return-void

    .line 2590
    :catch_0
    move-exception v6

    .line 2591
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "CameraEngine"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2592
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 2593
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

    .line 2599
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 2600
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "CameraEngine"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2601
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v6

    .line 2602
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

    .line 2929
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mMainHandler:Lcom/android/camera/CameraEngine$MainHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 2930
    sput-boolean v1, Lcom/android/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    .line 2931
    return-void
.end method

.method public startingPreviewCompleted()V
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->onStartingPreviewCompleted()V

    .line 1802
    return-void
.end method

.method public stopContinuousAF()V
    .locals 2

    .prologue
    .line 2963
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 2964
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopContinuousAF()V

    .line 2965
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2966
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 2967
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2968
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 2970
    :cond_2
    return-void
.end method

.method public stopFaceDetection()V
    .locals 3

    .prologue
    .line 4199
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_1

    .line 4211
    :cond_0
    :goto_0
    return-void

    .line 4201
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getMaxNumDetectedFaces()I

    move-result v1

    if-lez v1, :cond_0

    .line 4203
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 4207
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->stopFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4208
    :catch_0
    move-exception v0

    .line 4209
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraEngine"

    const-string v2, "stopFaceDetection failed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopFaceZoom()V
    .locals 1

    .prologue
    .line 4165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraEngine;->mIsFaceZoomed:Z

    .line 4166
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopFaceZoom()V

    .line 4167
    return-void
.end method

.method public stopLongTouchAutoFocus()V
    .locals 1

    .prologue
    .line 2934
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 2935
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopTouchAutoFocus()V

    .line 2937
    :cond_0
    return-void
.end method

.method protected stopReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 2607
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_0

    .line 2608
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mLocationListeners:[Lcom/android/camera/CameraEngine$LocationListener;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2610
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mLocationListeners:[Lcom/android/camera/CameraEngine$LocationListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2608
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2611
    :catch_0
    move-exception v0

    .line 2612
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "CameraEngine"

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2617
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mReverseGeocoder:Lcom/android/camera/ReverseGeocoder;

    if-eqz v2, :cond_1

    .line 2618
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mReverseGeocoder:Lcom/android/camera/ReverseGeocoder;

    invoke-virtual {v2}, Lcom/android/camera/ReverseGeocoder;->cancel()V

    .line 2620
    :cond_1
    return-void
.end method

.method public stopTouchAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2940
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_0

    .line 2941
    const-string v0, "CameraEngine"

    const-string v1, "Parameters is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    :goto_0
    return-void

    .line 2945
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2946
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2948
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraEngine;->setFocusParameter(I)V

    .line 2949
    sput-boolean v2, Lcom/android/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    .line 2950
    sput-boolean v2, Lcom/android/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2450
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

    .line 2451
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

    .line 2453
    iget v0, p0, Lcom/android/camera/CameraEngine;->mOriginalViewFinderWidth:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/camera/CameraEngine;->mOriginalViewFinderHeight:I

    if-ne v0, p4, :cond_0

    .line 2488
    :goto_0
    return-void

    .line 2456
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    if-eqz v0, :cond_1

    .line 2457
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2458
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->doStopPreviewSync()V

    .line 2462
    :cond_1
    iput p3, p0, Lcom/android/camera/CameraEngine;->mOriginalViewFinderWidth:I

    .line 2463
    iput p4, p0, Lcom/android/camera/CameraEngine;->mOriginalViewFinderHeight:I

    .line 2473
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mSurfaceView:Lcom/android/camera/PreviewFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 2475
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->resetPreviewSize()V

    .line 2477
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/android/camera/CeRequestQueue;->firstElement()Lcom/android/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/android/camera/CeRequestQueue;->firstElement()Lcom/android/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CeRequest;->getRequest()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2478
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->doStartPreviewAsync()V

    .line 2486
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mSurfaceView:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->setGuideLineSize(Landroid/view/View;)V

    .line 2487
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mSurfaceView:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->resetFocus(Landroid/view/View;)V

    goto :goto_0

    .line 2480
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2482
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 2491
    const-string v0, "CameraEngine"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    iput-object p1, p0, Lcom/android/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2494
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 2495
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 2498
    const-string v0, "CameraEngine"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2502
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->doStopPreviewSync()V

    .line 2503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2505
    :cond_1
    return-void
.end method

.method public switchToBack()V
    .locals 3

    .prologue
    .line 1586
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToBackCamera - setSelfMode - SELF_OFF, setCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->setCameraId(I)V

    .line 1588
    invoke-direct {p0}, Lcom/android/camera/CameraEngine;->updateSettingsWhenSwitchCamera()V

    .line 1589
    return-void
.end method

.method public switchToFront()V
    .locals 3

    .prologue
    .line 1577
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToFrontCamera - setCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->setCameraId(I)V

    .line 1579
    invoke-direct {p0}, Lcom/android/camera/CameraEngine;->updateSettingsWhenSwitchCamera()V

    .line 1580
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->removeRequest(I)V

    .line 1583
    :cond_0
    return-void
.end method

.method public terminateBurstShot()V
    .locals 2

    .prologue
    .line 4006
    const-string v0, "CameraEngine"

    const-string v1, "terminateBurstShot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4007
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 4008
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->terminateBurstShot()V

    .line 4009
    :cond_0
    return-void
.end method

.method public updateFocusIndicator()V
    .locals 2

    .prologue
    .line 2825
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mOnFocusStateChangedListener:Lcom/android/camera/CameraEngine$OnFocusStateChangedListener;

    if-eqz v0, :cond_0

    .line 2826
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mOnFocusStateChangedListener:Lcom/android/camera/CameraEngine$OnFocusStateChangedListener;

    iget v1, p0, Lcom/android/camera/CameraEngine;->mFocusState:I

    invoke-interface {v0, v1}, Lcom/android/camera/CameraEngine$OnFocusStateChangedListener;->onFocusStateChanged(I)V

    .line 2828
    :cond_0
    return-void
.end method

.method public updateStorage()V
    .locals 2

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mShootingModeManager:Lcom/android/camera/CameraEngine$ShootingModeManager;

    iget-object v1, p0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v1

    iput v1, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mStorage:I

    .line 2509
    return-void
.end method

.method public waitForCurrentPictureSaving()V
    .locals 1

    .prologue
    .line 3082
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 3083
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 3085
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3089
    :goto_0
    return-void

    .line 3086
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForCurrentSearchingLastContentUri()V
    .locals 1

    .prologue
    .line 3123
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 3124
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3129
    :cond_0
    :goto_0
    return-void

    .line 3126
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForEngineStartingThread()V
    .locals 1

    .prologue
    .line 1528
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1535
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1536
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraEngine;->changeEngineState(I)V

    .line 1538
    :cond_1
    return-void

    .line 1531
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForLastFileToSync()V
    .locals 6

    .prologue
    .line 3096
    iget-object v2, p0, Lcom/android/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 3109
    :goto_0
    return-void

    .line 3100
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

    .line 3101
    sget-object v2, Lcom/android/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    const-string v4, "rw"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 3102
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 3103
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

    .line 3104
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 3105
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3106
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 3107
    .local v0, e:Ljava/io/SyncFailedException;
    invoke-virtual {v0}, Ljava/io/SyncFailedException;->printStackTrace()V

    goto :goto_0
.end method

.method public waitForStartPreviewThreadComplete()V
    .locals 1

    .prologue
    .line 3113
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 3114
    iget-object v0, p0, Lcom/android/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3119
    :cond_0
    :goto_0
    return-void

    .line 3116
    :catch_0
    move-exception v0

    goto :goto_0
.end method
