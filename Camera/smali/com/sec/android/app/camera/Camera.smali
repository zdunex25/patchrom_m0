.class public Lcom/sec/android/app/camera/Camera;
.super Lcom/sec/android/app/camera/AbstractCameraActivity;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;
.implements Lcom/sec/android/app/camera/CameraEngine$OnFacePositionChangedListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Camera$VoiceRecognizer;,
        Lcom/sec/android/app/camera/Camera$UserWrapper;,
        Lcom/sec/android/app/camera/Camera$OnUserSelected;,
        Lcom/sec/android/app/camera/Camera$LastContentUriCallback;,
        Lcom/sec/android/app/camera/Camera$TorchSettingObserver;,
        Lcom/sec/android/app/camera/Camera$MainHandler;,
        Lcom/sec/android/app/camera/Camera$GestureListener;
    }
.end annotation


# static fields
.field private static final ACTION_MOVE_SENSITIVITY:I = 0x5

.field public static final ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String; = "android.intent.action.SIOP_LEVEL_CHANGED"

.field public static final ACTIVE_REQUEST_TIMEOUT:I = 0xce

.field public static final ACTIVE_USER:I = 0xcb

.field private static final AF_WAIT_TIMER_EXPIRED:I = 0x2

.field private static final BURST_SHOT_WAIT_DURATION:I = 0x2bc

.field public static final CANCEL_ACTIVE_USER:I = 0xcc

.field private static final DELAY_TIME_TO_START_AUTO_FOCUS:I = 0x15e

.field private static final DELAY_TIME_WINDOW_FOCUS_ONOFF:I = 0xc8

.field private static final DIRECT_CONNECT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.directconnect"

.field private static final DM_CAMERA_OFF:I = 0x0

.field private static final DM_CAMERA_ON:I = 0x1

.field public static final EXTRA_FLASH_LED_DISABLE:Ljava/lang/String; = "flash_led_disable"

.field public static final FILE_USER_PHOTO_DIR:Ljava/lang/String; = null

.field public static final FILE_USER_PHOTO_PATH:Ljava/lang/String; = null

.field public static final FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String; = null

.field private static final HALF_SHUTTER_DURATION:I = 0x12c

.field private static final INTENT_MSG_SECURITY:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field private static final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String; = "voice_input_control"

.field private static final KEY_VOICE_INPUT_CONTROL_CAMERA:Ljava/lang/String; = "voice_input_control_camera"

.field private static MAX_SIMULTANEOUS_CAPTURE:I = 0x0

.field private static final MSG_CAMERA_TEMPERATURE_CHECK:I = 0x0

.field private static final NFC_PACKAGE_NAME:Ljava/lang/String; = "com.android.nfc"

.field private static final NUM_SHUTTERSOUND_CHANNELS:I = 0x3

.field public static final OBJECT_TRACKING_STATUS_BASE:I = 0x0

.field public static final OBJECT_TRACKING_STATUS_FAIL:I = 0x3

.field public static final OBJECT_TRACKING_STATUS_MISSING:I = 0x4

.field public static final OBJECT_TRACKING_STATUS_PROGRESSING:I = 0x1

.field public static final OBJECT_TRACKING_STATUS_SUCCESS:I = 0x2

.field private static final ORIENTATION_DIRTY_DURATION:I = 0x3e8

.field private static final ORIENTATION_TIMER_EXPIRED:I = 0x3

.field public static final REFESH_VIEW_COMMAND:I = 0xcd

.field private static final RUN_DIALOG_TO_CONFIRM:I = 0xc8

.field private static final RUN_DIALOG_TO_NOTICE_COMFIRMED:I = 0xca

.field private static final RUN_TO_SNS_MODE:I = 0xc9

.field private static final SET_DIRTY_COUNT:I = 0x7

.field private static final SET_DIRTY_DURATION:I = 0x64

.field private static final SET_DIRTY_TIMER_EXPIRED:I = 0x4

.field public static final SHRINNG_DEVICE_COUNT_UPDATE:I = 0xcf

.field public static SHUTTER_SOUND_BESTGROUPPOSE:I = 0x0

.field public static SHUTTER_SOUND_SHORT:I = 0x0

.field public static SHUTTER_SOUND_SHORT_BESTSHOT:I = 0x0

.field private static final START_AUTO_FOCUS:I = 0x5

.field private static final START_BURST_SHOT:I = 0x12c

.field public static SnS_RECV_FOLDER:Ljava/lang/String; = null

.field protected static final TAG:Ljava/lang/String; = "Camera"

.field private static final WINDOW_FOCUS_OFF:I = 0x1f5

.field private static final WINDOW_FOCUS_ON:I = 0x1f4

.field private static final WINDOW_TRANSPARENT:I = 0x1f6

.field public static mAutoShareShotState:Z

.field public static mDirectConnectManagerCheck:Z

.field private static mStorageToast:Landroid/widget/Toast;


# instance fields
.field private battLevel:I

.field private battScale:I

.field private callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

.field private cb_conn:Landroid/content/ServiceConnection;

.field private conn:Landroid/content/ServiceConnection;

.field public devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

.field public iShootShareService:Lcom/samsung/shareshot/IShareShotService;

.field private mActionMoveCount:I

.field private mActiveIp:Ljava/lang/String;

.field public mActivieUserHandler:Landroid/os/Handler;

.field private mAndroidBeamState:Z

.field protected mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

.field private mCameraHardKeyPressed:Z

.field private mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

.field private mCameraSound:Landroid/media/MediaActionSound;

.field protected mCameraTemperatureHandler:Landroid/os/Handler;

.field private mCameraTemperatureObserver:Landroid/os/UEventObserver;

.field private mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mChkAllowFocusTouch:Z

.field private mChkLaunchGallery:Z

.field private mCropValue:Ljava/lang/String;

.field public mDeviceList:Lcom/sec/android/glview/TwGLList;

.field public mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mDirectConnectManager:Lcom/sec/android/app/camera/CameraDirectConnectManager;

.field private mDirtyCount:I

.field private mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

.field mFakeModeSwitch:Landroid/widget/TextView;

.field mFakeShutter:Landroid/widget/TextView;

.field mFakeThumbnail:Landroid/widget/TextView;

.field private mFinishOnCreate:Z

.field private mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

.field private mGestureDetecor:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/sec/android/app/camera/Camera$GestureListener;

.field mHideScaleZoomRect:Ljava/lang/Runnable;

.field private mIfBackToPreMode:Z

.field private mInitialZoomValueOnScaleBegin:I

.field private mIsBurstStopping:Z

.field private mIsDestroying:Z

.field private mIsNZSLBurstStopping:Z

.field private mIsSkipCapturing:Z

.field private mIsTouchFocusStarted:Z

.field private mIsWaitBurstShot:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastCaptureRawData:[B

.field private mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

.field protected mLowBatteryDisableFlashPopupDisplayed:Z

.field private mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

.field public mName:Ljava/lang/String;

.field public mNameChanged:Z

.field private mNfcState:I

.field public mNotify:Z

.field public mOnUserSelected:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/Camera$OnUserSelected;",
            ">;"
        }
    .end annotation
.end field

.field private mOverValue:I

.field public mPhotoPath:Ljava/lang/String;

.field private mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mPreMode:I

.field private mPreOvervalue:I

.field private mPreviousCallbackValue:I

.field public mReceiveImagePath:Ljava/lang/String;

.field public mReceived:Z

.field public mRespond:Z

.field public mRespondNoti:Z

.field private mReturnUri:Z

.field private mSaveUri:Landroid/net/Uri;

.field private mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

.field private mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

.field private mSideMenuLoadingThread:Ljava/lang/Thread;

.field private mSkipSaveDiscard:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStorageForBurstDialog:Landroid/app/AlertDialog;

.field private mStreamId:[I

.field private mStreamVolume:F

.field private mTorchSettingObserver:Lcom/sec/android/app/camera/Camera$TorchSettingObserver;

.field private mTouchAutoFocusActive:Z

.field public mUserArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;"
        }
    .end annotation
.end field

.field public mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

.field private mVolumeKeyPressed:Z

.field protected mWeather:Lcom/sec/android/app/camera/Weather;

.field private mwLostWinFocus:Z

.field private newZoomValue:I

.field public sobject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.sec.android.app.camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_DIR:Ljava/lang/String;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_PATH:Ljava/lang/String;

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String;

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ShareShot/RECV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/Camera;->SnS_RECV_FOLDER:Ljava/lang/String;

    .line 320
    sput v3, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    .line 321
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_BESTGROUPPOSE:I

    .line 322
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT_BESTSHOT:I

    .line 324
    sput v3, Lcom/sec/android/app/camera/Camera;->MAX_SIMULTANEOUS_CAPTURE:I

    .line 346
    sput-boolean v2, Lcom/sec/android/app/camera/Camera;->mDirectConnectManagerCheck:Z

    .line 347
    sput-boolean v2, Lcom/sec/android/app/camera/Camera;->mAutoShareShotState:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/16 v4, 0xb

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;-><init>()V

    .line 203
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 204
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 206
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    .line 208
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    .line 209
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    .line 214
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    .line 215
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    .line 219
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 221
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    .line 222
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mPreviousCallbackValue:I

    .line 223
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    .line 224
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mPreOvervalue:I

    .line 232
    iput v5, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    .line 233
    iput v5, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    .line 235
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z

    .line 236
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    .line 238
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 239
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 253
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    .line 274
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mwLostWinFocus:Z

    .line 278
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 302
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 306
    const-string v0, " "

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    .line 307
    sget-object v0, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 309
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 310
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mRespondNoti:Z

    .line 311
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mNotify:Z

    .line 312
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mRespond:Z

    .line 314
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    .line 315
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mPreMode:I

    .line 316
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReceiveImagePath:Ljava/lang/String;

    .line 317
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mReceived:Z

    .line 318
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    .line 331
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    .line 333
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    .line 336
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageForBurstDialog:Landroid/app/AlertDialog;

    .line 345
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDirectConnectManager:Lcom/sec/android/app/camera/CameraDirectConnectManager;

    .line 348
    iput v3, p0, Lcom/sec/android/app/camera/Camera;->mNfcState:I

    .line 349
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mAndroidBeamState:Z

    .line 351
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    .line 359
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsWaitBurstShot:Z

    .line 360
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsSkipCapturing:Z

    .line 361
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsBurstStopping:Z

    .line 362
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIsNZSLBurstStopping:Z

    .line 364
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z

    .line 366
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraHardKeyPressed:Z

    .line 368
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camera$TorchSettingObserver;

    .line 470
    new-instance v0, Lcom/sec/android/app/camera/Camera$GestureListener;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/Camera$GestureListener;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGestureListener:Lcom/sec/android/app/camera/Camera$GestureListener;

    .line 471
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGestureDetecor:Landroid/view/GestureDetector;

    .line 624
    new-instance v0, Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 627
    new-instance v0, Lcom/sec/android/app/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$1;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    .line 705
    new-instance v0, Lcom/sec/android/app/camera/Camera$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$2;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 884
    new-instance v0, Lcom/sec/android/app/camera/Camera$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$3;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2749
    new-instance v0, Lcom/sec/android/app/camera/Camera$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$5;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 3894
    new-instance v0, Lcom/sec/android/app/camera/Camera$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$10;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraTemperatureHandler:Landroid/os/Handler;

    .line 3908
    new-instance v0, Lcom/sec/android/app/camera/Camera$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$11;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraTemperatureObserver:Landroid/os/UEventObserver;

    .line 5499
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 6533
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    .line 6534
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    .line 6535
    new-instance v0, Lcom/sec/android/app/camera/Camera$18;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$18;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    .line 6565
    new-instance v0, Lcom/sec/android/app/camera/Camera$19;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$19;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    .line 6642
    new-instance v0, Lcom/sec/android/app/camera/Camera$20;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$20;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    .line 6892
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    .line 7144
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    .line 7145
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 7457
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/Camera;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/Camera;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleCameraTemperatureCheck()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/Camera;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/camera/Camera;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isScreenReaderActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mReturnUri:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    return-void
.end method

.method static synthetic access$2302(Lcom/sec/android/app/camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLAniViewGroup;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/shareshot/IShareShotCallbackRegister;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/IShareShotCallbackRegister;)Lcom/samsung/shareshot/IShareShotCallbackRegister;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/shareshot/IShareShotServiceCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/Camera;Lcom/samsung/dmc/ux/db/UserInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->onReceiveActivateMsg(Lcom/samsung/dmc/ux/db/UserInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput p1, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    return p1
.end method

.method static synthetic access$504(Lcom/sec/android/app/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mwLostWinFocus:Z

    return p1
.end method

.method private checkBatteryStatus()V
    .locals 2

    .prologue
    .line 3888
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3889
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3890
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3891
    return-void
.end method

.method private createCaptureBitmap([B)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "data"

    .prologue
    .line 5659
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getTempJpegPath()Ljava/lang/String;

    move-result-object v2

    .line 5660
    .local v2, filepath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 5661
    .local v1, degree:I
    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/Camera;->saveDataToFile(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5662
    invoke-static {v2}, Lcom/sec/android/app/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 5663
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 5667
    :cond_0
    const v3, 0xc800

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5668
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5669
    return-object v0
.end method

.method private getUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7388
    const/4 v1, 0x0

    .line 7390
    .local v1, info:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v2, :cond_0

    .line 7391
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v2}, Lcom/samsung/shareshot/IShareShotService;->getLocalPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 7396
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 7397
    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 7400
    :goto_1
    return-object v2

    .line 7392
    :catch_0
    move-exception v0

    .line 7394
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 7400
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/16 v8, -0x32

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3949
    const-string v3, "status"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3950
    .local v1, battStatus:I
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    .line 3951
    const-string v3, "level"

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    .line 3952
    const-string v3, "plugged"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3953
    .local v0, battPlugged:I
    const-string v3, "temperature"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3955
    .local v2, battTemp:I
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleBatteryChanged : Level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", battPlugged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", battTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3958
    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFlagOverheat:Z

    if-ne v3, v7, :cond_9

    .line 3959
    iput-boolean v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFlagOverheat:Z

    .line 3960
    const/16 v3, 0x1e0

    if-lt v2, v3, :cond_0

    .line 3961
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->handleBatteryOverheat()V

    .line 3971
    :cond_0
    :goto_0
    if-gt v2, v8, :cond_1

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    sget v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_TEMP_FLASH_THRESHOLD_VALUE:I

    if-gt v3, v4, :cond_1

    .line 3972
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v3, :cond_1

    .line 3973
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 3974
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V

    .line 3991
    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    iget v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryWarningLevel:I

    if-gt v3, v4, :cond_3

    .line 3993
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    sget v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v3, v4, :cond_a

    .line 3994
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3995
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 3997
    :cond_2
    iput-object v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 3999
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 4000
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->handleLowBattery(Z)V

    .line 4012
    :cond_3
    :goto_1
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    iget v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryWarningLevel:I

    if-le v3, v4, :cond_5

    if-le v2, v8, :cond_5

    .line 4013
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4014
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 4016
    :cond_4
    iput-object v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 4018
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-eqz v3, :cond_5

    .line 4019
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 4020
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 4038
    :cond_5
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    mul-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBatteryLevel:I

    .line 4039
    iput-boolean v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bIsCharging:Z

    .line 4040
    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    if-ne v0, v7, :cond_7

    .line 4041
    :cond_6
    iput-boolean v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bIsCharging:Z

    .line 4043
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v3, :cond_8

    .line 4044
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iget v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBatteryLevel:I

    iget-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bIsCharging:Z

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setBatteryLevel(IZ)V

    .line 4047
    :cond_8
    return-void

    .line 3964
    :cond_9
    const/16 v3, 0x1fe

    if-lt v2, v3, :cond_0

    .line 3965
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->handleBatteryOverheat()V

    goto/16 :goto_0

    .line 4003
    :cond_a
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v3, :cond_3

    .line 4004
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 4005
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V

    goto :goto_1
.end method

.method private handleCameraTemperatureCheck()V
    .locals 0

    .prologue
    .line 3946
    return-void
.end method

.method private handlePluggedLowBattery(Z)V
    .locals 5
    .parameter "temp"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 6453
    const-string v1, "Camera"

    const-string v2, "handlePluggedLowBattery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6455
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6495
    :goto_0
    return-void

    .line 6458
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6459
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 6460
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 6461
    if-eqz p1, :cond_2

    .line 6462
    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 6466
    :goto_1
    const v1, 0x7f09001a

    new-instance v2, Lcom/sec/android/app/camera/Camera$16;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$16;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6472
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6473
    new-instance v1, Lcom/sec/android/app/camera/Camera$17;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$17;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 6488
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 6489
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 6490
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6491
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 6493
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 6494
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 6464
    :cond_2
    const v1, 0x7f09010e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private handleShutterKey()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/16 v9, 0x2a

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 5154
    const-string v5, "Camera"

    const-string v6, "handleShutterKey"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5156
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total-Shot2Shot**StartU["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5158
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShutterKeyPressed**Point["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5161
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v5, :cond_0

    .line 5163
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 5167
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 5168
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 5172
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    if-ne v5, v11, :cond_2

    .line 5173
    const-string v4, "Camera"

    const-string v5, "handleShutterKey - CE_STATE_STARTING_PREVIEW"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5248
    :cond_1
    :goto_0
    return v3

    .line 5177
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5178
    const-string v3, "Camera"

    const-string v5, "returning because it is capturing.."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 5179
    goto :goto_0

    .line 5182
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-ne v5, v11, :cond_5

    .line 5183
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x2c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 5184
    .local v2, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    if-nez v2, :cond_4

    move v3, v4

    .line 5185
    goto :goto_0

    .line 5186
    :cond_4
    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;)V

    .line 5187
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5188
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v3, v4

    .line 5189
    goto :goto_0

    .line 5193
    .end local v2           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-ne v5, v10, :cond_8

    .line 5195
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .line 5196
    .local v1, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    if-nez v1, :cond_6

    .line 5197
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .end local v1           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, p0, v9, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 5198
    .restart local v1       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5200
    :cond_6
    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->setOnNewPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;)V

    .line 5201
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->isPanoramaCapturing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5202
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v3

    if-ge v3, v10, :cond_7

    move v3, v4

    .line 5203
    goto :goto_0

    .line 5204
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v3, v4

    .line 5205
    goto/16 :goto_0

    .line 5225
    .end local v1           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x11

    if-eq v5, v6, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x18

    if-eq v5, v6, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x19

    if-ne v5, v6, :cond_f

    .line 5228
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x3b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 5229
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_b

    :cond_a
    move v3, v4

    .line 5230
    goto/16 :goto_0

    .line 5232
    :cond_b
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestPicMode()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getRemainStorage()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_d

    :cond_c
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestPicMode()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getRemainStorage()I

    move-result v5

    if-ge v5, v4, :cond_e

    .line 5234
    :cond_d
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    :goto_1
    move v3, v4

    .line 5237
    goto/16 :goto_0

    .line 5236
    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    goto :goto_1

    .line 5238
    .end local v0           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x17

    if-ne v5, v6, :cond_10

    .line 5239
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    goto/16 :goto_0

    .line 5241
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 5242
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v3

    if-nez v3, :cond_11

    .line 5243
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startBurstShotTimer()V

    :cond_11
    move v3, v4

    .line 5245
    goto/16 :goto_0
.end method

.method private handleShutterKeyReleased()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x2a

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5252
    const-string v5, "Camera"

    const-string v6, "handleShutterKeyReleased"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5254
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5255
    const-string v4, "Camera"

    const-string v5, "handleShutterKeyReleased - returning because it is capturing.."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5328
    :cond_0
    :goto_0
    return v3

    .line 5259
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 5261
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .line 5262
    .local v1, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    if-nez v1, :cond_2

    .line 5263
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .end local v1           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, p0, v7, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 5264
    .restart local v1       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5266
    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->isPanoramaCapturing()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v5

    if-ge v5, v8, :cond_3

    .line 5267
    const-string v4, "Camera"

    const-string v5, "handleShutterKeyReleased - panorama can be saved at least two shot"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5283
    .end local v1           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 5284
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x2c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 5285
    .local v2, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    if-eqz v2, :cond_0

    .line 5287
    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;)V

    .line 5288
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5289
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5291
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    goto :goto_0

    .line 5294
    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->stopSmileShot()V

    .line 5295
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopSmileDetection()V

    .line 5296
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto/16 :goto_0

    .line 5299
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getOriginalViewFinderWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getOriginalViewFinderHeight()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraEngine;->getPreviewWidth()I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->startDetect(III)V

    .line 5300
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartSmileDetection()V

    .line 5301
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto/16 :goto_0

    .line 5306
    .end local v2           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v5

    if-ne v5, v3, :cond_9

    .line 5308
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isShowingBurstShotDialog()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5310
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isWaitBurstShot()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5311
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->setWaitBurstShot(Z)V

    .line 5312
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShotTimer()V

    move v3, v4

    .line 5313
    goto/16 :goto_0

    .line 5315
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 5316
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x3b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 5317
    .local v0, burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    .line 5320
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 5321
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isVoiceInputSettingOn()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5322
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showHelpText()V

    .line 5325
    .end local v0           #burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShotTimer()V

    :cond_9
    move v3, v4

    .line 5328
    goto/16 :goto_0
.end method

.method private initIntentFilter()V
    .locals 10

    .prologue
    .line 1053
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1056
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1057
    const-string v8, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1058
    const-string v8, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1059
    const-string v8, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1060
    const-string v8, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1061
    const-string v8, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1062
    const-string v8, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1063
    const-string v8, "file"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1064
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v1}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1067
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1068
    .local v5, intentFilterSecurity:Landroid/content/IntentFilter;
    const-string v8, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1069
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v5}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1072
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1073
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1074
    .local v4, intentFilterSMSReceives:Landroid/content/IntentFilter;
    const-string v8, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1075
    const-string v8, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1076
    const-string v8, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1077
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v4}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1081
    .end local v4           #intentFilterSMSReceives:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1082
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1083
    .local v2, intentFilterDcmoSet:Landroid/content/IntentFilter;
    const-string v8, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1084
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v2}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1087
    .end local v2           #intentFilterDcmoSet:Landroid/content/IntentFilter;
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1088
    .local v0, i:Landroid/content/IntentFilter;
    const-string v8, "com.android.shoot.userchanged"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1089
    const-string v8, "com.android.shootshare.recvfile"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1090
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1092
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1093
    .local v7, wifiDirectFilter:Landroid/content/IntentFilter;
    const-string v8, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1094
    const-string v8, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1095
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v7}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1098
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1099
    .local v6, intentFilterShutdown:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1100
    const-string v8, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1101
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v6}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1104
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1105
    .local v3, intentFilterSIOP:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1106
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v3}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1109
    new-instance v8, Landroid/content/Intent;

    const-string v9, "intent.stop.app-in-app"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1114
    return-void
.end method

.method private initIntentFilterBattery()V
    .locals 2

    .prologue
    .line 1118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1119
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1120
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1121
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1122
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1123
    return-void
.end method

.method private initIntentReceive()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1176
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1178
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1179
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 1180
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 1181
    const-string v1, "return-uri"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mReturnUri:Z

    .line 1182
    const-string v1, "skip-savediscard"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z

    .line 1187
    :goto_0
    return-void

    .line 1185
    :cond_0
    const-string v1, "Camera"

    const-string v2, "Extra is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initRemains()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1127
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;)V

    .line 1128
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnFacePositionChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFacePositionChangedListener;)V

    .line 1129
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V

    .line 1131
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    .line 1133
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->initGPSIndicator()V

    .line 1136
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 1138
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1140
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGestureListener:Lcom/sec/android/app/camera/Camera$GestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGestureDetecor:Landroid/view/GestureDetector;

    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGestureDetecor:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGestureListener:Lcom/sec/android/app/camera/Camera$GestureListener;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 1143
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 1148
    return-void
.end method

.method private isScreenReaderActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 376
    :cond_1
    :goto_0
    return v0

    .line 373
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    .line 376
    goto :goto_0
.end method

.method private isTouchAutoFocusEnabled()Z
    .locals 3

    .prologue
    .line 2806
    const/4 v0, 0x0

    .line 2807
    .local v0, shootingmode:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2825
    :cond_0
    :goto_0
    return v0

    .line 2818
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2821
    const/4 v0, 0x1

    goto :goto_0

    .line 2807
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method private manageLocalService(Z)V
    .locals 10
    .parameter "start"

    .prologue
    const/4 v9, 0x1

    .line 6592
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " manageLocalService "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6593
    if-nez p1, :cond_5

    .line 6594
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v6, :cond_1

    .line 6640
    :cond_0
    :goto_0
    return-void

    .line 6596
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    if-eqz v6, :cond_0

    .line 6599
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v6}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v6

    if-nez v6, :cond_2

    .line 6600
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v6}, Lcom/samsung/shareshot/IShareShotService;->leaveOut()V

    .line 6602
    :cond_2
    const-string v6, "Camera"

    const-string v7, " unbind service"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 6604
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    invoke-interface {v6, v7}, Lcom/samsung/shareshot/IShareShotCallbackRegister;->unregisterCallback(Lcom/samsung/shareshot/IShareShotServiceCallback;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 6608
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v6}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isWifiDirectConnected()Z

    move-result v6

    if-nez v6, :cond_4

    .line 6609
    :cond_3
    const-string v6, "Camera"

    const-string v7, " stop service"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6610
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V

    .line 6611
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 6613
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6614
    .local v2, callbackUnbindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->stopService(Landroid/content/Intent;)Z

    .line 6615
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.shareshot.IShareShotService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6616
    .local v5, unbindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->stopService(Landroid/content/Intent;)Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 6617
    .end local v2           #callbackUnbindIntent:Landroid/content/Intent;
    .end local v5           #unbindIntent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 6618
    .local v3, e:Ljava/lang/NullPointerException;
    :try_start_4
    const-string v6, "Camera"

    const-string v7, " service null exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 6626
    .end local v3           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 6627
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 6605
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    .line 6606
    .local v3, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v6, "Camera"

    const-string v7, " callback null exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 6628
    .end local v3           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v4

    .line 6629
    .local v4, ex:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 6619
    .end local v4           #ex:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v4

    .line 6620
    .restart local v4       #ex:Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string v6, "Camera"

    const-string v7, " service IllegalArgument exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6623
    .end local v4           #ex:Ljava/lang/IllegalArgumentException;
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V

    .line 6624
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 6631
    :cond_5
    if-ne p1, v9, :cond_0

    .line 6632
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6633
    .local v1, callbackBindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6634
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v6, v9}, Lcom/sec/android/app/camera/Camera;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 6636
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.samsung.shareshot.IShareShotService"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6637
    .local v0, bindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6638
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v6, v9}, Lcom/sec/android/app/camera/Camera;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/16 :goto_0
.end method

.method private onChkImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 1157
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private onChkIntentFromWidget()Z
    .locals 4

    .prologue
    .line 1167
    const/4 v0, 0x0

    .line 1169
    .local v0, isFromWidget:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1170
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from-widget"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1172
    :cond_0
    return v0
.end method

.method private onChkSecureImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1163
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onReceiveActivateMsg(Lcom/samsung/dmc/ux/db/UserInfo;)V
    .locals 2
    .parameter "gsUserInfo"

    .prologue
    .line 6737
    const-string v0, "Camera"

    const-string v1, "RECV_ACTIVATE_MSG: showing dialog..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6738
    const-string v0, "Camera"

    const-string v1, "checkActivateDlg() == false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6740
    new-instance v0, Lcom/sec/android/app/camera/Camera$21;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/Camera$21;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/dmc/ux/db/UserInfo;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6757
    return-void
.end method

.method private onUserCancelSelected(Lcom/samsung/shareshot/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 6878
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->cancelActivateUser(Ljava/lang/String;)V

    .line 6879
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->onUnSelected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6884
    :goto_0
    return-void

    .line 6881
    :catch_0
    move-exception v0

    .line 6882
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onUserSelected(Lcom/samsung/shareshot/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 6863
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->isOnline()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6874
    :goto_0
    return-void

    .line 6869
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->activateUser(Ljava/lang/String;)V

    .line 6870
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->onSelected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6871
    :catch_0
    move-exception v0

    .line 6872
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private resetFocusDueToZoom()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2733
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 2734
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 2736
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2737
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 2739
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 2740
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 2741
    :cond_0
    return-void
.end method

.method private setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1039
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1041
    :cond_0
    if-nez p1, :cond_2

    .line 1042
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030006

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/EmptyView;

    .line 1043
    .local v0, emptyview:Lcom/sec/android/app/camera/EmptyView;
    if-eqz v0, :cond_2

    .line 1044
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_1

    .line 1045
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1046
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/EmptyView;->showMenu()V

    .line 1049
    .end local v0           #emptyview:Lcom/sec/android/app/camera/EmptyView;
    :cond_2
    return-void
.end method

.method private startAFWaitTimer()V
    .locals 4

    .prologue
    .line 6371
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 6372
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 6373
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6374
    return-void
.end method

.method private startBurstShotTimer()V
    .locals 4

    .prologue
    .line 6382
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 6383
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x12c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 6384
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6385
    return-void
.end method

.method private startCameraTemperatureObserving()V
    .locals 2

    .prologue
    .line 3918
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraTemperatureObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/platform/sec-subthermistor"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 3919
    const-string v0, "Camera"

    const-string v1, "startCameraTemperatureObserving : startObserving - CAMERA_TEMPERATURE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    return-void
.end method

.method private stopAFWaitTimer()V
    .locals 2

    .prologue
    .line 6378
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 6379
    return-void
.end method

.method private stopBurstShotTimer()V
    .locals 2

    .prologue
    .line 6388
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 6389
    return-void
.end method

.method private stopCameraTemperatureObserving()V
    .locals 3

    .prologue
    .line 3924
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraTemperatureObserver:Landroid/os/UEventObserver;

    invoke-virtual {v1}, Landroid/os/UEventObserver;->stopObserving()V

    .line 3925
    const-string v1, "Camera"

    const-string v2, "stopCameraTemperatureObserving : stopObserving - CAMERA_TEMPERATURE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3929
    :goto_0
    return-void

    .line 3926
    :catch_0
    move-exception v0

    .line 3927
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Camera"

    const-string v2, "stopCameraTemperatureObserving : thread waiting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized stopPostCaptureAnimation()V
    .locals 4

    .prologue
    .line 6282
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v1, :cond_0

    .line 6284
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 6289
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 6290
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 6292
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6294
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 6295
    .local v0, orientation:I
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPostCaptureAnimation - OrientationForPicture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6298
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6308
    .end local v0           #orientation:I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 6282
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 6304
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private switchToCamcorder()V
    .locals 1

    .prologue
    .line 3744
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder(Z)V

    .line 3745
    return-void
.end method

.method private switchToCamcorder(Z)V
    .locals 4
    .parameter "hasExtra"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3748
    sput-boolean v2, Lcom/sec/android/app/camera/Camera;->mCameraActivitySwitching:Z

    .line 3750
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3751
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 3752
    const-string v1, "from-camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3758
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 3759
    const-string v1, "Camera"

    const-string v2, "switchToCamcorder : setLowLightShot false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setLowLightShot(I)V

    .line 3765
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 3770
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->keep()V

    .line 3773
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 3775
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/camera/Camera$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$9;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3783
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    .line 3784
    return-void
.end method


# virtual methods
.method public OnNotifyFirstPreviewFrame()V
    .locals 0

    .prologue
    .line 4998
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2629
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2630
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 2631
    return-void
.end method

.method public cancelCapturePanorama()V
    .locals 1

    .prologue
    .line 5986
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 5987
    return-void
.end method

.method public cancelShutterTimer()V
    .locals 1

    .prologue
    .line 5982
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doCancelShutterTimer()V

    .line 5983
    return-void
.end method

.method public cancelTouchAutoFocus()V
    .locals 1

    .prologue
    .line 2576
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopLongTouchAutoFocus()V

    .line 2578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 2580
    return-void
.end method

.method public changeContrastPreview(I)V
    .locals 2
    .parameter "contrast"

    .prologue
    .line 3701
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 3702
    return-void
.end method

.method public changeEffectPreview(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 3442
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 3444
    if-eqz p1, :cond_0

    .line 3445
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 3446
    :cond_0
    return-void
.end method

.method public changeSaturationPreview(I)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 3709
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 3710
    return-void
.end method

.method public changeSceneModePreview(I)V
    .locals 2
    .parameter "sceneMode"

    .prologue
    .line 2972
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2973
    return-void
.end method

.method public changeSharpnessPreview(I)V
    .locals 2
    .parameter "sharpness"

    .prologue
    .line 3717
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 3718
    return-void
.end method

.method public changeWhiteBalancePreview(I)V
    .locals 3
    .parameter "whiteBalance"

    .prologue
    .line 3457
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 3459
    if-eqz p1, :cond_0

    .line 3460
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 3461
    :cond_0
    return-void
.end method

.method public checkStorage(ZZ)V
    .locals 0
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    .line 6051
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorage(ZZ)V

    .line 6052
    return-void
.end method

.method public checkStorageLow()V
    .locals 6

    .prologue
    .line 6037
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v0

    .line 6038
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 6039
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 6048
    :goto_0
    return-void

    .line 6042
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getMaxSizeOfImage(II)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 6044
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    goto :goto_0

    .line 6046
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    goto :goto_0
.end method

.method public checkWifiConnection()Z
    .locals 1

    .prologue
    .line 3035
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection(Z)Z

    move-result v0

    return v0
.end method

.method public checkWifiConnection(Z)Z
    .locals 3
    .parameter "showDialog"

    .prologue
    .line 3024
    const-string v1, "Camera"

    const-string v2, "checkWifiConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isWifiDirectConnected()Z

    move-result v0

    .line 3026
    .local v0, bool_direct:Z
    if-nez v0, :cond_1

    .line 3027
    if-eqz p1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/camera/Camera;->mDirectConnectManagerCheck:Z

    if-nez v1, :cond_0

    .line 3028
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->showDialog(I)V

    .line 3029
    :cond_0
    const/4 v0, 0x0

    .line 3031
    .end local v0           #bool_direct:Z
    :cond_1
    return v0
.end method

.method public clearPanoramaRect()V
    .locals 3

    .prologue
    .line 4519
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v1, :cond_0

    .line 4521
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .line 4522
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    if-nez v0, :cond_1

    .line 4532
    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    :cond_0
    :goto_0
    return-void

    .line 4524
    .restart local v0       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->clearPanoramaRect()V

    goto :goto_0
.end method

.method public convertCoordinate(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8
    .parameter "input"

    .prologue
    const/high16 v7, 0x44fa

    .line 4091
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07009a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 4093
    .local v2, screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4094
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07009d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 4102
    .local v1, previewWidth:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07009b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 4104
    .local v0, previewHeight:I
    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 4105
    .local v3, x:I
    iget v4, p1, Landroid/graphics/Point;->y:I

    .line 4107
    .local v4, y:I
    add-int/lit16 v3, v3, 0x3e8

    .line 4108
    add-int/lit16 v4, v4, 0x3e8

    .line 4110
    mul-int v5, v1, v3

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v3, v5

    .line 4111
    mul-int v5, v0, v4

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v4, v5

    .line 4113
    sub-int v5, v2, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 4123
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v5

    .line 4095
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 4097
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07009f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .restart local v1       #previewWidth:I
    goto :goto_0

    .line 4099
    .end local v1           #previewWidth:I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07009e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .restart local v1       #previewWidth:I
    goto :goto_0
.end method

.method public createBurstMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x3b

    .line 7654
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 7655
    .local v0, burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_0

    .line 7656
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .end local v0           #burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 7657
    .restart local v0       #burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7659
    :cond_0
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestPicMode(Z)V

    .line 7660
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestGroupMode(Z)V

    .line 7661
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->createDirForBurst()Z

    .line 7662
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 7663
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showMenu()V

    .line 7664
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showCaptureLayout()V

    .line 7665
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 7666
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V

    .line 7668
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isVoiceInputSettingOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7669
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideHelpText()V

    .line 7671
    :cond_1
    return-void
.end method

.method public decreaseRemainCount()V
    .locals 2

    .prologue
    .line 5990
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-nez v1, :cond_0

    .line 6005
    :goto_0
    return-void

    .line 5994
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getRemainCount()I

    move-result v0

    .line 5996
    .local v0, nRemainCount:I
    if-lez v0, :cond_1

    .line 5997
    add-int/lit8 v0, v0, -0x1

    .line 5999
    :cond_1
    if-gtz v0, :cond_2

    .line 6000
    const/4 v0, 0x0

    .line 6001
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 6002
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->mediaStorageDialog()V

    .line 6004
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRemainCount(I)V

    goto :goto_0
.end method

.method public finishTimerCount()V
    .locals 3

    .prologue
    .line 6436
    const-string v1, "Camera"

    const-string v2, "finishTimerCount"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6437
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 6446
    :cond_0
    :goto_0
    return-void

    .line 6440
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .line 6441
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    if-eqz v0, :cond_0

    .line 6444
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6445
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public getActionShotProgressValue()I
    .locals 4

    .prologue
    const/16 v3, 0x2b

    .line 5414
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 5415
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 5416
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .end local v0           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 5417
    .restart local v0       #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5419
    :cond_0
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActionShotProgressValue - progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->getProgressValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5420
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->getProgressValue()I

    move-result v1

    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7678
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBurstShotProgress()I
    .locals 3

    .prologue
    .line 7217
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 7218
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 7219
    :cond_0
    const/4 v1, 0x0

    .line 7222
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v1

    goto :goto_0
.end method

.method public getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;
    .locals 1

    .prologue
    .line 6498
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method public getChkKeyFromApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5332
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    return-object v0
.end method

.method public getChkSideMenuItemsShow()Z
    .locals 1

    .prologue
    .line 6366
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getChkSideMenuItemsShow()Z

    move-result v0

    return v0
.end method

.method public getCityId()J
    .locals 2

    .prologue
    .line 7686
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->getCityId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 6762
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 6768
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGpsLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 7674
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getIsLaunchGallery()Z
    .locals 1

    .prologue
    .line 2786
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    return v0
.end method

.method public getRemainStorage()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 6017
    const/4 v0, 0x0

    .line 6018
    .local v0, nRemainCount:I
    iget v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eq v1, v4, :cond_0

    .line 6019
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkStorageLow()V

    .line 6020
    iget v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-nez v1, :cond_0

    .line 6021
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getRemainCount(III)I

    move-result v0

    .line 6025
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6026
    iput v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 6030
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eqz v1, :cond_1

    .line 6031
    const/4 v0, 0x0

    .line 6033
    :cond_1
    return v0
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 6774
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchAutoFocusActive()Z
    .locals 1

    .prologue
    .line 2799
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    return v0
.end method

.method public getWeather()I
    .locals 1

    .prologue
    .line 7682
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->getContextualWeather()I

    move-result v0

    return v0
.end method

.method public handleShootingModeChanged(I)V
    .locals 16
    .parameter "shootingMode"

    .prologue
    .line 3083
    const-string v13, "Camera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleShootingModeChanged: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    if-eqz p1, :cond_0

    .line 3086
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v13

    const/16 v14, 0x2f

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3088
    :cond_0
    const/16 v13, 0xf

    move/from16 v0, p1

    if-ne v0, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v13, :cond_7

    .line 3090
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getPreviousShootingMode()I

    move-result v13

    const/16 v14, 0xf

    if-eq v13, v14, :cond_1

    .line 3091
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 3093
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V

    .line 3104
    :cond_2
    :goto_0
    if-nez p1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->isVoiceInputSettingOn()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 3105
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v13, :cond_3

    .line 3107
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->showHelpText()V

    .line 3129
    :cond_3
    :goto_1
    const/16 v13, 0x11

    move/from16 v0, p1

    if-eq v0, v13, :cond_4

    const/16 v13, 0x18

    move/from16 v0, p1

    if-ne v0, v13, :cond_5

    .line 3131
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 3132
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->showBurstShotsGuideDialog()V

    .line 3137
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 3139
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v13

    const/4 v14, 0x1

    move/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 3141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 3143
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 3144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 3147
    packed-switch p1, :pswitch_data_0

    .line 3337
    :goto_2
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/camera/Camera;->updateSideMenuBackground(I)V

    .line 3340
    const/16 v13, 0xf

    move/from16 v0, p1

    if-ne v0, v13, :cond_19

    .line 3341
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 3345
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v14, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 3348
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->needToResizeForPreviewAspectRatio()Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 3349
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 3350
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 3351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 3357
    :goto_4
    return-void

    .line 3095
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 3096
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V

    goto/16 :goto_0

    .line 3097
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v13, :cond_2

    .line 3098
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getPreviousShootingMode()I

    move-result v13

    const/16 v14, 0xf

    if-ne v13, v14, :cond_9

    .line 3099
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 3100
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V

    goto/16 :goto_0

    .line 3110
    :cond_a
    const/16 v13, 0x12

    move/from16 v0, p1

    if-ne v0, v13, :cond_b

    .line 3111
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v13, :cond_3

    .line 3113
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const v14, 0x7f090148

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(I)V

    .line 3114
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showHelpText()V

    goto/16 :goto_1

    .line 3117
    :cond_b
    const/16 v13, 0x19

    move/from16 v0, p1

    if-ne v0, v13, :cond_c

    .line 3118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v13, :cond_3

    .line 3120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const v14, 0x7f0900da

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(I)V

    .line 3121
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showHelpText()V

    goto/16 :goto_1

    .line 3125
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v13, :cond_3

    .line 3126
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    goto/16 :goto_1

    .line 3150
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .line 3151
    .local v10, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    if-nez v10, :cond_d

    .line 3152
    new-instance v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .end local v10           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    const/16 v13, 0x2a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3153
    .restart local v10       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3155
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->setOnNewPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;)V

    .line 3156
    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->showMenu()V

    .line 3157
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3172
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 3183
    .end local v10           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    :pswitch_2
    const-string v13, "Debug"

    const-string v14, "SMILE SHOT button clicked"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 3185
    .local v12, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    if-nez v12, :cond_e

    .line 3186
    const-string v13, "Debug"

    const-string v14, "SMILE VIEW create"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    new-instance v12, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .end local v12           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    const/16 v13, 0x2c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3188
    .restart local v12       #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3190
    :cond_e
    invoke-virtual {v12}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showMenu()V

    .line 3191
    invoke-virtual {v12}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showHelpText()V

    .line 3192
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 3196
    .end local v12           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 3197
    .local v4, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v4, :cond_f

    .line 3198
    new-instance v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .end local v4           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    const/16 v13, 0x2b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3199
    .restart local v4       #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3201
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setActionShotCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;)V

    .line 3202
    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 3203
    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showMenu()V

    .line 3204
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3206
    const-string v13, "640x480"

    invoke-static {v13}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v11

    .line 3207
    .local v11, resolutionId:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 3209
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 3216
    .end local v4           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    .end local v11           #resolutionId:I
    :pswitch_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 3219
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x35

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;

    .line 3220
    .local v3, ShareShot:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;
    if-nez v3, :cond_10

    .line 3221
    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;

    .end local v3           #ShareShot:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;
    const/16 v13, 0x35

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3222
    .restart local v3       #ShareShot:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x35

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3224
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v13, :cond_11

    .line 3226
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v13}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v3, v13}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->setUserCount(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3232
    :cond_11
    :goto_5
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->showMenu()V

    .line 3233
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 3227
    :catch_0
    move-exception v8

    .line 3229
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 3236
    .end local v3           #ShareShot:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;
    .end local v8           #e:Landroid/os/RemoteException;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .line 3237
    .local v7, cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    if-nez v7, :cond_12

    .line 3238
    new-instance v7, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .end local v7           #cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    const/16 v13, 0x2d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3239
    .restart local v7       #cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3241
    :cond_12
    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->showMenu()V

    .line 3242
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 3246
    .end local v7           #cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 3247
    .local v9, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v9, :cond_13

    .line 3248
    new-instance v9, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .end local v9           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    const/16 v13, 0x2e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3249
    .restart local v9       #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3253
    :cond_13
    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showMenu()V

    .line 3254
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 3262
    .end local v9           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x3b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3263
    .local v1, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v1, :cond_14

    .line 3264
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestGroupMode()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 3265
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->resetBestPicButton()V

    .line 3268
    :cond_14
    if-nez v1, :cond_15

    .line 3269
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .end local v1           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    const/16 v13, 0x3b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3270
    .restart local v1       #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x3b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3272
    :cond_15
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestGroupMode(Z)V

    .line 3273
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 3274
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V

    .line 3275
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showMenu()V

    .line 3276
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3281
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 3285
    .end local v1           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x3b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3286
    .local v6, bestView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v6, :cond_16

    .line 3287
    new-instance v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .end local v6           #bestView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    const/16 v13, 0x3b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3288
    .restart local v6       #bestView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x3b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3290
    :cond_16
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestPicMode(Z)V

    .line 3291
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestGroupMode(Z)V

    .line 3292
    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 3293
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V

    .line 3294
    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showMenu()V

    .line 3295
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3300
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 3304
    .end local v6           #bestView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x41

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .line 3305
    .local v2, LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    if-nez v2, :cond_17

    .line 3306
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .end local v2           #LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    const/16 v13, 0x41

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3307
    .restart local v2       #LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x41

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3309
    :cond_17
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->showMenu()V

    .line 3310
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 3318
    .end local v2           #LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x3b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3319
    .local v5, bestGroupView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v5, :cond_18

    .line 3320
    new-instance v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .end local v5           #bestGroupView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    const/16 v13, 0x3b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3321
    .restart local v5       #bestGroupView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x3b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3323
    :cond_18
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestGroupMode(Z)V

    .line 3324
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestPicMode(Z)V

    .line 3325
    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->createDirForBurst()Z

    .line 3326
    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 3327
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V

    .line 3328
    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showMenu()V

    .line 3329
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3330
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 3343
    .end local v5           #bestGroupView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v14, 0x1

    move/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto/16 :goto_3

    .line 3355
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto/16 :goto_4

    .line 3147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V
    .locals 14
    .parameter "event"
    .parameter "SendEvent"

    .prologue
    .line 2845
    const-string v12, "Camera"

    const-string v13, "handleTouchAutoFocusEvent"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2923
    :cond_0
    :goto_0
    return-void

    .line 2853
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v1, v12

    .line 2854
    .local v1, PtX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v2, v12

    .line 2856
    .local v2, PtY:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070009

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    div-int/lit8 v4, v12, 0x2

    .line 2857
    .local v4, allowLeftMargin:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070009

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    div-int/lit8 v5, v12, 0x2

    .line 2859
    .local v5, allowTopMargin:I
    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getLeft()I

    move-result v7

    .line 2860
    .local v7, leftMargin:I
    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getRight()I

    move-result v9

    .line 2861
    .local v9, rightMargin:I
    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getTop()I

    move-result v11

    .line 2862
    .local v11, topMargin:I
    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getBottom()I

    move-result v6

    .line 2863
    .local v6, bottomMargin:I
    const/4 v8, 0x0

    .line 2864
    .local v8, leftSideMenuMargin:I
    const/4 v10, 0x0

    .line 2883
    .local v10, rightSideMenuMargin:I
    if-lt v1, v7, :cond_0

    if-gt v1, v9, :cond_0

    .line 2884
    add-int v12, v7, v4

    add-int/2addr v12, v8

    if-gt v1, v12, :cond_5

    .line 2885
    add-int v12, v7, v4

    add-int v1, v12, v8

    .line 2889
    :cond_2
    :goto_1
    add-int v12, v11, v5

    if-gt v2, v12, :cond_6

    .line 2890
    add-int v2, v11, v5

    .line 2896
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v12

    invoke-static {v12}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v12

    if-nez v12, :cond_7

    .line 2901
    sub-int v0, v1, v7

    .line 2903
    .local v0, NormalPtX:I
    if-eqz p2, :cond_4

    .line 2904
    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v12, v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setTouchFocusPosition(II)V

    .line 2917
    .end local v0           #NormalPtX:I
    :cond_4
    :goto_3
    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraEngine;->startTouchAutoFocus()V

    .line 2918
    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v12, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTouchFocusRectCenter(II)V

    .line 2920
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    goto/16 :goto_0

    .line 2886
    :cond_5
    sub-int v12, v9, v4

    sub-int/2addr v12, v10

    if-lt v1, v12, :cond_2

    .line 2887
    sub-int v12, v9, v4

    sub-int v1, v12, v10

    goto :goto_1

    .line 2891
    :cond_6
    sub-int v12, v6, v5

    if-lt v2, v12, :cond_3

    .line 2892
    sub-int v2, v6, v5

    goto :goto_2

    .line 2911
    :cond_7
    sub-int v3, v2, v11

    .line 2913
    .local v3, WidePtY:I
    if-eqz p2, :cond_4

    .line 2914
    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v12, v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setTouchFocusPosition(II)V

    goto :goto_3
.end method

.method public hideFaceRect()V
    .locals 1

    .prologue
    .line 7198
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 7199
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideAllFaceRect()V

    .line 7200
    :cond_0
    return-void
.end method

.method public hideFocusRect()V
    .locals 1

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 2650
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusRect()V

    .line 2651
    :cond_0
    return-void
.end method

.method public hideHelpText()V
    .locals 1

    .prologue
    .line 7193
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 7194
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    .line 7195
    :cond_0
    return-void
.end method

.method public hideSideMenu()V
    .locals 1

    .prologue
    .line 6358
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideSideMenu()V

    .line 6359
    return-void
.end method

.method public hideSideMenuItems()V
    .locals 1

    .prologue
    .line 6348
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 6349
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideSideMenuItems()V

    .line 6350
    :cond_0
    return-void
.end method

.method public initCameraSound()V
    .locals 10

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5006
    const-string v1, "Camera"

    const-string v2, "Initialize Camera Sound"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5008
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    .line 5009
    new-instance v1, Landroid/media/SoundPool;

    invoke-direct {v1, v8, v9, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 5010
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 5011
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050005

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v6

    .line 5012
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v7

    .line 5013
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x7f05

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 5014
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050002

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v8

    .line 5015
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f05000b

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 5016
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050003

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 5018
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050006

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 5019
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05000a

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v9

    .line 5020
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050009

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 5021
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050007

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 5022
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050008

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 5025
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 5026
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSoundPoolId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5025
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5030
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    if-nez v1, :cond_1

    .line 5031
    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    .line 5032
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v1, v7}, Landroid/media/MediaActionSound;->load(I)V

    .line 5034
    :cond_1
    return-void
.end method

.method public initNfcState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7704
    const-string v0, "com.sec.android.directconnect"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTopActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7719
    :goto_0
    return-void

    .line 7707
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getNfcState()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mNfcState:I

    .line 7708
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isAndroidBeamEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mAndroidBeamState:Z

    .line 7710
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initNfcState : mNfcState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mNfcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAndroidBeamState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mAndroidBeamState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7712
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoShareShotMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    if-ne v0, v3, :cond_1

    .line 7713
    sput-boolean v3, Lcom/sec/android/app/camera/Camera;->mAutoShareShotState:Z

    .line 7715
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mNfcState:I

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/CameraSettings;->androidBeamController(ZI)V

    goto :goto_0

    .line 7717
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/Camera;->mAutoShareShotState:Z

    goto :goto_0
.end method

.method public interruptProcessforBestPics()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7632
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 7635
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 7636
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_4

    .line 7651
    .end local v0           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_3
    :goto_0
    return-void

    .line 7639
    .restart local v0       #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->interruptProcessforBestPics()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7640
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearLastContentUri()V

    .line 7642
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 7643
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 7644
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v1, :cond_6

    .line 7645
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V

    .line 7646
    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 7647
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    goto :goto_0
.end method

.method public isActivityDestoying()Z
    .locals 1

    .prologue
    .line 6392
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    return v0
.end method

.method public isAutoFocusEnabled()Z
    .locals 2

    .prologue
    .line 2829
    const/4 v0, 0x1

    .line 2830
    .local v0, shootingmode:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2841
    :goto_0
    return v0

    .line 2833
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 2834
    const/4 v0, 0x0

    goto :goto_0

    .line 2836
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2830
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public isAutoFocusing()Z
    .locals 1

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    return v0
.end method

.method public isBestPicMode()Z
    .locals 3

    .prologue
    .line 7203
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 7204
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 7205
    :cond_0
    const/4 v1, 0x1

    .line 7208
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestPicMode()Z

    move-result v1

    goto :goto_0
.end method

.method public isBurstCapturing()Z
    .locals 3

    .prologue
    .line 4746
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4747
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    .line 4748
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBurstCapturing()Z

    move-result v1

    .line 4750
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBurstStopping()Z
    .locals 1

    .prologue
    .line 4754
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsBurstStopping:Z

    return v0
.end method

.method public isCapturing()Z
    .locals 2

    .prologue
    .line 6055
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 6056
    const-string v0, "Camera"

    const-string v1, "isCapturing - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6057
    const/4 v0, 0x0

    .line 6059
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    goto :goto_0
.end method

.method public isContinuousAFEnabled()Z
    .locals 2

    .prologue
    .line 7174
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 7176
    :cond_0
    const/4 v0, 0x0

    .line 7181
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isGpsEULAEnabledinCamera()V
    .locals 9

    .prologue
    const v8, 0x1010355

    const/4 v7, 0x1

    .line 3637
    const-string v5, "Camera"

    const-string v6, "ghee - isGpsEULAEnabled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3639
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 3641
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3642
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3643
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 3645
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f0900de

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 3647
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3649
    const v5, 0x1040014

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 3650
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 3652
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3653
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3655
    new-instance v5, Lcom/sec/android/app/camera/Camera$6;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camera$6;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3661
    const v5, 0x7f0900a8

    new-instance v6, Lcom/sec/android/app/camera/Camera$7;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/camera/Camera$7;-><init>(Lcom/sec/android/app/camera/Camera;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3677
    const v5, 0x7f0900e2

    new-instance v6, Lcom/sec/android/app/camera/Camera$8;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camera$8;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3683
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 3684
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3685
    return-void
.end method

.method public isMediaScannerScanning()Z
    .locals 1

    .prologue
    .line 7488
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isNZSLBurstStopping()Z
    .locals 1

    .prologue
    .line 4758
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsNZSLBurstStopping:Z

    return v0
.end method

.method public isPreviewStarted()Z
    .locals 2

    .prologue
    .line 6063
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 6064
    const-string v0, "Camera"

    const-string v1, "isPreviewStarted - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6065
    const/4 v0, 0x0

    .line 6067
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v0

    goto :goto_0
.end method

.method public isShowingBurstShotDialog()Z
    .locals 1

    .prologue
    .line 7580
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7581
    const/4 v0, 0x1

    .line 7583
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 2926
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->isShutterPressed()Z

    move-result v0

    return v0
.end method

.method public isTimerCounting()Z
    .locals 1

    .prologue
    .line 6449
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v0

    return v0
.end method

.method public isVoiceInputSettingOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 7431
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_camera"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 7435
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isWaitBurstShot()Z
    .locals 1

    .prologue
    .line 4774
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsWaitBurstShot:Z

    return v0
.end method

.method public isWifiDirectConnected()Z
    .locals 4

    .prologue
    .line 7148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 7149
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 7150
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7151
    const-string v2, "Camera"

    const-string v3, "wifi direct connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7152
    const/4 v2, 0x1

    .line 7154
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isZoomAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3862
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3884
    :cond_0
    :goto_0
    return v0

    .line 3866
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 3870
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3875
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_3

    .line 3880
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3884
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public join()V
    .locals 1

    .prologue
    .line 935
    new-instance v0, Lcom/sec/android/app/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$4;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 952
    return-void
.end method

.method public needToResizeForPreviewAspectRatio()Z
    .locals 6

    .prologue
    .line 3787
    const/4 v1, 0x0

    .line 3789
    .local v1, result:Z
    const v2, 0x7f0b0009

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 3791
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3792
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v2

    const-wide v4, 0x3ffc71c71c71c71cL

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 3793
    const/4 v1, 0x0

    .line 3803
    :goto_0
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToResizeForPreviewAspectRatio : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    return v1

    .line 3795
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 3797
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v2

    const-wide v4, 0x3ff5555555555555L

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    .line 3798
    const/4 v1, 0x0

    goto :goto_0

    .line 3800
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onActionShotAcquisitionProgress(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 5336
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActionShotAcquisitionProgress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5338
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->chkActionShotStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5354
    :cond_0
    :goto_0
    return-void

    .line 5342
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 5343
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-eqz v0, :cond_0

    .line 5347
    if-ltz p1, :cond_2

    const/16 v1, 0x64

    if-le p1, v1, :cond_3

    .line 5348
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 5349
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    goto :goto_0

    .line 5351
    :cond_3
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setAcquisitionProgress(I)V

    .line 5352
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showCaptureLayout()V

    goto :goto_0
.end method

.method public onActionShotCaptureCancelled()V
    .locals 3

    .prologue
    .line 5357
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 5358
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 5366
    :goto_0
    return-void

    .line 5361
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 5362
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 5363
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->actionShotCaptureCancelled()V

    .line 5365
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelSeriesActionShot()V

    goto :goto_0
.end method

.method public onActionShotCaptured()V
    .locals 3

    .prologue
    .line 5397
    const-string v0, "Camera"

    const-string v1, "onActionShotCaptured"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5398
    return-void
.end method

.method public onActionShotCreatingResultCompleted(Z)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 5369
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 5370
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 5376
    :goto_0
    return-void

    .line 5373
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 5374
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 5375
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopActionShot()V

    goto :goto_0
.end method

.method public onActionShotCreatingResultProgress(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 5379
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 5380
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 5384
    :goto_0
    return-void

    .line 5383
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setPostCaptureProgress(I)V

    goto :goto_0
.end method

.method public onActionShotCreatingResultStarted()V
    .locals 3

    .prologue
    .line 5387
    const-string v1, "Camera"

    const-string v2, "onActionShotCreatingResultStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5388
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 5389
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 5394
    :goto_0
    return-void

    .line 5392
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 5393
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->actionShotCreatingResultStarted()V

    goto :goto_0
.end method

.method public onActionShotRectChanged([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 5402
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 5411
    :cond_0
    :goto_0
    return-void

    .line 5406
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 5407
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-eqz v0, :cond_0

    .line 5410
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->actionShotRectChanged([B)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 21
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 5692
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--onActivityResult--requestCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5693
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--onActivityResult--resultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5696
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    .line 5697
    .local v18, myExtras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 5698
    if-eqz v18, :cond_0

    .line 5699
    const-string v3, "output"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 5702
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 5901
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 5704
    :pswitch_1
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    if-eqz p3, :cond_9

    .line 5705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    if-nez v3, :cond_2

    .line 5706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/CameraEngine;->CreateCaptureData(Landroid/content/Intent;)V

    .line 5708
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_7

    const-string v3, "specify-data"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 5710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 5712
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 5713
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_a

    .line 5734
    :goto_1
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->setResult(I)V

    .line 5735
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 5746
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 5747
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 5718
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "uri-data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5719
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_6

    .line 5720
    :cond_5
    const-string v3, "Camera"

    const-string v4, "Something goes wrong!! Restart attach mode."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5723
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5724
    const-string v3, "_data"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 5726
    .local v16, filepath:Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 5728
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "uri-data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_9

    .line 5732
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 5736
    .end local v10           #c:Landroid/database/Cursor;
    .end local v16           #filepath:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, "bitmap-data"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v3

    if-nez v3, :cond_8

    .line 5738
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 5739
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 5742
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/Camera;->createCaptureBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 5743
    .local v9, bitmap:Landroid/graphics/Bitmap;
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 5748
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    :cond_9
    if-nez p2, :cond_1

    .line 5749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 5752
    :try_start_2
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 5755
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_8

    .line 5760
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 5762
    :try_start_3
    new-instance v17, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 5763
    .local v17, mSave:Ljava/net/URI;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 5764
    .end local v17           #mSave:Ljava/net/URI;
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 5771
    :pswitch_2
    const-string v3, "Camera"

    const-string v4, "on result PHOTO_PICKED_WITH_DATA"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5772
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_b

    .line 5773
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 5776
    :cond_b
    if-eqz p3, :cond_12

    .line 5777
    const/16 v19, 0x0

    .line 5778
    .local v19, photo:Landroid/graphics/Bitmap;
    if-nez v18, :cond_f

    .line 5779
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 5780
    .local v20, uri:Landroid/net/Uri;
    if-eqz v20, :cond_1

    .line 5782
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v19

    .line 5801
    .end local v20           #uri:Landroid/net/Uri;
    :goto_5
    new-instance v11, Ljava/io/File;

    sget-object v3, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_DIR:Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5802
    .local v11, dir:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c

    .line 5803
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 5805
    :cond_c
    new-instance v15, Ljava/io/File;

    sget-object v3, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String;

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5806
    .local v15, file:Ljava/io/File;
    const/4 v13, 0x0

    .line 5808
    .local v13, fOut:Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .local v14, fOut:Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 5813
    .end local v14           #fOut:Ljava/io/FileOutputStream;
    .restart local v13       #fOut:Ljava/io/FileOutputStream;
    :goto_6
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 5815
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 5820
    if-eqz v13, :cond_d

    .line 5822
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 5828
    :cond_d
    :goto_7
    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->removeDialog(I)V

    .line 5829
    sget-object v3, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 5830
    const/16 v3, 0x37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v3, v0, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 5831
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_e

    .line 5832
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 5837
    .end local v11           #dir:Ljava/io/File;
    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .end local v15           #file:Ljava/io/File;
    .end local v19           #photo:Landroid/graphics/Bitmap;
    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_1

    .line 5838
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_0

    .line 5783
    .restart local v19       #photo:Landroid/graphics/Bitmap;
    .restart local v20       #uri:Landroid/net/Uri;
    :catch_1
    move-exception v12

    .line 5784
    .local v12, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 5786
    .end local v12           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v12

    .line 5787
    .local v12, e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 5794
    .end local v12           #e:Ljava/io/IOException;
    .end local v20           #uri:Landroid/net/Uri;
    :cond_f
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    .end local v19           #photo:Landroid/graphics/Bitmap;
    check-cast v19, Landroid/graphics/Bitmap;

    .line 5795
    .restart local v19       #photo:Landroid/graphics/Bitmap;
    if-nez v19, :cond_10

    .line 5796
    const-string v3, "Camera"

    const-string v4, "photo is null. returning..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5799
    :cond_10
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "photo.w("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), h("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 5809
    .restart local v11       #dir:Ljava/io/File;
    .restart local v13       #fOut:Ljava/io/FileOutputStream;
    .restart local v15       #file:Ljava/io/File;
    :catch_3
    move-exception v12

    .line 5811
    .local v12, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_6

    .line 5816
    .end local v12           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v12

    .line 5818
    .local v12, e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 5820
    if-eqz v13, :cond_d

    .line 5822
    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_7

    .line 5823
    :catch_5
    move-exception v3

    goto/16 :goto_7

    .line 5820
    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_11

    .line 5822
    :try_start_a
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 5825
    :cond_11
    :goto_9
    throw v3

    .line 5836
    .end local v11           #dir:Ljava/io/File;
    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .end local v15           #file:Ljava/io/File;
    .end local v19           #photo:Landroid/graphics/Bitmap;
    :cond_12
    const/16 v3, 0x3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v3, v0, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    goto/16 :goto_8

    .line 5843
    :pswitch_3
    if-eqz p3, :cond_1

    .line 5844
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "user_name_changed"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 5845
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    if-eqz v3, :cond_1

    .line 5846
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "user_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    goto/16 :goto_0

    .line 5852
    :pswitch_4
    const/16 v3, 0x7d6

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    .line 5853
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_1

    .line 5854
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-nez v3, :cond_13

    .line 5855
    const/16 v3, 0x36

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getSideMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-static {v3, v0, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 5856
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_1

    .line 5857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_0

    .line 5861
    :pswitch_5
    const-string v3, "Camera"

    const-string v4, "Burst REQUEST_BESTGROUPPOSE_IMAGE "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5862
    if-eqz p3, :cond_1

    .line 5863
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DstFile"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 5864
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    .line 5868
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lcom/sec/android/app/camera/Camera$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/Camera$12;-><init>(Lcom/sec/android/app/camera/Camera;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 5823
    .restart local v11       #dir:Ljava/io/File;
    .restart local v13       #fOut:Ljava/io/FileOutputStream;
    .restart local v15       #file:Ljava/io/File;
    .restart local v19       #photo:Landroid/graphics/Bitmap;
    :catch_6
    move-exception v3

    goto/16 :goto_7

    :catch_7
    move-exception v4

    goto/16 :goto_9

    .line 5756
    .end local v11           #dir:Ljava/io/File;
    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .end local v15           #file:Ljava/io/File;
    .end local v19           #photo:Landroid/graphics/Bitmap;
    :catch_8
    move-exception v3

    goto/16 :goto_4

    .line 5729
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v16       #filepath:Ljava/lang/String;
    :catch_9
    move-exception v3

    goto/16 :goto_3

    .line 5714
    .end local v10           #c:Landroid/database/Cursor;
    .end local v16           #filepath:Ljava/lang/String;
    :catch_a
    move-exception v3

    goto/16 :goto_1

    .line 5702
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onAdjustContrastMenuSelect(I)V
    .locals 1
    .parameter "contrastValue"

    .prologue
    .line 2935
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAdjustContrast(I)V

    .line 2936
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->invalidatePreview()V

    .line 2937
    return-void
.end method

.method public onAdjustSaturationMenuSelect(I)V
    .locals 1
    .parameter "saturationValue"

    .prologue
    .line 2939
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAdjustSaturation(I)V

    .line 2940
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->invalidatePreview()V

    .line 2941
    return-void
.end method

.method public onAntishakeSelect(I)V
    .locals 2
    .parameter "antishake"

    .prologue
    .line 3475
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    .line 3476
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3477
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 3478
    return-void
.end method

.method public onAutoShareShotModeSelectCommand(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 3530
    if-nez p1, :cond_0

    .line 3531
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setAutoShareShotMode(I)V

    .line 3534
    :goto_0
    return-void

    .line 3533
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->showDialog(I)V

    goto :goto_0
.end method

.method public onAutocontrastSelect(I)V
    .locals 2
    .parameter "autocontrast"

    .prologue
    .line 3481
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    .line 3482
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3483
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 3484
    return-void
.end method

.method public onBurstCaptureCancelled()V
    .locals 2

    .prologue
    .line 4544
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    .line 4545
    sget v0, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_BESTGROUPPOSE:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 4549
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 4550
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->terminateBurstShot()V

    .line 4551
    :cond_0
    return-void

    .line 4547
    :cond_1
    sget v0, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    goto :goto_0
.end method

.method public onBurstModeChanged(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 4790
    if-eqz p1, :cond_0

    .line 4791
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 4796
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 4797
    return-void
.end method

.method public onBurstModeSelectCommand(I)V
    .locals 5
    .parameter "burstmode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4829
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstModeSelectCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4830
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    .line 4832
    if-ne p1, v3, :cond_0

    .line 4833
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 4834
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4835
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showBurstShotsGuideDialog()V

    .line 4838
    :cond_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->onSceneModeMenuSelect(I)V

    .line 4840
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 4842
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 4843
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 4845
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 4846
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 4849
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->needToResizeForPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4850
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 4851
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 4852
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 4858
    :goto_0
    return-void

    .line 4856
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_0
.end method

.method public onBurstShotCapturingProgressed(II)V
    .locals 4
    .parameter "curCapturedNum"
    .parameter "maxImageNum"

    .prologue
    .line 4555
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBurstShotCapturingProgressed, curCapturedNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxImageNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4556
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4557
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 4598
    :cond_0
    :goto_0
    return-void

    .line 4560
    :cond_1
    if-ge p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getRemainStorage()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_5

    .line 4562
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShot()V

    .line 4570
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestGroupMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4571
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFaceRect()V

    .line 4573
    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setCaptureProgressIncreased()V

    goto :goto_0

    .line 4564
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_3

    const/4 v1, 0x4

    if-lt p1, v1, :cond_3

    .line 4566
    const-string v1, "Camera"

    const-string v2, "Burst SHOOTINGMODE_BESTGROUP  STOP "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4567
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShot()V

    goto :goto_1
.end method

.method public onBurstShotCapturingStopped(I)V
    .locals 3
    .parameter "lastImageNum"

    .prologue
    .line 4601
    const-string v1, "Camera"

    const-string v2, "onBurstShotCapturingStopped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4602
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setBurstStopping(Z)V

    .line 4603
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setNZSLBurstStopping(Z)V

    .line 4604
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 4615
    :cond_0
    :goto_0
    return-void

    .line 4607
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4608
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4611
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 4612
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showPostCaptureLayout()V

    .line 4613
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setPostCaptureProgressMax(I)V

    .line 4614
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    goto :goto_0
.end method

.method public onBurstShotCompleted()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4655
    const-string v1, "Camera"

    const-string v2, "onBurstShotCompleted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->terminateBurstShot()V

    .line 4658
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4659
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_1

    .line 4693
    :cond_0
    :goto_0
    return-void

    .line 4662
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hidePostCaptureLayout()V

    .line 4663
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 4664
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 4665
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setSingleShotBurst(Z)V

    .line 4666
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 4667
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4668
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 4669
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isVoiceInputSettingOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4670
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showHelpText()V

    .line 4675
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->searchForLastContentUri()V

    .line 4677
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_4

    .line 4678
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 4680
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startContinuousAF()V

    .line 4682
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 4684
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 4685
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 4686
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v1, :cond_5

    .line 4687
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V

    .line 4690
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 4691
    const-string v1, "reviewon"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 4673
    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showCaptureLayout()V

    goto :goto_1
.end method

.method public onBurstShotSavingCompleted(I)V
    .locals 4
    .parameter "BestpicNum"

    .prologue
    .line 4619
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBurstShotSavingCompleted Bestpic is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4620
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4621
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_0

    .line 4629
    :goto_0
    return-void

    .line 4624
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestPic(I)V

    .line 4628
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startContinuousAF()V

    goto :goto_0
.end method

.method public onBurstShotStarted()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4696
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4697
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_0

    .line 4743
    :goto_0
    return-void

    .line 4700
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_1

    .line 4701
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 4702
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 4703
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenuItems()V

    .line 4705
    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 4706
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 4707
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 4708
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 4709
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBurstCapturing(Z)V

    .line 4710
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->setBurstStopping(Z)V

    .line 4711
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->setNZSLBurstStopping(Z)V

    .line 4725
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestGroupMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4726
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceDetection()V

    .line 4727
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopContinuousAF()V

    .line 4728
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFaceRect()V

    .line 4732
    sget v1, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_BESTGROUPPOSE:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    goto :goto_0

    .line 4739
    :cond_4
    sget v1, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    goto :goto_0
.end method

.method public onBurstShotStringProgressed([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 4632
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4633
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 4634
    const-string v1, "Camera"

    const-string v2, "onBurstShotStringProgressed - CE_STATE_SHUTDOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4635
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onBurstShotCompleted()V

    .line 4652
    :cond_0
    :goto_0
    return-void

    .line 4638
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->storeBurstStrings([B)V

    .line 4639
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->setBurstShotStoring()V

    .line 4640
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4641
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_2

    .line 4648
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showBestGroupHighlight()V

    .line 4650
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onBurstShotCompleted()V

    goto :goto_0
.end method

.method public onCameraQualityMenuSelect(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 3487
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 3488
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 3489
    return-void
.end method

.method public onCartoonShotProgressRendering(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/16 v4, 0x2d

    .line 5904
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCartoonShotProgressRendering : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5906
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5907
    :cond_0
    const-string v1, "Camera"

    const-string v2, "Menu resource is null or camera destroying. Aborting cartoon progress update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5932
    :cond_1
    :goto_0
    return-void

    .line 5911
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .line 5913
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    if-nez v0, :cond_3

    .line 5914
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 5915
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5918
    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->showPostCaptureLayout()V

    .line 5919
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->setRederingProgress(I)V

    .line 5920
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenuItems()V

    .line 5921
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_4

    .line 5922
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 5924
    :cond_4
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 5925
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->showHelpText()V

    .line 5926
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5927
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->reset()V

    .line 5928
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 5929
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_1

    .line 5930
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 900
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v0, :cond_1

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 905
    const-string v0, "Camera"

    const-string v1, "!!!!!!!!!!!!!!!ORIENTATION_LANDSCAPE!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setLandscapeActive(Z)V

    .line 915
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 916
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 917
    const-string v0, "Camera"

    const-string v1, "!!!!!!!!!!!!!!!ORIENTATION_PORTRAIT!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setLandscapeActive(Z)V

    goto :goto_0
.end method

.method public onContextualFilenameSelect(I)V
    .locals 1
    .parameter "contextualFilename"

    .prologue
    .line 3521
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-nez v0, :cond_0

    .line 3522
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->showDialog(I)V

    .line 3527
    :goto_0
    return-void

    .line 3524
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    .line 3525
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setContextualFilename(I)V

    goto :goto_0
.end method

.method public onContinuousShotCapturingProgressed(II)V
    .locals 2
    .parameter "curCapturedNum"
    .parameter "maxImageNum"

    .prologue
    .line 4861
    const-string v0, "Camera"

    const-string v1, "onContinuousShotCapturingProgressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4862
    return-void
.end method

.method public onContinuousShotCapturingStopped(I)V
    .locals 2
    .parameter "lastImageNum"

    .prologue
    .line 4864
    const-string v0, "Camera"

    const-string v1, "onContinuousShotCapturingStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4865
    return-void
.end method

.method public onContinuousShotSavingCompleted()V
    .locals 2

    .prologue
    .line 4867
    const-string v0, "Camera"

    const-string v1, "onContinuousShotSavingCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4868
    return-void
.end method

.method public onContrastMenuSelect(I)V
    .locals 1
    .parameter "contrast"

    .prologue
    .line 3697
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 3698
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    .line 955
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 957
    const-string v6, "Camera"

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const-string v6, "AXLOG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Total-CameraPreviewLoading**StartU["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]**"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const-string v6, "AXLOG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Total-CameraUILoading(TSP)**StartU["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]**"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 966
    .local v2, _axtime_st_1:J
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkSecureImageCaptureIntent()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkIntentFromWidget()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getSelectedMode()I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 967
    const/high16 v6, 0x7f03

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->setContentView(I)V

    .line 968
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder()V

    .line 969
    iput-boolean v10, p0, Lcom/sec/android/app/camera/Camera;->mFinishOnCreate:Z

    .line 1036
    :goto_0
    return-void

    .line 975
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 978
    .local v5, win:Landroid/view/Window;
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkSecureImageCaptureIntent()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 979
    const-string v6, "Camera"

    const-string v7, "addFlags FLAG_SHOW_WHEN_LOCKED"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/high16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 984
    :cond_1
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 985
    .local v4, lp:Landroid/view/WindowManager$LayoutParams;
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v7, 0x400

    or-int/2addr v6, v7

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 987
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 989
    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 991
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->resetObservers()V

    .line 992
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 994
    const v6, 0x7f03000e

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->setContentView(I)V

    .line 995
    const v6, 0x7f0b0007

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    .line 997
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CameraSettings;->setMode(I)V

    .line 998
    new-instance v6, Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 1000
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 1002
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryWarningLevel:I

    .line 1004
    new-instance v6, Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/CameraEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 1005
    new-instance v6, Landroid/media/AudioManager;

    invoke-direct {v6, p0}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 1007
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamera()V

    .line 1009
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->initializeGLSurfaceView()V

    .line 1011
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    if-nez v6, :cond_2

    .line 1012
    new-instance v6, Ljava/lang/Object;

    invoke-direct/range {v6 .. v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    .line 1015
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->initCameraSound()V

    .line 1023
    new-instance v6, Lcom/sec/android/app/camera/CameraDirectConnectManager;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/CameraDirectConnectManager;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mDirectConnectManager:Lcom/sec/android/app/camera/CameraDirectConnectManager;

    .line 1027
    new-instance v6, Lcom/sec/android/app/camera/Weather;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Weather;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    .line 1030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1031
    .local v0, _axtime_ed_1:J
    const-string v6, "AXLOG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate-End**End["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]**["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]**[]**"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    move-wide v2, v0

    .line 1034
    new-instance v6, Lcom/sec/android/app/camera/Camera$TorchSettingObserver;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/sec/android/app/camera/Camera$TorchSettingObserver;-><init>(Lcom/sec/android/app/camera/Camera;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camera$TorchSettingObserver;

    .line 1035
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "torch_light"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camera$TorchSettingObserver;

    invoke-virtual {v6, v7, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const v9, 0x7f09011d

    .line 7228
    const/4 v7, 0x6

    if-ne p1, v7, :cond_3

    .line 7229
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7230
    .local v0, builder1:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f090110

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7231
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 7232
    .local v4, factory:Landroid/view/LayoutInflater;
    const v7, 0x7f030012

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 7233
    .local v6, userprofile:Landroid/view/View;
    const v7, 0x7f0b002a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 7234
    .local v5, iv:Landroid/widget/ImageView;
    const v7, 0x7f0b0012

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 7236
    .local v2, et:Landroid/widget/EditText;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    sget-object v8, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String;

    if-ne v7, v8, :cond_1

    .line 7237
    sget-object v7, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String;

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7243
    :cond_0
    :goto_0
    new-instance v7, Lcom/sec/android/app/camera/Camera$27;

    invoke-direct {v7, p0, v2}, Lcom/sec/android/app/camera/Camera$27;-><init>(Lcom/sec/android/app/camera/Camera;Landroid/widget/EditText;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7256
    iget-boolean v7, p0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    if-eqz v7, :cond_2

    .line 7257
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7260
    :goto_1
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 7262
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 7263
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09011c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/camera/Camera$28;

    invoke-direct {v8, p0, v2}, Lcom/sec/android/app/camera/Camera$28;-><init>(Lcom/sec/android/app/camera/Camera;Landroid/widget/EditText;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7315
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/camera/Camera$29;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/Camera$29;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7326
    new-instance v7, Lcom/sec/android/app/camera/Camera$30;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/Camera$30;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 7338
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7339
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 7384
    .end local v0           #builder1:Landroid/app/AlertDialog$Builder;
    .end local v2           #et:Landroid/widget/EditText;
    .end local v4           #factory:Landroid/view/LayoutInflater;
    .end local v5           #iv:Landroid/widget/ImageView;
    .end local v6           #userprofile:Landroid/view/View;
    :goto_2
    return-object v7

    .line 7239
    .restart local v0       #builder1:Landroid/app/AlertDialog$Builder;
    .restart local v2       #et:Landroid/widget/EditText;
    .restart local v4       #factory:Landroid/view/LayoutInflater;
    .restart local v5       #iv:Landroid/widget/ImageView;
    .restart local v6       #userprofile:Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/io/File;

    sget-object v7, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_PATH:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7240
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7241
    sget-object v7, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_PATH:Ljava/lang/String;

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 7259
    .end local v3           #f:Ljava/io/File;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7340
    .end local v0           #builder1:Landroid/app/AlertDialog$Builder;
    .end local v2           #et:Landroid/widget/EditText;
    .end local v4           #factory:Landroid/view/LayoutInflater;
    .end local v5           #iv:Landroid/widget/ImageView;
    .end local v6           #userprofile:Landroid/view/View;
    :cond_3
    const/4 v7, 0x7

    if-ne p1, v7, :cond_4

    .line 7341
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7342
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f090115

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7343
    const v7, 0x7f060001

    new-instance v8, Lcom/sec/android/app/camera/Camera$31;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/Camera$31;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7372
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/camera/Camera$32;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/Camera$32;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7382
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_2

    .line 7384
    .end local v1           #builder2:Landroid/app/AlertDialog$Builder;
    :cond_4
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v7

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1747
    const-string v0, "Camera"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v0, :cond_0

    .line 1750
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Camera;->manageLocalService(Z)V

    .line 1752
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1753
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1756
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    .line 1758
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camera$TorchSettingObserver;

    if-eqz v0, :cond_2

    .line 1759
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camera$TorchSettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1760
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camera$TorchSettingObserver;

    .line 1763
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1765
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearGLSurfaceView()V

    .line 1767
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v0, :cond_3

    .line 1768
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuResourceDepot;->onDestroy()V

    .line 1769
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 1772
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_4

    .line 1773
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 1774
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->closeCamera()V

    .line 1776
    :cond_4
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 1778
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    .line 1779
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_5

    .line 1780
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->clear()V

    .line 1781
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 1784
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_6

    .line 1785
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->clear()V

    .line 1786
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 1789
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_7

    .line 1790
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1791
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 1794
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    .line 1795
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1796
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    .line 1799
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 1800
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1801
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    .line 1804
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mStorageForBurstDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 1805
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mStorageForBurstDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1806
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageForBurstDialog:Landroid/app/AlertDialog;

    .line 1809
    :cond_a
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    .line 1810
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 1811
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 1812
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 1813
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1814
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 1815
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_b

    .line 1816
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1817
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1820
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_c

    .line 1821
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1822
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    .line 1824
    :cond_c
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 1825
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 1826
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    .line 1827
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDirectConnectManager:Lcom/sec/android/app/camera/CameraDirectConnectManager;

    .line 1830
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->restoreNfcState()V

    .line 1832
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onDestroy()V

    .line 1833
    return-void
.end method

.method public onEditModeSelectCommand()V
    .locals 4

    .prologue
    .line 3595
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3596
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 3604
    :cond_0
    :goto_1
    return-void

    .line 3599
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0

    .line 3601
    :cond_2
    const/16 v1, 0x28

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v1, p0, v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 3602
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_0

    .line 3603
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_1
.end method

.method public onEffectMenuSelect(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 3435
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 3436
    if-eqz p1, :cond_0

    .line 3437
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 3439
    :cond_0
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .locals 1
    .parameter "exposureValue"

    .prologue
    .line 2930
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 2931
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->invalidatePreview()V

    .line 2932
    return-void
.end method

.method public onExposuremeterMenuSelect(I)V
    .locals 1
    .parameter "exposuremeter"

    .prologue
    .line 3470
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 3471
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 3472
    return-void
.end method

.method public onFacePositionChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V
    .locals 1
    .parameter "faces"

    .prologue
    .line 4128
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 4129
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFaceRectChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V

    .line 4130
    :cond_0
    return-void
.end method

.method public onFlashModeMenuSelect(I)V
    .locals 1
    .parameter "flashMode"

    .prologue
    .line 2944
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 2949
    return-void
.end method

.method public onFlipMenuSelectCommand(I)V
    .locals 1
    .parameter "flip"

    .prologue
    .line 3607
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 3608
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 3609
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 3610
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setFrontSensorMirror(I)V

    .line 3611
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartPreviewAsync()V

    .line 3613
    :cond_0
    return-void
.end method

.method public onFocusModeMenuSelect(I)V
    .locals 1
    .parameter "focusMode"

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 3361
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 3362
    return-void
.end method

.method public onFocusStateChanged(I)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 4168
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-eqz v0, :cond_1

    .line 4218
    :cond_0
    :goto_0
    return-void

    .line 4173
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getAFTimerStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4176
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_3

    .line 4177
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4178
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getTouchFocusPositioned()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4179
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFocusIndicator(I)V

    .line 4186
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v0

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4196
    :cond_4
    if-nez p1, :cond_7

    .line 4197
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4198
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 4200
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_6

    .line 4205
    :cond_6
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 4208
    :cond_7
    if-eq p1, v3, :cond_8

    if-ne p1, v4, :cond_9

    .line 4209
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startAFHideRectTimer()V

    .line 4212
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isWaitBurstShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4213
    if-eq p1, v3, :cond_a

    if-ne p1, v4, :cond_0

    .line 4214
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startSingleBurstShot()V

    .line 4215
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->setWaitBurstShot(Z)V

    goto/16 :goto_0

    .line 4182
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFocusIndicator(I)V

    goto/16 :goto_1
.end method

.method public onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 2
    .parameter "rootView"

    .prologue
    .line 6077
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V

    .line 6079
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 6080
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6081
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setGuideLineSize(Landroid/view/View;)V

    .line 6082
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->resetFocus(Landroid/view/View;)V

    .line 6086
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 6087
    const-string v0, "Camera"

    const-string v1, "mSideMenuLoadingThread is not null, return.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6171
    :goto_0
    return-void

    .line 6091
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/Camera$13;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$13;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    .line 6169
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    const-string v1, "sideMenuLoadingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6170
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onGpsChanged(I)V
    .locals 3
    .parameter "gps"

    .prologue
    .line 3616
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3617
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 3634
    :goto_0
    return-void

    .line 3621
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 3622
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEULAenabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getEULAenable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getEULAenable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3624
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isGpsEULAEnabledinCamera()V

    .line 3633
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0

    .line 3625
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isNetworkProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3626
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->IsGpsEnableInSettings()V

    goto :goto_1

    .line 3628
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1

    .line 3631
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1
.end method

.method public onGuidelineSelect(I)V
    .locals 1
    .parameter "guideline"

    .prologue
    .line 3492
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 3493
    return-void
.end method

.method public onHDRIntensityModeSelectCommand(I)V
    .locals 1
    .parameter "mHDRIntensityMode"

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setHDRShotModeChanged(I)V

    .line 2958
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setHDRIntensityMode(I)V

    .line 2959
    return-void
.end method

.method public onHDRModeSelect(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 3540
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setHDRIntensityMode(I)V

    .line 3542
    return-void
.end method

.method public onHDRPictureModeSelectCommand(I)V
    .locals 1
    .parameter "mHDRPictureMode"

    .prologue
    .line 2952
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setHDRPictureModeChanged(I)V

    .line 2953
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setHDRPictureMode(I)V

    .line 2954
    return-void
.end method

.method public onHDRShotAllProgressCompleted(Z)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 5459
    const-string v0, "Camera"

    const-string v1, "onHDRShotAllProgressCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5460
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doHDRShotAllProgressCompleted()V

    .line 5461
    return-void
.end method

.method public onHDRShotResultCompleted(Z)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 5444
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 5445
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_0

    .line 5453
    :goto_0
    return-void

    .line 5449
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    .line 5450
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showHelpText()V

    .line 5451
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showModeButton()V

    .line 5452
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setRederingProgress(I)V

    goto :goto_0
.end method

.method public onHDRShotResultProgress(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 5436
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 5437
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_0

    .line 5441
    :goto_0
    return-void

    .line 5440
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setPostCaptureProgress(I)V

    goto :goto_0
.end method

.method public onHDRShotResultStarted()V
    .locals 3

    .prologue
    .line 5424
    const-string v1, "Camera"

    const-string v2, "onHDRShotCreatingResultStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5426
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 5427
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_0

    .line 5433
    :goto_0
    return-void

    .line 5430
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setPostCaptureProgress(I)V

    .line 5431
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showPostCaptureLayout()V

    .line 5432
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setPostCaptureProgressMax(I)V

    goto :goto_0
.end method

.method public onHDRShotYUVFileString(Ljava/lang/String;)V
    .locals 0
    .parameter "filepath"

    .prologue
    .line 5456
    return-void
.end method

.method public onISOMenuSelect(I)V
    .locals 2
    .parameter "iso"

    .prologue
    .line 3464
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 3465
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3466
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 3467
    return-void
.end method

.method protected onImageStoringCompleted()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x7

    .line 4871
    const-string v5, "Camera"

    const-string v6, "onImageStoringCompleted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4880
    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-eqz v5, :cond_1

    .line 4979
    :cond_0
    :goto_0
    return-void

    .line 4883
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v5, :cond_0

    .line 4886
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->decreaseRemainCount()V

    .line 4888
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 4891
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startContinuousAF()V

    .line 4894
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x2a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .line 4895
    .local v4, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    if-eqz v4, :cond_2

    .line 4896
    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->reset()V

    .line 4904
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v5, :cond_3

    .line 4905
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->resetPanoramaCapturing()V

    .line 4968
    .end local v4           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v5

    if-eqz v5, :cond_4

    .line 4969
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startContinuousAF()V

    .line 4971
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v5, :cond_f

    .line 4972
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x12

    if-ne v5, v6, :cond_0

    .line 4974
    :cond_5
    const-string v5, "reviewon"

    invoke-virtual {p0, v5, v8}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 4907
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_7

    .line 4908
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x2d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .line 4910
    .local v1, CartoonShotView:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->reset()V

    goto :goto_1

    .line 4911
    .end local v1           #CartoonShotView:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0xe

    if-ne v5, v6, :cond_8

    .line 4912
    const-string v5, "Camera"

    const-string v6, "onImageStoringCompleted - HDR, hidePostCaptureLayout."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4913
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x2e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 4914
    .local v3, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 4917
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    goto/16 :goto_1

    .line 4918
    .end local v3           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-ne v5, v7, :cond_9

    .line 4919
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 4920
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->IsWaitingAnimation()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4921
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 4922
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/CameraEngine;->setWaitingAnimation(Z)V

    goto/16 :goto_1

    .line 4924
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x11

    if-eq v5, v6, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x18

    if-eq v5, v6, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x19

    if-ne v5, v6, :cond_d

    .line 4928
    :cond_a
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x3b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4929
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    if-ne v5, v7, :cond_b

    .line 4930
    const-string v5, "Camera"

    const-string v6, "SHOOTINGMODE_BURST_onImageStoringCompleted - CE_STATE_SHUTDOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4931
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onBurstShotCompleted()V

    goto/16 :goto_0

    .line 4934
    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CaptureData;->getCaptureSmallBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CaptureData;->getOrientation()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setPostCaptureProgressImage(Landroid/graphics/Bitmap;ILandroid/net/Uri;)V

    .line 4936
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->setBurstShotStoring()V

    .line 4937
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 4939
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestPicMode()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 4940
    const-wide/16 v5, 0xc8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4945
    :cond_c
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showHighlight()V

    .line 4946
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->terminateBurstShot()V

    goto/16 :goto_1

    .line 4948
    .end local v0           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x17

    if-ne v5, v6, :cond_3

    .line 4949
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x41

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .line 4950
    .local v2, LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 4953
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->reset()V

    .line 4954
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 4962
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v5, :cond_e

    .line 4963
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 4965
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startContinuousAF()V

    goto/16 :goto_1

    .line 4977
    .end local v2           #LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    :cond_f
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v5, v8}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 4942
    .restart local v0       #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v11, 0x15e

    const/4 v10, 0x5

    const/16 v9, 0x1b

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1837
    const-string v5, "Camera"

    const-string v8, "onKeyDown()"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    move v2, p1

    .line 1865
    .local v2, fakeKeyCode:I
    const/4 v4, 0x1

    .line 1867
    .local v4, shutterKey:Z
    iget-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    if-nez v5, :cond_0

    move v5, v6

    .line 2180
    :goto_0
    return v5

    .line 1879
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v5, v2, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1880
    if-ne v2, v9, :cond_2

    .line 1881
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-nez v5, :cond_2

    .line 1882
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 1883
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1884
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mIsSkipCapturing:Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v5, v6

    .line 1889
    goto :goto_0

    .line 1891
    :catch_0
    move-exception v5

    .line 1895
    :cond_3
    if-ne v2, v9, :cond_4

    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mIsSkipCapturing:Z

    if-eqz v5, :cond_4

    move v5, v6

    .line 1896
    goto :goto_0

    .line 1898
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    .line 1899
    goto :goto_0

    .line 1902
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isResetDialogActive()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    .line 1903
    goto :goto_0

    .line 1906
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isUsbMassStorageEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    .line 1907
    goto :goto_0

    .line 1910
    :cond_7
    const-string v5, "Camera"

    const-string v8, "handling onKeyDown event from Activity class"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    sparse-switch v2, :sswitch_data_0

    .line 2177
    :cond_8
    :goto_1
    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z

    if-eqz v5, :cond_2e

    move v5, v6

    .line 2178
    goto :goto_0

    :sswitch_0
    move v5, v7

    .line 1914
    goto :goto_0

    :sswitch_1
    move v5, v6

    .line 1917
    goto :goto_0

    :sswitch_2
    move v5, v7

    .line 1921
    goto :goto_0

    .line 1923
    :sswitch_3
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_9

    move v5, v6

    .line 1924
    goto :goto_0

    .line 1926
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isTimerCounting()Z

    move-result v5

    if-nez v5, :cond_a

    move v5, v6

    .line 1927
    goto/16 :goto_0

    .line 1952
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKey()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1954
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isContinuousAFEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v5

    if-nez v5, :cond_c

    .line 1955
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v5

    if-ne v5, v6, :cond_b

    .line 1956
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleContinuousAF()V

    .line 1958
    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-virtual {v5, v10, v11, v12}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1961
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAutoFocusEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1964
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 1966
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v5

    if-eq v5, v6, :cond_e

    .line 1968
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startAFWaitTimer()V

    .line 1971
    :cond_e
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    goto/16 :goto_1

    .line 1978
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v5

    if-nez v5, :cond_f

    move v5, v6

    .line 1979
    goto/16 :goto_0

    .line 1982
    :cond_f
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v5

    const/4 v8, 0x7

    invoke-virtual {v5, v8}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1983
    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z

    if-eqz v5, :cond_10

    .line 1984
    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z

    :cond_10
    move v5, v6

    .line 1985
    goto/16 :goto_0

    .line 1988
    :cond_11
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v5

    if-nez v5, :cond_12

    .line 1989
    const-string v5, "Camera"

    const-string v7, "shutter is pressed. Preview is not ready..."

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1990
    goto/16 :goto_0

    .line 2003
    :cond_12
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2004
    const-string v5, "Camera"

    const-string v7, "shutter is pressed. Camera is capturing..."

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 2005
    goto/16 :goto_0

    .line 2008
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2009
    const-string v5, "Camera"

    const-string v7, "returning because it is launch gallery"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 2010
    goto/16 :goto_0

    .line 2012
    :cond_14
    iget v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eqz v5, :cond_15

    .line 2013
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    move v5, v6

    .line 2014
    goto/16 :goto_0

    .line 2017
    :cond_15
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_16

    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z

    if-nez v5, :cond_16

    .line 2018
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraHardKeyPressed:Z

    move v5, v6

    .line 2019
    goto/16 :goto_0

    .line 2029
    :cond_16
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKey()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 2039
    :goto_2
    if-nez v4, :cond_17

    if-eqz p2, :cond_18

    :cond_17
    if-nez v4, :cond_1d

    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z

    if-ne v5, v6, :cond_1d

    .line 2041
    :cond_18
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/CameraEngine;->setAutoExposureLockIfSupported(Z)V

    .line 2042
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/CameraEngine;->setAutoWhiteBalanceLockIfSupported(Z)V

    .line 2045
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isContinuousAFEnabled()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 2046
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v5

    if-nez v5, :cond_19

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v5

    if-ne v5, v6, :cond_19

    .line 2047
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleContinuousAF()V

    .line 2050
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2053
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-virtual {v5, v10, v11, v12}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 2030
    :catch_1
    move-exception v1

    .line 2031
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 2056
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAutoFocusEnabled()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 2059
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 2061
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v5

    if-eq v5, v6, :cond_1c

    .line 2063
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startAFWaitTimer()V

    .line 2065
    :cond_1c
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v5, v6

    .line 2066
    goto/16 :goto_0

    .line 2069
    :cond_1d
    if-eqz p2, :cond_1e

    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z

    if-eqz v5, :cond_1f

    :cond_1e
    :goto_3
    move v5, v6

    .line 2141
    goto/16 :goto_0

    .line 2072
    :cond_1f
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v5

    if-eq v5, v6, :cond_20

    .line 2073
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 2076
    :cond_20
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v5

    if-nez v5, :cond_27

    .line 2078
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_21

    move v5, v6

    .line 2079
    goto/16 :goto_0

    .line 2081
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isContinuousAFEnabled()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v5

    if-nez v5, :cond_25

    .line 2082
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v5

    if-nez v5, :cond_22

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v5

    if-ne v5, v6, :cond_22

    .line 2083
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleContinuousAF()V

    .line 2086
    :cond_22
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-virtual {v5, v10, v11, v12}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2088
    if-eq v9, v2, :cond_23

    .line 2089
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v5, v6

    .line 2090
    goto/16 :goto_0

    .line 2092
    :cond_23
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v5

    if-nez v5, :cond_24

    .line 2093
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    :cond_24
    move v5, v6

    .line 2095
    goto/16 :goto_0

    .line 2097
    :cond_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAutoFocusEnabled()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v5

    if-nez v5, :cond_26

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 2101
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v5

    if-nez v5, :cond_26

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v5

    if-nez v5, :cond_26

    .line 2103
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 2106
    :cond_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v5

    if-eqz v5, :cond_27

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v5

    if-eq v5, v6, :cond_27

    .line 2108
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startAFWaitTimer()V

    .line 2121
    :cond_27
    if-ne v9, v2, :cond_28

    .line 2137
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 2138
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto/16 :goto_3

    .line 2122
    :cond_28
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v5, v6

    .line 2123
    goto/16 :goto_0

    .line 2149
    :sswitch_5
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v5

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v5, :cond_29

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v5

    if-nez v5, :cond_29

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v5

    if-eqz v5, :cond_2a

    :cond_29
    move v5, v6

    .line 2150
    goto/16 :goto_0

    .line 2155
    :cond_2a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isZoomAvailable()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 2156
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v7, 0x12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 2157
    .local v3, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->getVisibility()Z

    move-result v5

    if-nez v5, :cond_2c

    .line 2158
    :cond_2b
    const/16 v5, 0x12

    iget-object v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v9, 0x2

    invoke-static {v5, p0, v7, v8, v9}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 2160
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_2c

    .line 2161
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 2163
    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_2c
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFocusDueToZoom()V

    .line 2164
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 2166
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v5, :cond_2d

    .line 2168
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 2169
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .end local v3           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :cond_2d
    move v5, v6

    .line 2172
    goto/16 :goto_0

    .line 2180
    :cond_2e
    invoke-super {p0, v2, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 1912
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x17 -> :sswitch_4
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x1a -> :sswitch_1
        0x1b -> :sswitch_4
        0x42 -> :sswitch_4
        0x45 -> :sswitch_5
        0x46 -> :sswitch_5
        0x50 -> :sswitch_3
        0x52 -> :sswitch_0
        0x55 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x9c -> :sswitch_5
        0x9d -> :sswitch_5
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 2186
    const-string v4, "Camera"

    const-string v6, "onKeyUp()"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    move v1, p1

    .line 2189
    .local v1, fakeKeyCode:I
    const/4 v3, 0x0

    .line 2190
    .local v3, volumeKey:Z
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsSkipCapturing:Z

    .line 2191
    .local v2, isSkipCapturing:Z
    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camera;->mIsSkipCapturing:Z

    .line 2213
    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    if-nez v4, :cond_0

    move v4, v5

    .line 2427
    :goto_0
    return v4

    .line 2225
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v4, v1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2226
    const-string v4, "Camera"

    const-string v6, "Delivering onKeyUp to other view"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 2227
    goto :goto_0

    .line 2229
    :catch_0
    move-exception v4

    .line 2233
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isResetDialogActive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2234
    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    .line 2235
    const-string v4, "Camera"

    const-string v6, "BACK KEY PRESSED! : dissmissResetDialog"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->dismissResetDialog()V

    :cond_2
    move v4, v5

    .line 2238
    goto :goto_0

    .line 2241
    :cond_3
    const-string v4, "Camera"

    const-string v6, "handling onKeyUp event from Activity class"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    sparse-switch v1, :sswitch_data_0

    .line 2424
    :cond_4
    :goto_1
    if-eqz v3, :cond_21

    move v4, v5

    .line 2425
    goto :goto_0

    .line 2245
    :sswitch_0
    const-string v4, "Camera"

    const-string v6, "BACK KEY PRESSED!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2248
    const-string v4, "Camera"

    const-string v6, "event isCanceled() true"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2249
    goto :goto_0

    .line 2251
    :cond_5
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    if-eqz v4, :cond_6

    .line 2252
    iget v4, p0, Lcom/sec/android/app/camera/Camera;->mPreMode:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 2253
    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    move v4, v5

    .line 2254
    goto :goto_0

    .line 2257
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    .line 2258
    goto :goto_0

    .line 2260
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isStartingEngine()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isStartingPreview()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2261
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2264
    const-string v4, "Camera"

    const-string v6, "Ignoring BACK KEY because preview is being started!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2265
    goto/16 :goto_0

    .line 2269
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2270
    :cond_a
    const-string v4, "Camera"

    const-string v6, "if smiledetecting or timercounting, call the cancelautofocus"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2274
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    move v4, v5

    .line 2275
    goto/16 :goto_0

    .line 2281
    :sswitch_1
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v5

    .line 2282
    goto/16 :goto_0

    .line 2284
    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getChkSideMenuItemsShow()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v4, :cond_d

    .line 2285
    const/16 v4, 0x27

    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v4, p0, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 2286
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_d

    .line 2287
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_d
    move v4, v5

    .line 2289
    goto/16 :goto_0

    .line 2299
    :sswitch_2
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 2301
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v4

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2302
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v4

    if-nez v4, :cond_e

    move v4, v5

    .line 2303
    goto/16 :goto_0

    .line 2308
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 2311
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isUsbMassStorageEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v5

    .line 2312
    goto/16 :goto_0

    .line 2315
    :cond_f
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v4

    if-nez v4, :cond_10

    .line 2316
    const-string v4, "Camera"

    const-string v6, "shutter is pressed. Preview is not ready..."

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2317
    goto/16 :goto_0

    .line 2330
    :cond_10
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2331
    const-string v4, "Camera"

    const-string v6, "shutter is returned. Camera is Capturing..."

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2332
    goto/16 :goto_0

    .line 2335
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_12

    move v4, v5

    .line 2336
    goto/16 :goto_0

    .line 2339
    :cond_12
    if-eqz v2, :cond_13

    move v4, v5

    .line 2340
    goto/16 :goto_0

    .line 2343
    :cond_13
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v4

    if-ne v4, v5, :cond_14

    .line 2345
    const-string v4, "Camera"

    const-string v6, "camera is autofocusing in smile shot"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2346
    goto/16 :goto_0

    .line 2348
    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2349
    const-string v4, "Camera"

    const-string v6, "returning because it is launch gallery"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2350
    goto/16 :goto_0

    .line 2352
    :cond_15
    iget v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eqz v4, :cond_16

    .line 2353
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    move v4, v5

    .line 2354
    goto/16 :goto_0

    .line 2361
    :cond_16
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->countForCurrenPictureSaving()I

    move-result v4

    sget v6, Lcom/sec/android/app/camera/Camera;->MAX_SIMULTANEOUS_CAPTURE:I

    if-lt v4, v6, :cond_17

    .line 2362
    const-string v4, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "returning because it is over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/Camera;->MAX_SIMULTANEOUS_CAPTURE:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " picture save wating. Thread count is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->countForCurrenPictureSaving()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2364
    goto/16 :goto_0

    .line 2369
    :cond_17
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraHardKeyPressed:Z

    if-eqz v4, :cond_18

    .line 2378
    :cond_18
    if-eqz p2, :cond_19

    if-eqz v3, :cond_1a

    .line 2379
    :cond_19
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2380
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto/16 :goto_1

    .line 2383
    :cond_1a
    const/16 v4, 0x1b

    if-eq v4, v1, :cond_4

    .line 2384
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2385
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto/16 :goto_1

    :sswitch_3
    move v4, v5

    .line 2393
    goto/16 :goto_0

    .line 2395
    :sswitch_4
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1b

    move v4, v5

    .line 2396
    goto/16 :goto_0

    .line 2398
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isTimerCounting()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 2399
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 2400
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_2

    :cond_1c
    move v4, v5

    .line 2402
    goto/16 :goto_0

    .line 2405
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1e
    move v4, v5

    .line 2407
    goto/16 :goto_0

    .line 2410
    :cond_1f
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v4

    if-nez v4, :cond_20

    .line 2412
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2413
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2414
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    :cond_20
    move v4, v5

    .line 2416
    goto/16 :goto_0

    :sswitch_5
    move v4, v5

    .line 2421
    goto/16 :goto_0

    .line 2427
    :cond_21
    invoke-super {p0, v1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2243
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_5
        0x4 -> :sswitch_0
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1a -> :sswitch_3
        0x1b -> :sswitch_2
        0x42 -> :sswitch_2
        0x50 -> :sswitch_4
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "keyValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5468
    .local p2, rectlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLaunchGalleryFromCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5470
    if-nez p1, :cond_0

    .line 5490
    :goto_0
    return-void

    .line 5473
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5474
    const-string v0, "Camera"

    const-string v1, "returning because it is secure mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5478
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5479
    const-string v0, "Camera"

    const-string v1, "returning because it is launch gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5483
    :cond_2
    new-instance v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;-><init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 5484
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5485
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->onCompleted()V

    .line 5486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    goto :goto_0

    .line 5488
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->searchForLastContentUri()V

    goto :goto_0
.end method

.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 5002
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5003
    return-void
.end method

.method public onModechanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3721
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3722
    const-string v0, "Camera"

    const-string v1, "changeMode failed - engine not started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3741
    :goto_0
    return-void

    .line 3726
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3728
    :cond_1
    const-string v0, "Camera"

    const-string v1, "changeMode failed - image capturing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3732
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 3739
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSelectedMode(I)V

    .line 3740
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder(Z)V

    goto :goto_0
.end method

.method public onMultiFrameShotCapturingProgressed(II)V
    .locals 5
    .parameter "progress"
    .parameter "maxImageNum"

    .prologue
    const/16 v4, 0x41

    .line 4800
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMultiFrameShotCapturingProgressed, progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxImageNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4802
    if-le p1, p2, :cond_0

    .line 4803
    const-string v1, "Camera"

    const-string v2, "exceed max image number."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4816
    :goto_0
    return-void

    .line 4806
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .line 4808
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    if-nez v0, :cond_1

    .line 4809
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 4810
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4813
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->showPostCaptureLayout()V

    .line 4814
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->setRederingProgress(I)V

    .line 4815
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenuItems()V

    goto :goto_0
.end method

.method public onMultiFrameShotReset()V
    .locals 3

    .prologue
    .line 4982
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .line 4983
    .local v0, LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->getProgressValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 4984
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->reset()V

    .line 4985
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 4987
    :cond_0
    return-void
.end method

.method public onMultiFrameShotStarted()V
    .locals 2

    .prologue
    .line 4819
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 4820
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 4821
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenuItems()V

    .line 4822
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 4823
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 4824
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 4825
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 4826
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 1151
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1153
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->setIntent(Landroid/content/Intent;)V

    .line 1154
    return-void
.end method

.method public onObjectTrackingStatus(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 5941
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onObjectTrackingStatus - msg["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5942
    packed-switch p1, :pswitch_data_0

    .line 5954
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onObjectTrackingStatus - undefined msg["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5957
    :pswitch_0
    return-void

    .line 5942
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOutdoorVisibilitySelect(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 3570
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraOutdoorVisibility(I)V

    .line 3571
    return-void
.end method

.method public onPanoramaCaptureCancelled()V
    .locals 1

    .prologue
    .line 4513
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    .line 4514
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 4515
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 4516
    :cond_0
    return-void
.end method

.method public onPanoramaCaptureStart()Z
    .locals 4

    .prologue
    const/16 v3, 0x2a

    .line 4491
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_0

    .line 4492
    const-string v1, "Camera"

    const-string v2, "onPanoramaCaptureStart - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4493
    const/4 v1, 0x0

    .line 4501
    :goto_0
    return v1

    .line 4496
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .line 4497
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    if-nez v0, :cond_1

    .line 4498
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 4499
    .restart local v0       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4501
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->isPanoramaCapturing()Z

    move-result v1

    goto :goto_0
.end method

.method public onPanoramaCaptured()V
    .locals 4

    .prologue
    .line 4431
    const-string v1, "Camera"

    const-string v2, "onPanoramaCaptured"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4432
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 4433
    const-string v1, "Camera"

    const-string v2, "onPanoramaCaptured - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4453
    :cond_0
    :goto_0
    return-void

    .line 4436
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isPanoramaCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4441
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .line 4442
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    if-eqz v0, :cond_0

    .line 4444
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->setCaptureProgressIncreased()V

    .line 4445
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->restartCancelTimer()V

    goto :goto_0
.end method

.method public onPanoramaCapturedMaxFrames()V
    .locals 2

    .prologue
    .line 4535
    const-string v0, "Camera"

    const-string v1, "onPanoramaCapturedMaxFrames()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4536
    return-void
.end method

.method public onPanoramaCapturedNew()V
    .locals 3

    .prologue
    .line 4286
    const-string v0, "Camera"

    const-string v1, "onPanoramaCapturedNew"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4287
    return-void
.end method

.method public onPanoramaDirectionChanged(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 4291
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPanoramaDirectionChanged - direction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 4293
    const-string v1, "Camera"

    const-string v2, "onPanoramaDirectionChanged - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4315
    :cond_0
    :goto_0
    return-void

    .line 4297
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4302
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .line 4303
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4306
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->panoramaDirectionChanged(I)V

    goto :goto_0
.end method

.method public onPanoramaError(I)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    .line 4319
    const-string v1, "Camera"

    const-string v2, "onPanoramaError - error"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4320
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v1, :cond_1

    .line 4321
    const-string v1, "Camera"

    const-string v2, "onPanoramaError - mCameraEngine is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4351
    :cond_0
    :goto_0
    return-void

    .line 4325
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 4327
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_2

    .line 4328
    const-string v1, "Camera"

    const-string v2, "onPanoramaError - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4332
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    .line 4335
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .line 4336
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    if-eqz v0, :cond_0

    .line 4338
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->showCaptureLayout()V

    .line 4339
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->reset()V

    .line 4340
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopCancelTimer()V

    .line 4350
    const v1, 0x7f09001f

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPanoramaLivePreviewData([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 4480
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .line 4481
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    if-eqz v0, :cond_0

    .line 4482
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->onLivePreviewData([B)V

    .line 4488
    :cond_0
    return-void
.end method

.method public onPanoramaLowResolutionData([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 4460
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_0

    .line 4461
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onPanoramaLowResolutionData([B)V

    .line 4463
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .line 4464
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    if-eqz v0, :cond_0

    .line 4465
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getPanoramaLowResolutionBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->setLowResolutionBitmap(Landroid/graphics/Bitmap;)V

    .line 4472
    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    :cond_0
    return-void
.end method

.method public onPanoramaMoveSlowly()V
    .locals 2

    .prologue
    .line 4539
    const-string v0, "Camera"

    const-string v1, "onPanoramaMoveSlowly()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4540
    return-void
.end method

.method public onPanoramaProgressStitching(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 4382
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPanoramaProgressStitching - Stitch progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4383
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 4384
    const-string v1, "Camera"

    const-string v2, "onPanoramaProgressStitching - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    :cond_0
    :goto_0
    return-void

    .line 4388
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    .line 4391
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .line 4392
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    if-eqz v0, :cond_0

    .line 4394
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 4395
    const-string v1, "Camera"

    const-string v2, "onPanoramaProgressStitching - CE_STATE_SHUTDOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4396
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->reset()V

    .line 4397
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->resetPanoramaCapturing()V

    goto :goto_0

    .line 4399
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopCancelTimer()V

    .line 4400
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopPanoramaSound()V

    .line 4401
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->setPostCaptureProgress(I)V

    .line 4403
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 4404
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->showCaptureLayout()V

    .line 4405
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    goto :goto_0
.end method

.method public onPanoramaRectChanged(II)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 4356
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 4357
    const-string v1, "Camera"

    const-string v2, "onPanoramaRectChanged - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4378
    :cond_0
    :goto_0
    return-void

    .line 4361
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4366
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    .line 4367
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4370
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->panoramaRectChanged(II)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x7

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1190
    const-string v1, "Camera"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    if-eqz v1, :cond_0

    .line 1194
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Weather;->Disconnect()V

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1203
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2, v3, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1218
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->notifyOnPause()V

    .line 1219
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->PauseGLSurface()V

    .line 1221
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getNetWork()I

    move-result v1

    if-nez v1, :cond_2

    .line 1222
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v1, :cond_2

    .line 1223
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Camera;->manageLocalService(Z)V

    .line 1230
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mFinishOnCreate:Z

    if-eqz v1, :cond_3

    .line 1231
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    .line 1347
    :goto_0
    return-void

    .line 1235
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1236
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 1237
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 1238
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/16 v2, 0x1f6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 1239
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 1240
    iput v3, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    .line 1242
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1243
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 1245
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_4

    .line 1246
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 1250
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 1253
    .line 1255
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_6

    .line 1256
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->IsWaitingAnimation()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1257
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 1258
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setWaitingAnimation(Z)V

    .line 1260
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isFaceZoomed()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1261
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceZoom()V

    .line 1264
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_7

    .line 1265
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideAllFaceRect()V

    .line 1268
    :cond_7
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_8

    .line 1269
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1275
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_9

    .line 1276
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForEngineStartingThread()V

    .line 1277
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForStartPreviewThreadComplete()V

    .line 1278
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentSearchingLastContentUri()V

    .line 1279
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentPictureSaving()V

    .line 1284
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->interruptProcessforBestPics()V

    .line 1287
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1292
    :goto_2
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->onFocusStateChanged(I)V

    .line 1293
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideAllDlg()V

    .line 1294
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->removeDialog(I)V

    .line 1296
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_b

    .line 1297
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearTimer()V

    .line 1298
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    .line 1299
    .local v0, oldState:I
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1301
    if-eqz v0, :cond_a

    .line 1304
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1305
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 1306
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 1307
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1319
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->onPause()V

    .line 1322
    .end local v0           #oldState:I
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v1, :cond_c

    .line 1323
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->onPause()V

    .line 1325
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopPostCaptureAnimation()V

    .line 1326
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopBlinkShutterAnimation()V

    .line 1330
    const-string v1, "camera"

    invoke-static {v1, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 1333
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1334
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1335
    :cond_d
    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    .line 1341
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->restoreNfcState()V

    .line 1344
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setNZSLBurstStopping(Z)V

    .line 1346
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    goto/16 :goto_0

    .line 1288
    :catch_0
    move-exception v1

    goto :goto_2

    .line 1271
    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method public onPreviewFileReceived(I)V
    .locals 3
    .parameter "preview"

    .prologue
    const/4 v1, 0x1

    .line 3545
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v2, :cond_0

    .line 3554
    :goto_0
    return-void

    .line 3548
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-interface {v2, v1}, Lcom/samsung/shareshot/IShareShotService;->setAutoPreview(Z)V

    .line 3549
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3550
    :catch_0
    move-exception v0

    .line 3552
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3548
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onResolutionMenuSelect(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 3373
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 3374
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 3375
    return-void
.end method

.method public onRespondSharewithNotify()V
    .locals 5

    .prologue
    .line 6957
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UserInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/UserInfo;

    .line 6958
    .local v0, userInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 6959
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/sec/android/app/camera/Camera$26;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/Camera$26;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/dmc/ux/db/UserInfo;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 6970
    return-void
.end method

.method protected onResume()V
    .locals 15

    .prologue
    .line 1350
    const-string v11, "Camera"

    const-string v12, "onResume"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const/4 v11, 0x0

    sput-boolean v11, Lcom/sec/android/app/camera/Camera;->mCameraActivitySwitching:Z

    .line 1354
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    if-nez v11, :cond_0

    .line 1355
    new-instance v11, Lcom/sec/android/app/camera/Weather;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/Weather;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    .line 1357
    :cond_0
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    if-eqz v11, :cond_1

    .line 1358
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 1359
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/Camera;->setWeatherConnect(Z)V

    .line 1369
    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    if-nez v11, :cond_2

    .line 1370
    new-instance v11, Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/Camera$UserWrapper;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v11, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    .line 1371
    :cond_2
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsFromSNS:Z

    .line 1374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1377
    .local v4, _axtime_st_1:J
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->initNfcState()V

    .line 1392
    iget-boolean v11, p0, Lcom/sec/android/app/camera/Camera;->mFinishOnCreate:Z

    if-eqz v11, :cond_3

    .line 1393
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 1660
    :goto_0
    return-void

    .line 1407
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1408
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_Security()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1409
    const v11, 0x7f0900f4

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1411
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1435
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/MenuDimController;->getLowBatteryStatus()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 1436
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 1437
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 1438
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v11

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1441
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1442
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->checkBatteryStatus()V

    .line 1451
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "torch_light"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_14

    const/4 v9, 0x1

    .line 1452
    .local v9, externalTorchEnabled:Z
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/sec/android/app/camera/MenuDimController;->setIsFlashDimmed(Z)V

    .line 1454
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v11, :cond_7

    .line 1455
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->onResume()V

    .line 1458
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 1459
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1462
    goto :goto_2

    .line 1464
    const-string v11, "Camera"

    const-string v12, "onResume CAMERA disable"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const v11, 0x7f0900f4

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1466
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->scheduleProcessBack()V

    .line 1470
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 1471
    .local v10, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v11, 0x0

    goto :goto_3

    .line 1472
    const-string v11, "Camera"

    const-string v12, "onResume CAMERA disable"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const v11, 0x7f0900f4

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1475
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->scheduleProcessBack()V

    .line 1478
    :goto_3
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 1479
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1482
    .end local v8
    .end local v10           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initIntentFilter()V

    .line 1484
    const-string v1, "Rcs_Camera_Request"

    .line 1485
    .local v1, RCS_CAMERA_VALUE:Ljava/lang/String;
    const-string v0, "Rcs_Camera_Key"

    .line 1486
    .local v0, RCS_CAMERA_KEY:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 1488
    .local v6, b:Landroid/os/Bundle;
    if-eqz v6, :cond_15

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 1489
    const-string v11, "onresume"

    const-string v12, "RCS camera launch during CS call :"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_8
    :goto_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    const-string v12, "mounted"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    .line 1529
    const-string v11, "Camera"

    const-string v12, "Camera is finished due to MEDIA_UNMOUNTED"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    sget-object v11, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    if-nez v11, :cond_9

    .line 1531
    const-string v11, ""

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    sput-object v11, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    .line 1533
    :cond_9
    sget-object v11, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    const v12, 0x7f0900ec

    invoke-virtual {v11, v12}, Landroid/widget/Toast;->setText(I)V

    .line 1534
    sget-object v11, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1535
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1543
    :goto_5
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v11, :cond_a

    .line 1544
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 1545
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 1546
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    .line 1548
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v11

    const/16 v12, 0xf

    if-ne v11, v12, :cond_1c

    .line 1549
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1550
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v11, :cond_a

    .line 1551
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setWifiDirectStatus()V

    .line 1558
    :cond_a
    :goto_6
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    .line 1559
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initIntentReceive()V

    .line 1561
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 1563
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 1564
    const-string v11, "from_app"

    iput-object v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    .line 1565
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 1566
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1577
    :goto_7
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v11, :cond_b

    .line 1578
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 1581
    :cond_b
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v11, :cond_10

    .line 1582
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 1584
    iget-boolean v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFromSecureSetting:Z

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v11

    if-nez v11, :cond_c

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->isNetworkProviderEnabled()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1585
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    .line 1586
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFromSecureSetting:Z

    .line 1589
    :cond_d
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v11, :cond_f

    .line 1590
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getChkSideMenuItemsShow()Z

    move-result v11

    if-nez v11, :cond_e

    .line 1591
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 1593
    :cond_e
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refresh()V

    .line 1594
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 1596
    :cond_f
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->updateStorage()V

    .line 1599
    :cond_10
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initRemains()V

    .line 1610
    const-string v11, "camera"

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 1617
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v11

    if-nez v11, :cond_11

    .line 1618
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_11

    .line 1619
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v11, :cond_11

    .line 1620
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/CameraEngine;->setSingleShotBurst(Z)V

    .line 1625
    :cond_11
    iget-boolean v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    if-eqz v11, :cond_1f

    .line 1626
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    .line 1627
    const/16 v11, 0xf

    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 1649
    :cond_12
    :goto_8
    new-instance v11, Landroid/content/Intent;

    const-string v12, "intent.stop.app-in-app"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1651
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v11

    const/16 v12, 0xf

    if-ne v11, v12, :cond_13

    .line 1652
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/CameraSettings;->setDeviceName(Lcom/samsung/shareshot/IShareShotService;)V

    .line 1655
    :cond_13
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 1657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1658
    .local v2, _axtime_ed_1:J
    const-string v11, "AXLOG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onResume-End**End["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]**["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, v2, v4

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]**[]**"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    move-wide v4, v2

    .line 1660
    goto/16 :goto_0

    .line 1451
    .end local v0           #RCS_CAMERA_KEY:Ljava/lang/String;
    .end local v1           #RCS_CAMERA_VALUE:Ljava/lang/String;
    .end local v2           #_axtime_ed_1:J
    .end local v6           #b:Landroid/os/Bundle;
    .end local v9           #externalTorchEnabled:Z
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1491
    .restart local v0       #RCS_CAMERA_KEY:Ljava/lang/String;
    .restart local v1       #RCS_CAMERA_VALUE:Ljava/lang/String;
    .restart local v6       #b:Landroid/os/Bundle;
    .restart local v9       #externalTorchEnabled:Z
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkCameraDuringCall()V

    .line 1493
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_Call()Z

    move-result v11

    if-nez v11, :cond_16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_VoIPCall()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1495
    :cond_16
    iget-boolean v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_17

    iget-boolean v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_17

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->cameraDuringCall()Z

    move-result v11

    if-nez v11, :cond_18

    .line 1497
    :cond_17
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_0

    .line 1501
    :cond_18
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v11, :cond_8

    .line 1502
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->cameraDuringCall()Z

    move-result v11

    if-eqz v11, :cond_19

    .line 1503
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/CameraEngine;->setShutterSoundEnable(Z)V

    goto/16 :goto_4

    .line 1505
    :cond_19
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/CameraEngine;->setShutterSoundEnable(Z)V

    goto/16 :goto_4

    .line 1537
    :cond_1a
    sget-object v11, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    if-eqz v11, :cond_1b

    .line 1538
    sget-object v11, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->cancel()V

    .line 1540
    :cond_1b
    const/4 v11, 0x0

    sput-object v11, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    goto/16 :goto_5

    .line 1554
    :cond_1c
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto/16 :goto_6

    .line 1567
    :cond_1d
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkSecureImageCaptureIntent()Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 1568
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/CameraSettings;->setSecureMode(Z)V

    .line 1569
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_7

    .line 1571
    :cond_1e
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    .line 1572
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 1573
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/CameraSettings;->setSecureMode(Z)V

    .line 1574
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_7

    .line 1628
    :cond_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v11

    const/16 v12, 0xf

    if-ne v11, v12, :cond_12

    .line 1629
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v11, :cond_20

    .line 1631
    :try_start_0
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v12}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/Camera$UserWrapper;->setUserList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1638
    :cond_20
    :goto_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection()Z

    move-result v11

    if-nez v11, :cond_21

    .line 1639
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    goto/16 :goto_8

    .line 1632
    :catch_0
    move-exception v7

    .line 1634
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9

    .line 1641
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getNetWork()I

    move-result v11

    if-nez v11, :cond_12

    .line 1642
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v11, :cond_12

    .line 1643
    const/16 v11, 0xf

    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    goto/16 :goto_8
.end method

.method public onReviewMenuSelect(I)V
    .locals 1
    .parameter "review"

    .prologue
    .line 3496
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    .line 3497
    return-void
.end method

.method public onRunSNSAfterConnect(I)V
    .locals 3
    .parameter "auto"

    .prologue
    const/4 v1, 0x1

    .line 3557
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v2, :cond_0

    .line 3567
    :goto_0
    return-void

    .line 3560
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-interface {v2, v1}, Lcom/samsung/shareshot/IShareShotService;->setAutoStart(Z)V

    .line 3561
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3566
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setNetWork(I)V

    goto :goto_0

    .line 3560
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 3562
    :catch_0
    move-exception v0

    .line 3564
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public onSaturationMenuSelect(I)V
    .locals 1
    .parameter "saturation"

    .prologue
    .line 3705
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 3706
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 2661
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2697
    :goto_0
    return v5

    .line 2665
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 2667
    .local v0, currentCallbackValue:I
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    sget v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    if-le v1, v2, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mPreviousCallbackValue:I

    if-ge v1, v0, :cond_4

    .line 2668
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    sget v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    .line 2669
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mPreOvervalue:I

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    if-le v1, v2, :cond_1

    .line 2670
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mPreOvervalue:I

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    .line 2678
    :cond_1
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    .line 2680
    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mPreviousCallbackValue:I

    .line 2681
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mPreOvervalue:I

    .line 2683
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    if-gez v1, :cond_2

    .line 2684
    iput v5, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    .line 2687
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    sget v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    if-le v1, v2, :cond_3

    .line 2688
    sget v1, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    .line 2691
    :cond_3
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->onZoomValueMenuSelect(I)V

    .line 2693
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 2694
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->invalidate()V

    .line 2695
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2696
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/Camera$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2672
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    if-gez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mPreviousCallbackValue:I

    if-le v1, v0, :cond_1

    .line 2673
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    .line 2674
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mPreOvervalue:I

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    if-ge v1, v2, :cond_1

    .line 2675
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mPreOvervalue:I

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v5, -0x2

    const/4 v6, 0x0

    .line 2701
    const-string v2, "Camera"

    const-string v3, "onScaleBegin"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2704
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    .line 2705
    iput v6, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    .line 2706
    iput v6, p0, Lcom/sec/android/app/camera/Camera;->mPreOvervalue:I

    .line 2707
    iput v6, p0, Lcom/sec/android/app/camera/Camera;->mPreviousCallbackValue:I

    .line 2709
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFocusDueToZoom()V

    .line 2711
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-nez v2, :cond_0

    .line 2712
    new-instance v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;-><init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 2713
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setLastOrientation(I)V

    .line 2714
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2715
    .local v1, win:Landroid/view/Window;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2718
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2719
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2720
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2723
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #win:Landroid/view/Window;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 2724
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 2725
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2726
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/Camera$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2728
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 2729
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2744
    const-string v0, "Camera"

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2746
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2747
    return-void
.end method

.method public onSceneModeMenuSelect(I)V
    .locals 3
    .parameter "sceneMode"

    .prologue
    .line 2962
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2965
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    .line 2967
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2968
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 2969
    return-void
.end method

.method public onSearchingLastContentUriCompleted()V
    .locals 1

    .prologue
    .line 5493
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    if-eqz v0, :cond_0

    .line 5494
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->onCompleted()V

    .line 5495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 5497
    :cond_0
    return-void
.end method

.method public onSelfModeChangeSelected()V
    .locals 2

    .prologue
    .line 2976
    const-string v0, "Camera"

    const-string v1, "onSelfModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2979
    const-string v0, "Camera"

    const-string v1, "onSelfModeChangeSelected failed - queue is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    :goto_0
    return-void

    .line 2983
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isNotificationExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2984
    const-string v0, "Camera"

    const-string v1, "onSelfModeChangeSelected failed - notifycation is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2988
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    .line 2989
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_2

    .line 2990
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    .line 2992
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 2993
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFaceRect()V

    .line 2995
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2996
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopEngine()V

    .line 2998
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 3000
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera()V

    .line 3002
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 3003
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 3004
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    goto :goto_0
.end method

.method public onSharpnessMenuSelect(I)V
    .locals 1
    .parameter "sharpness"

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    .line 3714
    return-void
.end method

.method public onShootAndShareMenuSelect(I)V
    .locals 2
    .parameter "sns"

    .prologue
    .line 3509
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootAndShare(I)V

    .line 3510
    const-string v0, "onShootAndShareMenuSelect"

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3512
    const-string v0, "onShootAndShareMenuSelect"

    const-string v1, "-----------on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    :cond_0
    return-void
.end method

.method public onShootingModeMenuSelect(I)V
    .locals 6
    .parameter "shootingMode"

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3043
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    .line 3045
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 3046
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFaceZoomGuideDialog()V

    .line 3049
    :cond_0
    if-ne p1, v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3050
    iput-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    .line 3052
    :cond_1
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShootingModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    if-ne p1, v5, :cond_2

    .line 3055
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/Camera;->manageLocalService(Z)V

    .line 3058
    sput-boolean v3, Lcom/sec/android/app/camera/Camera;->mDirectConnectManagerCheck:Z

    .line 3060
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDeviceName(Lcom/samsung/shareshot/IShareShotService;)V

    .line 3061
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->setDeviceType()V

    .line 3064
    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 3065
    const-string v0, "CameraPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Switching][Begin] - Shooting mode change start::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    :cond_3
    const/16 v0, 0xe

    if-ne p1, v0, :cond_4

    .line 3073
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showHDRTextDialog()V

    .line 3076
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 3078
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 3079
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 3080
    return-void
.end method

.method public onShutterSoundMenuSelect(I)V
    .locals 1
    .parameter "shuttersound"

    .prologue
    .line 3574
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    .line 3575
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setOnShutterSound(I)V

    .line 3576
    return-void
.end method

.method public onSmileDetectingDirectStopped()V
    .locals 3

    .prologue
    .line 4241
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopSmileDetectionSync()V

    .line 4242
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 4243
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->stopDetect()V

    .line 4244
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->cleanSmileRect()V

    .line 4245
    return-void
.end method

.method public onSmileDetectingStopped()V
    .locals 3

    .prologue
    .line 4234
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopSmileDetection()V

    .line 4235
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 4236
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->stopDetect()V

    .line 4237
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->cleanSmileRect()V

    .line 4238
    return-void
.end method

.method public onSmileShotDetectionSuccess()V
    .locals 2

    .prologue
    .line 4248
    const-string v0, "Camera"

    const-string v1, "onOnSmileShotDetectionSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->smileDetectionCompleted()V

    .line 4250
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    .line 4251
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    .line 4252
    return-void
.end method

.method public onSmileShotFaceRectChanged([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 4257
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 4267
    :cond_0
    :goto_0
    return-void

    .line 4261
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 4262
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4266
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->smileShotFaceRectChanged([B)V

    goto :goto_0
.end method

.method public onSmileShotSmileRectChanged([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 4272
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 4282
    :cond_0
    :goto_0
    return-void

    .line 4276
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 4277
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4281
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->smileShotSmileRectChanged([B)V

    goto :goto_0
.end method

.method public onStartingPreviewCompleted()V
    .locals 0

    .prologue
    .line 3840
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initIntentFilterBattery()V

    .line 3855
    return-void
.end method

.method public onStorageMenuSelect(I)V
    .locals 2
    .parameter "storage"

    .prologue
    const/4 v1, 0x1

    .line 3583
    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3584
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorageForBurstDialog()I

    move-result v0

    if-nez v0, :cond_0

    .line 3585
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showStorageForBurstDialog()V

    .line 3592
    :goto_0
    return-void

    .line 3587
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto :goto_0

    .line 3590
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto :goto_0
.end method

.method public onTimerEvent(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x3d

    .line 4221
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTimerEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4222
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .line 4223
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    if-nez v0, :cond_0

    .line 4224
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 4225
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4227
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4228
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->showMenu()V

    .line 4229
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->updateTime(I)V

    .line 4230
    return-void
.end method

.method public onTimerMenuSelect(I)V
    .locals 2
    .parameter "timer"

    .prologue
    .line 3365
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    .line 3367
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3369
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 2435
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopPostCaptureAnimation()V

    .line 2446
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2447
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 2567
    :goto_0
    return v0

    .line 2452
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_1

    .line 2453
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2457
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/MenuBase;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2458
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 2459
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v0, v1

    .line 2461
    goto :goto_0

    .line 2463
    :catch_0
    move-exception v0

    .line 2467
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isPreviewTouchEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 2468
    goto :goto_0

    .line 2471
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v1

    .line 2472
    goto :goto_0

    .line 2475
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isZoomAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2477
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2481
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    move v0, v1

    .line 2483
    goto :goto_0

    .line 2489
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 2491
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGestureDetecor:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2494
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2567
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 2496
    :pswitch_0
    const-string v0, "Camera"

    const-string v2, "MotionEvent.ACTION_UP"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    if-eqz v0, :cond_b

    .line 2501
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 2502
    iput v3, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    .line 2503
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/camera/Camera;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V

    .line 2504
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->shrinkFocusRect()V

    .line 2505
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 2508
    :cond_b
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 2509
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    move v0, v1

    .line 2510
    goto/16 :goto_0

    .line 2512
    :pswitch_1
    const-string v0, "Camera"

    const-string v2, "MotionEvent.ACTION_DOWN"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopAFHideRectTimer()V

    .line 2515
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2544
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/camera/Camera;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V

    .line 2545
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    :cond_c
    move v0, v1

    .line 2548
    goto/16 :goto_0

    .line 2551
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    if-eqz v0, :cond_d

    .line 2552
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 2553
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_d

    .line 2554
    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/camera/Camera;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V

    :cond_d
    move v0, v1

    .line 2558
    goto/16 :goto_0

    .line 2560
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2561
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2562
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 2563
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    move v0, v1

    .line 2564
    goto/16 :goto_0

    .line 2478
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 2494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUserSelectionListChanged(Lcom/samsung/shareshot/User;Z)V
    .locals 0
    .parameter "user"
    .parameter "isChecked"

    .prologue
    .line 6855
    if-eqz p2, :cond_0

    .line 6856
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->onUserSelected(Lcom/samsung/shareshot/User;)V

    .line 6860
    :goto_0
    return-void

    .line 6858
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->onUserCancelSelected(Lcom/samsung/shareshot/User;)V

    goto :goto_0
.end method

.method public onVoiceCommandMenuSelect(I)V
    .locals 2
    .parameter "voicecommand"

    .prologue
    .line 3504
    const-string v0, "Camera"

    const-string v1, "onVoiceCommandMenuSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    .line 3506
    return-void
.end method

.method public onVolumeKeyMenuSelect(I)V
    .locals 1
    .parameter "volumeKey"

    .prologue
    .line 3500
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setVolumeKey(I)V

    .line 3501
    return-void
.end method

.method public onWhiteBalanceMenuSelect(I)V
    .locals 2
    .parameter "whiteBalance"

    .prologue
    .line 3450
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 3451
    if-eqz p1, :cond_0

    .line 3452
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 3454
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasWindowFocus"

    .prologue
    .line 1685
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    if-eqz p1, :cond_1

    .line 1688
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isVoiceInputSettingOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1689
    .line 1690
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showVoiceInputIndicator(I)V

    .line 1697
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/Camera;->mDirectConnectManagerCheck:Z

    if-eqz v0, :cond_1

    .line 1698
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/16 v1, 0xc9

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1703
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onWindowFocusChanged(Z)V

    .line 1704
    return-void

    .line 1693
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showVoiceInputIndicator(I)V

    goto :goto_0
.end method

.method public onZoomValueMenuSelect(I)V
    .locals 1
    .parameter "zoomValue"

    .prologue
    .line 3688
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isFaceZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3689
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceZoom()V

    .line 3690
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValueForced(I)V

    .line 3694
    :goto_0
    return-void

    .line 3692
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto :goto_0
.end method

.method public pauseAudioPlayback()V
    .locals 4

    .prologue
    .line 890
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 891
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 892
    return-void
.end method

.method protected pauseMwCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 1713
    const-string v1, "Camera"

    const-string v2, "WINDOW_FOCUS_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 1715
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mwLostWinFocus:Z

    .line 1717
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 1718
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_0

    .line 1719
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForEngineStartingThread()V

    .line 1720
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForStartPreviewThreadComplete()V

    .line 1721
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentSearchingLastContentUri()V

    .line 1722
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentPictureSaving()V

    .line 1724
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_2

    .line 1725
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearTimer()V

    .line 1726
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    .line 1727
    .local v0, oldState:I
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1729
    if-eqz v0, :cond_1

    .line 1730
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1731
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 1732
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 1733
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1735
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->onPause()V

    .line 1737
    .end local v0           #oldState:I
    :cond_2
    return-void
.end method

.method public playCameraSound(II)V
    .locals 9
    .parameter "Sound"
    .parameter "loop"

    .prologue
    return-void
.end method

.method public playFaceCount(I)V
    .locals 6
    .parameter "faceCount"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 7737
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isScreenReaderActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7740
    if-gt p1, v3, :cond_1

    .line 7741
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090178

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7746
    .local v0, text:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7747
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v5, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 7751
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 7743
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090179

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_0
.end method

.method public playFocusSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 5065
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getShutterSoundEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5068
    :cond_0
    :goto_0
    return-void

    .line 5067
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_0
.end method

.method public prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V
    .locals 11
    .parameter "matrix"

    .prologue
    const/high16 v10, 0x44fa

    const/high16 v9, 0x4000

    const/high16 v6, 0x3f80

    const/4 v5, 0x1

    .line 4051
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraHolder;->getCameraInfo()[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v8

    aget-object v0, v7, v8

    .line 4052
    .local v0, info:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    iget v7, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-ne v7, v5, :cond_1

    move v1, v5

    .line 4057
    .local v1, mirror:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07009a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 4059
    .local v4, screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4060
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07009d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 4068
    .local v3, previewWidth:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07009b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 4071
    .local v2, previewHeight:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v7

    if-ne v7, v5, :cond_0

    .line 4072
    const/4 v1, 0x0

    .line 4074
    :cond_0
    if-eqz v1, :cond_4

    const/high16 v5, -0x4080

    :goto_2
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 4076
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getDisplayOrientation()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 4079
    int-to-float v5, v3

    div-float/2addr v5, v10

    int-to-float v6, v2

    div-float/2addr v6, v10

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 4080
    int-to-float v5, v3

    div-float/2addr v5, v9

    int-to-float v6, v2

    div-float/2addr v6, v9

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4083
    sub-int v5, v4, v3

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4084
    return-void

    .line 4052
    .end local v1           #mirror:Z
    .end local v2           #previewHeight:I
    .end local v3           #previewWidth:I
    .end local v4           #screenWidth:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4061
    .restart local v1       #mirror:Z
    .restart local v4       #screenWidth:I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 4063
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07009f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .restart local v3       #previewWidth:I
    goto :goto_1

    .line 4065
    .end local v3           #previewWidth:I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07009e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .restart local v3       #previewWidth:I
    goto/16 :goto_1

    .restart local v2       #previewHeight:I
    :cond_4
    move v5, v6

    .line 4074
    goto :goto_2
.end method

.method protected produceGSPersonalSettingInfoValue(Ljava/lang/String;)Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 7404
    new-instance v2, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    .line 7405
    .local v2, personalInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    .line 7407
    invoke-virtual {v2, p1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    .line 7409
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7410
    .local v0, f:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7411
    .local v1, f1:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7412
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    .line 7417
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 7427
    :goto_1
    return-object v2

    .line 7414
    :cond_1
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    goto :goto_0

    .line 7419
    :pswitch_0
    const v3, 0x7f0201da

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconResID(I)V

    goto :goto_1

    .line 7422
    :pswitch_1
    sget-object v3, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconPath(Ljava/lang/String;)V

    goto :goto_1

    .line 7417
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized refreshDeviceList()V
    .locals 7

    .prologue
    .line 6502
    monitor-enter p0

    :try_start_0
    const-string v3, "Camera"

    const-string v4, "refreshDeviceList"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6503
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    if-eqz v3, :cond_2

    .line 6504
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 6505
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLList;->invalidate()V

    .line 6506
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 6507
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0x36

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    .line 6508
    .local v1, menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 6509
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6510
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 6512
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090133

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6513
    .local v2, text:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6531
    .end local v1           #menu:Lcom/sec/android/app/camera/MenuBase;
    .end local v2           #text:Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 6517
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-class v4, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    .line 6519
    .local v0, deviceDialog:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;
    if-eqz v0, :cond_1

    .line 6520
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 6521
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->dismiss()V

    .line 6523
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090133

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6524
    .restart local v2       #text:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6502
    .end local v0           #deviceDialog:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;
    .end local v2           #text:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 6527
    .restart local v0       #deviceDialog:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->refreshDeviceList()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public resetFocus(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 5976
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 5977
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->resetFocus(Landroid/view/View;)V

    .line 5979
    :cond_0
    return-void
.end method

.method public resetPosIndicator()V
    .locals 2

    .prologue
    .line 2639
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-nez v0, :cond_1

    .line 2646
    :cond_0
    :goto_0
    return-void

    .line 2642
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->resetPosIndicator()V

    .line 2643
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2644
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->resetFaceRect()V

    goto :goto_0
.end method

.method public resetScaleDetector()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2760
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_0

    .line 2761
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 2762
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 2765
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_1

    .line 2766
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 2767
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 2768
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 2772
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startContinuousAF()V

    .line 2774
    return-void
.end method

.method public resetToDefaultSettings()V
    .locals 1

    .prologue
    .line 5087
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 5088
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopEngine()V

    .line 5090
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleResetSettings()V

    .line 5092
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 5093
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 5094
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    .line 5096
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 5098
    return-void
.end method

.method public resetTouchFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5960
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5961
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 5964
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_1

    .line 5965
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 5967
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5968
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 5970
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 5971
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 5972
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 5973
    return-void
.end method

.method public resizeForPreviewAspectRatio()Z
    .locals 8

    .prologue
    .line 3808
    const-string v4, "Camera"

    const-string v5, "resizeForPreviewAspectRatio"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    const/4 v2, 0x0

    .line 3814
    .local v2, result:Z
    const v4, 0x7f0b0009

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 3818
    .local v1, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 3821
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    .line 3822
    .local v3, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v0

    .line 3823
    .local v0, height:I
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resizeForPreviewAspectRatio - width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    int-to-double v4, v3

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setAspectRatio(D)Z

    move-result v2

    .line 3834
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 3836
    return v2
.end method

.method public restartTouchAF()V
    .locals 0

    .prologue
    .line 2583
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->cancelTouchAutoFocus()V

    .line 2584
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->restartTouchAutoFocus()V

    .line 2585
    return-void
.end method

.method public restartTouchAutoFocus()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2589
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    if-eqz v8, :cond_0

    .line 2591
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 2593
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getTouchFocusRectCenterX()I

    move-result v1

    .line 2594
    .local v1, TouchFocusRectCenterX:I
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getTouchFocusRectCenterY()I

    move-result v2

    .line 2595
    .local v2, TouchFocusRectCenterY:I
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v8, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTouchFocusRectCenter(II)V

    .line 2597
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getLeft()I

    move-result v5

    .line 2598
    .local v5, leftMargin:I
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getRight()I

    move-result v6

    .line 2599
    .local v6, rightMargin:I
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getTop()I

    move-result v7

    .line 2600
    .local v7, topMargin:I
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getBottom()I

    move-result v4

    .line 2609
    .local v4, bottomMargin:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2610
    sub-int v0, v1, v5

    .line 2611
    .local v0, NormalPtX:I
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8, v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setTouchFocusPosition(II)V

    .line 2619
    .end local v0           #NormalPtX:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->shrinkFocusRect()V

    .line 2620
    iput v10, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    .line 2621
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 2623
    .end local v1           #TouchFocusRectCenterX:I
    .end local v2           #TouchFocusRectCenterY:I
    .end local v4           #bottomMargin:I
    .end local v5           #leftMargin:I
    .end local v6           #rightMargin:I
    .end local v7           #topMargin:I
    :cond_0
    iput-boolean v10, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 2625
    return-void

    .line 2614
    .restart local v1       #TouchFocusRectCenterX:I
    .restart local v2       #TouchFocusRectCenterY:I
    .restart local v4       #bottomMargin:I
    .restart local v5       #leftMargin:I
    .restart local v6       #rightMargin:I
    .restart local v7       #topMargin:I
    :cond_1
    sub-int v3, v2, v7

    .line 2615
    .local v3, WidePtY:I
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8, v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setTouchFocusPosition(II)V

    goto :goto_0
.end method

.method public restoreNfcState()V
    .locals 3

    .prologue
    .line 7722
    const-string v0, "com.sec.android.directconnect"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTopActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.nfc"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTopActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7734
    :cond_0
    :goto_0
    return-void

    .line 7726
    :cond_1
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreNfcState : mNfcState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mNfcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAndroidBeamState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mAndroidBeamState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7728
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mNfcState:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->androidBeamController(ZI)V

    .line 7730
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mAndroidBeamState:Z

    if-nez v0, :cond_0

    .line 7731
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->setAndroidBeamDisabled()V

    goto :goto_0
.end method

.method public resumeAudioPlayback()V
    .locals 2

    .prologue
    .line 895
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 897
    return-void
.end method

.method protected resumeMwCamera()V
    .locals 4

    .prologue
    const/16 v3, 0x1f4

    .line 1707
    const-string v0, "Camera"

    const-string v1, "WINDOW_FOCUS_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 1709
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1710
    return-void
.end method

.method public runComfirmedDialog(Lcom/samsung/shareshot/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 6778
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Notice"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has accepted your request!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/sec/android/app/camera/Camera$22;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$22;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 6785
    return-void
.end method

.method public runDialog(Lcom/samsung/shareshot/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 6788
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Share with request"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wants to share image with you. Continue?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/sec/android/app/camera/Camera$24;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/Camera$24;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/User;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/sec/android/app/camera/Camera$23;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/Camera$23;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/User;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 6813
    return-void
.end method

.method public saveDataToFile(Ljava/lang/String;[B)Z
    .locals 5
    .parameter "filePath"
    .parameter "data"

    .prologue
    .line 5673
    const/4 v1, 0x0

    .line 5675
    .local v1, f:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5676
    .end local v1           #f:Ljava/io/FileOutputStream;
    .local v2, f:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 5680
    if-eqz v2, :cond_0

    .line 5682
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5688
    :cond_0
    :goto_0
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v3

    .line 5677
    :catch_0
    move-exception v0

    .line 5678
    .local v0, e:Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    .line 5680
    if-eqz v1, :cond_1

    .line 5682
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 5683
    :catch_1
    move-exception v4

    goto :goto_1

    .line 5680
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 5682
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 5685
    :cond_2
    :goto_4
    throw v3

    .line 5683
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_4

    .line 5680
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 5677
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public searchUser(Lcom/samsung/dmc/ux/db/UserInfo;)Lcom/samsung/shareshot/User;
    .locals 7
    .parameter "gsUserInfo"

    .prologue
    .line 6816
    const/4 v3, 0x0

    .line 6817
    .local v3, user:Lcom/samsung/shareshot/User;
    const/4 v2, 0x0

    .line 6819
    .local v2, searchInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v4

    .line 6820
    .local v4, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6821
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    .line 6822
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    .line 6823
    if-eqz v2, :cond_0

    .line 6824
    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    .line 6833
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v4           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_0
    return-object v5

    .line 6830
    :catch_0
    move-exception v5

    .line 6833
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public searchUser(Ljava/lang/String;)Lcom/samsung/shareshot/User;
    .locals 7
    .parameter "userIP"

    .prologue
    .line 6903
    const/4 v4, 0x0

    .line 6904
    .local v4, user:Lcom/samsung/shareshot/User;
    const/4 v3, 0x0

    .line 6907
    .local v3, searchInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v6}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v5

    .line 6908
    .local v5, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6909
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6910
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v4, v0

    .line 6911
    invoke-virtual {v4}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    .line 6912
    if-eqz v3, :cond_0

    .line 6913
    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6915
    monitor-exit v5

    move-object v6, v4

    .line 6925
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_0
    return-object v6

    .line 6919
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .restart local v5       #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :cond_1
    monitor-exit v5

    .line 6925
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 6919
    .restart local v5       #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6920
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :catch_0
    move-exception v1

    .line 6922
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public searchUser(Ljava/util/List;II)Lcom/samsung/shareshot/User;
    .locals 7
    .parameter
    .parameter "userID"
    .parameter "selected"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;II)",
            "Lcom/samsung/shareshot/User;"
        }
    .end annotation

    .prologue
    .line 6837
    .local p1, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    const/4 v3, 0x0

    .line 6838
    .local v3, user:Lcom/samsung/shareshot/User;
    const/4 v2, 0x0

    .line 6839
    .local v2, searchInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " this user list have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " userID is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6840
    monitor-enter p1

    .line 6841
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6842
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    .line 6843
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    .line 6844
    if-eqz v2, :cond_0

    .line 6845
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v4

    if-ne p2, v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v4

    if-ne p3, v4, :cond_0

    .line 6846
    monitor-exit p1

    move-object v4, v3

    .line 6850
    :goto_0
    return-object v4

    .line 6849
    :cond_1
    monitor-exit p1

    .line 6850
    const/4 v4, 0x0

    goto :goto_0

    .line 6849
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setBurstStopping(Z)V
    .locals 0
    .parameter "stop"

    .prologue
    .line 4762
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mIsBurstStopping:Z

    .line 4763
    return-void
.end method

.method public setConnectingStateGPS(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 6071
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 6072
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setConnectingStateGPS(I)V

    .line 6073
    :cond_0
    return-void
.end method

.method public setDefaultLayout()V
    .locals 0

    .prologue
    .line 5083
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateUIWhenDefaultLayout()V

    .line 5084
    return-void
.end method

.method public setGuideLineSize(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 7159
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 7160
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setGuideLineSize(Landroid/view/View;)V

    .line 7161
    :cond_0
    return-void
.end method

.method public setHDRShotModeChanged(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 5464
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setHDRShotModeChanged(I)V

    .line 5465
    return-void
.end method

.method public setIsLaunchGallery(Z)V
    .locals 0
    .parameter "chkLaunchGallery"

    .prologue
    .line 2782
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    .line 2783
    return-void
.end method

.method public setLastCapturedTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 5653
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setLastCapturedTitle(Ljava/lang/String;)V

    .line 5654
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 5649
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setLastContentUri(Landroid/net/Uri;)V

    .line 5650
    return-void
.end method

.method public setNZSLBurstStopping(Z)V
    .locals 0
    .parameter "stop"

    .prologue
    .line 4766
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mIsNZSLBurstStopping:Z

    .line 4767
    return-void
.end method

.method public setOnUserSelected(Lcom/sec/android/app/camera/Camera$OnUserSelected;I)V
    .locals 2
    .parameter "l"
    .parameter "position"

    .prologue
    .line 6895
    const-string v0, "Camera"

    const-string v1, "set on user selceted listen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6896
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6897
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6898
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6899
    return-void
.end method

.method public setPinupMode(Z)V
    .locals 0
    .parameter "pinupMode"

    .prologue
    .line 7700
    iput-boolean p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsPinupMode:Z

    .line 7701
    return-void
.end method

.method public setSelectedMenuId(I)V
    .locals 1
    .parameter "commandId"

    .prologue
    .line 2777
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 2778
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setSelectedMenuId(I)V

    .line 2779
    :cond_0
    return-void
.end method

.method public setShutterSoundToDefault()V
    .locals 2

    .prologue
    .line 3579
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setOnShutterSound(I)V

    .line 3580
    return-void
.end method

.method public setSurfaceTransparent()V
    .locals 4

    .prologue
    const/16 v3, 0x1f6

    .line 1740
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    if-eqz v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 1742
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1744
    :cond_0
    return-void
.end method

.method public setTouchAutoFocusActive(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 2791
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    .line 2795
    return-void
.end method

.method public setWaitBurstShot(Z)V
    .locals 0
    .parameter "waitBurst"

    .prologue
    .line 4770
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mIsWaitBurstShot:Z

    .line 4771
    return-void
.end method

.method public setWeatherConnect(Z)V
    .locals 1
    .parameter "connect"

    .prologue
    .line 7690
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    if-eqz v0, :cond_0

    .line 7691
    if-eqz p1, :cond_1

    .line 7692
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->Connect()V

    .line 7697
    :cond_0
    :goto_0
    return-void

    .line 7694
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->Disconnect()V

    goto :goto_0
.end method

.method public showBurstShotsGuideDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 7529
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7577
    :cond_0
    :goto_0
    return-void

    .line 7532
    :cond_1
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create showBurstShotsGuideDialog - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getBurstShotsGuideTextDialog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7533
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getBurstShotsGuideTextDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 7534
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7535
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 7537
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 7538
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 7539
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 7541
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 7551
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x18

    if-ne v5, v6, :cond_2

    .line 7552
    const v5, 0x7f090142

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7553
    const v5, 0x7f09014c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 7559
    :goto_1
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7560
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7562
    new-instance v5, Lcom/sec/android/app/camera/Camera$35;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camera$35;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 7569
    const v5, 0x7f0900a8

    new-instance v6, Lcom/sec/android/app/camera/Camera$36;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camera$36;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7574
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    .line 7575
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 7555
    :cond_2
    const v5, 0x7f090033

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7556
    const v5, 0x7f09014a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public showEditBackground(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 6430
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 6431
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showEditBackground(Z)V

    .line 6433
    :cond_0
    return-void
.end method

.method public showFaceZoomGuideDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 7492
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7526
    :cond_0
    :goto_0
    return-void

    .line 7495
    :cond_1
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create showFaceZoomGuideDialog - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getFaceZoomHelpTextDialog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7496
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFaceZoomHelpTextDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 7497
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7498
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 7500
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 7501
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 7502
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 7504
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f090149

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 7506
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 7507
    const v5, 0x7f09007c

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7508
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7509
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7511
    new-instance v5, Lcom/sec/android/app/camera/Camera$33;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camera$33;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 7518
    const v5, 0x7f0900a8

    new-instance v6, Lcom/sec/android/app/camera/Camera$34;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camera$34;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7523
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    .line 7524
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showFocusIndicator(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2655
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 2656
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator(I)V

    .line 2658
    :cond_0
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 7186
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 7187
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const v1, 0x7f090153

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceHelpText(I)V

    .line 7188
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showHelpText()V

    .line 7190
    :cond_0
    return-void
.end method

.method public showSideMenu()V
    .locals 1

    .prologue
    .line 6362
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showSideMenu()V

    .line 6363
    return-void
.end method

.method public showSideMenuItems()V
    .locals 1

    .prologue
    .line 6353
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 6354
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showSideMenuItems()V

    .line 6355
    :cond_0
    return-void
.end method

.method public showStorageForBurstDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 7587
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mStorageForBurstDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mStorageForBurstDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7629
    :cond_0
    :goto_0
    return-void

    .line 7590
    :cond_1
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create showStorageForBurstDialog - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getStorageForBurstDialog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7591
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getStorageForBurstDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 7592
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7593
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 7595
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 7596
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 7597
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 7599
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f09013e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 7601
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 7602
    const v5, 0x7f0900c8

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7603
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7604
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7606
    new-instance v5, Lcom/sec/android/app/camera/Camera$37;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camera$37;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 7613
    const v5, 0x7f0900a8

    new-instance v6, Lcom/sec/android/app/camera/Camera$38;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camera$38;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7619
    const v5, 0x7f0900e2

    new-instance v6, Lcom/sec/android/app/camera/Camera$39;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camera$39;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7626
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mStorageForBurstDialog:Landroid/app/AlertDialog;

    .line 7627
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mStorageForBurstDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showWifiConnectionDialog()V
    .locals 1

    .prologue
    .line 3039
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->showDialog(I)V

    .line 3040
    return-void
.end method

.method public shrinkFocusRect()V
    .locals 1

    .prologue
    .line 2634
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 2635
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->shrinkFocusRect()V

    .line 2636
    :cond_0
    return-void
.end method

.method public shutterButtonCancelAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6396
    const-string v0, "Camera"

    const-string v1, "shutterButtonCancelAction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6398
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setAutoExposureLockIfSupported(Z)V

    .line 6399
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setAutoWhiteBalanceLockIfSupported(Z)V

    .line 6401
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 6402
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->setWaitBurstShot(Z)V

    .line 6403
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 6411
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isBestPicMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6412
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 6413
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 6414
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 6416
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isBestPicMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6417
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_2

    .line 6421
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShot()V

    .line 6427
    :cond_3
    :goto_0
    return-void

    .line 6422
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6423
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShot()V

    .line 6424
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6425
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    goto :goto_0
.end method

.method public declared-synchronized startBlinkShutterAnimation()V
    .locals 7

    .prologue
    .line 6311
    monitor-enter p0

    const v0, 0x7f0b0009

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 6316
    .local v6, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getLeft()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getTop()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 6318
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 6320
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/Camera$15;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$15;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setProgressListener(Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;)V

    .line 6335
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->startCustomAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6336
    monitor-exit p0

    return-void

    .line 6311
    .end local v6           #previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startContinuousAF()V
    .locals 1

    .prologue
    .line 7164
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 7165
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->startContinuousAF()V

    .line 7166
    :cond_0
    return-void
.end method

.method public declared-synchronized startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 6185
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    .line 6276
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 6190
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 6191
    .local v0, orientation:I
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPostCaptureAnimation - OrientationForPicture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6193
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v1, :cond_0

    .line 6194
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v1, Lcom/sec/android/app/camera/CameraEngine;->lockObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6195
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6196
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 6198
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 6273
    .end local v0           #orientation:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 6185
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startSingleBurstShot()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4778
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4779
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopContinuousAF()V

    .line 4780
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->createBurstMenu()V

    .line 4781
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 4782
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 4783
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V

    .line 4784
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setSingleShotBurst(Z)V

    .line 4785
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    .line 4787
    :cond_1
    return-void
.end method

.method public declared-synchronized stopBlinkShutterAnimation()V
    .locals 2

    .prologue
    .line 6339
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v0, :cond_1

    .line 6340
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 6341
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 6342
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 6343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6345
    :cond_1
    monitor-exit p0

    return-void

    .line 6339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopBurstShot()V
    .locals 1

    .prologue
    .line 7212
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 7213
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopBurstShot()V

    .line 7214
    :cond_0
    return-void
.end method

.method public stopCameraSound(I)V
    .locals 2
    .parameter "Sound"

    .prologue
    .line 5071
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 5072
    const-string v0, "Camera"

    const-string v1, "stopCameraSound - mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5080
    :goto_0
    return-void

    .line 5075
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    if-nez v0, :cond_1

    .line 5076
    const-string v0, "Camera"

    const-string v1, "stopCameraSound - mStreamId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5079
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0
.end method

.method public stopContinuousAF()V
    .locals 1

    .prologue
    .line 7169
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 7170
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopContinuousAF()V

    .line 7171
    :cond_0
    return-void
.end method

.method public updateIfResolutionChanged()V
    .locals 3

    .prologue
    .line 3378
    const-string v0, "Camera"

    const-string v1, "updateIfResolutionChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3381
    const-string v0, "Camera"

    const-string v1, "resolution is changed. update for new resolution"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 3384
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 3385
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 3387
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3390
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 3393
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->updateSideMenuBackground(I)V

    .line 3394
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 3395
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isFaceZoomed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3396
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceZoom()V

    .line 3398
    :cond_1
    return-void
.end method

.method public updateRemainTime()V
    .locals 4

    .prologue
    .line 6008
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getRemainStorage()I

    move-result v0

    .line 6010
    .local v0, nRemainCount:I
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_0

    .line 6011
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRemainCount(I)V

    .line 6013
    :cond_0
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRemainStorageIndicator("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6014
    return-void
.end method

.method public updateSideMenuBackground(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 3401
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 3402
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3403
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideBackground()V

    .line 3410
    :cond_0
    :goto_0
    return-void

    .line 3407
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showBackground()V

    goto :goto_0
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter "data"
    .parameter "orientation"

    .prologue
    .line 6174
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6181
    :cond_0
    :goto_0
    return-void

    .line 6178
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 6179
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    goto :goto_0
.end method

.method public updateUIWhenDefaultLayout()V
    .locals 6

    .prologue
    const/16 v5, 0x28

    .line 5101
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->resetLayout()V

    .line 5103
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0x29

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 5104
    .local v2, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    if-eqz v2, :cond_0

    .line 5105
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshEditableMenu()V

    .line 5106
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 5108
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 5109
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v0, :cond_2

    .line 5110
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 5118
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 5119
    return-void

    .line 5112
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    .line 5113
    .local v1, editableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;
    if-eqz v1, :cond_1

    .line 5114
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEditableShortcutOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUIWhenResetSettings()V
    .locals 6

    .prologue
    const/16 v5, 0x28

    .line 5122
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 5123
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->updateSideMenuBackground(I)V

    .line 5124
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 5125
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 5126
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 5127
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->closeVisibleViews()V

    .line 5128
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearInvisibleViews()V

    .line 5130
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 5131
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v0, :cond_3

    .line 5132
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 5140
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0x29

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 5141
    .local v2, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    if-eqz v2, :cond_1

    .line 5142
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshEditableMenu()V

    .line 5143
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 5146
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v3, :cond_2

    .line 5147
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 5149
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 5150
    return-void

    .line 5134
    .end local v2           #sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    .line 5135
    .local v1, editableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;
    if-eqz v1, :cond_0

    .line 5136
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEditableShortcutOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUIWhenSwitchCamera()V
    .locals 1

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 3014
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 3015
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->updateSideMenuBackground(I)V

    .line 3016
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 3021
    return-void
.end method

.method public wakeupToSnSMod()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    .line 6930
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "IntentExtraMessageType"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6931
    .local v1, intent_extra_message:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "ActivateConfirm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6932
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mRespondNoti:Z

    .line 6933
    const-string v2, "Camera"

    const-string v3, " will wake up camera to deal with share with request"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6934
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onRespondSharewithNotify()V

    .line 6940
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 6941
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/sec/android/app/camera/Camera$25;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/Camera$25;-><init>(Lcom/sec/android/app/camera/Camera;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6954
    :cond_1
    :goto_1
    return-void

    .line 6935
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isfromhistory"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6936
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    goto :goto_0

    .line 6950
    :catch_0
    move-exception v0

    .line 6952
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method
