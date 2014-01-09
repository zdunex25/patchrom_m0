.class public Lcom/sec/android/app/camera/Camcorder;
.super Lcom/sec/android/app/camera/AbstractCameraActivity;
.source "Camcorder.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Camcorder$ThumbKicker;,
        Lcom/sec/android/app/camera/Camcorder$GestureListener;,
        Lcom/sec/android/app/camera/Camcorder$MainHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MOVE_SENSITIVITY:I = 0x5

.field private static CA_HARDKEY_FULL_UP:I = 0x0

.field private static CA_HARDKEY_HALF_PRESS:I = 0x0

.field private static CA_HARDKEY_NONE:I = 0x0

.field private static final DM_CAMERA_OFF:I = 0x0

.field private static final DM_CAMERA_ON:I = 0x1

.field private static final INTENT_MSG_SECURITY:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field private static final LAST_VIDEO_URI:Ljava/lang/String; = "last_video_uri"

.field private static final MSG_RECORDING_MODE_POPUP_FOR_THREAD:I = 0x0

.field private static final NUM_SHUTTERSOUND_CHANNELS:I = 0x3

.field private static ORIENTATION_DIRTY_DURATION:I = 0x0

.field private static ORIENTATION_TIMER_EXPIRED:I = 0x0

.field private static SET_DIRTY_COUNT:I = 0x0

.field private static SET_DIRTY_DURATION:I = 0x0

.field private static SET_DIRTY_TIMER_EXPIRED:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "Camcorder"

.field private static mNotSupportedZoomToast:Landroid/widget/Toast;

.field private static mStorageToast:Landroid/widget/Toast;


# instance fields
.field private battLevel:I

.field private battScale:I

.field private battTemp:I

.field private mActionMoveCount:I

.field protected mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallStateListener:Landroid/telephony/PhoneStateListener;

.field private mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

.field private mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

.field private mCamcorderSound:Landroid/media/MediaActionSound;

.field private mChkLaunchGallery:Z

.field private mDirtyCount:I

.field private mDoRestoreShutterButton:Z

.field private mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

.field private mGestureDetecor:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/sec/android/app/camera/Camcorder$GestureListener;

.field private mHardKeyStatus:I

.field mHideScaleZoomRect:Ljava/lang/Runnable;

.field private mInitialZoomValueOnScaleBegin:I

.field private mIsCallStateRinging:Z

.field private mIsDestroying:Z

.field private mIsReocrdingStoppedForcely:Z

.field private mIsTouchFocusStarted:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

.field private mLastVideoUri:Landroid/net/Uri;

.field protected mLowBatteryDisableFlashPopupDisplayed:Z

.field private mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

.field private mPassedTimeAfterUpdatingRecordingButtonMs:J

.field private mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

.field protected mRecordingPopupHandler:Landroid/os/Handler;

.field private mRemainTime:I

.field private mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

.field private mSideMenuLoadingThread:Ljava/lang/Thread;

.field private mSkipSaveDiscard:Z

.field private mSnapshotLimitationDialog:Landroid/app/AlertDialog;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStreamVolume:F

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

.field private mTouchAutoFocusActive:Z

.field protected mWeather:Lcom/sec/android/app/camera/Weather;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 144
    sput v1, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    .line 145
    const/16 v0, 0x3e8

    sput v0, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_DIRTY_DURATION:I

    .line 147
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_TIMER_EXPIRED:I

    .line 148
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_DURATION:I

    .line 149
    const/4 v0, 0x7

    sput v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_COUNT:I

    .line 152
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    .line 153
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_HALF_PRESS:I

    .line 156
    sput v1, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_FULL_UP:I

    .line 297
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;-><init>()V

    .line 117
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 118
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    .line 122
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    .line 124
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    .line 125
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z

    .line 126
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mRemainTime:I

    .line 128
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    .line 131
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 133
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 137
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSkipSaveDiscard:Z

    .line 138
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mChkLaunchGallery:Z

    .line 150
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    .line 158
    sget v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    .line 166
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    .line 168
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    .line 196
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$1;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingPopupHandler:Landroid/os/Handler;

    .line 211
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/Camcorder$MainHandler;-><init>(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/Camcorder$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    .line 272
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$GestureListener;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/Camcorder$GestureListener;-><init>(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/Camcorder$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGestureListener:Lcom/sec/android/app/camera/Camcorder$GestureListener;

    .line 273
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGestureDetecor:Landroid/view/GestureDetector;

    .line 275
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 276
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mTouchAutoFocusActive:Z

    .line 277
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    .line 279
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mActionMoveCount:I

    .line 284
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 287
    iput v3, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    .line 288
    iput v3, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    .line 289
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    .line 295
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 299
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 300
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    .line 303
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    .line 314
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$2;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 455
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$3;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    .line 472
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$4;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1659
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$5;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 3092
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    .line 3094
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->onChkVideoCaptureIntent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/Camcorder;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/Camcorder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    return-void
.end method

.method static synthetic access$1602(Lcom/sec/android/app/camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z

    return p1
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/sec/android/app/camera/Camcorder;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/glview/TwGLAniViewGroup;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/Camcorder;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/camera/Camcorder;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_DURATION:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    return p1
.end method

.method static synthetic access$404(Lcom/sec/android/app/camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_COUNT:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->showRecordingModePopup()V

    return-void
.end method

.method private checkCamcorderStartCondition_RequestedSize()Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 778
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.intent.extra.sizeLimit"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 779
    .local v1, requestedSizeLimit:J
    const/4 v3, 0x0

    .line 782
    .local v3, videoBitRate:I
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getCamcorderInnerProfile()Lcom/sec/android/app/camera/MediaRecorderProfile;

    move-result-object v0

    .line 783
    .local v0, profile:Lcom/sec/android/app/camera/MediaRecorderProfile;
    iget v3, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    .line 789
    cmp-long v6, v1, v9

    if-lez v6, :cond_1

    .line 790
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v6

    if-ne v6, v4, :cond_0

    .line 791
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 793
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v1, v6

    if-lez v6, :cond_0

    .line 794
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-long v1, v6

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRequestedRecordingSize(J)V

    .line 801
    :cond_1
    const-string v6, "Camcorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkCamcorderStartCondition_RequestedSize: cur size-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ref size-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit8 v8, v3, 0x2

    div-int/lit8 v8, v8, 0x8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    cmp-long v6, v1, v9

    if-lez v6, :cond_2

    mul-int/lit8 v6, v3, 0x2

    div-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    cmp-long v6, v1, v6

    if-gez v6, :cond_2

    .line 804
    const v6, 0x7f0900e4

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 805
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 806
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 810
    :goto_0
    return v4

    :cond_2
    move v4, v5

    goto :goto_0
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x5

    const/16 v7, -0x32

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2380
    const-string v2, "status"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2381
    .local v1, battStatus:I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    .line 2382
    const-string v2, "level"

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    .line 2383
    const-string v2, "plugged"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2385
    .local v0, battPlugged:I
    const-string v2, "temperature"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    .line 2387
    const-string v2, "Camcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBatteryChanged : Level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", battPlugged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", battTemp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2390
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->bFlagOverheat:Z

    if-ne v2, v6, :cond_9

    .line 2391
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->bFlagOverheat:Z

    .line 2392
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    const/16 v3, 0x1e0

    if-lt v2, v3, :cond_0

    .line 2393
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryOverheat()V

    .line 2407
    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    if-gt v2, v7, :cond_1

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    sget v3, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_TEMP_FLASH_THRESHOLD_VALUE:I

    if-gt v2, v3, :cond_1

    .line 2408
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v2, :cond_1

    .line 2409
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 2410
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2411
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    .line 2430
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-gt v2, v3, :cond_3

    .line 2432
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    sget v3, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v2, v3, :cond_b

    .line 2433
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2434
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 2436
    :cond_2
    iput-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 2438
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 2439
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery(Z)V

    .line 2453
    :cond_3
    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-le v2, v3, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    if-le v2, v7, :cond_5

    .line 2454
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2455
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 2457
    :cond_4
    iput-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 2459
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-eqz v2, :cond_5

    .line 2460
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 2461
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 2479
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBatteryLevel:I

    .line 2480
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    .line 2481
    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    if-ne v0, v6, :cond_7

    .line 2482
    :cond_6
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    .line 2484
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v2, :cond_8

    .line 2485
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBatteryLevel:I

    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setBatteryLevel(IZ)V

    .line 2488
    :cond_8
    return-void

    .line 2396
    :cond_9
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    const/16 v3, 0x1fe

    if-lt v2, v3, :cond_0

    .line 2397
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2398
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryOverheatDuringRecording()V

    goto/16 :goto_0

    .line 2400
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryOverheat()V

    goto/16 :goto_0

    .line 2442
    :cond_b
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v2, :cond_3

    .line 2443
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 2444
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2445
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    goto :goto_1
.end method

.method private handlePluggedLowBattery(Z)V
    .locals 5
    .parameter "temp"

    .prologue
    const/16 v4, 0x67

    const/4 v3, 0x0

    .line 3494
    const-string v1, "Camcorder"

    const-string v2, "handlePluggedLowBattery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3538
    :goto_0
    return-void

    .line 3499
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3500
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3501
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 3502
    if-eqz p1, :cond_3

    .line 3503
    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3507
    :goto_1
    const v1, 0x7f090017

    new-instance v2, Lcom/sec/android/app/camera/Camcorder$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camcorder$9;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3513
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3514
    new-instance v1, Lcom/sec/android/app/camera/Camcorder$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$10;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 3529
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 3530
    if-eqz p1, :cond_1

    .line 3531
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 3532
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3533
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v1, :cond_2

    .line 3534
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 3536
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 3537
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 3505
    :cond_3
    const v1, 0x7f0900fc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private initIntentFilter()V
    .locals 7

    .prologue
    .line 599
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 602
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 603
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 604
    const-string v5, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 605
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 606
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 607
    const-string v5, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 608
    const-string v5, "file"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 609
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 612
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 613
    .local v3, intentFilterSecurity:Landroid/content/IntentFilter;
    const-string v5, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 614
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 617
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 618
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 619
    .local v2, intentFilterSMSReceives:Landroid/content/IntentFilter;
    const-string v5, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 620
    const-string v5, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 621
    const-string v5, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 626
    .end local v2           #intentFilterSMSReceives:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 627
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 628
    .local v1, intentFilterDcmoSet:Landroid/content/IntentFilter;
    const-string v5, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 633
    .end local v1           #intentFilterDcmoSet:Landroid/content/IntentFilter;
    :cond_1
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 634
    .local v4, intentFilterShutdown:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    const-string v5, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 639
    new-instance v5, Landroid/content/Intent;

    const-string v6, "intent.stop.app-in-app"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 642
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.voicerecorder.rec_save"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 644
    return-void
.end method

.method private initIntentFilterBattery()V
    .locals 2

    .prologue
    .line 648
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 649
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 650
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 651
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 653
    return-void
.end method

.method private initRemains()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;)V

    .line 658
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camcorder;->checkStorage(ZZ)V

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->initGPSIndicator()V

    .line 662
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->setIsLaunchGallery(Z)V

    .line 664
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 667
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGestureListener:Lcom/sec/android/app/camera/Camcorder$GestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGestureDetecor:Landroid/view/GestureDetector;

    .line 669
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 670
    return-void
.end method

.method private onChkVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private pauseAudioPlayback()V
    .locals 4

    .prologue
    .line 496
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 498
    return-void
.end method

.method private registerCallStateListener()V
    .locals 3

    .prologue
    .line 3571
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 3572
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 3574
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    .line 3575
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3576
    :cond_1
    return-void
.end method

.method private resetFocusDueToZoom()V
    .locals 1

    .prologue
    .line 1687
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 1688
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 1689
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 1691
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hideFocusIndicator()V

    .line 1693
    :cond_0
    return-void
.end method

.method private resumeAudioPlayback()V
    .locals 2

    .prologue
    .line 501
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 503
    return-void
.end method

.method private setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 583
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-nez v1, :cond_1

    .line 584
    const-string v1, "Camcorder"

    const-string v2, "setImmutableView: mGLCamcorderBaseIndicators is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 588
    if-nez p1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030005

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/EmptyView;

    .line 590
    .local v0, emptyview:Lcom/sec/android/app/camera/EmptyView;
    if-eqz v0, :cond_0

    .line 591
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 592
    invoke-virtual {v0}, Lcom/sec/android/app/camera/EmptyView;->showMenu()V

    goto :goto_0
.end method

.method private showRecordingModePopup()V
    .locals 4

    .prologue
    const/16 v3, 0x34

    .line 3192
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 3193
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    if-nez v0, :cond_0

    .line 3194
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 3195
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3197
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->showMenu()V

    .line 3198
    return-void
.end method

.method private declared-synchronized stopPostCaptureAnimation()V
    .locals 0

    .prologue
    .line 3347
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method private declared-synchronized stopPostRecordingSnapAnimation()V
    .locals 2

    .prologue
    .line 3396
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v0, :cond_0

    .line 3397
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 3399
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 3400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3406
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3402
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private switchToCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1820
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1821
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "from-camcorder"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1826
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1829
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSlowMotion()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    sget v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SPEED:I

    if-eq v1, v2, :cond_0

    .line 1830
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v2, 0x7e

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderSpeed()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 1840
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->startActivity(Landroid/content/Intent;)V

    .line 1842
    const-string v1, "Camcorder"

    const-string v2, "Camcorder finishing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 1846
    invoke-virtual {p0, v4, v4}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    .line 1847
    return-void
.end method

.method private unregisterCallstateListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3579
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 3580
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3581
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z

    .line 3582
    return-void
.end method


# virtual methods
.method public IsShutterButtonHidden()Z
    .locals 1

    .prologue
    .line 3061
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    return v0
.end method

.method public ShutterButtonIsRestored()V
    .locals 1

    .prologue
    .line 3065
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    .line 3066
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->cancelAutoFocus()V

    .line 1547
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 1548
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 1549
    return-void
.end method

.method public cancelShutterTimer()V
    .locals 1

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 2994
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelShutterTimer()V

    .line 2995
    return-void
.end method

.method public changeContrastPreview(I)V
    .locals 2
    .parameter "contrast"

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2178
    return-void
.end method

.method public changeEffectPreview(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2053
    if-eqz p1, :cond_0

    .line 2054
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2055
    :cond_0
    return-void
.end method

.method public changeSaturationPreview(I)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2182
    return-void
.end method

.method public changeSceneModePreview(I)V
    .locals 0
    .parameter "sceneMode"

    .prologue
    .line 3002
    return-void
.end method

.method public changeSharpnessPreview(I)V
    .locals 2
    .parameter "sharpness"

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2186
    return-void
.end method

.method public changeWhiteBalancePreview(I)V
    .locals 3
    .parameter "whiteBalance"

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2039
    if-eqz p1, :cond_0

    .line 2040
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2041
    :cond_0
    return-void
.end method

.method public checkBatteryStatus()V
    .locals 2

    .prologue
    .line 2491
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2492
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2493
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2494
    return-void
.end method

.method public checkStorage(ZZ)V
    .locals 2
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    .line 3049
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3050
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 3051
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3052
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 3053
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 3054
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 3057
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorage(ZZ)V

    .line 3058
    return-void
.end method

.method public checkStorageLow()V
    .locals 4

    .prologue
    .line 3036
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getAvailableStorage()J

    move-result-wide v0

    .line 3037
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 3038
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 3046
    :goto_0
    return-void

    .line 3041
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 3042
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_0

    .line 3044
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_0
.end method

.method public finishRecordingWithError()V
    .locals 2

    .prologue
    .line 2807
    const-string v0, "Camcorder"

    const-string v1, "finishRecordingWithError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 2811
    return-void
.end method

.method public finishTimerCount()V
    .locals 3

    .prologue
    .line 3470
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .line 3471
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    if-nez v0, :cond_1

    .line 3476
    :cond_0
    :goto_0
    return-void

    .line 3474
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3475
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3627
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChkKeyFromApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 3623
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getIsLaunchGallery()Z
    .locals 1

    .prologue
    .line 3448
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkLaunchGallery:Z

    return v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getMaxFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemainStorage()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 3012
    const/4 v0, 0x0

    .line 3014
    .local v0, nRemainTime:I
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eq v1, v2, :cond_0

    .line 3015
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkStorageLow()V

    .line 3016
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-nez v1, :cond_0

    .line 3017
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getRemainTime()I

    move-result v0

    .line 3018
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3019
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 3025
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eqz v1, :cond_1

    .line 3026
    const/4 v0, 0x0

    .line 3028
    :cond_1
    return v0

    .line 3020
    :cond_2
    if-gtz v0, :cond_0

    .line 3021
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_0
.end method

.method public getRemainTime()I
    .locals 1

    .prologue
    .line 3032
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRemainTime:I

    return v0
.end method

.method public getRequestedDurationLimit()I
    .locals 4

    .prologue
    .line 2523
    const/4 v0, 0x0

    .line 2524
    .local v0, requestedDurationLimit:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2525
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.durationLimit"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2528
    :cond_0
    return v0
.end method

.method public getTouchAutoFocusActive()Z
    .locals 1

    .prologue
    .line 1710
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTouchAutoFocusActive:Z

    return v0
.end method

.method public getWeather()I
    .locals 1

    .prologue
    .line 3631
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->getContextualWeather()I

    move-result v0

    return v0
.end method

.method public gettBattLevel()I
    .locals 2

    .prologue
    .line 2337
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    div-int/2addr v0, v1

    return v0
.end method

.method protected handleBatteryOverheatDuringRecording()V
    .locals 2

    .prologue
    .line 2320
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2321
    const-string v0, "Camcorder"

    const-string v1, "handleBatteryOverheat : Camera will be terminated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2324
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 2325
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 2329
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 2332
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryOverheat()V

    .line 2334
    :cond_1
    return-void

    .line 2327
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_0
.end method

.method protected handleLowBattery(Z)V
    .locals 2
    .parameter "temp"

    .prologue
    .line 2497
    const-string v0, "Camcorder"

    const-string v1, "handleLowBattery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2499
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 2500
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 2504
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 2507
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleLowBattery(Z)V

    .line 2508
    return-void

    .line 2502
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_0
.end method

.method public handleRecordingCommand(I)V
    .locals 2
    .parameter "command"

    .prologue
    .line 2606
    packed-switch p1, :pswitch_data_0

    .line 2626
    const-string v0, "Camcorder"

    const-string v1, "Invalid recording state."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    :goto_0
    return-void

    .line 2608
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->schedulePauseVideoRecording()V

    goto :goto_0

    .line 2611
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleResumeVideoRecording()V

    goto :goto_0

    .line 2614
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRecordingMenu()V

    .line 2615
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    goto :goto_0

    .line 2618
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 2619
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleProcessBack()V

    goto :goto_0

    .line 2622
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideZoomMenu()V

    .line 2623
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleTakePicture()V

    goto :goto_0

    .line 2606
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public handleRecordingSpeedChanged(I)V
    .locals 4
    .parameter "speed"

    .prologue
    const/16 v3, 0xbd7

    .line 2097
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isRecordingSpeedControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2098
    :cond_0
    const-string v1, "Camcorder"

    const-string v2, "speed off, view disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;

    .line 2100
    .local v0, glSpeedControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;
    if-eqz v0, :cond_1

    .line 2101
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->hideMenu()V

    .line 2102
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2125
    :cond_1
    :goto_0
    return-void

    .line 2107
    .end local v0           #glSpeedControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;
    :cond_2
    const-string v1, "Camcorder"

    const-string v2, "handleRecordingSpeedChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;

    .line 2113
    .restart local v0       #glSpeedControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;
    if-nez v0, :cond_3

    .line 2114
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;

    .end local v0           #glSpeedControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2115
    .restart local v0       #glSpeedControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2118
    :cond_3
    if-eqz v0, :cond_1

    .line 2119
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->setSpeedControl(I)V

    .line 2120
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->reset()V

    .line 2121
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->showMenu()V

    .line 2122
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto :goto_0
.end method

.method public handleRecordingTimerElapsed()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 2569
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v7, 0xbd3

    iget-object v8, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 2570
    .local v3, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2577
    .local v0, currentMs:J
    iget-wide v6, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    cmp-long v6, v6, v9

    if-nez v6, :cond_0

    .line 2578
    iput-wide v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    .line 2580
    :cond_0
    iget-wide v6, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    sub-long v4, v0, v6

    .line 2581
    .local v4, timeDiff:J
    cmp-long v6, v9, v4

    if-gez v6, :cond_2

    const-wide/16 v6, 0x3e8

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    .line 2595
    :cond_1
    :goto_0
    return-void

    .line 2584
    :cond_2
    iput-wide v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    .line 2586
    const-string v6, "Camcorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " RecordingTm:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoFileLengthInByte()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 2588
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateRecordingTime(I)V

    .line 2590
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v6, v6, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v7, 0xbd7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;

    .line 2591
    .local v2, glSpeedControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;
    if-eqz v2, :cond_1

    .line 2592
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->hideMenu()V

    goto :goto_0
.end method

.method public handleShutter()V
    .locals 2

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isStopPreviewPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1280
    :cond_0
    const-string v0, "Camcorder"

    const-string v1, "Preview is not started!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :goto_0
    return-void

    .line 1284
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1286
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->pauseAudioPlayback_TimerBgm()V

    .line 1289
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1304
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->schedulePrepareVideoRecording()V

    .line 1305
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkBatteryStatus()V

    .line 1306
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartVideoRecording()V

    .line 1308
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    goto :goto_0

    .line 1291
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_1

    .line 1294
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_1

    .line 1297
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_1

    .line 1289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V
    .locals 13
    .parameter "event"
    .parameter "SendEvent"

    .prologue
    const v12, 0x7f060009

    .line 1741
    const-string v10, "Camcorder"

    const-string v11, "handleTouchAutoFocusEvent"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1745
    const-string v10, "Camcorder"

    const-string v11, "Wrong state for touchAF"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :cond_0
    :goto_0
    return-void

    .line 1750
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v1, v10

    .line 1751
    .local v1, PtX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v2, v10

    .line 1753
    .local v2, PtY:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    div-int/lit8 v4, v10, 0x2

    .line 1754
    .local v4, allowLeftMargin:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    div-int/lit8 v5, v10, 0x2

    .line 1756
    .local v5, allowTopMargin:I
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getLeft()I

    move-result v7

    .line 1757
    .local v7, leftMargin:I
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getRight()I

    move-result v8

    .line 1758
    .local v8, rightMargin:I
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getTop()I

    move-result v9

    .line 1759
    .local v9, topMargin:I
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getBottom()I

    move-result v6

    .line 1761
    .local v6, bottomMargin:I
    if-lt v1, v7, :cond_0

    if-gt v1, v8, :cond_0

    .line 1762
    add-int v10, v7, v4

    if-gt v1, v10, :cond_5

    .line 1763
    add-int v1, v7, v4

    .line 1767
    :cond_2
    :goto_1
    add-int v10, v9, v5

    if-gt v2, v10, :cond_6

    .line 1768
    add-int v2, v9, v5

    .line 1774
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v10

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1775
    sub-int v0, v1, v7

    .line 1777
    .local v0, NormalPtX:I
    if-eqz p2, :cond_4

    .line 1778
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10, v0, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->setTouchFocusPosition(II)V

    .line 1792
    .end local v0           #NormalPtX:I
    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->startTouchAutoFocus()V

    .line 1793
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v10, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setTouchFocusRectCenter(II)V

    goto/16 :goto_0

    .line 1764
    :cond_5
    sub-int v10, v8, v4

    if-lt v1, v10, :cond_2

    .line 1765
    sub-int v1, v8, v4

    goto :goto_1

    .line 1769
    :cond_6
    sub-int v10, v6, v5

    if-lt v2, v10, :cond_3

    .line 1770
    sub-int v2, v6, v5

    goto :goto_2

    .line 1785
    :cond_7
    sub-int v3, v2, v9

    .line 1787
    .local v3, WidePtY:I
    if-eqz p2, :cond_4

    .line 1788
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10, v1, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->setTouchFocusPosition(II)V

    goto :goto_3
.end method

.method public hideFocusIndicator()V
    .locals 1

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hideFocusIndicator()V

    .line 1698
    :cond_0
    return-void
.end method

.method public hideRecordingLayout()V
    .locals 2

    .prologue
    .line 2532
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2533
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRecordingLayout(Z)V

    .line 2535
    :cond_0
    return-void
.end method

.method public hideShutterButton()V
    .locals 1

    .prologue
    .line 3432
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideShutterButton()V

    .line 3433
    return-void
.end method

.method public hideSideMenu()V
    .locals 1

    .prologue
    .line 3424
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideSideMenu()V

    .line 3425
    return-void
.end method

.method public hideSideMenuItems()V
    .locals 1

    .prologue
    .line 3416
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideSideMenuItems()V

    .line 3417
    return-void
.end method

.method public hideZoomMenu()V
    .locals 3

    .prologue
    .line 3409
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 3410
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3411
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 3413
    :cond_0
    return-void
.end method

.method public initCamcorderSound()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2283
    const-string v0, "Camcorder"

    const-string v1, "Initialize Camcorder Sound"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    .line 2286
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050004

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 2287
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050001

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v6

    .line 2288
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f05

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 2290
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    .line 2291
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    .line 2292
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, v6}, Landroid/media/MediaActionSound;->load(I)V

    .line 2294
    :cond_0
    return-void
.end method

.method public isActivityDestoying()Z
    .locals 1

    .prologue
    .line 3452
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    return v0
.end method

.method public isAutoFocusing()Z
    .locals 1

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v0

    return v0
.end method

.method public isCAFDisabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1730
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1731
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isTouchAutoFocusing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1736
    :cond_0
    :goto_0
    return v0

    .line 1734
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 2

    .prologue
    .line 3085
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_0

    .line 3086
    const-string v0, "Camcorder"

    const-string v1, "isCapturing - mCamcorderEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    const/4 v0, 0x0

    .line 3089
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isCapturing()Z

    move-result v0

    goto :goto_0
.end method

.method public isMediaScannerScanning()Z
    .locals 1

    .prologue
    .line 3567
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isPreviewStarted()Z
    .locals 2

    .prologue
    .line 3077
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_0

    .line 3078
    const-string v0, "Camcorder"

    const-string v1, "isPreviewStarted - mCamcorderEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    const/4 v0, 0x0

    .line 3081
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isPreviewStarted()Z

    move-result v0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 2

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_0

    .line 3070
    const-string v0, "Camcorder"

    const-string v1, "isRecording - mCamcorderEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    const/4 v0, 0x0

    .line 3073
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecording()Z

    move-result v0

    goto :goto_0
.end method

.method public isRecordingMenuTop()Z
    .locals 2

    .prologue
    .line 3484
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3485
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.camera.glwidget.TwGLCamcorderRecordingMenu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3490
    :goto_0
    return v0

    .line 3487
    :catch_0
    move-exception v0

    .line 3490
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 3563
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->isShutterPressed()Z

    move-result v0

    return v0
.end method

.method public isTimerCounting()Z
    .locals 1

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v0

    return v0
.end method

.method public isTouchAutoFocusEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1717
    const-string v2, "176x144"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1725
    :cond_0
    :goto_0
    return v0

    .line 1721
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 1722
    const-string v1, "Camcorder"

    const-string v2, "!!!!!!!!!!!!!!!!!!check wrong case!!!!!!!!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1725
    goto :goto_0
.end method

.method public isZoomAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2356
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 2368
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2376
    :cond_1
    :goto_0
    return v0

    .line 2372
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2376
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isZoomNotSupportPopup()Z
    .locals 2

    .prologue
    .line 2341
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2350
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public launchGallery(Ljava/lang/String;)V
    .locals 0
    .parameter "keyValue"

    .prologue
    .line 2816
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 2817
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 2928
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--onActivityResult--requestCode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--onActivityResult--resultCode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    packed-switch p1, :pswitch_data_0

    .line 2990
    :cond_0
    :goto_0
    return-void

    .line 2934
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    if-eqz p3, :cond_6

    .line 2935
    const/4 v6, 0x0

    .line 2936
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2937
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2939
    :cond_1
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2940
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2943
    const-wide/16 v7, 0x0

    .line 2944
    .local v7, dateTaken:J
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2945
    .local v10, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMediaMetadataRetriever()Landroid/media/MediaMetadataRetriever;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2946
    const-string v0, "datetaken"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2947
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-nez v0, :cond_2

    .line 2948
    const-string v0, "date_modified"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v7, v0, v2

    .line 2949
    const-string v0, "datetaken"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2951
    :cond_2
    const-string v0, "mime_type"

    const-string v1, "video/3gpp"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    const-string v0, "duration"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMediaMetadataRetriever()Landroid/media/MediaMetadataRetriever;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2953
    const-string v0, "_size"

    new-instance v1, Ljava/io/File;

    const-string v2, "_data"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2955
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2960
    .end local v10           #values:Landroid/content/ContentValues;
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 2961
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 2974
    .end local v7           #dateTaken:J
    :goto_2
    if-eqz v6, :cond_0

    .line 2975
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2956
    .restart local v7       #dateTaken:J
    :catch_0
    move-exception v9

    .line 2957
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "Camcorder"

    const-string v1, "setDataSource failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2962
    .end local v7           #dateTaken:J
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 2963
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2964
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 2965
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_2

    .line 2966
    :cond_4
    const-string v0, "specify-data"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2967
    const-string v0, "Camcorder"

    const-string v1, "setResult OK !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/Camcorder;->setResult(I)V

    .line 2969
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_2

    .line 2971
    :cond_5
    const-string v0, "Camcorder"

    const-string v1, "Something goes wrong!! Restart attach mode."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2977
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_6
    if-nez p2, :cond_0

    .line 2978
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2980
    :try_start_1
    const-string v0, "Camcorder"

    const-string v1, "Deleting cancelled attach image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2982
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2983
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 2932
    :pswitch_data_0
    .packed-switch 0x7d2
        :pswitch_0
    .end packed-switch
.end method

.method public onAntishakeSelect(I)V
    .locals 1
    .parameter "antishake"

    .prologue
    .line 1960
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1961
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->showSnapshotLimitationDialog()V

    .line 1964
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1965
    return-void
.end method

.method public onAudioRecordingSelect(I)V
    .locals 1
    .parameter "audioRecording"

    .prologue
    .line 2145
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 2146
    return-void
.end method

.method public onAutocontrastSelect(I)V
    .locals 1
    .parameter "autocontrast"

    .prologue
    .line 1939
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAutoContrast(I)V

    .line 1940
    return-void
.end method

.method public onCamcorderQualityMenuSelect(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 2063
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderQuality(I)V

    .line 2064
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2065
    return-void
.end method

.method public onCamcorderSpeedMenuSelect(I)V
    .locals 4
    .parameter "speed"

    .prologue
    .line 2069
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCamcorderSpeedMenuSelect speed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingSpeed()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingSpeed()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 2071
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingSpeed()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSpeedControlReset(II)Z

    move-result v0

    .line 2073
    .local v0, resetCamcorder:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setRecordingSpeed(I)V

    .line 2075
    if-eqz v0, :cond_1

    .line 2076
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 2078
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2079
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v2, 0x7e

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSlowMotion()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 2085
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2087
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2088
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 2092
    .end local v0           #resetCamcorder:Z
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 516
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 517
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v0, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 521
    const-string v0, "Camcorder"

    const-string v1, "!!!!!!!!!!!!!!!ORIENTATION_LANDSCAPE!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->setLandscapeActive(Z)V

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    sget v2, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_DIRTY_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 524
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 525
    const-string v0, "Camcorder"

    const-string v1, "!!!!!!!!!!!!!!!ORIENTATION_PORTRAIT!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->setLandscapeActive(Z)V

    goto :goto_0
.end method

.method public onContextualFilenameSelect(I)V
    .locals 1
    .parameter "contextualFilename"

    .prologue
    .line 2168
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-nez v0, :cond_0

    .line 2169
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->showDialog(I)V

    .line 2174
    :goto_0
    return-void

    .line 2171
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    .line 2172
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->setContextualFilename(I)V

    goto :goto_0
.end method

.method public onContrastMenuSelect(I)V
    .locals 1
    .parameter "contrast"

    .prologue
    .line 2149
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderContrast(I)V

    .line 2150
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 535
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 536
    const-string v2, "Camcorder"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 539
    .local v1, win:Landroid/view/Window;
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 541
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->resetObservers()V

    .line 542
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 544
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->setContentView(I)V

    .line 545
    const v2, 0x7f0b0002

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    .line 547
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->setMode(I)V

    .line 548
    new-instance v2, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    .line 549
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V

    .line 551
    new-instance v2, Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 555
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 556
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 558
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    .line 561
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamcorder()V

    .line 563
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    .line 564
    .local v0, recordingMode:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->resetMaxVideoDuration(I)V

    .line 566
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->initializeGLSurfaceView()V

    .line 568
    new-instance v2, Landroid/media/AudioManager;

    invoke-direct {v2, p0}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 570
    const v2, 0x7f0900fa

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    .line 572
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->initCamcorderSound()V

    .line 579
    new-instance v2, Lcom/sec/android/app/camera/Weather;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Weather;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    .line 580
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1108
    const-string v0, "Camcorder"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    sget-object v0, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1110
    sput-object v2, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    .line 1113
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    .line 1115
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1116
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1119
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1121
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v0, :cond_2

    .line 1122
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuResourceDepot;->onDestroy()V

    .line 1125
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-eqz v0, :cond_3

    .line 1126
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 1127
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 1130
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_4

    .line 1131
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->clear()V

    .line 1132
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 1135
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_5

    .line 1136
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->clear()V

    .line 1137
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    .line 1140
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_6

    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1142
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    .line 1145
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_7

    .line 1146
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1147
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    .line 1150
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_8

    .line 1151
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearCaptureImageData()V

    .line 1152
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    .line 1155
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 1156
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1157
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    .line 1160
    :cond_9
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    .line 1161
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    .line 1162
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1163
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 1164
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_a

    .line 1165
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1166
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1168
    :cond_a
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 1169
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    .line 1170
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1171
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 1172
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 1174
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onDestroy()V

    .line 1175
    return-void
.end method

.method public onEditModeSelectCommand()V
    .locals 3

    .prologue
    .line 1943
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1944
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1949
    :cond_0
    const/16 v0, 0xbd1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v0, p0, v1, v2}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 1950
    return-void

    .line 1947
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_0
.end method

.method public onEffectMenuSelect(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 2044
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    .line 2045
    if-eqz p1, :cond_0

    .line 2046
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 2048
    :cond_0
    return-void
.end method

.method public onEffectRecorderMenuSelectCommand(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 2161
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getEffectRecorderType()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2162
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setEffectRecorderType(I)V

    .line 2163
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2165
    :cond_0
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .locals 1
    .parameter "exposureValue"

    .prologue
    .line 1799
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderExposureValue(I)V

    .line 1800
    return-void
.end method

.method public onFlashModeMenuSelect(I)V
    .locals 1
    .parameter "flashMode"

    .prologue
    .line 1888
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 1889
    return-void
.end method

.method public onFlipMenuSelectCommand(I)V
    .locals 1
    .parameter "flip"

    .prologue
    .line 1953
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 1954
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 1955
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->setFrontSensorMirror(I)V

    .line 1956
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStartPreviewAsync()V

    .line 1957
    return-void
.end method

.method public onFocusStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1562
    const-string v0, "Camcorder"

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

    .line 1564
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    if-eqz v0, :cond_1

    .line 1594
    :cond_0
    :goto_0
    return-void

    .line 1567
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTouchFocusPositioned()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1568
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_3

    .line 1569
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setFocusIndicator(I)V

    .line 1572
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1575
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1576
    const-string v0, "Camcorder"

    const-string v1, "onFocusStateChanged : disable focus indicator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1580
    :cond_4
    if-nez p1, :cond_7

    .line 1581
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1582
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->stopTouchAutoFocus()V

    .line 1585
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_6

    .line 1586
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .line 1588
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 1591
    :cond_7
    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1592
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->startAFHideRectTimer()V

    goto :goto_0
.end method

.method public onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 2
    .parameter "rootView"

    .prologue
    .line 3128
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V

    .line 3130
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    .line 3131
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3132
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setGuideLineSize(Landroid/view/View;)V

    .line 3133
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->resetFocus(Landroid/view/View;)V

    .line 3137
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 3138
    const-string v0, "Camcorder"

    const-string v1, "mSideMenuLoadingThread is not null, return.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    :goto_0
    return-void

    .line 3142
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/Camcorder$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$6;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    .line 3187
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    const-string v1, "sideMenuLoadingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3188
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onGpsChanged(I)V
    .locals 1
    .parameter "gps"

    .prologue
    .line 2189
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2190
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 2208
    :goto_0
    return-void

    .line 2193
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 2194
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2195
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->IsGpsEnableInSettings()V

    .line 2207
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_0

    .line 2197
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getEULAenable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2198
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->displayEULADialog()V

    goto :goto_1

    .line 2200
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1

    .line 2204
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1
.end method

.method public onGuidelineSelect(I)V
    .locals 1
    .parameter "guideline"

    .prologue
    .line 2128
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 2129
    return-void
.end method

.method public onInflatedMenuHidden()V
    .locals 0

    .prologue
    .line 2998
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v6, 0x12

    const/4 v3, 0x1

    .line 1179
    const-string v2, "Camcorder"

    const-string v4, "onKeyDown()"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLInitialized:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 1275
    :goto_0
    return v2

    .line 1193
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 1194
    goto :goto_0

    .line 1196
    :catch_0
    move-exception v0

    .local v0, e:Ljava/util/NoSuchElementException;
    move v2, v3

    .line 1198
    goto :goto_0

    .line 1201
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isResetDialogActive()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 1202
    goto :goto_0

    .line 1205
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isUsbMassStorageEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 1206
    goto :goto_0

    .line 1209
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 1275
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1211
    :sswitch_0
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    move v2, v3

    .line 1214
    goto :goto_0

    :sswitch_2
    move v2, v3

    .line 1221
    goto :goto_0

    .line 1231
    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isShutterPressed()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v2, v3

    .line 1232
    goto :goto_0

    .line 1234
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isZoomNotSupportPopup()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    .line 1235
    goto :goto_0

    .line 1237
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isZoomAvailable()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1238
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 1239
    .local v1, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->getVisibility()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1240
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1241
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v5, 0x5

    invoke-static {v6, p0, v2, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 1249
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->resetFocusDueToZoom()V

    .line 1250
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1251
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .line 1254
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v2, :cond_b

    .line 1256
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 1257
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1258
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .end local v1           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :cond_b
    move v2, v3

    .line 1261
    goto/16 :goto_0

    .line 1244
    .restart local v1       #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v5, 0x2

    invoke-static {v6, p0, v2, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_1

    .line 1263
    .end local v1           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :sswitch_4
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 1264
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1265
    sget v2, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_HALF_PRESS:I

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    .line 1266
    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1267
    sget v2, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    :cond_e
    move v2, v3

    .line 1268
    goto/16 :goto_0

    .line 1209
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
        0x45 -> :sswitch_3
        0x46 -> :sswitch_3
        0x4f -> :sswitch_2
        0x50 -> :sswitch_4
        0x52 -> :sswitch_0
        0x55 -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x9c -> :sswitch_3
        0x9d -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1319
    const-string v1, "Camcorder"

    const-string v3, "onKeyUp()"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLInitialized:Z

    if-nez v1, :cond_0

    move v1, v2

    .line 1435
    :goto_0
    return v1

    .line 1332
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1333
    const-string v1, "Camcorder"

    const-string v3, "Delivering onKeyUp to other view"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 1334
    goto :goto_0

    .line 1336
    :catch_0
    move-exception v0

    .local v0, e:Ljava/util/NoSuchElementException;
    move v1, v2

    .line 1338
    goto :goto_0

    .line 1341
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isResetDialogActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1342
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1343
    const-string v1, "Camcorder"

    const-string v3, "BACK KEY PRESSED! : dissmissResetDialog"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->dismissResetDialog()V

    :cond_2
    move v1, v2

    .line 1346
    goto :goto_0

    .line 1349
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 1435
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1355
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->schedulePauseVideoRecording()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_4

    .line 1356
    const/16 v1, 0x27

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v1, p0, v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    :cond_4
    move v1, v2

    .line 1357
    goto :goto_0

    .line 1361
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleResumeVideoRecording()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Camera_CamcorderEnablePromptPopupToSelectRecMode"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1362
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1363
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1364
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1369
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    .line 1370
    goto/16 :goto_0

    .line 1372
    :cond_6
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eqz v1, :cond_7

    .line 1373
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->showDlg(I)V

    move v1, v2

    .line 1374
    goto/16 :goto_0

    .line 1377
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isUsbMassStorageEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    .line 1378
    goto/16 :goto_0

    .line 1382
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isPrepareRecording()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_a

    .line 1384
    :cond_9
    const-string v1, "Camcorder"

    const-string v3, "isPrepareRecording, ignore shutter"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1385
    goto/16 :goto_0

    .line 1398
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleShutter()V

    move v1, v2

    .line 1399
    goto/16 :goto_0

    .line 1401
    :sswitch_2
    const-string v1, "Camcorder"

    const-string v3, "BACK KEY PRESSED!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isStartingEngine()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isStartingPreview()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1405
    :cond_b
    const-string v1, "Camcorder"

    const-string v3, "Ignoring BACK KEY because preview is being started!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1406
    goto/16 :goto_0

    .line 1409
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1410
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 1411
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1414
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    move v1, v2

    .line 1415
    goto/16 :goto_0

    move v1, v2

    .line 1418
    goto/16 :goto_0

    .line 1420
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleTakePicture()V

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_e

    move v1, v2

    .line 1421
    goto/16 :goto_0

    .line 1423
    :cond_e
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    sget v3, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_FULL_UP:I

    if-eq v1, v3, :cond_f

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    sget v3, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_HALF_PRESS:I

    if-ne v1, v3, :cond_11

    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isTimerCounting()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1424
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1425
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_1

    .line 1427
    :cond_10
    sget v1, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    move v1, v2

    .line 1428
    goto/16 :goto_0

    :cond_11
    move v1, v2

    .line 1430
    goto/16 :goto_0

    .line 1349
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x17 -> :sswitch_1
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x50 -> :sswitch_3
        0x52 -> :sswitch_3
    .end sparse-switch
.end method

.method public onLaunchGallery(Ljava/lang/String;)V
    .locals 10
    .parameter "keyValue"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2820
    const-string v5, "Camcorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enterMediaBrowerFromCamcorder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    if-nez p1, :cond_1

    .line 2905
    :cond_0
    :goto_0
    return-void

    .line 2826
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIsLaunchGallery()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2827
    const-string v5, "Camcorder"

    const-string v6, "returning because it is launch gallery"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2830
    :cond_2
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/Camcorder;->setIsLaunchGallery(Z)V

    .line 2831
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 2833
    const-string v5, "quickview"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "reviewon"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2835
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2836
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.sec.android.gallery3d"

    const-string v6, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2838
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2839
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2840
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2845
    :goto_1
    const-string v5, "from-Camera"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2847
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2866
    invoke-virtual {p0, v9, v9}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    goto :goto_0

    .line 2842
    :cond_4
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 2848
    :catch_0
    move-exception v1

    .line 2849
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v5, "Camcorder"

    const-string v6, "Gallery was disabled!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/Camcorder;->setIsLaunchGallery(Z)V

    goto :goto_0

    .line 2867
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    const-string v5, "from_app"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2868
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2869
    .local v3, newExtras:Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2871
    .local v0, cropIntent:Landroid/content/Intent;
    const-string v5, "com.sec.android.app.camera"

    const-string v6, "com.sec.android.app.camera.CropImage"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2872
    const-string v5, "noFaceDetection"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2873
    const-string v5, "video-thumbnail"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2874
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 2875
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "output"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 2876
    .local v4, saveUri:Landroid/net/Uri;
    const-string v5, "output"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2881
    .end local v4           #saveUri:Landroid/net/Uri;
    :goto_2
    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSkipSaveDiscard:Z

    if-eqz v5, :cond_6

    .line 2882
    const-string v5, "skip-savediscard"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2885
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 2886
    const-string v5, "latitude"

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2887
    const-string v5, "longitude"

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2890
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getContextualFilename()I

    move-result v5

    if-ne v5, v8, :cond_8

    .line 2891
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 2892
    const-string v5, "weather"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWeather()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2895
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2896
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2898
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/sec/android/app/camera/CameraSettings;->setVideocallPresetSelected(Z)V

    .line 2900
    const/16 v5, 0x7d2

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/camera/Camcorder;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2903
    invoke-virtual {p0, v9, v9}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 2878
    :cond_9
    const-string v5, "attach-video"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public onModechanged()V
    .locals 2

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1811
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 1817
    :goto_0
    return-void

    .line 1815
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setSelectedMode(I)V

    .line 1816
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->switchToCamera()V

    goto :goto_0
.end method

.method public onOutdoorVisibilitySelect(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 2141
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderOutdoorVisibility(I)V

    .line 2142
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 678
    const-string v0, "Camcorder"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_CamcorderEnablePromptPopupToSelectRecMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->closeVideoFileDescriptor()V

    .line 692
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->PauseGLSurface()V

    .line 693
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->notifyOnPause()V

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSystemSoundEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableSystemSoundEffect()V

    .line 699
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_TIMER_EXPIRED:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 702
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingPopupHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 703
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 708
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->stopKickThumbSuspend()V

    .line 711
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->resumeAudioPlayback()V

    .line 714
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->unregisterCallstateListener()V

    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_7

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForEngineStartingThread()V

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartPreviewThreadComplete()V

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartRecordingThreadComplete()V

    .line 728
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideWaitingAnimation()V

    .line 730
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->onFocusStateChanged(I)V

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 734
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    if-ge v0, v3, :cond_9

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 740
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 743
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 748
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopEngineSync()V

    .line 749
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearRequest()V

    .line 750
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->onPause()V

    .line 756
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_8

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->onPause()V

    .line 759
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 761
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideAllDlg()V

    .line 763
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostCaptureAnimation()V

    .line 764
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostRecordingSnapAnimation()V

    .line 774
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    .line 775
    return-void

    .line 737
    :cond_9
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_1

    .line 720
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onRecordingModeMenuSelect(I)V
    .locals 1
    .parameter "recordingMode"

    .prologue
    .line 1850
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/Camcorder;->onRecordingModeMenuSelect(IZ)V

    .line 1851
    return-void
.end method

.method public onRecordingModeMenuSelect(IZ)V
    .locals 4
    .parameter "recordingMode"
    .parameter "fromResetSettings"

    .prologue
    const/16 v3, 0x7e

    .line 1854
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingModeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    .line 1857
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->resetMaxVideoDuration(I)V

    .line 1859
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 1861
    if-nez p2, :cond_0

    .line 1862
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1865
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1866
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSlowMotion()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 1871
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x68

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 1872
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 1873
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    .line 1874
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1877
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 1878
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 1880
    const-string v0, "Camcorder"

    const-string v1, "onRecordingModeChanged out"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    return-void

    .line 1868
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderSpeed()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    goto :goto_0
.end method

.method public onResolutionMenuSelect(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 1896
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1897
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 1898
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateIfResolutionChanged()V

    .line 1899
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 2921
    if-eqz p1, :cond_0

    .line 2922
    const-string v0, "last_video_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    .line 2924
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2925
    return-void
.end method

.method protected onResume()V
    .locals 12

    .prologue
    .line 818
    const-string v9, "Camcorder"

    const-string v10, "onResume"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.SCREENRECORDER_CAMERA"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 825
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraStartCondition_Security()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 827
    const v9, 0x7f0900eb

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 829
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 843
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initIntentFilter()V

    .line 845
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderEngine;->onResume()V

    .line 847
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/MenuDimController;->getLowBatteryStatus()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 848
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 849
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 850
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 853
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 854
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkBatteryStatus()V

    .line 857
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "torch_light"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const/4 v1, 0x1

    .line 858
    .local v1, externalTorchEnabled:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/sec/android/app/camera/MenuDimController;->setIsFlashDimmed(Z)V

    .line 860
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraStartCondition_Call()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraStartCondition_VoIPCall()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 861
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setSelectedMode(I)V

    .line 862
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 1105
    :goto_1
    return-void

    .line 857
    .end local v1           #externalTorchEnabled:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 866
    .restart local v1       #externalTorchEnabled:Z
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 867
    .local v8, win:Landroid/view/Window;
    const/16 v9, 0x80

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 869
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderEngine;->clearRequest()V

    .line 870
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 887
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 888
    sget-object v9, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    if-nez v9, :cond_6

    .line 889
    const-string v9, ""

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    sput-object v9, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    .line 891
    :cond_6
    sget-object v9, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    const v10, 0x7f0900e3

    invoke-virtual {v9, v10}, Landroid/widget/Toast;->setText(I)V

    .line 892
    sget-object v9, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 893
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 902
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "enterprise_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 903
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v9

    if-nez v9, :cond_7

    .line 904
    const-string v9, "Camcorder"

    const-string v10, "onResume CAMERA disable"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const v9, 0x7f0900eb

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 907
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleProcessBack()V

    .line 909
    :cond_7
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v9

    if-nez v9, :cond_8

    .line 910
    const-string v9, "Camcorder"

    const-string v10, "onResume MICROPHONE disable"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const v9, 0x10401ce

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 913
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleProcessBack()V

    .line 914
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setSelectedMode(I)V

    .line 917
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 919
    .local v3, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 920
    const-string v9, "Camcorder"

    const-string v10, "onResume CAMERA disable"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const v9, 0x7f0900eb

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 923
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 927
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->pauseAudioPlayback()V

    .line 930
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->registerCallStateListener()V

    .line 932
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 933
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 935
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecordingMenuTop()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 936
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 938
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v9

    if-eqz v9, :cond_b

    .line 939
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/16 v10, 0x65

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 942
    :cond_b
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 943
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 945
    .local v4, myExtras:Landroid/os/Bundle;
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->onChkVideoCaptureIntent()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CamcorderEngine;->setIsVideoCaptureIntent(Z)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 946
    const-string v9, "from_app"

    iput-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 947
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 948
    if-eqz v4, :cond_1f

    .line 949
    const-string v9, "skip-savediscard"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camcorder;->mSkipSaveDiscard:Z

    .line 951
    const-string v9, "mms"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 952
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 953
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    .line 954
    const-string v9, "android.intent.extra.sizeLimit"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 955
    .local v5, sizelimit:J
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Lcom/sec/android/app/camera/CameraSettings;->setRequestedRecordingSize(J)V

    .line 956
    const-string v9, "Camcorder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onResume onMaxsize"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 958
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/16 v10, 0x68

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 959
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCamcorderStartCondition_RequestedSize()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 960
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_1

    .line 895
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v4           #myExtras:Landroid/os/Bundle;
    .end local v5           #sizelimit:J
    :cond_c
    sget-object v9, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    if-eqz v9, :cond_d

    .line 896
    sget-object v9, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->cancel()V

    .line 898
    :cond_d
    const/4 v9, 0x0

    sput-object v9, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    goto/16 :goto_2

    .line 963
    .restart local v0       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v3       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v4       #myExtras:Landroid/os/Bundle;
    :cond_e
    const-string v9, "videocall_preset"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 964
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setVideocallPresetSelected(Z)V

    .line 966
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/16 v10, 0x13

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 967
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 968
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    .line 969
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 970
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/16 v10, 0x68

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1028
    :cond_f
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1029
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 1030
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 1032
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 1034
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v9, :cond_10

    .line 1035
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v9, :cond_22

    .line 1036
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    .line 1037
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 1038
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 1045
    :cond_10
    :goto_4
    iget-boolean v9, p0, Lcom/sec/android/app/camera/Camcorder;->bFromSecureSetting:Z

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderEngine;->isProviderEnabled()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1046
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getEULAenable()Z

    move-result v9

    if-nez v9, :cond_23

    .line 1047
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->displayEULADialog()V

    .line 1051
    :goto_5
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camcorder;->bFromSecureSetting:Z

    .line 1053
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/16 v10, 0x82

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1059
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartEngine()V

    .line 1060
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSetAllParams()V

    .line 1063
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camcorder;->mbNeedToStartEngineSync:Z

    .line 1065
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 1067
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleWait(I)V

    .line 1068
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1070
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v9, :cond_12

    .line 1071
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refresh()V

    .line 1072
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshAnchors()V

    .line 1076
    :cond_12
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initRemains()V

    .line 1078
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->refreshButtonDimForCamcorder()V

    .line 1080
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->suspendThumbWork()V

    .line 1091
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v9, :cond_13

    .line 1092
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->showSideMenuItems()V

    .line 1093
    :cond_13
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v9, :cond_14

    .line 1094
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->showShutterButton()V

    .line 1104
    :cond_14
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_1

    .line 971
    :cond_15
    const-string v9, "video_editor"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 972
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    .line 978
    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 979
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    .line 980
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 981
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/16 v10, 0x68

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_3

    .line 974
    :cond_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 975
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_6

    .line 977
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_6

    .line 982
    :cond_18
    const-string v9, "email"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 983
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/16 v10, 0x12

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 984
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCamcorderStartCondition_RequestedSize()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 985
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_1

    .line 988
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    .line 989
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 990
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 991
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/16 v10, 0x68

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_3

    .line 993
    :cond_1a
    const-string v9, "video-size"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1d

    .line 994
    const-string v9, "video-size"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v7

    .line 995
    .local v7, value:I
    const/16 v9, 0x12

    if-eq v7, v9, :cond_1e

    .line 996
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v9

    if-nez v9, :cond_1c

    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 998
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1004
    .end local v7           #value:I
    :cond_1d
    :goto_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1005
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/16 v10, 0x68

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1006
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1007
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCamcorderStartCondition_RequestedSize()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1008
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_1

    .line 1000
    .restart local v7       #value:I
    :cond_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/16 v10, 0x12

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_7

    .line 1013
    .end local v7           #value:I
    :cond_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1014
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/16 v10, 0x68

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1015
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    goto/16 :goto_3

    .line 1018
    :cond_20
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 1019
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1020
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v9

    if-nez v9, :cond_21

    .line 1021
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/16 v10, 0x68

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1022
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 1023
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1024
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    goto/16 :goto_3

    .line 1041
    :cond_22
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateEmptyButton()V

    goto/16 :goto_4

    .line 1049
    :cond_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto/16 :goto_5
.end method

.method public onReviewMenuSelect(I)V
    .locals 1
    .parameter "cameraReview"

    .prologue
    .line 2132
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    .line 2134
    return-void
.end method

.method public onSaturationMenuSelect(I)V
    .locals 1
    .parameter "saturation"

    .prologue
    .line 2153
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSaturation(I)V

    .line 2154
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 2912
    if-eqz p1, :cond_0

    .line 2913
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2914
    const-string v0, "last_video_uri"

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2917
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2918
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "s"

    .prologue
    const/4 v6, 0x0

    .line 1597
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1614
    :goto_0
    return v6

    .line 1600
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

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

    .line 1602
    .local v0, newZoomValue:I
    if-gez v0, :cond_1

    .line 1603
    const/4 v0, 0x0

    .line 1605
    :cond_1
    sget v1, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    if-le v0, v1, :cond_2

    .line 1606
    sget v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    .line 1608
    :cond_2
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    .line 1610
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 1611
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->invalidate()V

    .line 1612
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1613
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v5, -0x2

    const/4 v2, 0x0

    .line 1618
    const-string v3, "Camcorder"

    const-string v4, "onScaleBegin"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isZoomAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1651
    :cond_0
    :goto_0
    return v2

    .line 1624
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isZoomNotSupportPopup()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1628
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->resetFocusDueToZoom()V

    .line 1630
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1631
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    .line 1633
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-nez v3, :cond_2

    .line 1634
    new-instance v3, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 1635
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setLastOrientation(I)V

    .line 1636
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1637
    .local v1, win:Landroid/view/Window;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1640
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1641
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1642
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v3, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1645
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #win:Landroid/view/Window;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 1646
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 1647
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1648
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1650
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    .line 1651
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 1655
    const-string v0, "Camcorder"

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1657
    return-void
.end method

.method public onSelfModeChangeSelected()V
    .locals 2

    .prologue
    .line 1968
    const-string v0, "Camcorder"

    const-string v1, "onSelfModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1971
    const-string v0, "Camcorder"

    const-string v1, "onSelfModeChangeSelected failed - queue is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    :goto_0
    return-void

    .line 1975
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 1976
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopEngine()V

    .line 1978
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1980
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSwitchCamera()V

    .line 1982
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartEngine()V

    .line 1983
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSetAllParams()V

    .line 1985
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1987
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    goto :goto_0
.end method

.method public onSharpnessMenuSelect(I)V
    .locals 1
    .parameter "sharpness"

    .prologue
    .line 2157
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSharpness(I)V

    .line 2158
    return-void
.end method

.method public onStartingPreviewCompleted()V
    .locals 0

    .prologue
    .line 2279
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initIntentFilterBattery()V

    .line 2280
    return-void
.end method

.method public onStorageMenuSelect(I)V
    .locals 1
    .parameter "storage"

    .prologue
    .line 2137
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 2138
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x3d

    .line 2511
    const-string v1, "Camcorder"

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

    .line 2512
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .line 2513
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    if-nez v0, :cond_0

    .line 2514
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2515
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2517
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2518
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->showMenu()V

    .line 2519
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->updateTime(I)V

    .line 2520
    return-void
.end method

.method public onTimerMenuSelect(I)V
    .locals 1
    .parameter "timer"

    .prologue
    .line 1892
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderTimer(I)V

    .line 1893
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 1439
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostCaptureAnimation()V

    .line 1440
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostRecordingSnapAnimation()V

    .line 1442
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v2, p1}, Lcom/sec/android/glview/TwGLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1443
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 1538
    :goto_0
    return v2

    .line 1449
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/MenuBase;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1450
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 1451
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v2, v3

    .line 1453
    goto :goto_0

    .line 1455
    :catch_0
    move-exception v0

    .local v0, e:Ljava/util/NoSuchElementException;
    move v2, v3

    .line 1457
    goto :goto_0

    .line 1460
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isPreviewTouchEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    .line 1461
    goto :goto_0

    .line 1464
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    .line 1465
    goto :goto_0

    .line 1468
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    .line 1469
    goto :goto_0

    .line 1471
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isZoomAvailable()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1473
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1477
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    move v2, v3

    .line 1479
    goto :goto_0

    .line 1484
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGestureDetecor:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1538
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1488
    :pswitch_0
    const-string v2, "Camcorder"

    const-string v4, "MotionEvent.ACTION_DOWN"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isTouchAutoFocusEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getLeft()I

    move-result v4

    if-lt v2, v4, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getRight()I

    move-result v4

    if-gt v2, v4, :cond_a

    .line 1490
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1491
    :cond_9
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 1492
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->removeHideFocusRectMessage()V

    .line 1493
    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/camera/Camcorder;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V

    .line 1494
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    :cond_a
    move v2, v3

    .line 1498
    goto/16 :goto_0

    .line 1500
    :pswitch_1
    const-string v2, "Camcorder"

    const-string v4, "MotionEvent.ACTION_UP"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    if-eqz v2, :cond_d

    .line 1502
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 1503
    iput v5, p0, Lcom/sec/android/app/camera/Camcorder;->mActionMoveCount:I

    .line 1504
    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/camera/Camcorder;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V

    .line 1505
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->shrinkFocusRect()V

    .line 1506
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleAutoFocus()V

    .line 1507
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    .line 1508
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1509
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    .line 1510
    goto/16 :goto_0

    .line 1512
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v4, 0xbd3

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 1513
    .local v1, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    if-eqz v1, :cond_c

    .line 1514
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->showCAFButton()V

    .end local v1           #glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    :cond_c
    move v2, v3

    .line 1516
    goto/16 :goto_0

    .line 1520
    :cond_d
    :pswitch_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    if-eqz v2, :cond_e

    .line 1521
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 1522
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mActionMoveCount:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->mActionMoveCount:I

    if-le v2, v6, :cond_e

    .line 1523
    invoke-virtual {p0, p1, v5}, Lcom/sec/android/app/camera/Camcorder;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V

    :cond_e
    move v2, v3

    .line 1526
    goto/16 :goto_0

    .line 1529
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->cancelAutoFocus()V

    .line 1530
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 1531
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 1532
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    move v2, v3

    .line 1533
    goto/16 :goto_0

    .line 1474
    :catch_1
    move-exception v2

    goto/16 :goto_1

    .line 1486
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onVideoRecordingStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2538
    const-string v2, "Camcorder"

    const-string v3, "onVideoRecordingStart"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v3, 0xbd3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 2541
    .local v1, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    if-eqz v1, :cond_0

    .line 2542
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 2543
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->showMenu()V

    .line 2544
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->startTimer()V

    .line 2545
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2546
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hideCAFButton()V

    .line 2550
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v2, :cond_2

    .line 2552
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0xbd7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;

    .line 2553
    .local v0, glSpeedControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;
    if-eqz v0, :cond_1

    .line 2554
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->hideMenu()V

    .line 2557
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRecordingLayout(Z)V

    .line 2560
    .end local v0           #glSpeedControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getTouchAutoFocusActive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2561
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->sendHideFocusRectMessage()V

    .line 2564
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideWaitingAnimation()V

    .line 2565
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 2566
    return-void
.end method

.method public onVideoStoringCompleted(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2718
    const-string v0, "Camcorder"

    const-string v1, "onVideoStoringCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-eqz v0, :cond_0

    .line 2724
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 2725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 2728
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_2

    .line 2777
    :cond_1
    :goto_0
    return-void

    .line 2731
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->isFocusIndicatorShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2732
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator(Z)V

    .line 2733
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 2736
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 2738
    new-instance v0, Lcom/sec/android/app/camera/RecordingData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/RecordingData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 2739
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e0

    const/16 v3, 0x168

    invoke-static {v1, v2, v3, v5}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/RecordingData;->setRecordingData(Landroid/graphics/Bitmap;)V

    .line 2741
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v0

    if-nez v0, :cond_4

    .line 2742
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->getRecordingData()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->startPostCaptureAnimation(Landroid/graphics/Bitmap;)V

    .line 2745
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideZoomMenu()V

    .line 2746
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_5

    .line 2747
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRecordingLayout(Z)V

    .line 2750
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 2752
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 2753
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-eqz v0, :cond_8

    .line 2754
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 2755
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 2756
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 2770
    :cond_6
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v0, :cond_7

    .line 2771
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    .line 2774
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    const/16 v1, -0x32

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v0, :cond_1

    .line 2775
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    goto/16 :goto_0

    .line 2758
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->launchGallery(Ljava/lang/String;)V

    goto :goto_1

    .line 2761
    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-nez v0, :cond_a

    .line 2762
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 2763
    const-string v0, "reviewon"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    goto :goto_1

    .line 2766
    :cond_a
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    goto :goto_1
.end method

.method public onVideoStoringFailed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2780
    const-string v0, "Camcorder"

    const-string v1, "onVideoStoringFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_1

    .line 2804
    :cond_0
    :goto_0
    return-void

    .line 2788
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->isFocusIndicatorShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2789
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator(Z)V

    .line 2790
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 2793
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 2795
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideZoomMenu()V

    .line 2796
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_3

    .line 2797
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRecordingLayout(Z)V

    .line 2800
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 2801
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-eqz v0, :cond_0

    .line 2802
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    goto :goto_0
.end method

.method public onWhiteBalanceMenuSelect(I)V
    .locals 2
    .parameter "whiteBalance"

    .prologue
    .line 2030
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 2031
    if-eqz p1, :cond_0

    .line 2032
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    .line 2034
    :cond_0
    return-void
.end method

.method public onZoomValueMenuSelect(I)V
    .locals 1
    .parameter "zoomValue"

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1807
    :goto_0
    return-void

    .line 1806
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    goto :goto_0
.end method

.method public pauseAudioPlayback_TimerBgm()V
    .locals 4

    .prologue
    .line 505
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 507
    return-void
.end method

.method public playCameraSound(II)V
    .locals 8
    .parameter "Sound"
    .parameter "loop"

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 2298
    const-string v0, "Camcorder"

    const-string v1, "playCameraSound - mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    :goto_0
    return-void

    .line 2302
    :cond_0
    const/16 v7, 0xf

    .line 2303
    .local v7, MAX_VOLUME:I
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    .line 2311
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public playFocusSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->play(I)V

    .line 2316
    return-void
.end method

.method public reAlignForPreview()V
    .locals 3

    .prologue
    .line 2260
    const v1, 0x7f0b0003

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2262
    .local v0, previewLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 2264
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2276
    :goto_0
    return-void

    .line 2273
    :cond_0
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method public resetFocus(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2708
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2709
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->resetFocus(Landroid/view/View;)V

    .line 2711
    :cond_0
    return-void
.end method

.method public resetMaxVideoDuration(I)V
    .locals 1
    .parameter "recordingMode"

    .prologue
    .line 1884
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->resetMaxVideoDuration(I)V

    .line 1885
    return-void
.end method

.method public resetPosIndicator()V
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->resetPosIndicator()V

    .line 1559
    :cond_0
    return-void
.end method

.method public resetScaleDetector()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1666
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 1668
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 1671
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_1

    .line 1672
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .line 1673
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1674
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1676
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_2

    .line 1677
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1684
    :goto_0
    return-void

    .line 1682
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->startContinuousAF()V

    goto :goto_0
.end method

.method public resetToDefaultSettings()V
    .locals 1

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 2637
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopEngine()V

    .line 2639
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleResetSettings()V

    .line 2641
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartEngine()V

    .line 2642
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSetAllParams()V

    .line 2644
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2645
    return-void
.end method

.method public resetTouchFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2686
    const-string v0, "Camcorder"

    const-string v1, "resetTouchFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2688
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->stopTouchAutoFocus()V

    .line 2693
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2705
    :goto_0
    return-void

    .line 2696
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_2

    .line 2697
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .line 2699
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2700
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->cancelAutoFocus()V

    .line 2702
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 2703
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 2704
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    goto :goto_0
.end method

.method public resizeForPreviewAspectRatio()Z
    .locals 6

    .prologue
    .line 2214
    const v3, 0x7f0b0004

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 2215
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 2218
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2248
    :pswitch_0
    const/16 v2, 0x280

    .line 2249
    .local v2, screenWidth:I
    const/16 v1, 0x1e0

    .line 2253
    .local v1, screenHeight:I
    :goto_0
    const-string v3, "Camcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resizeForPreviewAspectRatio - width : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 2256
    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setSize(II)Z

    move-result v3

    return v3

    .line 2220
    .end local v1           #screenHeight:I
    .end local v2           #screenWidth:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 2221
    .restart local v2       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 2222
    .restart local v1       #screenHeight:I
    goto :goto_0

    .line 2224
    .end local v1           #screenHeight:I
    .end local v2           #screenWidth:I
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 2225
    .restart local v2       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 2226
    .restart local v1       #screenHeight:I
    goto :goto_0

    .line 2228
    .end local v1           #screenHeight:I
    .end local v2           #screenWidth:I
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06007f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 2229
    .restart local v2       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 2230
    .restart local v1       #screenHeight:I
    goto/16 :goto_0

    .line 2232
    .end local v1           #screenHeight:I
    .end local v2           #screenWidth:I
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 2233
    .restart local v2       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 2234
    .restart local v1       #screenHeight:I
    goto/16 :goto_0

    .line 2236
    .end local v1           #screenHeight:I
    .end local v2           #screenWidth:I
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 2237
    .restart local v2       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 2238
    .restart local v1       #screenHeight:I
    goto/16 :goto_0

    .line 2240
    .end local v1           #screenHeight:I
    .end local v2           #screenWidth:I
    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 2241
    .restart local v2       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 2242
    .restart local v1       #screenHeight:I
    goto/16 :goto_0

    .line 2244
    .end local v1           #screenHeight:I
    .end local v2           #screenWidth:I
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060087

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 2245
    .restart local v2       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 2246
    .restart local v1       #screenHeight:I
    goto/16 :goto_0

    .line 2218
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public restartInactivityTimer()V
    .locals 1

    .prologue
    .line 3456
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3461
    :goto_0
    return-void

    .line 3459
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->stopInactivityTimer()V

    .line 3460
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->startInactivityTimer()V

    goto :goto_0
.end method

.method public resumeAudioPlayback_TimerBgm()V
    .locals 2

    .prologue
    .line 510
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 512
    return-void
.end method

.method public setConnectingStateGPS(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 3123
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setConnectingStateGPS(I)V

    .line 3124
    :cond_0
    return-void
.end method

.method public setContinuousAF()V
    .locals 1

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->removeHideFocusRectMessage()V

    .line 2059
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V

    .line 2060
    return-void
.end method

.method public setDefaultLayout()V
    .locals 0

    .prologue
    .line 2632
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateUIWhenDefaultLayout()V

    .line 2633
    return-void
.end method

.method public setGuideLineSize(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 3541
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 3542
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setGuideLineSize(Landroid/view/View;)V

    .line 3543
    :cond_0
    return-void
.end method

.method public setIsLaunchGallery(Z)V
    .locals 0
    .parameter "chkLaunchGallery"

    .prologue
    .line 3444
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mChkLaunchGallery:Z

    .line 3445
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 2908
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->setLastContentUri(Landroid/net/Uri;)V

    .line 2909
    return-void
.end method

.method public setSelectedMenuId(I)V
    .locals 1
    .parameter "commandId"

    .prologue
    .line 3440
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setSelectedMenuId(I)V

    .line 3441
    return-void
.end method

.method public setTouchAutoFocusActive(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 1702
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mTouchAutoFocusActive:Z

    .line 1706
    return-void
.end method

.method public showEditBackground(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 3464
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 3465
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showEditBackground(Z)V

    .line 3467
    :cond_0
    return-void
.end method

.method public showShutterButton()V
    .locals 1

    .prologue
    .line 3436
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showShutterButton()V

    .line 3437
    return-void
.end method

.method public showSideMenu()V
    .locals 1

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showSideMenu()V

    .line 3429
    return-void
.end method

.method public showSideMenuItems()V
    .locals 1

    .prologue
    .line 3420
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showSideMenuItems()V

    .line 3421
    return-void
.end method

.method public showSnapshotLimitationDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 3585
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3620
    :cond_0
    :goto_0
    return-void

    .line 3588
    :cond_1
    const-string v5, "Camcorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create showSnapshotLimitationDialog - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getSnapshotLimitationDialog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getSnapshotLimitationDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 3590
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3591
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 3593
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3594
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0015

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3595
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 3597
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 3599
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3600
    const v5, 0x1010355

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 3601
    const v5, 0x1040014

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3602
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3603
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3605
    new-instance v5, Lcom/sec/android/app/camera/Camcorder$11;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camcorder$11;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3612
    const v5, 0x7f0900a1

    new-instance v6, Lcom/sec/android/app/camera/Camcorder$12;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camcorder$12;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3617
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    .line 3618
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showWaitingAnimation()V
    .locals 0

    .prologue
    .line 1314
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showWaitingAnimation()V

    .line 1315
    return-void
.end method

.method public shrinkFocusRect()V
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->shrinkFocusRect()V

    .line 1554
    :cond_0
    return-void
.end method

.method public startContinuousAF()V
    .locals 4

    .prologue
    .line 3546
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v1, :cond_1

    .line 3555
    :cond_0
    :goto_0
    return-void

    .line 3549
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->startContinuousAF()V

    .line 3550
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3551
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v2, 0xbd3

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 3552
    .local v0, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    if-eqz v0, :cond_0

    .line 3553
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hideCAFButton()V

    goto :goto_0
.end method

.method public declared-synchronized startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 3205
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v1, :cond_0

    .line 3206
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-nez v1, :cond_1

    .line 3208
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3303
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3211
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getOrientationOnTake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 3212
    .local v0, orientation:I
    const-string v1, "Camcorder"

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

    .line 3214
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/RecordingData;->getRecordingData()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 3216
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 3217
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3300
    .end local v0           #orientation:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3205
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startPostRecordingSnapAnimation(I)V
    .locals 7
    .parameter "orientationForPicture"

    .prologue
    .line 3352
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v0, :cond_0

    .line 3353
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 3354
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 3355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 3358
    :cond_0
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 3359
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

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 3360
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/Camcorder$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$8;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setProgressListener(Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;)V

    .line 3377
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 3379
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->startCustomAnimation()V

    .line 3380
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_1

    .line 3381
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3382
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 3383
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3390
    .end local v6           #previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 3352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3387
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopContinuousAF()V
    .locals 1

    .prologue
    .line 3558
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    .line 3559
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->stopContinuousAF()V

    .line 3560
    :cond_0
    return-void
.end method

.method public updateIfResolutionChanged()V
    .locals 3

    .prologue
    const/16 v2, 0x68

    .line 1902
    const-string v0, "Camcorder"

    const-string v1, "updateIfResolutionChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolutionChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1905
    const-string v0, "Camcorder"

    const-string v1, "resolution is changed. update for new resolution"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolutionChanged(Z)V

    .line 1908
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 1909
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 1911
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 1914
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1915
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x7d

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 1917
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1920
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1923
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 1924
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 1926
    :cond_1
    return-void
.end method

.method public updateRecordingMenu()V
    .locals 4

    .prologue
    .line 2598
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v2, 0xbd3

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 2599
    .local v0, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    if-eqz v0, :cond_0

    .line 2600
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoFileLengthInByte()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 2601
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateRecordingTime(I)V

    .line 2603
    :cond_0
    return-void
.end method

.method public updateRemainTime()V
    .locals 2

    .prologue
    .line 3005
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getRemainStorage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRemainTime:I

    .line 3006
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 3007
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mRemainTime:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRemainTime(I)V

    .line 3009
    :cond_0
    return-void
.end method

.method public updateSideMenuBackground(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 1930
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1931
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideBackground()V

    .line 1936
    :cond_0
    :goto_0
    return-void

    .line 1933
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showBackground()V

    goto :goto_0
.end method

.method public updateUIWhenDefaultLayout()V
    .locals 4

    .prologue
    .line 2648
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->resetLayout()V

    .line 2650
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0xbd1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 2651
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0xbd2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 2652
    .local v1, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    if-eqz v0, :cond_0

    .line 2653
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 2655
    :cond_0
    if-eqz v1, :cond_1

    .line 2656
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshEditableMenu()V

    .line 2657
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshAnchors()V

    .line 2659
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 2660
    return-void
.end method

.method public updateUIWhenResetSettings()V
    .locals 5

    .prologue
    const/16 v4, 0xbd1

    .line 2663
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 2664
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 2665
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 2666
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2667
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V

    .line 2668
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->closeVisibleViews()V

    .line 2669
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearInvisibleViews()V

    .line 2671
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 2672
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v0, :cond_1

    .line 2673
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 2677
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0xbd2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 2678
    .local v1, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    if-eqz v1, :cond_0

    .line 2679
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshEditableMenu()V

    .line 2680
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshAnchors()V

    .line 2682
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 2683
    return-void

    .line 2675
    .end local v1           #sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEditableShortcutOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUIWhenSwitchCamera()V
    .locals 3

    .prologue
    .line 1991
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V

    .line 1992
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 1993
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 1994
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1995
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 1996
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2001
    return-void
.end method
