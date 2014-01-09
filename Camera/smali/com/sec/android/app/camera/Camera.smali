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
.implements Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Camera$VoiceRecognizer;,
        Lcom/sec/android/app/camera/Camera$UserWrapper;,
        Lcom/sec/android/app/camera/Camera$OnUserSelected;,
        Lcom/sec/android/app/camera/Camera$LastContentUriCallback;,
        Lcom/sec/android/app/camera/Camera$MainHandler;,
        Lcom/sec/android/app/camera/Camera$GestureListener;
    }
.end annotation


# static fields
.field private static final ACTION_MOVE_SENSITIVITY:I = 0x5

.field public static final ACTIVE_REQUEST_TIMEOUT:I = 0xce

.field public static final ACTIVE_USER:I = 0xcb

.field private static final AF_WAIT_TIMER_EXPIRED:I = 0x2

.field private static final BURST_SHOT_WAIT_DURATION:I = 0x15e

.field public static final CANCEL_ACTIVE_USER:I = 0xcc

.field private static final DELAY_TIME_TO_START_AUTO_FOCUS:I = 0x15e

.field private static final DM_CAMERA_OFF:I = 0x0

.field private static final DM_CAMERA_ON:I = 0x1

.field public static final FILE_USER_PHOTO_DIR:Ljava/lang/String; = "/sdcard/Android/data/com.sec.android.app.camera"

.field public static final FILE_USER_PHOTO_PATH:Ljava/lang/String; = "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

.field public static final FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String; = "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

.field private static final HALF_SHUTTER_DURATION:I = 0x12c

.field private static final INTENT_MSG_SECURITY:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field private static final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String; = "voice_input_control"

.field private static final KEY_VOICE_INPUT_CONTROL_CAMERA:Ljava/lang/String; = "voice_input_control_camera"

.field private static MAX_SIMULTANEOUS_CAPTURE:I = 0x0

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

.field public static SHUTTER_SOUND_SHORT:I = 0x0

.field private static final START_AUTO_FOCUS:I = 0x5

.field private static final START_BURST_SHOT:I = 0x12c

.field public static SnS_RECV_FOLDER:Ljava/lang/String; = null

.field protected static final TAG:Ljava/lang/String; = "Camera"

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

.field protected mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

.field private mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mCheckStorageForBurstShot:Z

.field private mChkAllowFocusTouch:Z

.field private mChkLaunchGallery:Z

.field private mCropValue:Ljava/lang/String;

.field public mDeviceList:Lcom/sec/android/glview/TwGLList;

.field public mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mDirtyCount:I

.field private mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

.field private mFinishOnCreate:Z

.field private mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

.field private mGestureDetecor:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/sec/android/app/camera/Camera$GestureListener;

.field mHideScaleZoomRect:Ljava/lang/Runnable;

.field private mIfBackToPreMode:Z

.field private mInitialZoomValueOnScaleBegin:I

.field private mIsDestroying:Z

.field private mIsTouchFocusStarted:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastCaptureRawData:[B

.field private mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

.field protected mLowBatteryDisableFlashPopupDisplayed:Z

.field private mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

.field public mName:Ljava/lang/String;

.field public mNameChanged:Z

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

.field public mPhotoPath:Ljava/lang/String;

.field private mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mPreMode:I

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

.field private mStreamId:[I

.field private mStreamVolume:F

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

.field protected mWeather:Lcom/sec/android/app/camera/Weather;

.field public sobject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 259
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

    .line 288
    sput v2, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    .line 290
    sput v2, Lcom/sec/android/app/camera/Camera;->MAX_SIMULTANEOUS_CAPTURE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;-><init>()V

    .line 184
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 185
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 187
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    .line 189
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    .line 190
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    .line 195
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    .line 196
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    .line 201
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 209
    iput v4, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    .line 210
    iput v4, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    .line 212
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z

    .line 213
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    .line 215
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 216
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 230
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    .line 247
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 268
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 272
    const-string v0, " "

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    .line 273
    const-string v0, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 275
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 276
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mRespondNoti:Z

    .line 277
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mNotify:Z

    .line 278
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mRespond:Z

    .line 280
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    .line 281
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mPreMode:I

    .line 282
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReceiveImagePath:Ljava/lang/String;

    .line 283
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mReceived:Z

    .line 284
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    .line 286
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mCheckStorageForBurstShot:Z

    .line 294
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 297
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    .line 299
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    .line 305
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    .line 396
    new-instance v0, Lcom/sec/android/app/camera/Camera$GestureListener;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/Camera$GestureListener;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGestureListener:Lcom/sec/android/app/camera/Camera$GestureListener;

    .line 397
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGestureDetecor:Landroid/view/GestureDetector;

    .line 501
    new-instance v0, Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 504
    new-instance v0, Lcom/sec/android/app/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$1;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    .line 578
    new-instance v0, Lcom/sec/android/app/camera/Camera$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$2;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 730
    new-instance v0, Lcom/sec/android/app/camera/Camera$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$3;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2076
    new-instance v0, Lcom/sec/android/app/camera/Camera$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$5;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 4258
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 5142
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    .line 5143
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    .line 5144
    new-instance v0, Lcom/sec/android/app/camera/Camera$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$12;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    .line 5174
    new-instance v0, Lcom/sec/android/app/camera/Camera$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$13;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    .line 5243
    new-instance v0, Lcom/sec/android/app/camera/Camera$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$14;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    .line 5501
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    .line 5748
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    .line 5749
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 6044
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/Camera;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/Camera;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/camera/Camera;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mReturnUri:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isScreenReaderActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLAniViewGroup;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/shareshot/IShareShotCallbackRegister;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/IShareShotCallbackRegister;)Lcom/samsung/shareshot/IShareShotCallbackRegister;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/shareshot/IShareShotServiceCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/Camera;Lcom/samsung/dmc/ux/db/UserInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->onReceiveActivateMsg(Lcom/samsung/dmc/ux/db/UserInfo;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/Camera;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/android/app/camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput p1, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    return p1
.end method

.method static synthetic access$504(Lcom/sec/android/app/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;

    return-object p1
.end method

.method private checkBatteryStatus()V
    .locals 2

    .prologue
    .line 3028
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3029
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3030
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3031
    return-void
.end method

.method private createCaptureBitmap([B)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "data"

    .prologue
    .line 4410
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getTempJpegPath()Ljava/lang/String;

    move-result-object v2

    .line 4411
    .local v2, filepath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 4412
    .local v1, degree:I
    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/Camera;->saveDataToFile(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4413
    invoke-static {v2}, Lcom/sec/android/app/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 4414
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 4418
    :cond_0
    const v3, 0xc800

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4419
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4420
    return-object v0
.end method

.method private getUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5975
    const/4 v1, 0x0

    .line 5977
    .local v1, info:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v2, :cond_0

    .line 5978
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v2}, Lcom/samsung/shareshot/IShareShotService;->getLocalPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5983
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 5984
    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 5987
    :goto_1
    return-object v2

    .line 5979
    :catch_0
    move-exception v0

    .line 5981
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5987
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090120

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

    .line 3034
    const-string v3, "status"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3035
    .local v1, battStatus:I
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    .line 3036
    const-string v3, "level"

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    .line 3037
    const-string v3, "plugged"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3038
    .local v0, battPlugged:I
    const-string v3, "temperature"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3040
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

    .line 3042
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3043
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->bFlagOverheat:Z

    if-ne v3, v7, :cond_9

    .line 3044
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->bFlagOverheat:Z

    .line 3045
    const/16 v3, 0x1e0

    if-lt v2, v3, :cond_0

    .line 3046
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->handleBatteryOverheat()V

    .line 3056
    :cond_0
    :goto_0
    if-gt v2, v8, :cond_1

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    sget v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_TEMP_FLASH_THRESHOLD_VALUE:I

    if-gt v3, v4, :cond_1

    .line 3057
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v3, :cond_1

    .line 3058
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 3059
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V

    .line 3076
    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryWarningLevel:I

    if-gt v3, v4, :cond_3

    .line 3078
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    sget v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v3, v4, :cond_a

    .line 3079
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3080
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 3082
    :cond_2
    iput-object v9, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 3084
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 3085
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->handleLowBattery(Z)V

    .line 3097
    :cond_3
    :goto_1
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryWarningLevel:I

    if-le v3, v4, :cond_5

    if-le v2, v8, :cond_5

    .line 3098
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3099
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 3101
    :cond_4
    iput-object v9, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 3103
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-eqz v3, :cond_5

    .line 3104
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 3105
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 3123
    :cond_5
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    mul-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/Camera;->mBatteryLevel:I

    .line 3124
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->bIsCharging:Z

    .line 3125
    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    if-ne v0, v7, :cond_7

    .line 3126
    :cond_6
    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camera;->bIsCharging:Z

    .line 3128
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v3, :cond_8

    .line 3129
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->mBatteryLevel:I

    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->bIsCharging:Z

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setBatteryLevel(IZ)V

    .line 3132
    :cond_8
    return-void

    .line 3049
    :cond_9
    const/16 v3, 0x1fe

    if-lt v2, v3, :cond_0

    .line 3050
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->handleBatteryOverheat()V

    goto/16 :goto_0

    .line 3088
    :cond_a
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v3, :cond_3

    .line 3089
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 3090
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V

    goto :goto_1
.end method

.method private handlePluggedLowBattery(Z)V
    .locals 5
    .parameter "temp"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 5073
    const-string v1, "Camera"

    const-string v2, "handlePluggedLowBattery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5075
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5118
    :goto_0
    return-void

    .line 5078
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5079
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5080
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 5081
    if-eqz p1, :cond_3

    .line 5082
    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5086
    :goto_1
    const v1, 0x7f090017

    new-instance v2, Lcom/sec/android/app/camera/Camera$10;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$10;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5092
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5093
    new-instance v1, Lcom/sec/android/app/camera/Camera$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$11;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 5109
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 5110
    if-eqz p1, :cond_1

    .line 5111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 5112
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 5113
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_2

    .line 5114
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 5116
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 5117
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 5084
    :cond_3
    const v1, 0x7f0900fc

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

    .line 3962
    const-string v5, "Camera"

    const-string v6, "handleShutterKey"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
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

    .line 3966
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

    .line 3969
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v5, :cond_0

    .line 3971
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 3975
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 3976
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 3980
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    if-ne v5, v11, :cond_2

    .line 3981
    const-string v4, "Camera"

    const-string v5, "handleShutterKey - CE_STATE_STARTING_PREVIEW"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    :cond_1
    :goto_0
    return v3

    .line 3985
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3986
    const-string v3, "Camera"

    const-string v5, "returning because it is capturing.."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 3987
    goto :goto_0

    .line 3990
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-ne v5, v11, :cond_5

    .line 3991
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x2c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 3992
    .local v2, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    if-nez v2, :cond_4

    move v3, v4

    .line 3993
    goto :goto_0

    .line 3994
    :cond_4
    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;)V

    .line 3995
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3996
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v3, v4

    .line 3997
    goto :goto_0

    .line 4001
    .end local v2           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-ne v5, v10, :cond_8

    .line 4002
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 4003
    .local v1, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v1, :cond_6

    .line 4004
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .end local v1           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, p0, v9, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 4005
    .restart local v1       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4007
    :cond_6
    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;)V

    .line 4008
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->isPanoramaCapturing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4009
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v3

    if-ge v3, v10, :cond_7

    move v3, v4

    .line 4010
    goto :goto_0

    .line 4011
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v3, v4

    .line 4012
    goto/16 :goto_0

    .line 4016
    .end local v1           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
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

    if-ne v5, v6, :cond_f

    .line 4018
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x3b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4019
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

    .line 4020
    goto/16 :goto_0

    .line 4022
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

    .line 4024
    :cond_d
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    :goto_1
    move v3, v4

    .line 4027
    goto/16 :goto_0

    .line 4026
    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    goto :goto_1

    .line 4028
    .end local v0           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x17

    if-ne v5, v6, :cond_10

    .line 4029
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v3, v4

    .line 4030
    goto/16 :goto_0

    .line 4031
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

    .line 4032
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4033
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startBurstShotTimer()V

    goto/16 :goto_0
.end method

.method private handleShutterKeyReleased()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x2a

    const/4 v3, 0x1

    .line 4040
    const-string v4, "Camera"

    const-string v5, "handleShutterKeyReleased"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4043
    const-string v4, "Camera"

    const-string v5, "handleShutterKeyReleased - returning because it is capturing.."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    :cond_0
    :goto_0
    return v3

    .line 4047
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 4048
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 4049
    .local v1, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v1, :cond_2

    .line 4050
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .end local v1           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, p0, v6, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 4051
    .restart local v1       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4053
    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->isPanoramaCapturing()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v4

    if-ge v4, v7, :cond_3

    .line 4054
    const-string v4, "Camera"

    const-string v5, "handleShutterKeyReleased - panorama can be saved at least two shot"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4059
    .end local v1           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 4060
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x2c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 4061
    .local v2, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    if-eqz v2, :cond_0

    .line 4063
    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;)V

    .line 4064
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4065
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4067
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    goto :goto_0

    .line 4070
    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->stopSmileShot()V

    .line 4071
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopSmileDetection()V

    .line 4072
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto/16 :goto_0

    .line 4075
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

    .line 4076
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartSmileDetection()V

    .line 4077
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto/16 :goto_0

    .line 4082
    .end local v2           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v4

    if-ne v4, v3, :cond_8

    .line 4084
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isShowingBurstShotDialog()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4086
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4087
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x3b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4088
    .local v0, burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    .line 4091
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 4093
    .end local v0           #burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShotTimer()V

    .line 4096
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private initIntentFilter()V
    .locals 9

    .prologue
    .line 857
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 860
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 861
    const-string v7, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 862
    const-string v7, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 863
    const-string v7, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 864
    const-string v7, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 865
    const-string v7, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 866
    const-string v7, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 867
    const-string v7, "file"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 868
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 871
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 872
    .local v4, intentFilterSecurity:Landroid/content/IntentFilter;
    const-string v7, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 876
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 877
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 878
    .local v3, intentFilterSMSReceives:Landroid/content/IntentFilter;
    const-string v7, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 879
    const-string v7, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 880
    const-string v7, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 881
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v3}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 885
    .end local v3           #intentFilterSMSReceives:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 886
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 887
    .local v2, intentFilterDcmoSet:Landroid/content/IntentFilter;
    const-string v7, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 888
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v2}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 892
    .end local v2           #intentFilterDcmoSet:Landroid/content/IntentFilter;
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 893
    .local v0, i:Landroid/content/IntentFilter;
    const-string v7, "com.android.shoot.userchanged"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 894
    const-string v7, "com.android.shootshare.recvfile"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 895
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 897
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 898
    .local v6, wifiDirectFilter:Landroid/content/IntentFilter;
    const-string v7, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 899
    const-string v7, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 900
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v6}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 903
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 904
    .local v5, intentFilterShutdown:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 905
    const-string v7, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 906
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v5}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 909
    new-instance v7, Landroid/content/Intent;

    const-string v8, "intent.stop.app-in-app"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 912
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.sec.android.app.voicerecorder.rec_save"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 914
    return-void
.end method

.method private initIntentFilterBattery()V
    .locals 2

    .prologue
    .line 918
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 919
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 920
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 921
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 922
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 923
    return-void
.end method

.method private initIntentReceive()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 958
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 960
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 961
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 962
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 963
    const-string v1, "return-uri"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mReturnUri:Z

    .line 964
    const-string v1, "skip-savediscard"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z

    .line 969
    :goto_0
    return-void

    .line 967
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

    .line 927
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;)V

    .line 928
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnFacePositionChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFacePositionChangedListener;)V

    .line 929
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V

    .line 931
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    .line 933
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->initGPSIndicator()V

    .line 936
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 938
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 940
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGestureListener:Lcom/sec/android/app/camera/Camera$GestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGestureDetecor:Landroid/view/GestureDetector;

    .line 941
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGestureDetecor:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGestureListener:Lcom/sec/android/app/camera/Camera$GestureListener;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 943
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 944
    return-void
.end method

.method private isScreenReaderActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 310
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

    .line 315
    :cond_1
    :goto_0
    return v0

    .line 312
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

    .line 315
    goto :goto_0
.end method

.method private isTouchAutoFocusEnabled()Z
    .locals 3

    .prologue
    .line 2131
    const/4 v0, 0x0

    .line 2132
    .local v0, shootingmode:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2149
    :cond_0
    :goto_0
    return v0

    .line 2143
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

    .line 2145
    const/4 v0, 0x1

    goto :goto_0

    .line 2132
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
    .locals 9
    .parameter "start"

    .prologue
    const/4 v8, 0x1

    .line 5201
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " manageLocalService "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5202
    if-nez p1, :cond_5

    .line 5203
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v5, :cond_1

    .line 5241
    :cond_0
    :goto_0
    return-void

    .line 5205
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    if-eqz v5, :cond_0

    .line 5208
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v5

    if-nez v5, :cond_2

    .line 5209
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->leaveOut()V

    .line 5211
    :cond_2
    const-string v5, "Camera"

    const-string v6, " unbind service"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5212
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    invoke-interface {v5, v6}, Lcom/samsung/shareshot/IShareShotCallbackRegister;->unregisterCallback(Lcom/samsung/shareshot/IShareShotServiceCallback;)Z

    .line 5213
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isWifiDirectConnected()Z

    move-result v5

    if-nez v5, :cond_4

    .line 5214
    :cond_3
    const-string v5, "Camera"

    const-string v6, " stop service"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5215
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V

    .line 5216
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5218
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5219
    .local v2, callbackUnbindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->stopService(Landroid/content/Intent;)Z

    .line 5220
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5221
    .local v4, unbindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5222
    .end local v2           #callbackUnbindIntent:Landroid/content/Intent;
    .end local v4           #unbindIntent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 5223
    .local v3, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v5, "Camera"

    const-string v6, " service null exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 5229
    .end local v3           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 5230
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5226
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V

    .line 5227
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 5232
    :cond_5
    if-ne p1, v8, :cond_0

    .line 5233
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5234
    .local v1, callbackBindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5235
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v5, v8}, Lcom/sec/android/app/camera/Camera;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 5237
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5238
    .local v0, bindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5239
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v5, v8}, Lcom/sec/android/app/camera/Camera;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/16 :goto_0
.end method

.method private onChkImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private onReceiveActivateMsg(Lcom/samsung/dmc/ux/db/UserInfo;)V
    .locals 2
    .parameter "gsUserInfo"

    .prologue
    .line 5338
    const-string v0, "Camera"

    const-string v1, "RECV_ACTIVATE_MSG: showing dialog..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5339
    const-string v0, "Camera"

    const-string v1, "checkActivateDlg() == false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5341
    new-instance v0, Lcom/sec/android/app/camera/Camera$15;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/Camera$15;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/dmc/ux/db/UserInfo;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5358
    return-void
.end method

.method private onUserCancelSelected(Lcom/samsung/shareshot/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 5487
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->cancelActivateUser(Ljava/lang/String;)V

    .line 5488
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->onUnSelected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5493
    :goto_0
    return-void

    .line 5490
    :catch_0
    move-exception v0

    .line 5491
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onUserSelected(Lcom/samsung/shareshot/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 5472
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->isOnline()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5483
    :goto_0
    return-void

    .line 5478
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->activateUser(Ljava/lang/String;)V

    .line 5479
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->onSelected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5480
    :catch_0
    move-exception v0

    .line 5481
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private resetFocusDueToZoom()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2060
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 2061
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 2063
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2064
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 2066
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 2067
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 2068
    :cond_0
    return-void
.end method

.method private setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 845
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 846
    if-nez p1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030005

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/EmptyView;

    .line 848
    .local v0, emptyview:Lcom/sec/android/app/camera/EmptyView;
    if-eqz v0, :cond_0

    .line 849
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 850
    invoke-virtual {v0}, Lcom/sec/android/app/camera/EmptyView;->showMenu()V

    .line 853
    .end local v0           #emptyview:Lcom/sec/android/app/camera/EmptyView;
    :cond_0
    return-void
.end method

.method private startAFWaitTimer()V
    .locals 4

    .prologue
    .line 5014
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5015
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5016
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5017
    return-void
.end method

.method private startBurstShotTimer()V
    .locals 4

    .prologue
    .line 5025
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5026
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x12c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5027
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5028
    return-void
.end method

.method private stopAFWaitTimer()V
    .locals 2

    .prologue
    .line 5021
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 5022
    return-void
.end method

.method private stopBurstShotTimer()V
    .locals 2

    .prologue
    .line 5031
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 5032
    return-void
.end method

.method private declared-synchronized stopPostCaptureAnimation()V
    .locals 4

    .prologue
    .line 4930
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v1, :cond_0

    .line 4932
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 4937
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 4938
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 4940
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4942
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 4943
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

    .line 4946
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

    .line 4956
    .end local v0           #orientation:I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4930
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 4952
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private stopVoiceRecognizer()V
    .locals 2

    .prologue
    .line 6037
    const-string v0, "Camera"

    const-string v1, "stop voice recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6038
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v0, :cond_0

    .line 6039
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    .line 6041
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 6042
    return-void
.end method

.method private switchToCamcorder()V
    .locals 1

    .prologue
    .line 2924
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder(Z)V

    .line 2925
    return-void
.end method

.method private switchToCamcorder(Z)V
    .locals 4
    .parameter "hasExtra"

    .prologue
    const/4 v3, 0x0

    .line 2928
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2929
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 2930
    const-string v1, "from-camera"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2938
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 2946
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 2948
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/camera/Camera$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$6;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2956
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    .line 2957
    return-void
.end method


# virtual methods
.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1990
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1991
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 1992
    return-void
.end method

.method public cancelCapturePanorama()V
    .locals 1

    .prologue
    .line 4668
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 4669
    return-void
.end method

.method public cancelShutterTimer()V
    .locals 1

    .prologue
    .line 4664
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doCancelShutterTimer()V

    .line 4665
    return-void
.end method

.method public cancelTouchAutoFocus()V
    .locals 1

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopLongTouchAutoFocus()V

    .line 1960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 1962
    return-void
.end method

.method public changeContrastPreview(I)V
    .locals 2
    .parameter "contrast"

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2882
    return-void
.end method

.method public changeEffectPreview(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 2665
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2667
    if-eqz p1, :cond_0

    .line 2668
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2669
    :cond_0
    return-void
.end method

.method public changeSaturationPreview(I)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2890
    return-void
.end method

.method public changeSceneModePreview(I)V
    .locals 2
    .parameter "sceneMode"

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2255
    return-void
.end method

.method public changeSharpnessPreview(I)V
    .locals 2
    .parameter "sharpness"

    .prologue
    .line 2897
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2898
    return-void
.end method

.method public changeWhiteBalancePreview(I)V
    .locals 3
    .parameter "whiteBalance"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2682
    if-eqz p1, :cond_0

    .line 2683
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2684
    :cond_0
    return-void
.end method

.method public checkStorage(ZZ)V
    .locals 0
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    .line 4733
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorage(ZZ)V

    .line 4734
    return-void
.end method

.method public checkStorageLow()V
    .locals 6

    .prologue
    .line 4719
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v0

    .line 4720
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 4721
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    .line 4730
    :goto_0
    return-void

    .line 4724
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

    .line 4726
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    goto :goto_0

    .line 4728
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    goto :goto_0
.end method

.method public checkWifiConnection()Z
    .locals 1

    .prologue
    .line 2309
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection(Z)Z

    move-result v0

    return v0
.end method

.method public checkWifiConnection(Z)Z
    .locals 3
    .parameter "showDialog"

    .prologue
    .line 2298
    const-string v1, "Camera"

    const-string v2, "checkWifiConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isWifiDirectConnected()Z

    move-result v0

    .line 2300
    .local v0, bool_direct:Z
    if-nez v0, :cond_1

    .line 2301
    if-eqz p1, :cond_0

    .line 2302
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->showDialog(I)V

    .line 2303
    :cond_0
    const/4 v0, 0x0

    .line 2305
    .end local v0           #bool_direct:Z
    :cond_1
    return v0
.end method

.method public clearPanoramaRect()V
    .locals 3

    .prologue
    .line 3519
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v1, :cond_0

    .line 3520
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3521
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v0, :cond_1

    .line 3525
    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_0
    :goto_0
    return-void

    .line 3523
    .restart local v0       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->clearPanoramaRect()V

    goto :goto_0
.end method

.method public convertCoordinate(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8
    .parameter "input"

    .prologue
    const/high16 v7, 0x44fa

    .line 3176
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06006d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 3178
    .local v2, screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3179
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060070

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 3187
    .local v1, previewWidth:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 3189
    .local v0, previewHeight:I
    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 3190
    .local v3, x:I
    iget v4, p1, Landroid/graphics/Point;->y:I

    .line 3192
    .local v4, y:I
    add-int/lit16 v3, v3, 0x3e8

    .line 3193
    add-int/lit16 v4, v4, 0x3e8

    .line 3195
    mul-int v5, v1, v3

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v3, v5

    .line 3196
    mul-int v5, v0, v4

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v4, v5

    .line 3198
    sub-int v5, v2, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 3209
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v5

    .line 3180
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

    .line 3182
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060072

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .restart local v1       #previewWidth:I
    goto :goto_0

    .line 3184
    .end local v1           #previewWidth:I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060071

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .restart local v1       #previewWidth:I
    goto :goto_0
.end method

.method public createBurstMenu()V
    .locals 4

    .prologue
    const/16 v3, 0x3b

    .line 6173
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 6174
    .local v0, burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_0

    .line 6175
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .end local v0           #burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 6176
    .restart local v0       #burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6178
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->createDirForBurst()Z

    .line 6179
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestPicMode(Z)V

    .line 6180
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 6181
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showMenu()V

    .line 6182
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showCaptureLayout()V

    .line 6183
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 6184
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V

    .line 6185
    return-void
.end method

.method public decreaseRemainCount()V
    .locals 2

    .prologue
    .line 4672
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-nez v1, :cond_0

    .line 4687
    :goto_0
    return-void

    .line 4676
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getRemainCount()I

    move-result v0

    .line 4678
    .local v0, nRemainCount:I
    if-lez v0, :cond_1

    .line 4679
    add-int/lit8 v0, v0, -0x1

    .line 4681
    :cond_1
    if-gtz v0, :cond_2

    .line 4682
    const/4 v0, 0x0

    .line 4683
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    .line 4684
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->mediaStorageDialog()V

    .line 4686
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRemainCount(I)V

    goto :goto_0
.end method

.method public finishTimerCount()V
    .locals 3

    .prologue
    .line 5060
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .line 5061
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    if-nez v0, :cond_1

    .line 5066
    :cond_0
    :goto_0
    return-void

    .line 5064
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5065
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public getActionShotProgressValue()I
    .locals 4

    .prologue
    const/16 v3, 0x2b

    .line 4182
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 4183
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 4184
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .end local v0           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 4185
    .restart local v0       #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4187
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

    .line 4188
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->getProgressValue()I

    move-result v1

    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6192
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBurstShotProgress()I
    .locals 3

    .prologue
    .line 5805
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 5806
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 5807
    :cond_0
    const/4 v1, 0x0

    .line 5810
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
    .line 5121
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method public getChkKeyFromApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4100
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    return-object v0
.end method

.method public getChkSideMenuItemsShow()Z
    .locals 1

    .prologue
    .line 5009
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getChkSideMenuItemsShow()Z

    move-result v0

    return v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 5363
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 5369
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGpsLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 6188
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getIsLaunchGallery()Z
    .locals 1

    .prologue
    .line 2111
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    return v0
.end method

.method public getRemainStorage()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 4699
    const/4 v0, 0x0

    .line 4700
    .local v0, nRemainCount:I
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eq v1, v4, :cond_0

    .line 4701
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkStorageLow()V

    .line 4702
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-nez v1, :cond_0

    .line 4703
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

    .line 4707
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4708
    iput v4, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    .line 4712
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eqz v1, :cond_1

    .line 4713
    const/4 v0, 0x0

    .line 4715
    :cond_1
    return v0
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 5375
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchAutoFocusActive()Z
    .locals 1

    .prologue
    .line 2124
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    return v0
.end method

.method public getWeather()I
    .locals 1

    .prologue
    .line 6196
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->getContextualWeather()I

    move-result v0

    return v0
.end method

.method public handleShootingModeChanged(I)V
    .locals 13
    .parameter "shootingMode"

    .prologue
    .line 2351
    const-string v10, "Camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleShootingModeChanged: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    if-eqz p1, :cond_0

    .line 2354
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/16 v11, 0x2f

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2356
    :cond_0
    const/16 v10, 0xf

    if-ne p1, v10, :cond_7

    .line 2357
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v10, :cond_1

    .line 2358
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 2360
    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshForSNS()V

    .line 2361
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V

    .line 2373
    :cond_2
    :goto_0
    const/16 v10, 0x12

    if-ne p1, v10, :cond_9

    .line 2374
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v10, :cond_3

    .line 2375
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showHelpText()V

    .line 2381
    :cond_3
    :goto_1
    const/16 v10, 0x11

    if-eq p1, v10, :cond_4

    const/16 v10, 0x18

    if-ne p1, v10, :cond_5

    .line 2383
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 2384
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showBurstShotsGuideDialog()V

    .line 2389
    :cond_5
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2391
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2392
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 2393
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2395
    :cond_6
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2396
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 2399
    packed-switch p1, :pswitch_data_0

    .line 2565
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/Camera;->updateSideMenuBackground(I)V

    .line 2568
    const/16 v10, 0xf

    if-ne p1, v10, :cond_17

    .line 2569
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 2573
    :goto_3
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v11, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 2576
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->needToResizeForPreviewAspectRatio()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 2577
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 2578
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 2579
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 2585
    :goto_4
    return-void

    .line 2364
    :cond_7
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v10, :cond_8

    .line 2365
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 2366
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V

    .line 2368
    :cond_8
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v10, :cond_2

    .line 2369
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->backFromSNS(Z)V

    goto/16 :goto_0

    .line 2377
    :cond_9
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v10, :cond_3

    .line 2378
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    goto/16 :goto_1

    .line 2401
    :pswitch_1
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x2a

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 2402
    .local v7, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v7, :cond_a

    .line 2403
    new-instance v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .end local v7           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    const/16 v10, 0x2a

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v7, p0, v10, v11, v12}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2404
    .restart local v7       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x2a

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2406
    :cond_a
    invoke-virtual {v7, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;)V

    .line 2407
    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showMenu()V

    .line 2408
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2410
    const-string v10, "1600x1200"

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v8

    .line 2411
    .local v8, resolutionId:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 2413
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 2417
    .end local v7           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    .end local v8           #resolutionId:I
    :pswitch_2
    const-string v10, "Debug"

    const-string v11, "SMILE SHOT button clicked"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x2c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 2419
    .local v9, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    if-nez v9, :cond_b

    .line 2420
    const-string v10, "Debug"

    const-string v11, "SMILE VIEW create"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    new-instance v9, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .end local v9           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    const/16 v10, 0x2c

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2422
    .restart local v9       #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x2c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2424
    :cond_b
    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showMenu()V

    .line 2425
    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showHelpText()V

    .line 2426
    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2430
    .end local v9           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    :pswitch_3
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x2b

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 2431
    .local v3, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v3, :cond_c

    .line 2432
    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .end local v3           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    const/16 v10, 0x2b

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v3, p0, v10, v11, v12}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2433
    .restart local v3       #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x2b

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2435
    :cond_c
    invoke-virtual {v3, p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setActionShotCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;)V

    .line 2436
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 2437
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showMenu()V

    .line 2438
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2440
    const-string v10, "640x480"

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v8

    .line 2441
    .restart local v8       #resolutionId:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 2443
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 2447
    .end local v3           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    .end local v8           #resolutionId:I
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getHDR()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    .line 2448
    const-string v10, "Camera"

    const-string v11, "handleShootingModeChanged - Single & HDR On - shot HDR menu"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x2e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 2450
    .local v6, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v6, :cond_d

    .line 2451
    new-instance v6, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .end local v6           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    const/16 v10, 0x2e

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v6, p0, v10, v11, v12}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2452
    .restart local v6       #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x2e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2454
    :cond_d
    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showMenu()V

    .line 2455
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2461
    .end local v6           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    :cond_e
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2465
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getHDR()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    .line 2466
    const-string v10, "Camera"

    const-string v11, "handleShootingModeChanged - Single & HDR On - shot HDR menu"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x2e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 2468
    .restart local v6       #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v6, :cond_f

    .line 2469
    new-instance v6, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .end local v6           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    const/16 v10, 0x2e

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v6, p0, v10, v11, v12}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2470
    .restart local v6       #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x2e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2472
    :cond_f
    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showMenu()V

    .line 2473
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2479
    .end local v6           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    :cond_10
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2484
    :pswitch_6
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2488
    :pswitch_7
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x35

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;

    .line 2489
    .local v2, ShareShot:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;
    if-nez v2, :cond_11

    .line 2490
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;

    .end local v2           #ShareShot:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;
    const/16 v10, 0x35

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v2, p0, v10, v11, v12}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2491
    .restart local v2       #ShareShot:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x35

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2493
    :cond_11
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->reset()V

    .line 2494
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->showMenu()V

    .line 2495
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2501
    .end local v2           #ShareShot:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;
    :pswitch_8
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .line 2502
    .local v5, cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    if-nez v5, :cond_12

    .line 2503
    new-instance v5, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .end local v5           #cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    const/16 v10, 0x2d

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v5, p0, v10, v11, v12}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2504
    .restart local v5       #cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2506
    :cond_12
    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->showMenu()V

    .line 2507
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2511
    .end local v5           #cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    :pswitch_9
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x2e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 2512
    .restart local v6       #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v6, :cond_13

    .line 2513
    new-instance v6, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .end local v6           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    const/16 v10, 0x2e

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v6, p0, v10, v11, v12}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2514
    .restart local v6       #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x2e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2516
    :cond_13
    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showMenu()V

    .line 2517
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2525
    .end local v6           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    :pswitch_a
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x3b

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 2526
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_14

    .line 2527
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .end local v0           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    const/16 v10, 0x3b

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v10, v11, v12}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2528
    .restart local v0       #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x3b

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2530
    :cond_14
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 2531
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V

    .line 2532
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showMenu()V

    .line 2533
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2534
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 2538
    .end local v0           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :pswitch_b
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x3b

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 2539
    .local v4, bestView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v4, :cond_15

    .line 2540
    new-instance v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .end local v4           #bestView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    const/16 v10, 0x3b

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v4, p0, v10, v11, v12}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2541
    .restart local v4       #bestView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x3b

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2543
    :cond_15
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestPicMode(Z)V

    .line 2544
    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 2545
    invoke-virtual {v4, p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V

    .line 2546
    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showMenu()V

    .line 2547
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2548
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 2552
    .end local v4           #bestView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :pswitch_c
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x41

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .line 2553
    .local v1, LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    if-nez v1, :cond_16

    .line 2554
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .end local v1           #LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    const/16 v10, 0x41

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v12, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, p0, v10, v11, v12}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2555
    .restart local v1       #LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, v10, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v11, 0x41

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2557
    :cond_16
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->showMenu()V

    .line 2558
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2571
    .end local v1           #LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    :cond_17
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, p1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto/16 :goto_3

    .line 2583
    :cond_18
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto/16 :goto_4

    .line 2399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V
    .locals 13
    .parameter "event"
    .parameter "SendEvent"

    .prologue
    const v12, 0x7f060009

    .line 2165
    const-string v10, "Camera"

    const-string v11, "handleTouchAutoFocusEvent"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2224
    :cond_0
    :goto_0
    return-void

    .line 2173
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v1, v10

    .line 2174
    .local v1, PtX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v2, v10

    .line 2176
    .local v2, PtY:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    div-int/lit8 v4, v10, 0x2

    .line 2177
    .local v4, allowLeftMargin:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    div-int/lit8 v5, v10, 0x2

    .line 2179
    .local v5, allowTopMargin:I
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getLeft()I

    move-result v7

    .line 2180
    .local v7, leftMargin:I
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getRight()I

    move-result v8

    .line 2181
    .local v8, rightMargin:I
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getTop()I

    move-result v9

    .line 2182
    .local v9, topMargin:I
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getBottom()I

    move-result v6

    .line 2184
    .local v6, bottomMargin:I
    if-lt v1, v7, :cond_0

    if-gt v1, v8, :cond_0

    .line 2185
    add-int v10, v7, v4

    if-gt v1, v10, :cond_5

    .line 2186
    add-int v1, v7, v4

    .line 2190
    :cond_2
    :goto_1
    add-int v10, v9, v5

    if-gt v2, v10, :cond_6

    .line 2191
    add-int v2, v9, v5

    .line 2197
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v10

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 2202
    sub-int v0, v1, v7

    .line 2204
    .local v0, NormalPtX:I
    if-eqz p2, :cond_4

    .line 2205
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v10, v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setTouchFocusPosition(II)V

    .line 2218
    .end local v0           #NormalPtX:I
    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->startTouchAutoFocus()V

    .line 2219
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v10, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTouchFocusRectCenter(II)V

    .line 2221
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    goto/16 :goto_0

    .line 2187
    :cond_5
    sub-int v10, v8, v4

    if-lt v1, v10, :cond_2

    .line 2188
    sub-int v1, v8, v4

    goto :goto_1

    .line 2192
    :cond_6
    sub-int v10, v6, v5

    if-lt v2, v10, :cond_3

    .line 2193
    sub-int v2, v6, v5

    goto :goto_2

    .line 2212
    :cond_7
    sub-int v3, v2, v9

    .line 2214
    .local v3, WidePtY:I
    if-eqz p2, :cond_4

    .line 2215
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v10, v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setTouchFocusPosition(II)V

    goto :goto_3
.end method

.method public hideFaceRect()V
    .locals 1

    .prologue
    .line 5786
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 5787
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideAllFaceRect()V

    .line 5788
    :cond_0
    return-void
.end method

.method public hideSideMenu()V
    .locals 1

    .prologue
    .line 5001
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideSideMenu()V

    .line 5002
    return-void
.end method

.method public hideSideMenuItems()V
    .locals 1

    .prologue
    .line 4991
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 4992
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideSideMenuItems()V

    .line 4993
    :cond_0
    return-void
.end method

.method public initCameraSound()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3841
    const-string v0, "Camera"

    const-string v1, "Initialize Camera Sound"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x7

    invoke-direct {v0, v7, v1, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 3843
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050004

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 3844
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050001

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v6

    .line 3845
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f05

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 3846
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050002

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v7

    .line 3848
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    .line 3849
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    .line 3850
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, v6}, Landroid/media/MediaActionSound;->load(I)V

    .line 3852
    :cond_0
    return-void
.end method

.method public interruptProcessforBestPics()V
    .locals 3

    .prologue
    .line 6160
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

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 6163
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 6164
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_4

    .line 6170
    .end local v0           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_3
    :goto_0
    return-void

    .line 6167
    .restart local v0       #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->interruptProcessforBestPics()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6168
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearLastContentUri()V

    goto :goto_0
.end method

.method public isActivityDestoying()Z
    .locals 1

    .prologue
    .line 5035
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    return v0
.end method

.method public isAutoFocusEnabled()Z
    .locals 2

    .prologue
    .line 2153
    const/4 v0, 0x1

    .line 2154
    .local v0, shootingmode:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2161
    :goto_0
    return v0

    .line 2157
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2154
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
    .line 1953
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    return v0
.end method

.method public isBestPicMode()Z
    .locals 3

    .prologue
    .line 5791
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 5792
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 5793
    :cond_0
    const/4 v1, 0x1

    .line 5796
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
    .line 3644
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3645
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    .line 3646
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBurstCapturing()Z

    move-result v1

    .line 3648
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 2

    .prologue
    .line 4737
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 4738
    const-string v0, "Camera"

    const-string v1, "isCapturing - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    const/4 v0, 0x0

    .line 4741
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
    .line 5778
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

    .line 5780
    :cond_0
    const/4 v0, 0x0

    .line 5782
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMediaScannerScanning()Z
    .locals 1

    .prologue
    .line 6075
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isPreviewStarted()Z
    .locals 2

    .prologue
    .line 4745
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 4746
    const-string v0, "Camera"

    const-string v1, "isPreviewStarted - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4747
    const/4 v0, 0x0

    .line 4749
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
    .line 6153
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6154
    const/4 v0, 0x1

    .line 6156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->isShutterPressed()Z

    move-result v0

    return v0
.end method

.method public isTimerCounting()Z
    .locals 1

    .prologue
    .line 5069
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

    .line 6018
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

    .line 6022
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isWifiDirectConnected()Z
    .locals 4

    .prologue
    .line 5752
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5753
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 5754
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5755
    const-string v2, "Camera"

    const-string v3, "wifi direct connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5756
    const/4 v2, 0x1

    .line 5758
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

    .line 3006
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3024
    :cond_0
    :goto_0
    return v0

    .line 3010
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 3014
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

    .line 3020
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3024
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public join()V
    .locals 1

    .prologue
    .line 765
    new-instance v0, Lcom/sec/android/app/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$4;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 782
    return-void
.end method

.method public needToResizeForPreviewAspectRatio()Z
    .locals 6

    .prologue
    .line 2960
    const/4 v1, 0x0

    .line 2962
    .local v1, result:Z
    const v2, 0x7f0b0004

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 2964
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2965
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v2

    const-wide v4, 0x3ffc71c71c71c71cL

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 2966
    const/4 v1, 0x0

    .line 2976
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

    .line 2977
    return v1

    .line 2968
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 2970
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v2

    const-wide v4, 0x3ff5555555555555L

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    .line 2971
    const/4 v1, 0x0

    goto :goto_0

    .line 2973
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onActionShotAcquisitionProgress(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 4104
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

    .line 4106
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->chkActionShotStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4122
    :cond_0
    :goto_0
    return-void

    .line 4110
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 4111
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-eqz v0, :cond_0

    .line 4115
    if-ltz p1, :cond_2

    const/16 v1, 0x64

    if-le p1, v1, :cond_3

    .line 4116
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 4117
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    goto :goto_0

    .line 4119
    :cond_3
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setAcquisitionProgress(I)V

    .line 4120
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showCaptureLayout()V

    goto :goto_0
.end method

.method public onActionShotCaptureCancelled()V
    .locals 3

    .prologue
    .line 4125
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 4126
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 4134
    :goto_0
    return-void

    .line 4129
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 4130
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 4131
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->actionShotCaptureCancelled()V

    .line 4133
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelSeriesActionShot()V

    goto :goto_0
.end method

.method public onActionShotCaptured()V
    .locals 3

    .prologue
    .line 4165
    const-string v0, "Camera"

    const-string v1, "onActionShotCaptured"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4166
    return-void
.end method

.method public onActionShotCreatingResultCompleted(Z)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 4137
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 4138
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 4144
    :goto_0
    return-void

    .line 4141
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 4142
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 4143
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopActionShot()V

    goto :goto_0
.end method

.method public onActionShotCreatingResultProgress(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 4147
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 4148
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 4152
    :goto_0
    return-void

    .line 4151
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setPostCaptureProgress(I)V

    goto :goto_0
.end method

.method public onActionShotCreatingResultStarted()V
    .locals 3

    .prologue
    .line 4155
    const-string v1, "Camera"

    const-string v2, "onActionShotCreatingResultStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 4157
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 4162
    :goto_0
    return-void

    .line 4160
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 4161
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->actionShotCreatingResultStarted()V

    goto :goto_0
.end method

.method public onActionShotRectChanged([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 4170
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 4179
    :cond_0
    :goto_0
    return-void

    .line 4174
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 4175
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-eqz v0, :cond_0

    .line 4178
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->actionShotRectChanged([B)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 20
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 4443
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

    .line 4444
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

    .line 4447
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    .line 4448
    .local v18, myExtras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 4449
    if-eqz v18, :cond_0

    .line 4450
    const-string v3, "output"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 4453
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 4589
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 4455
    :pswitch_1
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    if-eqz p3, :cond_9

    .line 4456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    if-nez v3, :cond_2

    .line 4457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/CameraEngine;->CreateCaptureData(Landroid/content/Intent;)V

    .line 4459
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

    .line 4460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 4461
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

    .line 4463
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 4464
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
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_8

    .line 4485
    :goto_1
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->setResult(I)V

    .line 4486
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 4497
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 4498
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 4469
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

    .line 4470
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_6

    .line 4471
    :cond_5
    const-string v3, "Camera"

    const-string v4, "Something goes wrong!! Restart attach mode."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4474
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4475
    const-string v3, "_data"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 4477
    .local v16, filepath:Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 4479
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
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_7

    .line 4483
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 4487
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

    .line 4488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v3

    if-nez v3, :cond_8

    .line 4489
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 4490
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 4493
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

    .line 4494
    .local v9, bitmap:Landroid/graphics/Bitmap;
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 4499
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    :cond_9
    if-nez p2, :cond_1

    .line 4500
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

    .line 4503
    :try_start_2
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 4506
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
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_6

    .line 4511
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 4513
    :try_start_3
    new-instance v17, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 4514
    .local v17, mSave:Ljava/net/URI;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 4515
    .end local v17           #mSave:Ljava/net/URI;
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 4522
    :pswitch_2
    const-string v3, "-------on result PHOTO_PICKED_WITH_DATA"

    const-string v4, "PHOTO_PICKED_WITH_DATA"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4523
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_b

    .line 4524
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 4527
    :cond_b
    if-eqz p3, :cond_f

    .line 4528
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/graphics/Bitmap;

    .line 4529
    .local v19, photo:Landroid/graphics/Bitmap;
    const-string v3, "photo w,h"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------------photo w,h-------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4531
    new-instance v11, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera"

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4532
    .local v11, dir:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c

    .line 4533
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 4535
    :cond_c
    new-instance v15, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4536
    .local v15, file:Ljava/io/File;
    const/4 v13, 0x0

    .line 4538
    .local v13, fOut:Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .local v14, fOut:Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 4543
    .end local v14           #fOut:Ljava/io/FileOutputStream;
    .restart local v13       #fOut:Ljava/io/FileOutputStream;
    :goto_5
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4545
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 4550
    if-eqz v13, :cond_d

    .line 4552
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 4558
    :cond_d
    :goto_6
    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->removeDialog(I)V

    .line 4559
    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 4560
    const/16 v3, 0x37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v3, v0, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_0

    .line 4539
    :catch_1
    move-exception v12

    .line 4541
    .local v12, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 4546
    .end local v12           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v12

    .line 4548
    .local v12, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4550
    if-eqz v13, :cond_d

    .line 4552
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    .line 4553
    :catch_3
    move-exception v3

    goto :goto_6

    .line 4550
    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_e

    .line 4552
    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 4555
    :cond_e
    :goto_7
    throw v3

    .line 4564
    .end local v11           #dir:Ljava/io/File;
    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .end local v15           #file:Ljava/io/File;
    .end local v19           #photo:Landroid/graphics/Bitmap;
    :cond_f
    const/16 v3, 0x3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v3, v0, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_0

    .line 4569
    :pswitch_3
    if-eqz p3, :cond_1

    .line 4570
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "user_name_changed"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 4571
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    if-eqz v3, :cond_1

    .line 4572
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "user_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    .line 4573
    const-string v3, "wenfeng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NAME_WITH_DATA "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4579
    :pswitch_4
    const-string v3, "TAG"

    const-string v4, "-BACK_FROM_ACCEPT_DIALOG-"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4580
    const/16 v3, 0x7d6

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    .line 4581
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_1

    .line 4582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-nez v3, :cond_10

    .line 4583
    const/16 v3, 0x36

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getSideMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-static {v3, v0, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 4584
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_0

    .line 4553
    .restart local v11       #dir:Ljava/io/File;
    .restart local v13       #fOut:Ljava/io/FileOutputStream;
    .restart local v15       #file:Ljava/io/File;
    .restart local v19       #photo:Landroid/graphics/Bitmap;
    :catch_4
    move-exception v3

    goto/16 :goto_6

    :catch_5
    move-exception v4

    goto/16 :goto_7

    .line 4507
    .end local v11           #dir:Ljava/io/File;
    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .end local v15           #file:Ljava/io/File;
    .end local v19           #photo:Landroid/graphics/Bitmap;
    :catch_6
    move-exception v3

    goto/16 :goto_4

    .line 4480
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v16       #filepath:Ljava/lang/String;
    :catch_7
    move-exception v3

    goto/16 :goto_3

    .line 4465
    .end local v10           #c:Landroid/database/Cursor;
    .end local v16           #filepath:Ljava/lang/String;
    :catch_8
    move-exception v3

    goto/16 :goto_1

    .line 4453
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onAntishakeSelect(I)V
    .locals 2
    .parameter "antishake"

    .prologue
    .line 2698
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    .line 2699
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2700
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 2701
    return-void
.end method

.method public onAutocontrastSelect(I)V
    .locals 2
    .parameter "autocontrast"

    .prologue
    .line 2704
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    .line 2705
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2706
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 2707
    return-void
.end method

.method public onBurstCaptureCancelled()V
    .locals 1

    .prologue
    .line 3532
    sget v0, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 3534
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 3535
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->terminateBurstShot()V

    .line 3536
    :cond_0
    return-void
.end method

.method public onBurstModeChanged(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 3652
    if-eqz p1, :cond_0

    .line 3653
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 3658
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3659
    return-void
.end method

.method public onBurstModeSelectCommand(I)V
    .locals 4
    .parameter "burstmode"

    .prologue
    const/4 v3, 0x1

    .line 3693
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

    .line 3694
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    .line 3696
    if-nez p1, :cond_2

    .line 3697
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3706
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 3708
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 3709
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 3711
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 3712
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 3715
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->needToResizeForPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3716
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 3717
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 3718
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 3724
    :goto_1
    return-void

    .line 3699
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 3700
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3701
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showBurstShotsGuideDialog()V

    goto :goto_0

    .line 3722
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_1
.end method

.method public onBurstShotCapturingProgressed(II)V
    .locals 4
    .parameter "curCapturedNum"
    .parameter "maxImageNum"

    .prologue
    .line 3540
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

    .line 3541
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3542
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 3550
    :cond_0
    :goto_0
    return-void

    .line 3545
    :cond_1
    if-ge p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getRemainStorage()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    .line 3547
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShot()V

    .line 3549
    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setCaptureProgressIncreased()V

    goto :goto_0
.end method

.method public onBurstShotCapturingStopped(I)V
    .locals 3
    .parameter "lastImageNum"

    .prologue
    .line 3553
    const-string v1, "Camera"

    const-string v2, "onBurstShotCapturingStopped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 3565
    :cond_0
    :goto_0
    return-void

    .line 3557
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3558
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3561
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 3562
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showPostCaptureLayout()V

    .line 3563
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setPostCaptureProgressMax(I)V

    .line 3564
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    goto :goto_0
.end method

.method public onBurstShotCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3596
    const-string v1, "Camera"

    const-string v2, "onBurstShotCompleted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->terminateBurstShot()V

    .line 3599
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3600
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_0

    .line 3623
    :goto_0
    return-void

    .line 3603
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hidePostCaptureLayout()V

    .line 3604
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 3605
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 3606
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setSingleShotBurst(Z)V

    .line 3607
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 3611
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->searchForLastContentUri()V

    .line 3613
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_1

    .line 3614
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 3616
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startContinuousAF()V

    .line 3618
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 3621
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0

    .line 3609
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showCaptureLayout()V

    goto :goto_1
.end method

.method public onBurstShotSavingCompleted(I)V
    .locals 4
    .parameter "BestpicNum"

    .prologue
    .line 3569
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

    .line 3570
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3571
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_0

    .line 3579
    :goto_0
    return-void

    .line 3574
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestPic(I)V

    .line 3575
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_1

    .line 3576
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 3578
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startContinuousAF()V

    goto :goto_0
.end method

.method public onBurstShotStarted()V
    .locals 3

    .prologue
    .line 3626
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3627
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_0

    .line 3641
    :goto_0
    return-void

    .line 3630
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_1

    .line 3631
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 3635
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 3636
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 3637
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 3638
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 3639
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBurstCapturing(Z)V

    .line 3640
    sget v1, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    goto :goto_0
.end method

.method public onBurstShotStringProgressed([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 3582
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3583
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 3584
    const-string v1, "Camera"

    const-string v2, "onBurstShotStringProgressed - CE_STATE_SHUTDOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onBurstShotCompleted()V

    .line 3593
    :cond_0
    :goto_0
    return-void

    .line 3588
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->storeBurstStrings([B)V

    .line 3589
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->setBurstShotStoring()V

    .line 3590
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 3591
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onBurstShotCompleted()V

    goto :goto_0
.end method

.method public onCameraQualityMenuSelect(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 2710
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 2711
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 2712
    return-void
.end method

.method public onCartoonShotProgressRendering(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/16 v4, 0x2d

    .line 4592
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

    .line 4594
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .line 4596
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    if-nez v0, :cond_0

    .line 4597
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 4598
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4600
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->showPostCaptureLayout()V

    .line 4601
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->setRederingProgress(I)V

    .line 4602
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenuItems()V

    .line 4603
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_1

    .line 4604
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 4606
    :cond_1
    const/16 v1, 0x64

    if-ne p1, v1, :cond_3

    .line 4607
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->showHelpText()V

    .line 4608
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4609
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->reset()V

    .line 4610
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 4611
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_3

    .line 4612
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 4614
    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 746
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 747
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v0, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 751
    const-string v0, "Camera"

    const-string v1, "!!!!!!!!!!!!!!!ORIENTATION_LANDSCAPE!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setLandscapeActive(Z)V

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 754
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 755
    const-string v0, "Camera"

    const-string v1, "!!!!!!!!!!!!!!!ORIENTATION_PORTRAIT!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setLandscapeActive(Z)V

    goto :goto_0
.end method

.method public onContextualFilenameSelect(I)V
    .locals 1
    .parameter "contextualFilename"

    .prologue
    .line 2735
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-nez v0, :cond_0

    .line 2736
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->showDialog(I)V

    .line 2741
    :goto_0
    return-void

    .line 2738
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    .line 2739
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setContextualFilename(I)V

    goto :goto_0
.end method

.method public onContinuousShotCapturingProgressed(II)V
    .locals 2
    .parameter "curCapturedNum"
    .parameter "maxImageNum"

    .prologue
    .line 3727
    const-string v0, "Camera"

    const-string v1, "onContinuousShotCapturingProgressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    return-void
.end method

.method public onContinuousShotCapturingStopped(I)V
    .locals 2
    .parameter "lastImageNum"

    .prologue
    .line 3730
    const-string v0, "Camera"

    const-string v1, "onContinuousShotCapturingStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3731
    return-void
.end method

.method public onContinuousShotSavingCompleted()V
    .locals 2

    .prologue
    .line 3733
    const-string v0, "Camera"

    const-string v1, "onContinuousShotSavingCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    return-void
.end method

.method public onContrastMenuSelect(I)V
    .locals 1
    .parameter "contrast"

    .prologue
    .line 2877
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 2878
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    .line 785
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 787
    const-string v5, "Camera"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total-CameraPreviewLoading**StartU["

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

    .line 791
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total-CameraUILoading(TSP)**StartU["

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

    .line 794
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 796
    .local v2, _axtime_st_1:J
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getSelectedMode()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 797
    const/high16 v5, 0x7f03

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->setContentView(I)V

    .line 798
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder()V

    .line 799
    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camera;->mFinishOnCreate:Z

    .line 842
    :goto_0
    return-void

    .line 804
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 805
    .local v4, win:Landroid/view/Window;
    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 807
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->resetObservers()V

    .line 808
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 810
    const v5, 0x7f03000b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->setContentView(I)V

    .line 811
    const v5, 0x7f0b0002

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    .line 813
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/CameraSettings;->setMode(I)V

    .line 814
    new-instance v5, Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 816
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 818
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryWarningLevel:I

    .line 820
    new-instance v5, Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/CameraEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 821
    new-instance v5, Landroid/media/AudioManager;

    invoke-direct {v5, p0}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 823
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamera()V

    .line 825
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->initializeGLSurfaceView()V

    .line 827
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 828
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    .line 830
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->initCameraSound()V

    .line 837
    new-instance v5, Lcom/sec/android/app/camera/Weather;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Weather;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    .line 839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 840
    .local v0, _axtime_ed_1:J
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate-End**End["

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

    .line 841
    move-wide v2, v0

    .line 842
    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const v9, 0x7f09010b

    .line 5815
    const/4 v7, 0x6

    if-ne p1, v7, :cond_3

    .line 5816
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5817
    .local v0, builder1:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0900fe

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5818
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 5819
    .local v4, factory:Landroid/view/LayoutInflater;
    const v7, 0x7f03000f

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 5820
    .local v6, userprofile:Landroid/view/View;
    const v7, 0x7f0b002f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 5821
    .local v5, iv:Landroid/widget/ImageView;
    const v7, 0x7f0b0017

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 5823
    .local v2, et:Landroid/widget/EditText;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    const-string v8, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    if-ne v7, v8, :cond_1

    .line 5824
    const-string v7, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5830
    :cond_0
    :goto_0
    new-instance v7, Lcom/sec/android/app/camera/Camera$21;

    invoke-direct {v7, p0, v2}, Lcom/sec/android/app/camera/Camera$21;-><init>(Lcom/sec/android/app/camera/Camera;Landroid/widget/EditText;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5843
    iget-boolean v7, p0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    if-eqz v7, :cond_2

    .line 5844
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5847
    :goto_1
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 5849
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5850
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09010a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/camera/Camera$22;

    invoke-direct {v8, p0, v2}, Lcom/sec/android/app/camera/Camera$22;-><init>(Lcom/sec/android/app/camera/Camera;Landroid/widget/EditText;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5902
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/camera/Camera$23;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/Camera$23;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5913
    new-instance v7, Lcom/sec/android/app/camera/Camera$24;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/Camera$24;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 5925
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5926
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 5971
    .end local v0           #builder1:Landroid/app/AlertDialog$Builder;
    .end local v2           #et:Landroid/widget/EditText;
    .end local v4           #factory:Landroid/view/LayoutInflater;
    .end local v5           #iv:Landroid/widget/ImageView;
    .end local v6           #userprofile:Landroid/view/View;
    :goto_2
    return-object v7

    .line 5826
    .restart local v0       #builder1:Landroid/app/AlertDialog$Builder;
    .restart local v2       #et:Landroid/widget/EditText;
    .restart local v4       #factory:Landroid/view/LayoutInflater;
    .restart local v5       #iv:Landroid/widget/ImageView;
    .restart local v6       #userprofile:Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v7, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5827
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5828
    const-string v7, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 5846
    .end local v3           #f:Ljava/io/File;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5927
    .end local v0           #builder1:Landroid/app/AlertDialog$Builder;
    .end local v2           #et:Landroid/widget/EditText;
    .end local v4           #factory:Landroid/view/LayoutInflater;
    .end local v5           #iv:Landroid/widget/ImageView;
    .end local v6           #userprofile:Landroid/view/View;
    :cond_3
    const/4 v7, 0x7

    if-ne p1, v7, :cond_4

    .line 5928
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5929
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f090103

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5930
    const/high16 v7, 0x7f07

    new-instance v8, Lcom/sec/android/app/camera/Camera$25;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/Camera$25;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5959
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/camera/Camera$26;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/Camera$26;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5969
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_2

    .line 5971
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

    .line 1349
    const-string v0, "Camera"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v0, :cond_0

    .line 1352
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Camera;->manageLocalService(Z)V

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1355
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1358
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    .line 1360
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1362
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearGLSurfaceView()V

    .line 1364
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v0, :cond_2

    .line 1365
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuResourceDepot;->onDestroy()V

    .line 1366
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 1369
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_3

    .line 1370
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 1371
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->closeCamera()V

    .line 1373
    :cond_3
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 1375
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    .line 1376
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_4

    .line 1377
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->clear()V

    .line 1378
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 1381
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_5

    .line 1382
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->clear()V

    .line 1383
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 1386
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_6

    .line 1387
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1388
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 1391
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 1392
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1393
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    .line 1396
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    .line 1397
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1398
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    .line 1401
    :cond_8
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    .line 1402
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 1403
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 1404
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 1405
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1406
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 1407
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_9

    .line 1408
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1409
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1412
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_a

    .line 1413
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1414
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    .line 1416
    :cond_a
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 1417
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 1418
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    .line 1420
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onDestroy()V

    .line 1421
    return-void
.end method

.method public onEditModeSelectCommand()V
    .locals 3

    .prologue
    .line 2787
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2788
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2794
    :goto_1
    return-void

    .line 2791
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0

    .line 2793
    :cond_1
    const/16 v0, 0x28

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v0, p0, v1, v2}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_1
.end method

.method public onEffectMenuSelect(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 2658
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 2659
    if-eqz p1, :cond_0

    .line 2660
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 2662
    :cond_0
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .locals 1
    .parameter "exposureValue"

    .prologue
    .line 2231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 2232
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->invalidatePreview()V

    .line 2233
    return-void
.end method

.method public onExposuremeterMenuSelect(I)V
    .locals 1
    .parameter "exposuremeter"

    .prologue
    .line 2693
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2694
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 2695
    return-void
.end method

.method public onFacePositionChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V
    .locals 1
    .parameter "faces"

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 3215
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFaceRectChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V

    .line 3216
    :cond_0
    return-void
.end method

.method public onFlashModeMenuSelect(I)V
    .locals 1
    .parameter "flashMode"

    .prologue
    .line 2236
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 2241
    return-void
.end method

.method public onFlipMenuSelectCommand(I)V
    .locals 1
    .parameter "flip"

    .prologue
    .line 2797
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 2798
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 2799
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setFrontSensorMirror(I)V

    .line 2800
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartPreviewAsync()V

    .line 2801
    return-void
.end method

.method public onFocusModeMenuSelect(I)V
    .locals 1
    .parameter "focusMode"

    .prologue
    .line 2588
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2589
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 2590
    return-void
.end method

.method public onFocusStateChanged(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3254
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

    .line 3256
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-eqz v0, :cond_1

    .line 3296
    :cond_0
    :goto_0
    return-void

    .line 3259
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getAFTimerStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3262
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_3

    .line 3263
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3264
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getTouchFocusPositioned()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3265
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFocusIndicator(I)V

    .line 3272
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v4, :cond_0

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

    if-eq v0, v3, :cond_0

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

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 3283
    if-nez p1, :cond_7

    .line 3284
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3285
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 3287
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_6

    .line 3288
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 3290
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 3293
    :cond_7
    if-eq p1, v4, :cond_8

    if-ne p1, v5, :cond_0

    .line 3294
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startAFHideRectTimer()V

    goto/16 :goto_0

    .line 3268
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFocusIndicator(I)V

    goto/16 :goto_1
.end method

.method public onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 2
    .parameter "rootView"

    .prologue
    .line 4759
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V

    .line 4761
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 4762
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4763
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setGuideLineSize(Landroid/view/View;)V

    .line 4764
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->resetFocus(Landroid/view/View;)V

    .line 4768
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 4769
    const-string v0, "Camera"

    const-string v1, "mSideMenuLoadingThread is not null, return.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4822
    :goto_0
    return-void

    .line 4773
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/Camera$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$7;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    .line 4820
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    const-string v1, "sideMenuLoadingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 4821
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onGpsChanged(I)V
    .locals 1
    .parameter "gps"

    .prologue
    .line 2845
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2846
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 2865
    :goto_0
    return-void

    .line 2850
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 2851
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2852
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->IsGpsEnableInSettings()V

    .line 2864
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0

    .line 2854
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getEULAenable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2855
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->displayEULADialog()V

    goto :goto_1

    .line 2857
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1

    .line 2861
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
    .line 2715
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 2716
    return-void
.end method

.method public onHDRShotAllProgressCompleted(Z)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 4223
    const-string v0, "Camera"

    const-string v1, "onHDRShotAllProgressCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4224
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doHDRShotAllProgressCompleted()V

    .line 4225
    return-void
.end method

.method public onHDRShotResultCompleted(Z)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 4212
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 4213
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_0

    .line 4220
    :goto_0
    return-void

    .line 4217
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    .line 4218
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showHelpText()V

    .line 4219
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setRederingProgress(I)V

    goto :goto_0
.end method

.method public onHDRShotResultProgress(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 4204
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 4205
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_0

    .line 4209
    :goto_0
    return-void

    .line 4208
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setPostCaptureProgress(I)V

    goto :goto_0
.end method

.method public onHDRShotResultStarted()V
    .locals 3

    .prologue
    .line 4192
    const-string v1, "Camera"

    const-string v2, "onHDRShotCreatingResultStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4194
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 4195
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_0

    .line 4201
    :goto_0
    return-void

    .line 4198
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setPostCaptureProgress(I)V

    .line 4199
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showPostCaptureLayout()V

    .line 4200
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setPostCaptureProgressMax(I)V

    goto :goto_0
.end method

.method public onHdrMenuSelectCommand(I)V
    .locals 7
    .parameter "hdr"

    .prologue
    const/16 v6, 0x2d

    const/4 v5, 0x1

    const/16 v4, 0x2e

    .line 2804
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHdrMenuSelectCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setHDR(I)V

    .line 2808
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2810
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v6, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2812
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 2813
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2815
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2816
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 2818
    if-ne p1, v5, :cond_2

    .line 2819
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 2820
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_1

    .line 2821
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .end local v0           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2822
    .restart local v0       #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2824
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showMenu()V

    .line 2825
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2830
    .end local v0           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v6, p1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 2833
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->needToResizeForPreviewAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2834
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 2835
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 2836
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 2842
    :goto_1
    return-void

    .line 2827
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto :goto_0

    .line 2840
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_1
.end method

.method public onISOMenuSelect(I)V
    .locals 2
    .parameter "iso"

    .prologue
    .line 2687
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 2688
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2689
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 2690
    return-void
.end method

.method protected onImageStoringCompleted()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x7

    .line 3737
    const-string v5, "Camera"

    const-string v6, "onImageStoringCompleted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-eqz v5, :cond_1

    .line 3838
    :cond_0
    :goto_0
    return-void

    .line 3742
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->decreaseRemainCount()V

    .line 3744
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 3745
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x2a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3748
    .local v4, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startContinuousAF()V

    .line 3749
    if-eqz v4, :cond_2

    .line 3750
    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    .line 3752
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v5, :cond_3

    .line 3753
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->resetPanoramaCapturing()V

    .line 3817
    .end local v4           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
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

    .line 3818
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startContinuousAF()V

    .line 3829
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v5, :cond_10

    .line 3830
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v5

    if-eq v5, v8, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x12

    if-ne v5, v6, :cond_0

    .line 3832
    :cond_5
    const-string v5, "reviewon"

    invoke-virtual {p0, v5, v9}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 3755
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_7

    .line 3756
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x2d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .line 3758
    .local v1, CartoonShotView:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->reset()V

    goto :goto_1

    .line 3759
    .end local v1           #CartoonShotView:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0xe

    if-eq v5, v6, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getHDR()I

    move-result v5

    if-ne v5, v8, :cond_9

    .line 3761
    :cond_8
    const-string v5, "Camera"

    const-string v6, "onImageStoringCompleted - HDR, hidePostCaptureLayout."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x2e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 3763
    .local v3, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 3766
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    goto/16 :goto_1

    .line 3767
    .end local v3           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-ne v5, v7, :cond_a

    .line 3768
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 3769
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->IsWaitingAnimation()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3770
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 3771
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/CameraEngine;->setWaitingAnimation(Z)V

    goto/16 :goto_1

    .line 3773
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x11

    if-eq v5, v6, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x18

    if-ne v5, v6, :cond_e

    .line 3775
    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x3b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3776
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    if-ne v5, v7, :cond_c

    .line 3777
    const-string v5, "Camera"

    const-string v6, "SHOOTINGMODE_BURST_onImageStoringCompleted - CE_STATE_SHUTDOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onBurstShotCompleted()V

    goto/16 :goto_0

    .line 3781
    :cond_c
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

    .line 3783
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->setBurstShotStoring()V

    .line 3784
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 3786
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestPicMode()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3787
    const-wide/16 v5, 0xc8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3792
    :cond_d
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showHighlight()V

    .line 3793
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->terminateBurstShot()V

    goto/16 :goto_1

    .line 3795
    .end local v0           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x17

    if-ne v5, v6, :cond_3

    .line 3796
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x41

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .line 3797
    .local v2, LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 3800
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->reset()V

    .line 3801
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 3809
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v5, :cond_f

    .line 3810
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 3812
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startContinuousAF()V

    goto/16 :goto_1

    .line 3835
    .end local v2           #LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    :cond_10
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v5, v9}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3789
    .restart local v0       #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v10, 0x12

    const-wide/16 v8, 0x15e

    const/4 v7, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1425
    const-string v3, "Camera"

    const-string v6, "onKeyDown()"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    const/4 v2, 0x1

    .line 1429
    .local v2, shutterKey:Z
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mGLInitialized:Z

    if-nez v3, :cond_0

    move v3, v4

    .line 1672
    :goto_0
    return v3

    .line 1441
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 1442
    goto :goto_0

    .line 1444
    :catch_0
    move-exception v3

    .line 1448
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 1449
    goto :goto_0

    .line 1452
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isResetDialogActive()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    .line 1453
    goto :goto_0

    .line 1457
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isUsbMassStorageEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    .line 1458
    goto :goto_0

    .line 1461
    :cond_4
    const-string v3, "Camera"

    const-string v6, "handling onKeyDown event from Activity class"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    sparse-switch p1, :sswitch_data_0

    .line 1672
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    move v3, v5

    .line 1465
    goto :goto_0

    :sswitch_0
    move v3, v4

    .line 1468
    goto :goto_0

    :sswitch_1
    move v3, v5

    .line 1472
    goto :goto_0

    .line 1474
    :sswitch_2
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_6

    move v3, v4

    .line 1475
    goto :goto_0

    .line 1477
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isTimerCounting()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    .line 1478
    goto :goto_0

    .line 1481
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKey()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1483
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isContinuousAFEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1484
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-ne v3, v4, :cond_8

    .line 1485
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleContinuousAF()V

    .line 1487
    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-virtual {v3, v7, v8, v9}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1490
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAutoFocusEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1493
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 1495
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-eq v3, v4, :cond_b

    .line 1497
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startAFWaitTimer()V

    .line 1500
    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    goto/16 :goto_1

    .line 1507
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_c

    move v3, v4

    .line 1508
    goto/16 :goto_0

    .line 1511
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v3

    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v4

    .line 1512
    goto/16 :goto_0

    .line 1514
    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1515
    const-string v3, "Camera"

    const-string v5, "shutter is pressed. Preview is not ready..."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1516
    goto/16 :goto_0

    .line 1524
    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1525
    const-string v3, "Camera"

    const-string v5, "shutter is pressed. Camera is capturing..."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1526
    goto/16 :goto_0

    .line 1529
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1530
    const-string v3, "Camera"

    const-string v5, "returning because it is launch gallery"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1531
    goto/16 :goto_0

    .line 1533
    :cond_10
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eqz v3, :cond_11

    .line 1534
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    move v3, v4

    .line 1535
    goto/16 :goto_0

    .line 1538
    :cond_11
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_12

    move v3, v4

    .line 1539
    goto/16 :goto_0

    .line 1548
    :cond_12
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKey()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 1554
    :goto_2
    if-nez v2, :cond_17

    if-nez p2, :cond_17

    .line 1556
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isContinuousAFEnabled()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1557
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-ne v3, v4, :cond_13

    .line 1558
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleContinuousAF()V

    .line 1560
    :cond_13
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-virtual {v3, v7, v8, v9}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1549
    :catch_1
    move-exception v0

    .line 1550
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 1563
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAutoFocusEnabled()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1566
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 1568
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-eq v3, v4, :cond_16

    .line 1570
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startAFWaitTimer()V

    .line 1572
    :cond_16
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v3, v4

    .line 1573
    goto/16 :goto_0

    .line 1576
    :cond_17
    if-eqz p2, :cond_21

    .line 1579
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-eq v3, v4, :cond_18

    .line 1580
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 1583
    :cond_18
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1585
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_19

    move v3, v4

    .line 1586
    goto/16 :goto_0

    .line 1588
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isContinuousAFEnabled()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1589
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-ne v3, v4, :cond_1a

    .line 1590
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleContinuousAF()V

    .line 1593
    :cond_1a
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-virtual {v3, v7, v8, v9}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1595
    const/16 v3, 0x1b

    if-eq v3, p1, :cond_1b

    .line 1596
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v3, v4

    .line 1597
    goto/16 :goto_0

    .line 1599
    :cond_1b
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1600
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    :cond_1c
    move v3, v4

    .line 1602
    goto/16 :goto_0

    .line 1604
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAutoFocusEnabled()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1608
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-nez v3, :cond_1e

    .line 1610
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 1613
    :cond_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-eq v3, v4, :cond_1f

    .line 1615
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startAFWaitTimer()V

    .line 1619
    :cond_1f
    const/16 v3, 0x1b

    if-eq v3, p1, :cond_20

    .line 1620
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v3, v4

    .line 1621
    goto/16 :goto_0

    .line 1635
    :cond_20
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v3

    if-nez v3, :cond_21

    .line 1636
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    :cond_21
    move v3, v4

    .line 1639
    goto/16 :goto_0

    .line 1647
    :sswitch_4
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v3, :cond_22

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_22
    move v3, v4

    .line 1648
    goto/16 :goto_0

    .line 1653
    :cond_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isZoomAvailable()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1654
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 1655
    .local v1, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->getVisibility()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1656
    :cond_24
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x2

    invoke-static {v10, p0, v3, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 1658
    :cond_25
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFocusDueToZoom()V

    .line 1659
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 1661
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v3, :cond_26

    .line 1663
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 1664
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .end local v1           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :cond_26
    move v3, v4

    .line 1667
    goto/16 :goto_0

    .line 1463
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_3
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1a -> :sswitch_0
        0x1b -> :sswitch_3
        0x42 -> :sswitch_3
        0x45 -> :sswitch_4
        0x46 -> :sswitch_4
        0x50 -> :sswitch_2
        0x52 -> :sswitch_2
        0x55 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x9c -> :sswitch_4
        0x9d -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1677
    const-string v0, "Camera"

    const-string v2, "onKeyUp()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mGLInitialized:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 1850
    :goto_0
    return v0

    .line 1691
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1692
    const-string v0, "Camera"

    const-string v2, "Delivering onKeyUp to other view"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1693
    goto :goto_0

    .line 1695
    :catch_0
    move-exception v0

    .line 1699
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isResetDialogActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1700
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1701
    const-string v0, "Camera"

    const-string v2, "BACK KEY PRESSED! : dissmissResetDialog"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->dismissResetDialog()V

    :cond_2
    move v0, v1

    .line 1704
    goto :goto_0

    .line 1707
    :cond_3
    const-string v0, "Camera"

    const-string v2, "handling onKeyUp event from Activity class"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    sparse-switch p1, :sswitch_data_0

    .line 1850
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1711
    :sswitch_0
    const-string v0, "Camera"

    const-string v2, "BACK KEY PRESSED!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    if-eqz v0, :cond_5

    .line 1714
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mPreMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 1715
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    move v0, v1

    .line 1716
    goto :goto_0

    .line 1719
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 1720
    goto :goto_0

    .line 1722
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isStartingEngine()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isStartingPreview()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1723
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1726
    const-string v0, "Camera"

    const-string v2, "Ignoring BACK KEY because preview is being started!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1727
    goto/16 :goto_0

    .line 1731
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1732
    :cond_9
    const-string v0, "Camera"

    const-string v2, "if smiledetecting or timercounting, call the cancelautofocus"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1736
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    move v0, v1

    .line 1737
    goto/16 :goto_0

    .line 1743
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 1744
    goto/16 :goto_0

    .line 1746
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_c

    .line 1747
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getChkSideMenuItemsShow()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_c

    .line 1748
    const/16 v0, 0x27

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v0, p0, v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    :cond_c
    move v0, v1

    .line 1750
    goto/16 :goto_0

    .line 1754
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 1756
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    .line 1757
    goto/16 :goto_0

    .line 1760
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 1763
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isUsbMassStorageEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    .line 1764
    goto/16 :goto_0

    .line 1767
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1768
    const-string v0, "Camera"

    const-string v2, "shutter is pressed. Preview is not ready..."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1769
    goto/16 :goto_0

    .line 1777
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1778
    const-string v0, "Camera"

    const-string v2, "shutter is returned. Camera is Capturing..."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1779
    goto/16 :goto_0

    .line 1782
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 1783
    goto/16 :goto_0

    .line 1785
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    if-ne v0, v1, :cond_12

    .line 1787
    const-string v0, "Camera"

    const-string v2, "camera is autofocusing in smile shot"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1788
    goto/16 :goto_0

    .line 1790
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1791
    const-string v0, "Camera"

    const-string v2, "returning because it is launch gallery"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1792
    goto/16 :goto_0

    .line 1794
    :cond_13
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eqz v0, :cond_14

    .line 1795
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    move v0, v1

    .line 1796
    goto/16 :goto_0

    .line 1803
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->countForCurrenPictureSaving()I

    move-result v0

    sget v2, Lcom/sec/android/app/camera/Camera;->MAX_SIMULTANEOUS_CAPTURE:I

    if-lt v0, v2, :cond_15

    .line 1804
    const-string v0, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returning because it is over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/Camera;->MAX_SIMULTANEOUS_CAPTURE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " picture save wating. Thread count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->countForCurrenPictureSaving()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1806
    goto/16 :goto_0

    .line 1809
    :cond_15
    if-nez p2, :cond_16

    .line 1810
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1811
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto/16 :goto_1

    .line 1814
    :cond_16
    const/16 v0, 0x1b

    if-eq v0, p1, :cond_4

    .line 1815
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1816
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto/16 :goto_1

    move v0, v1

    .line 1824
    goto/16 :goto_0

    .line 1826
    :sswitch_2
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_17

    move v0, v1

    .line 1827
    goto/16 :goto_0

    .line 1829
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1830
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1831
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_2

    :cond_18
    move v0, v1

    .line 1833
    goto/16 :goto_0

    .line 1836
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    move v0, v1

    .line 1838
    goto/16 :goto_0

    .line 1841
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1843
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1844
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1845
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    :cond_1c
    move v0, v1

    .line 1848
    goto/16 :goto_0

    .line 1709
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x50 -> :sswitch_2
        0x52 -> :sswitch_2
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
    .line 4232
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

    .line 4234
    if-nez p1, :cond_0

    .line 4249
    :goto_0
    return-void

    .line 4237
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4238
    const-string v0, "Camera"

    const-string v1, "returning because it is launch gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4242
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;-><init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 4243
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4244
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->onCompleted()V

    .line 4245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    goto :goto_0

    .line 4247
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->searchForLastContentUri()V

    goto :goto_0
.end method

.method public onModechanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2901
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2902
    const-string v0, "Camera"

    const-string v1, "changeMode failed - engine not started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    :goto_0
    return-void

    .line 2906
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

    .line 2908
    :cond_1
    const-string v0, "Camera"

    const-string v1, "changeMode failed - image capturing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2912
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 2919
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSelectedMode(I)V

    .line 2920
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder(Z)V

    goto :goto_0
.end method

.method public onMultiFrameShotCapturingProgressed(II)V
    .locals 5
    .parameter "progress"
    .parameter "maxImageNum"

    .prologue
    const/16 v4, 0x41

    .line 3662
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

    .line 3664
    if-le p1, p2, :cond_0

    .line 3665
    const-string v1, "Camera"

    const-string v2, "exceed max image number."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    :goto_0
    return-void

    .line 3668
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .line 3670
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    if-nez v0, :cond_1

    .line 3671
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3672
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3675
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->showPostCaptureLayout()V

    .line 3676
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->setRederingProgress(I)V

    .line 3677
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenuItems()V

    goto :goto_0
.end method

.method public onMultiFrameShotStarted()V
    .locals 2

    .prologue
    .line 3683
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 3684
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 3685
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenuItems()V

    .line 3686
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 3687
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 3688
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 3689
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 3690
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 947
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 949
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->setIntent(Landroid/content/Intent;)V

    .line 950
    return-void
.end method

.method public onObjectTrackingStatus(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 4623
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

    .line 4624
    packed-switch p1, :pswitch_data_0

    .line 4636
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

    .line 4639
    :pswitch_0
    return-void

    .line 4624
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
    .line 2770
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraOutdoorVisibility(I)V

    .line 2771
    return-void
.end method

.method public onPanoramaCaptureCancelled()V
    .locals 1

    .prologue
    .line 3513
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    .line 3514
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 3515
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 3516
    :cond_0
    return-void
.end method

.method public onPanoramaCaptureStart()Z
    .locals 4

    .prologue
    const/16 v3, 0x2a

    .line 3500
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_0

    .line 3501
    const-string v1, "Camera"

    const-string v2, "onPanoramaCaptureStart - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    const/4 v1, 0x0

    .line 3509
    :goto_0
    return v1

    .line 3504
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3505
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v0, :cond_1

    .line 3506
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3507
    .restart local v0       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3509
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->isPanoramaCapturing()Z

    move-result v1

    goto :goto_0
.end method

.method public onPanoramaCaptured()V
    .locals 4

    .prologue
    .line 3460
    const-string v1, "Camera"

    const-string v2, "onPanoramaCaptured"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 3462
    const-string v1, "Camera"

    const-string v2, "onPanoramaCaptured - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    :cond_0
    :goto_0
    return-void

    .line 3465
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isPanoramaCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3469
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3470
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    .line 3472
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setCaptureProgressIncreased()V

    .line 3473
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->restartCancelTimer()V

    goto :goto_0
.end method

.method public onPanoramaCapturedMaxFrames()V
    .locals 2

    .prologue
    .line 3528
    const-string v0, "Camera"

    const-string v1, "onPanoramaCapturedMaxFrames()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    return-void
.end method

.method public onPanoramaCapturedNew()V
    .locals 3

    .prologue
    .line 3357
    const-string v0, "Camera"

    const-string v1, "onPanoramaCapturedNew"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    return-void
.end method

.method public onPanoramaDirectionChanged(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 3362
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

    .line 3363
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 3364
    const-string v1, "Camera"

    const-string v2, "onPanoramaDirectionChanged - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    :cond_0
    :goto_0
    return-void

    .line 3368
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3372
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3373
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3377
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->panoramaDirectionChanged(I)V

    goto :goto_0
.end method

.method public onPanoramaError(I)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    .line 3383
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

    .line 3384
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v1, :cond_1

    .line 3385
    const-string v1, "Camera"

    const-string v2, "onPanoramaError - mCameraEngine is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    :cond_0
    :goto_0
    return-void

    .line 3389
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 3391
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_2

    .line 3392
    const-string v1, "Camera"

    const-string v2, "onPanoramaError - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3396
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    .line 3398
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3399
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    .line 3401
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showCaptureLayout()V

    .line 3402
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    .line 3403
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    .line 3405
    const v1, 0x7f09001a

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPanoramaLivePreviewData([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 3494
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3495
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    .line 3496
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->onLivePreviewData([B)V

    .line 3497
    :cond_0
    return-void
.end method

.method public onPanoramaLowResolutionData([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 3481
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_0

    .line 3482
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onPanoramaLowResolutionData([B)V

    .line 3483
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3484
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    .line 3485
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getPanoramaLowResolutionBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setLowResolutionBitmap(Landroid/graphics/Bitmap;)V

    .line 3487
    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_0
    return-void
.end method

.method public onPanoramaProgressStitching(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 3429
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

    .line 3430
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 3431
    const-string v1, "Camera"

    const-string v2, "onPanoramaProgressStitching - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    :cond_0
    :goto_0
    return-void

    .line 3435
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    .line 3438
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3439
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    .line 3441
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 3442
    const-string v1, "Camera"

    const-string v2, "onPanoramaProgressStitching - CE_STATE_SHUTDOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    .line 3444
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_0

    .line 3445
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->resetPanoramaCapturing()V

    goto :goto_0

    .line 3448
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    .line 3449
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setPostCaptureProgress(I)V

    .line 3451
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 3452
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showCaptureLayout()V

    .line 3453
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    goto :goto_0
.end method

.method public onPanoramaRectChanged(II)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 3411
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 3412
    const-string v1, "Camera"

    const-string v2, "onPanoramaRectChanged - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    :cond_0
    :goto_0
    return-void

    .line 3416
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3420
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3421
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3424
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->panoramaRectChanged(II)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 972
    const-string v1, "Camera"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->PauseGLSurface()V

    .line 975
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->notifyOnPause()V

    .line 977
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mFinishOnCreate:Z

    if-eqz v1, :cond_0

    .line 978
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    .line 1087
    :goto_0
    return-void

    .line 982
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 983
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 984
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 985
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 986
    iput v3, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    .line 988
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 989
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 991
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_1

    .line 992
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 996
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 999
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopVoiceRecognizer()V

    .line 1001
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_3

    .line 1002
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->IsWaitingAnimation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1003
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 1004
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setWaitingAnimation(Z)V

    .line 1006
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isFaceZoomed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1007
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceZoom()V

    .line 1010
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_4

    .line 1011
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideAllFaceRect()V

    .line 1014
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_5

    .line 1015
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1021
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_6

    .line 1022
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForEngineStartingThread()V

    .line 1023
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForStartPreviewThreadComplete()V

    .line 1024
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentSearchingLastContentUri()V

    .line 1025
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentPictureSaving()V

    .line 1030
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->interruptProcessforBestPics()V

    .line 1033
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1038
    :goto_2
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->onFocusStateChanged(I)V

    .line 1039
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideAllDlg()V

    .line 1040
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->removeDialog(I)V

    .line 1042
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_8

    .line 1043
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearTimer()V

    .line 1044
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    .line 1045
    .local v0, oldState:I
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1047
    if-eqz v0, :cond_7

    .line 1050
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1051
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 1052
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 1053
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1065
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->onPause()V

    .line 1068
    .end local v0           #oldState:I
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v1, :cond_9

    .line 1069
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->onPause()V

    .line 1071
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopPostCaptureAnimation()V

    .line 1072
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopBlinkShutterAnimation()V

    .line 1079
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1080
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1081
    :cond_a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    .line 1086
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    goto/16 :goto_0

    .line 1034
    :catch_0
    move-exception v1

    goto :goto_2

    .line 1017
    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method public onPreviewFileReceived(I)V
    .locals 3
    .parameter "preview"

    .prologue
    const/4 v1, 0x1

    .line 2745
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v2, :cond_0

    .line 2754
    :goto_0
    return-void

    .line 2748
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-interface {v2, v1}, Lcom/samsung/shareshot/IShareShotService;->setAutoPreview(Z)V

    .line 2749
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2750
    :catch_0
    move-exception v0

    .line 2752
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2748
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onResolutionMenuSelect(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 2597
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2598
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 2599
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 2600
    return-void
.end method

.method public onRespondSharewithNotify()V
    .locals 5

    .prologue
    .line 5566
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UserInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/UserInfo;

    .line 5567
    .local v0, userInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 5568
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/sec/android/app/camera/Camera$20;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/Camera$20;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/dmc/ux/db/UserInfo;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 5579
    return-void
.end method

.method protected onResume()V
    .locals 17

    .prologue
    .line 1090
    const-string v13, "Camera"

    const-string v14, "onResume"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    new-instance v10, Landroid/content/Intent;

    const-string v13, "android.intent.action.SCREENRECORDER_CAMERA"

    invoke-direct {v10, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v10, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    if-nez v13, :cond_0

    .line 1098
    new-instance v13, Lcom/sec/android/app/camera/Camera$UserWrapper;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/sec/android/app/camera/Camera$UserWrapper;-><init>(Lcom/sec/android/app/camera/Camera;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    .line 1099
    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/camera/Camera;->mIsFromSNS:Z

    .line 1102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1104
    .local v5, _axtime_st_1:J
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/camera/Camera;->mFinishOnCreate:Z

    if-eqz v13, :cond_1

    .line 1105
    invoke-super/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 1330
    :goto_0
    return-void

    .line 1112
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    if-eqz v13, :cond_10

    .line 1113
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    .line 1114
    const/16 v13, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 1123
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v13

    const/16 v14, 0xf

    if-ne v13, v14, :cond_3

    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraSettings;->setDeviceName(Lcom/samsung/shareshot/IShareShotService;)V

    .line 1128
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1129
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_Security()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1130
    const v13, 0x7f0900eb

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 1132
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1143
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 1144
    .local v12, win:Landroid/view/Window;
    const/16 v13, 0x80

    invoke-virtual {v12, v13}, Landroid/view/Window;->addFlags(I)V

    .line 1146
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/MenuDimController;->getLowBatteryStatus()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 1147
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 1148
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 1149
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v13

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1152
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1153
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->checkBatteryStatus()V

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "torch_light"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_11

    const/4 v9, 0x1

    .line 1158
    .local v9, externalTorchEnabled:Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/sec/android/app/camera/MenuDimController;->setIsFlashDimmed(Z)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->onResume()V

    .line 1163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 1164
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1167
    const-string v13, "enterprise_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1168
    .local v8, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v13

    if-nez v13, :cond_7

    .line 1169
    const-string v13, "Camera"

    const-string v14, "onResume CAMERA disable"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const v13, 0x7f0900eb

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 1171
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->scheduleProcessBack()V

    .line 1175
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "device_policy"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    .line 1177
    .local v11, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 1178
    const-string v13, "Camera"

    const-string v14, "onResume CAMERA disable"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const v13, 0x7f0900eb

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 1181
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->scheduleProcessBack()V

    .line 1184
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1187
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->initIntentFilter()V

    .line 1189
    const-string v2, "Rcs_Camera_Request"

    .line 1190
    .local v2, RCS_CAMERA_VALUE:Ljava/lang/String;
    const-string v1, "Rcs_Camera_Key"

    .line 1191
    .local v1, RCS_CAMERA_KEY:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1193
    .local v7, b:Landroid/os/Bundle;
    if-eqz v7, :cond_12

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1194
    const-string v13, "onresume"

    const-string v14, "RCS camera launch during CS call :"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_9
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    const-string v14, "mounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    .line 1224
    const-string v13, "Camera"

    const-string v14, "Camera is finished due to MEDIA_UNMOUNTED"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    sget-object v13, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    if-nez v13, :cond_a

    .line 1226
    const-string v13, ""

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    sput-object v13, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    .line 1228
    :cond_a
    sget-object v13, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    const v14, 0x7f0900e3

    invoke-virtual {v13, v14}, Landroid/widget/Toast;->setText(I)V

    .line 1229
    sget-object v13, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 1230
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1249
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 1250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 1251
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    .line 1253
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v13

    const/16 v14, 0xf

    if-ne v13, v14, :cond_16

    .line 1254
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v13, :cond_b

    .line 1256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setWifiDirectStatus()V

    .line 1263
    :cond_b
    :goto_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/camera/Camera;->mbNeedToStartEngineSync:Z

    .line 1265
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    .line 1266
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->initIntentReceive()V

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 1270
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 1271
    const-string v13, "from_app"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    .line 1272
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1280
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v13, :cond_c

    .line 1281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 1284
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 1286
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/camera/Camera;->bFromSecureSetting:Z

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1287
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getEULAenable()Z

    move-result v13

    if-nez v13, :cond_18

    .line 1288
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->displayEULADialog()V

    .line 1292
    :goto_6
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/camera/Camera;->bFromSecureSetting:Z

    .line 1295
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v13, :cond_f

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getChkSideMenuItemsShow()Z

    move-result v13

    if-nez v13, :cond_e

    .line 1297
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 1299
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refresh()V

    .line 1300
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 1303
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->updateStorage()V

    .line 1305
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->initRemains()V

    .line 1307
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->refreshButtonDimForCamera()V

    .line 1325
    invoke-super/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 1327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1328
    .local v3, _axtime_ed_1:J
    const-string v13, "AXLOG"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onResume-End**End["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]**["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v3, v5

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]**[]**"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    move-wide v5, v3

    .line 1330
    goto/16 :goto_0

    .line 1115
    .end local v1           #RCS_CAMERA_KEY:Ljava/lang/String;
    .end local v2           #RCS_CAMERA_VALUE:Ljava/lang/String;
    .end local v3           #_axtime_ed_1:J
    .end local v7           #b:Landroid/os/Bundle;
    .end local v8           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v9           #externalTorchEnabled:Z
    .end local v11           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v12           #win:Landroid/view/Window;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v13

    const/16 v14, 0xf

    if-ne v13, v14, :cond_2

    .line 1116
    const/4 v13, 0x1

    sput-boolean v13, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mIsSnsMode:Z

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection()Z

    move-result v13

    if-nez v13, :cond_2

    .line 1118
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    goto/16 :goto_1

    .line 1157
    .restart local v12       #win:Landroid/view/Window;
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1196
    .restart local v1       #RCS_CAMERA_KEY:Ljava/lang/String;
    .restart local v2       #RCS_CAMERA_VALUE:Ljava/lang/String;
    .restart local v7       #b:Landroid/os/Bundle;
    .restart local v8       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v9       #externalTorchEnabled:Z
    .restart local v11       #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 1197
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_Call()Z

    move-result v13

    if-nez v13, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_VoIPCall()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1199
    :cond_13
    invoke-super/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_0

    .line 1232
    :cond_14
    sget-object v13, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    if-eqz v13, :cond_15

    .line 1233
    sget-object v13, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v13}, Landroid/widget/Toast;->cancel()V

    .line 1235
    :cond_15
    const/4 v13, 0x0

    sput-object v13, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    goto/16 :goto_3

    .line 1259
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto/16 :goto_4

    .line 1275
    :cond_17
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 1277
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_5

    .line 1290
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto/16 :goto_6
.end method

.method public onReviewMenuSelect(I)V
    .locals 1
    .parameter "review"

    .prologue
    .line 2719
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    .line 2720
    return-void
.end method

.method public onRunSNSAfterConnect(I)V
    .locals 3
    .parameter "auto"

    .prologue
    const/4 v1, 0x1

    .line 2757
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v2, :cond_0

    .line 2767
    :goto_0
    return-void

    .line 2760
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-interface {v2, v1}, Lcom/samsung/shareshot/IShareShotService;->setAutoStart(Z)V

    .line 2761
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2766
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setNetWork(I)V

    goto :goto_0

    .line 2760
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 2762
    :catch_0
    move-exception v0

    .line 2764
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public onSaturationMenuSelect(I)V
    .locals 1
    .parameter "saturation"

    .prologue
    .line 2885
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 2886
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "s"

    .prologue
    const/4 v6, 0x0

    .line 2010
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2028
    :goto_0
    return v6

    .line 2014
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v0, v1, v2

    .line 2016
    .local v0, newZoomValue:I
    if-gez v0, :cond_1

    .line 2017
    const/4 v0, 0x0

    .line 2019
    :cond_1
    sget v1, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    if-le v0, v1, :cond_2

    .line 2020
    sget v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    .line 2022
    :cond_2
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 2024
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 2025
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->invalidate()V

    .line 2026
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2027
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/Camera$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v4, -0x2

    const/4 v6, 0x0

    .line 2032
    const-string v2, "Camera"

    const-string v3, "onScaleBegin"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2034
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    .line 2036
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFocusDueToZoom()V

    .line 2038
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-nez v2, :cond_0

    .line 2039
    new-instance v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 2040
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setLastOrientation(I)V

    .line 2041
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2042
    .local v1, win:Landroid/view/Window;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2045
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2046
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2047
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2050
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #win:Landroid/view/Window;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 2051
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 2052
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2053
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/Camera$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2055
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 2056
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2071
    const-string v0, "Camera"

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2073
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2074
    return-void
.end method

.method public onSceneModeMenuSelect(I)V
    .locals 3
    .parameter "sceneMode"

    .prologue
    .line 2244
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

    .line 2246
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2247
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    .line 2249
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2250
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 2251
    return-void
.end method

.method public onSearchingLastContentUriCompleted()V
    .locals 1

    .prologue
    .line 4252
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    if-eqz v0, :cond_0

    .line 4253
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->onCompleted()V

    .line 4254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 4256
    :cond_0
    return-void
.end method

.method public onSelfModeChangeSelected()V
    .locals 2

    .prologue
    .line 2258
    const-string v0, "Camera"

    const-string v1, "onSelfModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2261
    const-string v0, "Camera"

    const-string v1, "onSelfModeChangeSelected failed - queue is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    :goto_0
    return-void

    .line 2264
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 2265
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_1

    .line 2266
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    .line 2269
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2270
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopEngine()V

    .line 2272
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 2274
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera()V

    .line 2276
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 2277
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 2278
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    goto :goto_0
.end method

.method public onSharpnessMenuSelect(I)V
    .locals 1
    .parameter "sharpness"

    .prologue
    .line 2893
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    .line 2894
    return-void
.end method

.method public onShootAndShareMenuSelect(I)V
    .locals 2
    .parameter "sns"

    .prologue
    .line 2723
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootAndShare(I)V

    .line 2724
    const-string v0, "onShootAndShareMenuSelect"

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2726
    const-string v0, "onShootAndShareMenuSelect"

    const-string v1, "-----------on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    :cond_0
    return-void
.end method

.method public onShootingModeMenuSelect(I)V
    .locals 5
    .parameter "shootingMode"

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x1

    .line 2317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    .line 2319
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 2320
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFaceZoomGuideDialog()V

    .line 2323
    :cond_0
    if-ne p1, v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2324
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    .line 2326
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

    .line 2328
    if-ne p1, v4, :cond_2

    .line 2329
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Camera;->manageLocalService(Z)V

    .line 2331
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDeviceName(Lcom/samsung/shareshot/IShareShotService;)V

    .line 2332
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->setDeviceType()V

    .line 2336
    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 2337
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

    .line 2344
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2346
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 2347
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 2348
    return-void
.end method

.method public onShutterSoundMenuSelect(I)V
    .locals 1
    .parameter "shuttersound"

    .prologue
    .line 2774
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    .line 2775
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setOnShutterSound(I)V

    .line 2776
    return-void
.end method

.method public onSmileDetectingStopped()V
    .locals 3

    .prologue
    .line 3312
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopSmileDetection()V

    .line 3313
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 3314
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->stopDetect()V

    .line 3315
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->cleanSmileRect()V

    .line 3316
    return-void
.end method

.method public onSmileShotDetectionSuccess()V
    .locals 2

    .prologue
    .line 3319
    const-string v0, "Camera"

    const-string v1, "onOnSmileShotDetectionSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->smileDetectionCompleted()V

    .line 3321
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    .line 3322
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    .line 3323
    return-void
.end method

.method public onSmileShotFaceRectChanged([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 3328
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 3338
    :cond_0
    :goto_0
    return-void

    .line 3332
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 3333
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3337
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->smileShotFaceRectChanged([B)V

    goto :goto_0
.end method

.method public onSmileShotSmileRectChanged([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 3343
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 3353
    :cond_0
    :goto_0
    return-void

    .line 3347
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 3348
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3352
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->smileShotSmileRectChanged([B)V

    goto :goto_0
.end method

.method public onStartingPreviewCompleted()V
    .locals 0

    .prologue
    .line 2998
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initIntentFilterBattery()V

    .line 2999
    return-void
.end method

.method public onStorageMenuSelect(I)V
    .locals 1
    .parameter "storage"

    .prologue
    .line 2783
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 2784
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x3d

    .line 3299
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

    .line 3300
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .line 3301
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    if-nez v0, :cond_0

    .line 3302
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3303
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3305
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3306
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->showMenu()V

    .line 3307
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->updateTime(I)V

    .line 3308
    return-void
.end method

.method public onTimerMenuSelect(I)V
    .locals 1
    .parameter "timer"

    .prologue
    .line 2593
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    .line 2594
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

    .line 1854
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopPostCaptureAnimation()V

    .line 1856
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1857
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 1949
    :goto_0
    return v0

    .line 1862
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_1

    .line 1863
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1867
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/MenuBase;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1868
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1869
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v0, v1

    .line 1871
    goto :goto_0

    .line 1873
    :catch_0
    move-exception v0

    .line 1877
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isPreviewTouchEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 1878
    goto :goto_0

    .line 1881
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

    .line 1882
    goto :goto_0

    .line 1885
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isZoomAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1887
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1891
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

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

    .line 1893
    goto :goto_0

    .line 1898
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGestureDetecor:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1899
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 1904
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1949
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 1906
    :pswitch_0
    const-string v0, "Camera"

    const-string v2, "MotionEvent.ACTION_UP"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
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

    .line 1911
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 1912
    iput v3, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    .line 1913
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/camera/Camera;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V

    .line 1914
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->shrinkFocusRect()V

    .line 1915
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 1916
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 1919
    :cond_b
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    move v0, v1

    .line 1920
    goto/16 :goto_0

    .line 1922
    :pswitch_1
    const-string v0, "Camera"

    const-string v2, "MotionEvent.ACTION_DOWN"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1926
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/camera/Camera;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V

    .line 1927
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    :cond_c
    move v0, v1

    .line 1930
    goto/16 :goto_0

    .line 1933
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    if-eqz v0, :cond_d

    .line 1934
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 1935
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_d

    .line 1936
    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/camera/Camera;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V

    :cond_d
    move v0, v1

    .line 1940
    goto/16 :goto_0

    .line 1942
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1943
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1944
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 1945
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    move v0, v1

    .line 1946
    goto/16 :goto_0

    .line 1888
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 1904
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUserSelectionListChanged(Lcom/samsung/shareshot/User;Z)V
    .locals 3
    .parameter "user"
    .parameter "isChecked"

    .prologue
    .line 5462
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectUser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5464
    if-eqz p2, :cond_0

    .line 5465
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->onUserSelected(Lcom/samsung/shareshot/User;)V

    .line 5469
    :goto_0
    return-void

    .line 5467
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->onUserCancelSelected(Lcom/samsung/shareshot/User;)V

    goto :goto_0
.end method

.method public onWhiteBalanceMenuSelect(I)V
    .locals 2
    .parameter "whiteBalance"

    .prologue
    .line 2673
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 2674
    if-eqz p1, :cond_0

    .line 2675
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 2677
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 1335
    if-eqz p1, :cond_0

    .line 1336
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isVoiceInputSettingOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1337
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startVoiceRecognizer()V

    .line 1338
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showVoiceInputIndicator(I)V

    .line 1345
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onWindowFocusChanged(Z)V

    .line 1346
    return-void

    .line 1341
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showVoiceInputIndicator(I)V

    goto :goto_0
.end method

.method public onZoomValueMenuSelect(I)V
    .locals 1
    .parameter "zoomValue"

    .prologue
    .line 2868
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isFaceZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2869
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceZoom()V

    .line 2870
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValueForced(I)V

    .line 2874
    :goto_0
    return-void

    .line 2872
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto :goto_0
.end method

.method public pauseAudioPlayback()V
    .locals 4

    .prologue
    .line 736
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 738
    return-void
.end method

.method public playCameraSound(II)V
    .locals 9
    .parameter "Sound"
    .parameter "loop"

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    .line 3855
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 3856
    const-string v0, "Camera"

    const-string v1, "playCameraSound - mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3878
    :cond_0
    :goto_0
    return-void

    .line 3860
    :cond_1
    const/16 v7, 0xf

    .line 3861
    .local v7, MAX_VOLUME:I
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    .line 3862
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    .line 3863
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 3864
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=4;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    .line 3870
    :cond_3
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3871
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3872
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    aput v0, v8, p1

    goto :goto_0

    .line 3865
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 3866
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=3;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    goto :goto_1

    .line 3875
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    aput v0, v8, p1

    goto :goto_0
.end method

.method public playFocusSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 3881
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->play(I)V

    .line 3882
    return-void
.end method

.method public prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V
    .locals 11
    .parameter "matrix"

    .prologue
    const/high16 v10, 0x44fa

    const/high16 v9, 0x4000

    const/high16 v6, 0x3f80

    const/4 v5, 0x1

    .line 3136
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraHolder;->getCameraInfo()[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v8

    aget-object v0, v7, v8

    .line 3137
    .local v0, info:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    iget v7, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-ne v7, v5, :cond_1

    move v1, v5

    .line 3142
    .local v1, mirror:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06006d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 3144
    .local v4, screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3145
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060070

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 3153
    .local v3, previewWidth:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06006e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 3156
    .local v2, previewHeight:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v7

    if-ne v7, v5, :cond_0

    .line 3157
    const/4 v1, 0x0

    .line 3159
    :cond_0
    if-eqz v1, :cond_4

    const/high16 v5, -0x4080

    :goto_2
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3161
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getDisplayOrientation()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 3164
    int-to-float v5, v3

    div-float/2addr v5, v10

    int-to-float v6, v2

    div-float/2addr v6, v10

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3165
    int-to-float v5, v3

    div-float/2addr v5, v9

    int-to-float v6, v2

    div-float/2addr v6, v9

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3168
    sub-int v5, v4, v3

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3169
    return-void

    .line 3137
    .end local v1           #mirror:Z
    .end local v2           #previewHeight:I
    .end local v3           #previewWidth:I
    .end local v4           #screenWidth:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3146
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

    .line 3148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060072

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .restart local v3       #previewWidth:I
    goto :goto_1

    .line 3150
    .end local v3           #previewWidth:I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060071

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .restart local v3       #previewWidth:I
    goto/16 :goto_1

    .restart local v2       #previewHeight:I
    :cond_4
    move v5, v6

    .line 3159
    goto :goto_2
.end method

.method protected produceGSPersonalSettingInfoValue(Ljava/lang/String;)Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 5991
    new-instance v2, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    .line 5992
    .local v2, personalInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    .line 5994
    invoke-virtual {v2, p1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    .line 5996
    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5997
    .local v0, f:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5998
    .local v1, f1:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5999
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    .line 6004
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 6014
    :goto_1
    return-object v2

    .line 6001
    :cond_1
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    goto :goto_0

    .line 6006
    :pswitch_0
    const v3, 0x7f020200

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconResID(I)V

    goto :goto_1

    .line 6009
    :pswitch_1
    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconPath(Ljava/lang/String;)V

    goto :goto_1

    .line 6004
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized refreshDeviceList()V
    .locals 6

    .prologue
    .line 5125
    monitor-enter p0

    :try_start_0
    const-string v2, "Camera"

    const-string v3, "refreshDeviceList"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5126
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    if-eqz v2, :cond_1

    .line 5127
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 5128
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLList;->invalidate()V

    .line 5129
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 5130
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x36

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 5131
    .local v0, menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 5132
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5133
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 5135
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5136
    .local v1, text:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5140
    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 5125
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public resetFocus(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 4658
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 4659
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->resetFocus(Landroid/view/View;)V

    .line 4661
    :cond_0
    return-void
.end method

.method public resetPosIndicator()V
    .locals 2

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-nez v0, :cond_1

    .line 2007
    :cond_0
    :goto_0
    return-void

    .line 2003
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->resetPosIndicator()V

    .line 2004
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->resetFaceRect()V

    goto :goto_0
.end method

.method public resetScaleDetector()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2087
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_0

    .line 2088
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 2089
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 2092
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_1

    .line 2093
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 2094
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 2095
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 2098
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startContinuousAF()V

    .line 2100
    return-void
.end method

.method public resetToDefaultSettings()V
    .locals 1

    .prologue
    .line 3901
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 3902
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopEngine()V

    .line 3904
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleResetSettings()V

    .line 3906
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 3907
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 3908
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    .line 3910
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 3912
    return-void
.end method

.method public resetTouchFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4642
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4643
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 4646
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_1

    .line 4647
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 4649
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4650
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 4652
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 4653
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 4654
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 4655
    return-void
.end method

.method public resizeForPreviewAspectRatio()Z
    .locals 8

    .prologue
    .line 2981
    const-string v4, "Camera"

    const-string v5, "resizeForPreviewAspectRatio"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    const/4 v2, 0x0

    .line 2987
    .local v2, result:Z
    const v4, 0x7f0b0004

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 2988
    .local v1, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 2989
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    .line 2990
    .local v3, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v0

    .line 2991
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

    .line 2992
    int-to-double v4, v3

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setAspectRatio(D)Z

    move-result v2

    .line 2993
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 2994
    return v2
.end method

.method public restartTouchAF()V
    .locals 0

    .prologue
    .line 1965
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->cancelTouchAutoFocus()V

    .line 1966
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->restartTouchAutoFocus()V

    .line 1967
    return-void
.end method

.method public restartTouchAutoFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1971
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    if-eqz v2, :cond_0

    .line 1973
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 1975
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getTouchFocusRectCenterX()I

    move-result v0

    .line 1976
    .local v0, TouchFocusRectCenterX:I
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getTouchFocusRectCenterY()I

    move-result v1

    .line 1977
    .local v1, TouchFocusRectCenterY:I
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTouchFocusRectCenter(II)V

    .line 1978
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setTouchFocusPosition(II)V

    .line 1980
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->shrinkFocusRect()V

    .line 1981
    iput v4, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    .line 1982
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 1984
    .end local v0           #TouchFocusRectCenterX:I
    .end local v1           #TouchFocusRectCenterY:I
    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 1986
    return-void
.end method

.method public resumeAudioPlayback()V
    .locals 2

    .prologue
    .line 741
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 742
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 743
    return-void
.end method

.method public runComfirmedDialog(Lcom/samsung/shareshot/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 5379
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

    new-instance v2, Lcom/sec/android/app/camera/Camera$16;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$16;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5386
    return-void
.end method

.method public runDialog(Lcom/samsung/shareshot/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 5389
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

    new-instance v2, Lcom/sec/android/app/camera/Camera$18;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/Camera$18;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/User;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/sec/android/app/camera/Camera$17;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/Camera$17;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/User;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5420
    return-void
.end method

.method public saveDataToFile(Ljava/lang/String;[B)Z
    .locals 5
    .parameter "filePath"
    .parameter "data"

    .prologue
    .line 4424
    const/4 v1, 0x0

    .line 4426
    .local v1, f:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4427
    .end local v1           #f:Ljava/io/FileOutputStream;
    .local v2, f:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 4431
    if-eqz v2, :cond_0

    .line 4433
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4439
    :cond_0
    :goto_0
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v3

    .line 4428
    :catch_0
    move-exception v0

    .line 4429
    .local v0, e:Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    .line 4431
    if-eqz v1, :cond_1

    .line 4433
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 4434
    :catch_1
    move-exception v4

    goto :goto_1

    .line 4431
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 4433
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 4436
    :cond_2
    :goto_4
    throw v3

    .line 4434
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

    .line 4431
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 4428
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
    .line 5423
    const/4 v3, 0x0

    .line 5424
    .local v3, user:Lcom/samsung/shareshot/User;
    const/4 v2, 0x0

    .line 5426
    .local v2, searchInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v4

    .line 5427
    .local v4, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5428
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    .line 5429
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    .line 5430
    if-eqz v2, :cond_0

    .line 5431
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

    .line 5440
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v4           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_0
    return-object v5

    .line 5437
    :catch_0
    move-exception v5

    .line 5440
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public searchUser(Ljava/lang/String;)Lcom/samsung/shareshot/User;
    .locals 7
    .parameter "userIP"

    .prologue
    .line 5512
    const/4 v4, 0x0

    .line 5513
    .local v4, user:Lcom/samsung/shareshot/User;
    const/4 v3, 0x0

    .line 5516
    .local v3, searchInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v6}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v5

    .line 5517
    .local v5, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5518
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5519
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v4, v0

    .line 5520
    invoke-virtual {v4}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    .line 5521
    if-eqz v3, :cond_0

    .line 5522
    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5524
    monitor-exit v5

    move-object v6, v4

    .line 5534
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_0
    return-object v6

    .line 5528
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .restart local v5       #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :cond_1
    monitor-exit v5

    .line 5534
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 5528
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

    .line 5529
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :catch_0
    move-exception v1

    .line 5531
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
    .line 5444
    .local p1, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    const/4 v3, 0x0

    .line 5445
    .local v3, user:Lcom/samsung/shareshot/User;
    const/4 v2, 0x0

    .line 5446
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

    .line 5447
    monitor-enter p1

    .line 5448
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5449
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    .line 5450
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    .line 5451
    if-eqz v2, :cond_0

    .line 5452
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v4

    if-ne p2, v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v4

    if-ne p3, v4, :cond_0

    .line 5453
    monitor-exit p1

    move-object v4, v3

    .line 5457
    :goto_0
    return-object v4

    .line 5456
    :cond_1
    monitor-exit p1

    .line 5457
    const/4 v4, 0x0

    goto :goto_0

    .line 5456
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setConnectingStateGPS(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 4753
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 4754
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setConnectingStateGPS(I)V

    .line 4755
    :cond_0
    return-void
.end method

.method public setDefaultLayout()V
    .locals 0

    .prologue
    .line 3897
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateUIWhenDefaultLayout()V

    .line 3898
    return-void
.end method

.method public setGuideLineSize(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 5763
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 5764
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setGuideLineSize(Landroid/view/View;)V

    .line 5765
    :cond_0
    return-void
.end method

.method public setHDRShotModeChanged(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 4228
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setHDRShotModeChanged(I)V

    .line 4229
    return-void
.end method

.method public setIsLaunchGallery(Z)V
    .locals 0
    .parameter "chkLaunchGallery"

    .prologue
    .line 2107
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    .line 2108
    return-void
.end method

.method public setLastCapturedTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 4404
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setLastCapturedTitle(Ljava/lang/String;)V

    .line 4405
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 4400
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setLastContentUri(Landroid/net/Uri;)V

    .line 4401
    return-void
.end method

.method public setOnUserSelected(Lcom/sec/android/app/camera/Camera$OnUserSelected;I)V
    .locals 2
    .parameter "l"
    .parameter "position"

    .prologue
    .line 5504
    const-string v0, "Camera"

    const-string v1, "set on user selceted listen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5505
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5506
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5507
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5508
    return-void
.end method

.method public setSelectedMenuId(I)V
    .locals 1
    .parameter "commandId"

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setSelectedMenuId(I)V

    .line 2104
    return-void
.end method

.method public setShutterSoundToDefault()V
    .locals 2

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setOnShutterSound(I)V

    .line 2780
    return-void
.end method

.method public setTouchAutoFocusActive(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 2116
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    .line 2120
    return-void
.end method

.method public showBurstShotsGuideDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 6116
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6150
    :cond_0
    :goto_0
    return-void

    .line 6119
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

    .line 6120
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getBurstShotsGuideTextDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 6121
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6122
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 6124
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 6125
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0015

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 6126
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 6128
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f090131

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 6130
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 6131
    const v5, 0x7f09002e

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 6132
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6133
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6135
    new-instance v5, Lcom/sec/android/app/camera/Camera$29;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camera$29;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 6142
    const v5, 0x7f0900a1

    new-instance v6, Lcom/sec/android/app/camera/Camera$30;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camera$30;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6147
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    .line 6148
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showEditBackground(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 5054
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 5055
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showEditBackground(Z)V

    .line 5057
    :cond_0
    return-void
.end method

.method public showFaceZoomGuideDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 6079
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6113
    :cond_0
    :goto_0
    return-void

    .line 6082
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

    .line 6083
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFaceZoomHelpTextDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 6084
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6085
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 6087
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 6088
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0015

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 6089
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 6091
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f090130

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 6093
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 6094
    const v5, 0x7f090075

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 6095
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6096
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6098
    new-instance v5, Lcom/sec/android/app/camera/Camera$27;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camera$27;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 6105
    const v5, 0x7f0900a1

    new-instance v6, Lcom/sec/android/app/camera/Camera$28;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camera$28;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6110
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    .line 6111
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showSideMenu()V
    .locals 1

    .prologue
    .line 5005
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showSideMenu()V

    .line 5006
    return-void
.end method

.method public showSideMenuItems()V
    .locals 1

    .prologue
    .line 4996
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 4997
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showSideMenuItems()V

    .line 4998
    :cond_0
    return-void
.end method

.method public showWifiConnectionDialog()V
    .locals 1

    .prologue
    .line 2313
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->showDialog(I)V

    .line 2314
    return-void
.end method

.method public shrinkFocusRect()V
    .locals 1

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 1996
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->shrinkFocusRect()V

    .line 1997
    :cond_0
    return-void
.end method

.method public shutterButtonCancelAction()V
    .locals 2

    .prologue
    .line 5039
    const-string v0, "Camera"

    const-string v1, "shutterButtonCancelAction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5040
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 5041
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 5042
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 5043
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 5044
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 5046
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

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isBestPicMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5049
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShot()V

    .line 5051
    :cond_1
    return-void
.end method

.method public declared-synchronized startBlinkShutterAnimation()V
    .locals 7

    .prologue
    .line 4959
    monitor-enter p0

    const v0, 0x7f0b0004

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 4960
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

    .line 4961
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 4963
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/Camera$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$9;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setProgressListener(Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;)V

    .line 4978
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->startCustomAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4979
    monitor-exit p0

    return-void

    .line 4959
    .end local v6           #previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startContinuousAF()V
    .locals 1

    .prologue
    .line 5768
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 5769
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->startContinuousAF()V

    .line 5770
    :cond_0
    return-void
.end method

.method public declared-synchronized startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 4836
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    .line 4924
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4841
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 4842
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

    .line 4844
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v1, :cond_0

    .line 4845
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4846
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4921
    .end local v0           #orientation:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 4836
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startVoiceRecognizer()V
    .locals 3

    .prologue
    .line 6026
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-nez v0, :cond_0

    .line 6027
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 6028
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    new-instance v1, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->InitBargeInRecognizer(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;)V

    .line 6030
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v0, :cond_1

    .line 6031
    const-string v0, "Camera"

    const-string v1, "start voice recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6032
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->startBargeIn(I)V

    .line 6034
    :cond_1
    return-void
.end method

.method public declared-synchronized stopBlinkShutterAnimation()V
    .locals 2

    .prologue
    .line 4982
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v0, :cond_1

    .line 4983
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 4984
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 4985
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 4986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4988
    :cond_1
    monitor-exit p0

    return-void

    .line 4982
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopBurstShot()V
    .locals 1

    .prologue
    .line 5800
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 5801
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopBurstShot()V

    .line 5802
    :cond_0
    return-void
.end method

.method public stopCameraSound(I)V
    .locals 2
    .parameter "Sound"

    .prologue
    .line 3885
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 3886
    const-string v0, "Camera"

    const-string v1, "stopCameraSound - mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3894
    :goto_0
    return-void

    .line 3889
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    if-nez v0, :cond_1

    .line 3890
    const-string v0, "Camera"

    const-string v1, "stopCameraSound - mStreamId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3893
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
    .line 5773
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 5774
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopContinuousAF()V

    .line 5775
    :cond_0
    return-void
.end method

.method public updateIfResolutionChanged()V
    .locals 3

    .prologue
    .line 2603
    const-string v0, "Camera"

    const-string v1, "updateIfResolutionChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2606
    const-string v0, "Camera"

    const-string v1, "resolution is changed. update for new resolution"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 2609
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2610
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 2612
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2615
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 2618
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->updateSideMenuBackground(I)V

    .line 2619
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 2620
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isFaceZoomed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2621
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceZoom()V

    .line 2623
    :cond_1
    return-void
.end method

.method public updateRemainTime()V
    .locals 4

    .prologue
    .line 4690
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getRemainStorage()I

    move-result v0

    .line 4692
    .local v0, nRemainCount:I
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_0

    .line 4693
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRemainCount(I)V

    .line 4695
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

    .line 4696
    return-void
.end method

.method public updateSideMenuBackground(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 2626
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 2627
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2628
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideBackground()V

    .line 2633
    :cond_0
    :goto_0
    return-void

    .line 2630
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
    .line 4825
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4832
    :cond_0
    :goto_0
    return-void

    .line 4829
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 4830
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    goto :goto_0
.end method

.method public updateUIWhenDefaultLayout()V
    .locals 5

    .prologue
    const/16 v4, 0x28

    .line 3915
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->resetLayout()V

    .line 3917
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x29

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 3918
    .local v1, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    if-eqz v1, :cond_0

    .line 3919
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshEditableMenu()V

    .line 3920
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 3922
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 3923
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v0, :cond_1

    .line 3924
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 3929
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 3930
    return-void

    .line 3926
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEditableShortcutOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUIWhenResetSettings()V
    .locals 5

    .prologue
    const/16 v4, 0x28

    .line 3933
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 3934
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->updateSideMenuBackground(I)V

    .line 3935
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3936
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 3937
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 3938
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->closeVisibleViews()V

    .line 3939
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearInvisibleViews()V

    .line 3941
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 3942
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v0, :cond_2

    .line 3943
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 3948
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x29

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 3949
    .local v1, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    if-eqz v1, :cond_0

    .line 3950
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshEditableMenu()V

    .line 3951
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 3954
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v2, :cond_1

    .line 3955
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 3957
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 3958
    return-void

    .line 3945
    .end local v1           #sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEditableShortcutOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUIWhenSwitchCamera()V
    .locals 1

    .prologue
    .line 2287
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2288
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 2289
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->updateSideMenuBackground(I)V

    .line 2290
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 2295
    return-void
.end method

.method public wakeupToSnSMod()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    .line 5539
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "IntentExtraMessageType"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5540
    .local v1, intent_extra_message:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "ActivateConfirm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5541
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mRespondNoti:Z

    .line 5542
    const-string v2, "Camera"

    const-string v3, " will wake up camera to deal with share with request"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5543
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onRespondSharewithNotify()V

    .line 5549
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 5550
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/sec/android/app/camera/Camera$19;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/Camera$19;-><init>(Lcom/sec/android/app/camera/Camera;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5563
    :cond_1
    :goto_1
    return-void

    .line 5544
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isfromhistory"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5545
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    goto :goto_0

    .line 5559
    :catch_0
    move-exception v0

    .line 5561
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method
