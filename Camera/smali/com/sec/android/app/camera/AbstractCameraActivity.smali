.class public abstract Lcom/sec/android/app/camera/AbstractCameraActivity;
.super Landroid/app/Activity;
.source "AbstractCameraActivity.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;
.implements Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;
.implements Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;


# static fields
.field protected static final AF_HIDE_RECT_TIMER:I = 0x3

.field private static final AF_HIDE_RECT_TIMER_DURATION:I = 0x1f4

.field public static final BACK_FROM_ACCEPT_DIALOG:I = 0x7d6

.field protected static final CAM_AVAILABLE_LOW_TEMP:I = -0x64

.field protected static final CAM_FLASH_AVAILABLE_TEMP:I = -0x32

.field protected static final CHANGE_STORAGE_SETTING_DLG:I = 0x5

.field protected static final CHECK_CALL_DLG:I = 0x2

.field protected static final DIALOG_ID_WIFI_DIRECT_NOTIFICATION:I = 0x4

.field protected static final DIALOG_ID_WIFI_NOTIFICATION:I = 0x3

.field protected static final DLG_HIDE:Z = false

.field protected static final DLG_SHOW:Z = true

.field protected static final ENABLE_GPS_DLG:I = 0x9

.field protected static final FLIP_OPEN_DLG:I = 0x8

.field protected static final FOLDER_CLOSE:I = 0x2

.field protected static final FOLDER_OPEN:I = 0x1

.field protected static final INACTIVITY_TIMEOUT:I = 0x78

.field protected static final INACTIVITY_TIMER_EXPIRED:I = 0x1

.field public static final KEY_BLINK_DETECTION:Ljava/lang/String; = "blinkdetection"

.field public static final KEY_FROM_APP:Ljava/lang/String; = "from_app"

.field public static final KEY_QUICK_VIEW:Ljava/lang/String; = "quickview"

.field public static final KEY_REVIEW_ON:Ljava/lang/String; = "reviewon"

.field protected static LOW_BATTERY_THRESHOLD_VALUE:I = 0x0

.field protected static LOW_TEMP_FLASH_THRESHOLD_VALUE:I = 0x0

.field protected static final MDNIE_CAMERA_MODE:I = 0x4

.field protected static final MDNIE_UI_MODE:I = 0x0

.field protected static final MESSAGE_TYPE_MMS:I = 0x3

.field protected static final MESSAGE_TYPE_PUSH_SMS:I = 0x2

.field protected static final MESSAGE_TYPE_SMS:I = 0x1

.field protected static final MILLIS_IN_SEC:I = 0x3e8

.field public static final NAME_WITH_DATA:I = 0x7d5

.field protected static final NUM_OF_DLG:I = 0xa

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x0

.field protected static final OVERHEAT_TIMEOUT:I = 0x5

.field protected static final OVERHEAT_TIMER_EXPIRED:I = 0x2

.field public static final PHOTO_PICKED_WITH_DATA:I = 0x7d4

.field public static final REQUEST_ATTACH_IMAGE:I = 0x7d1

.field public static final REQUEST_ATTACH_VIDEO:I = 0x7d2

.field public static final REQUEST_BLINKDETECT_IMAGE:I = 0x7d3

.field public static final SELECT_PIC_DLG:I = 0x7

.field protected static final STORAGE_CHANGE_DLG:I = 0x1

.field protected static final STORAGE_STATUS_DLG:I = 0x0

.field protected static final STORAGE_STATUS_LOW:I = 0x1

.field protected static final STORAGE_STATUS_NONE:I = 0x2

.field protected static final STORAGE_STATUS_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AbstractCameraActivity"

.field public static final USERPROFILE_DLG:I = 0x6

.field public static mIsCamcorderSelfIconLoaded:Z

.field public static mIsCameraSelfIconLoaded:Z

.field private static mIsEULAenabled:Z


# instance fields
.field private bAFTimerStarted:Z

.field protected bFlagOverheat:Z

.field protected bFromSecureSetting:Z

.field protected bIsCharging:Z

.field protected bTurnOnScrAB:Z

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mAutoRotation:Z

.field protected mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field protected mBaseLayout:Landroid/view/ViewGroup;

.field protected mBatteryLevel:I

.field protected mBufferOverFlowPopup:Landroid/app/AlertDialog;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field protected mCheckCalling:Z

.field protected mCheckMemory:Lcom/sec/android/app/camera/CheckMemory;

.field protected mCheckVoIPCalling:Z

.field protected mChkKeyFromApp:Ljava/lang/String;

.field protected mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

.field protected mDefaultLayoutPopup:Landroid/app/AlertDialog;

.field protected mDisplayBatteryPercentage:I

.field private mDlgStatus:[Z

.field protected mEULAPopup:Landroid/app/AlertDialog;

.field private mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

.field protected mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field protected mErrorPopup:Landroid/app/AlertDialog;

.field protected mGLContext:Lcom/sec/android/glview/TwGLContext;

.field protected mGLInitialized:Z

.field protected mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

.field protected mInactivityPopupHandler:Landroid/os/Handler;

.field private mIsDisplayed:Z

.field public mIsFromSNS:Z

.field protected mLowBatteryPopup:Landroid/app/AlertDialog;

.field protected mLowBatteryWarningLevel:I

.field protected mMainHandler:Landroid/os/Handler;

.field private mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

.field protected mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field protected mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field private mOnDeviceHelpScreen:Landroid/app/Dialog;

.field protected mOnResumePending:Z

.field protected mOpenFailedPopup:Landroid/app/AlertDialog;

.field protected mOverheatPopup:Landroid/app/AlertDialog;

.field protected mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

.field protected mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field protected mRecordingFailedPopup:Landroid/app/AlertDialog;

.field protected mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field protected mResetPopup:Landroid/app/AlertDialog;

.field protected mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field protected mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field private mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

.field public mShowWifiDialog:Z

.field protected mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field protected mSpinnerDialog:Landroid/app/Dialog;

.field protected mStorageStatus:I

.field protected mUsbMassStorageEnabled:Z

.field protected mViewStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/app/camera/MenuBase;",
            ">;"
        }
    .end annotation
.end field

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mbNeedToStartEngineSync:Z

.field msgToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 180
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    .line 181
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_TEMP_FLASH_THRESHOLD_VALUE:I

    .line 203
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsEULAenabled:Z

    .line 213
    sput-boolean v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCameraSelfIconLoaded:Z

    .line 214
    sput-boolean v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCamcorderSelfIconLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 498
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    .line 114
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 128
    const/16 v0, 0xa

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    .line 141
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 142
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 144
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    .line 146
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    .line 156
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    .line 158
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 159
    new-instance v0, Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    .line 160
    new-instance v0, Lcom/sec/android/app/camera/CameraSettings;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 165
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDisplayBatteryPercentage:I

    .line 168
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 169
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    .line 170
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    .line 171
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    .line 172
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    .line 174
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    .line 175
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 176
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    .line 177
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    .line 178
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    .line 187
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    .line 196
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bAFTimerStarted:Z

    .line 197
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckMemory:Lcom/sec/android/app/camera/CheckMemory;

    .line 199
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    .line 200
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsFromSNS:Z

    .line 201
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mbNeedToStartEngineSync:Z

    .line 202
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFromSecureSetting:Z

    .line 205
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsDisplayed:Z

    .line 208
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    .line 210
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 212
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    .line 216
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$1;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 230
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$2;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    .line 256
    new-instance v0, Lcom/sec/android/app/camera/command/CommandIdMap;

    invoke-direct {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    .line 259
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 261
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnResumePending:Z

    .line 504
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$3;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 514
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$4;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 1887
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    .line 499
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/AbstractCameraActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    return-object p1
.end method


# virtual methods
.method public CannotStartCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1335
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    if-eqz v0, :cond_1

    .line 1336
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1340
    :goto_0
    return-void

    .line 1338
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_0
.end method

.method protected IsGpsEnableInSettings()V
    .locals 3

    .prologue
    .line 2196
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090015

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$43;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$43;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900d9

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$42;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$42;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2207
    return-void
.end method

.method public PauseGLSurface()V
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 2006
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 2008
    :cond_0
    return-void
.end method

.method public abstract cancelShutterTimer()V
.end method

.method public abstract changeContrastPreview(I)V
.end method

.method public abstract changeEffectPreview(I)V
.end method

.method public abstract changeSaturationPreview(I)V
.end method

.method public abstract changeSceneModePreview(I)V
.end method

.method public abstract changeSharpnessPreview(I)V
.end method

.method public abstract changeWhiteBalancePreview(I)V
.end method

.method public checkCameraStartCondition_Call()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1343
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1345
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1346
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1347
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1348
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 1349
    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-eqz v3, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1362
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 1359
    :catch_0
    move-exception v0

    .line 1360
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AbstractCameraActivity"

    const-string v4, "phoneServ.isOffhook() or phoneServ.isVoIPIdle() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkCameraStartCondition_Security()Z
    .locals 2

    .prologue
    .line 1393
    const-string v1, "persist.sys.camera_lock"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1394
    .local v0, dev_camera_lock_state:Ljava/lang/String;
    const-string v1, "camera_lock.enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1395
    const/4 v1, 0x1

    .line 1397
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkCameraStartCondition_VoIPCall()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1366
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    .line 1369
    :try_start_0
    const-string v3, "voip"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 1370
    .local v1, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v1, :cond_0

    .line 1371
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    .line 1372
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 1373
    iget-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    .end local v1           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_0
    :goto_1
    return v2

    .restart local v1       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_1
    move v3, v2

    .line 1371
    goto :goto_0

    .line 1375
    .end local v1           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v0

    .line 1377
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public checkOpenFolderWarningPopUp(I)Z
    .locals 3
    .parameter "currentFolderStatus"

    .prologue
    const/4 v2, 0x1

    .line 2177
    const/4 v0, 0x0

    .line 2181
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2182
    if-ne p1, v2, :cond_1

    .line 2183
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleFlipClose(Z)V

    .line 2184
    const/4 v0, 0x0

    .line 2192
    :cond_0
    :goto_0
    return v0

    .line 2186
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2187
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleFlipClose(Z)V

    .line 2188
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkStorage(ZZ)V
    .locals 5
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1707
    if-eqz p1, :cond_4

    .line 1708
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1710
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSelectedMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 1711
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1716
    :goto_0
    if-eqz p2, :cond_0

    .line 1717
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 1718
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1719
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-nez v0, :cond_2

    .line 1724
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getChangeStorageSettingDialog()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v0

    if-eq v0, v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    .line 1729
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1745
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateRemainTime()V

    .line 1746
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->mediaStorageDialog()V

    .line 1747
    return-void

    .line 1713
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x75

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0

    .line 1733
    :cond_4
    if-eqz p2, :cond_5

    .line 1734
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    .line 1736
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1738
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->resetStorageMedia()V

    .line 1739
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getChangeStorageSettingDialog()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1740
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setChangeStorageSettingDialog(I)V

    .line 1742
    :cond_6
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_1
.end method

.method public checkStorageLow(I)I
    .locals 6
    .parameter "storage"

    .prologue
    .line 1676
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAvailableStorage(I)J

    move-result-wide v0

    .line 1677
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1678
    const/4 v2, 0x2

    .line 1684
    :goto_0
    return v2

    .line 1680
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getMaxSizeOfImage(II)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 1682
    const/4 v2, 0x1

    goto :goto_0

    .line 1684
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract checkStorageLow()V
.end method

.method protected clearGLSurfaceView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->clear()V

    .line 724
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 726
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 727
    return-void
.end method

.method public dismissResetDialog()V
    .locals 1

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2002
    return-void
.end method

.method public displayEULADialog()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2218
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2219
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2221
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030006

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2222
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0015

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2223
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2225
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    .line 2227
    const v5, 0x7f0900d6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2229
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2230
    const v5, 0x1010355

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2231
    const v5, 0x1040014

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2232
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2233
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2235
    new-instance v5, Lcom/sec/android/app/camera/AbstractCameraActivity$44;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$44;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2242
    const v5, 0x7f0900a1

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$45;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity$45;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2252
    const v5, 0x7f0900d9

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$46;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$46;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2259
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    .line 2260
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 2261
    return-void
.end method

.method public dumpViewStack()Ljava/lang/String;
    .locals 5

    .prologue
    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    .local v1, log:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 654
    .local v2, view:Lcom/sec/android/app/camera/MenuBase;
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v3

    .line 655
    .local v3, viewSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 656
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Lcom/sec/android/app/camera/MenuBase;
    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 657
    .restart local v2       #view:Lcom/sec/android/app/camera/MenuBase;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 659
    const-string v4, " => "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v4, "(Z:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 663
    const-string v4, ",C:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isCaptureEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 665
    const-string v4, ",P:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isPreviewTouchEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 667
    const-string v4, ")\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->PauseGLSurface()V

    .line 596
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 597
    return-void
.end method

.method public finishOnError(I)V
    .locals 7
    .parameter "error"

    .prologue
    const v6, 0x7f09000f

    const v5, 0x7f0900a1

    .line 1242
    const-string v2, "AbstractCameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishOnError [Error type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1245
    const-string v2, "AbstractCameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera is finished [Error type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :goto_0
    return-void

    .line 1249
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1250
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090004

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1251
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1252
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1254
    packed-switch p1, :pswitch_data_0

    .line 1314
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1319
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    .line 1320
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1321
    :catch_0
    move-exception v1

    .line 1322
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto :goto_0

    .line 1257
    .end local v1           #ex:Ljava/lang/Exception;
    :pswitch_0
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1258
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$5;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1265
    :pswitch_1
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1266
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$6;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1273
    :pswitch_2
    const v2, 0x7f090011

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1274
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$7;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1281
    :pswitch_3
    const v2, 0x7f090014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1282
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$8;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1289
    :pswitch_4
    const v2, 0x7f090012

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1290
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$9;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1297
    :pswitch_5
    const-string v2, "The firmware is not latest.\nDo you want to continue?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1298
    const v2, 0x7f0900cc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1299
    const v2, 0x7f0900cd

    new-instance v3, Lcom/sec/android/app/camera/AbstractCameraActivity$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$10;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1306
    :pswitch_6
    const v2, 0x7f090013

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1307
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$11;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1254
    nop

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAFTimerStarted()Z
    .locals 1

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bAFTimerStarted:Z

    return v0
.end method

.method public getAutoRotation()Z
    .locals 1

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    return v0
.end method

.method public getAvailableStorage()J
    .locals 4

    .prologue
    .line 1689
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v0

    .line 1691
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1692
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1694
    :cond_0
    return-wide v0
.end method

.method public getAvailableStorage(I)J
    .locals 4
    .parameter "storage"

    .prologue
    .line 1698
    invoke-static {p1}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v0

    .line 1700
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1701
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1703
    :cond_0
    return-wide v0
.end method

.method public final getBaseLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 1876
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBatteryLevel:I

    return v0
.end method

.method public getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    return-object v0
.end method

.method public abstract getChkKeyFromApp()Ljava/lang/String;
.end method

.method public getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 627
    :goto_0
    return v0

    .line 624
    :catch_0
    move-exception v0

    .line 627
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayBatteryPercentageEnabled()I
    .locals 1

    .prologue
    .line 1884
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDisplayBatteryPercentage:I

    return v0
.end method

.method public getEULAenable()Z
    .locals 1

    .prologue
    .line 2214
    sget-boolean v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsEULAenabled:Z

    return v0
.end method

.method public final getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public getFolderStatus()I
    .locals 1

    .prologue
    .line 2169
    const/4 v0, 0x1

    .line 2173
    .local v0, ret:I
    return v0
.end method

.method public final getGLContext()Lcom/sec/android/glview/TwGLContext;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    return-object v0
.end method

.method public getGpsPopupDisplayed()Z
    .locals 1

    .prologue
    .line 1666
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsDisplayed:Z

    return v0
.end method

.method public abstract getIsLaunchGallery()Z
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMediaMetadataRetriever()Landroid/media/MediaMetadataRetriever;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-object v0
.end method

.method public getMemoryStatus()I
    .locals 1

    .prologue
    .line 1783
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    return v0
.end method

.method public getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    return-object v0
.end method

.method public getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method public final getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public final getPopupMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public abstract getRemainStorage()I
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method public final getShootingmodeRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public final getSideMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public abstract getTouchAutoFocusActive()Z
.end method

.method public getUsbMassStorageEnabledStatus()V
    .locals 4

    .prologue
    .line 2015
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2016
    .local v0, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    .line 2017
    const-string v1, "AbstractCameraActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUsbMassStorageEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    return-void
.end method

.method protected handleBatteryOverheat()V
    .locals 5

    .prologue
    .line 1830
    const-string v1, "AbstractCameraActivity"

    const-string v2, "handleBatteryOverheat"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1865
    :goto_0
    return-void

    .line 1836
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1837
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1838
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1839
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1841
    const v1, 0x7f090017

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$31;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$31;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1848
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1849
    new-instance v1, Lcom/sec/android/app/camera/AbstractCameraActivity$32;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$32;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1862
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    .line 1863
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1864
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public handleFlipClose(Z)V
    .locals 4
    .parameter "bClosed"

    .prologue
    const/16 v3, 0x8

    .line 1868
    const-string v0, "AbstractCameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFlipClose "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    if-eqz p1, :cond_0

    .line 1870
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1873
    :goto_0
    return-void

    .line 1872
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_0
.end method

.method protected handleLowBattery(Z)V
    .locals 3
    .parameter "temp"

    .prologue
    .line 1787
    const-string v1, "AbstractCameraActivity"

    const-string v2, "handleLowBattery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1827
    :goto_0
    return-void

    .line 1792
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1793
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1794
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1795
    if-eqz p1, :cond_1

    .line 1796
    const v1, 0x7f09012e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1800
    :goto_1
    const v1, 0x7f090017

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$29;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$29;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1808
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1809
    new-instance v1, Lcom/sec/android/app/camera/AbstractCameraActivity$30;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$30;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1825
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 1826
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1798
    :cond_1
    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public hideAllDlg()V
    .locals 3

    .prologue
    .line 1774
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1775
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1776
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 1777
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->dismissDialog(I)V

    .line 1774
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1780
    :cond_1
    return-void
.end method

.method public hideDlg(I)V
    .locals 3
    .parameter "nId"

    .prologue
    .line 1763
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1764
    if-ne v0, p1, :cond_0

    .line 1765
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1766
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 1767
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->dismissDialog(I)V

    .line 1763
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1771
    :cond_1
    return-void
.end method

.method public hideFaceRect()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public abstract hideSideMenu()V
.end method

.method public abstract hideSideMenuItems()V
.end method

.method public hideStatusIcon()V
    .locals 2

    .prologue
    .line 2021
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2022
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 2023
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2024
    return-void
.end method

.method public hideWaitingAnimation()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 536
    return-void
.end method

.method protected inflateWaitingView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 539
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    .line 540
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 541
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 542
    .local v2, v:Landroid/view/View;
    const v3, 0x7f0b0031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 543
    .local v1, pBar4:Landroid/widget/ProgressBar;
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 546
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 547
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 548
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f020264

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 549
    return-void
.end method

.method protected initializeGLSurfaceView()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 678
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 679
    new-instance v0, Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, v2, p0, v3}, Lcom/sec/android/glview/TwGLContext;-><init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 680
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v6, 0x4

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 681
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 682
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 683
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 684
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v5}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 686
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 687
    .local v7, glViewLayout:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 689
    iput-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 690
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLSurfaceCreate**StartU["

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

    .line 691
    return-void
.end method

.method public invalidatePreview()V
    .locals 2

    .prologue
    .line 1232
    const v1, 0x7f0b0004

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 1233
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->invalidate()V

    .line 1234
    return-void
.end method

.method public abstract isActivityDestoying()Z
.end method

.method public abstract isAutoFocusing()Z
.end method

.method public isBatteryCharging()Z
    .locals 1

    .prologue
    .line 1880
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bIsCharging:Z

    return v0
.end method

.method public isCaptureEnabled()Z
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 641
    const/4 v0, 0x1

    .line 648
    :goto_0
    return v0

    .line 644
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isCaptureEnabled()Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 648
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isCapturing()Z
.end method

.method public isFirstSidemenuSelf()Z
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSelectedMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 2046
    sget-boolean v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCameraSelfIconLoaded:Z

    .line 2048
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCamcorderSelfIconLoaded:Z

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 4

    .prologue
    .line 848
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 849
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    .line 850
    const-string v1, "AbstractCameraActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kgm.isKeyguardLocked()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract isMediaScannerScanning()Z
.end method

.method public isNeedToStartEngineSync()Z
    .locals 1

    .prologue
    .line 2033
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mbNeedToStartEngineSync:Z

    return v0
.end method

.method public abstract isPreviewStarted()Z
.end method

.method public isPreviewTouchEnabled()Z
    .locals 1

    .prologue
    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isPreviewTouchEnabled()Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 636
    :goto_0
    return v0

    .line 633
    :catch_0
    move-exception v0

    .line 636
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResetDialogActive()Z
    .locals 1

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1995
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 1997
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isShutterPressed()Z
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 1

    .prologue
    .line 2011
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    return v0
.end method

.method protected makeToast(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 8
    .parameter "cls"
    .parameter "id"
    .parameter "str"

    .prologue
    const v6, 0x7f020241

    const/4 v7, 0x0

    .line 1890
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1891
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03000a

    const v4, 0x7f0b0021

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1892
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b0022

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1893
    .local v0, image:Landroid/widget/ImageView;
    const v4, 0x7f0b0023

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1895
    .local v3, text:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    if-eqz v4, :cond_0

    .line 1901
    :goto_0
    if-eqz p3, :cond_1

    .line 1902
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1906
    :goto_1
    const/high16 v4, 0x420c

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1907
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1909
    packed-switch p2, :pswitch_data_0

    .line 1926
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    const/16 v5, 0x51

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v7, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 1927
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 1928
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1929
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1930
    return-void

    .line 1898
    :cond_0
    new-instance v4, Landroid/widget/Toast;

    invoke-direct {v4, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    goto :goto_0

    .line 1904
    :cond_1
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1911
    :pswitch_0
    const-string v4, "AbstractCameraActivity"

    const-string v5, "MESSAGE_TYPE_SMS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1916
    :pswitch_1
    const-string v4, "AbstractCameraActivity"

    const-string v5, "MESSAGE_TYPE_PUSH_SMS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1921
    :pswitch_2
    const-string v4, "AbstractCameraActivity"

    const-string v5, "MESSAGE_TYPE_MMS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    const v4, 0x7f020240

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1909
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public mediaStorageDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1327
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eqz v0, :cond_0

    .line 1328
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1332
    :goto_0
    return-void

    .line 1330
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_0
.end method

.method protected notifyOnPause()V
    .locals 1

    .prologue
    .line 981
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 984
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public onAntishakeSelect(I)V
    .locals 0
    .parameter "antishake"

    .prologue
    .line 423
    return-void
.end method

.method public onAudioRecordingSelect(I)V
    .locals 0
    .parameter "audiorecording"

    .prologue
    .line 465
    return-void
.end method

.method public onAutocontrastSelect(I)V
    .locals 0
    .parameter "autocontrast"

    .prologue
    .line 426
    return-void
.end method

.method public onBlinkdetectionSelect(I)V
    .locals 0
    .parameter "blinkdetection"

    .prologue
    .line 429
    return-void
.end method

.method public onBurstModeSelectCommand(I)V
    .locals 0
    .parameter "mBurstMode"

    .prologue
    .line 486
    return-void
.end method

.method public onCamcorderQualityMenuSelect(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 435
    return-void
.end method

.method public onCamcorderSpeedMenuSelect(I)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 438
    return-void
.end method

.method public onCameraQualityMenuSelect(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 432
    return-void
.end method

.method public onContextualFilenameSelect(I)V
    .locals 0
    .parameter "contextualFilename"

    .prologue
    .line 489
    return-void
.end method

.method public onContrastMenuSelect(I)V
    .locals 0
    .parameter "contrast"

    .prologue
    .line 375
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 1098
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1099
    const-string v1, "AbstractCameraActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1102
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "AbstractCameraActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1103
    invoke-static {p0}, Lcom/sec/android/app/camera/CheckMemory;->setStorageVolume(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 1105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFlagOverheat:Z

    .line 1106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mbNeedToStartEngineSync:Z

    .line 1109
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideStatusIcon()V

    .line 1112
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    .line 1401
    const-string v10, "ro.csc.country_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1403
    .local v8, country_code:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1634
    :pswitch_0
    const/4 v10, 0x0

    :goto_0
    return-object v10

    .line 1405
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1406
    .local v0, builder1:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f090004

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x1010355

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f090005

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f090017

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$12;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$12;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1427
    new-instance v10, Lcom/sec/android/app/camera/AbstractCameraActivity$13;

    invoke-direct {v10, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$13;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1437
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto :goto_0

    .line 1439
    .end local v0           #builder1:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1440
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0900dd

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0900cc

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$15;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$15;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0900cd

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$14;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$14;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1454
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto :goto_0

    .line 1456
    .end local v1           #builder2:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1458
    .local v2, builder3:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1459
    const v10, 0x7f090019

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1464
    :goto_1
    const v10, 0x7f090004

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x1010355

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f090017

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$16;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$16;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1471
    new-instance v10, Lcom/sec/android/app/camera/AbstractCameraActivity$17;

    invoke-direct {v10, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$17;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1481
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 1461
    :cond_0
    const v10, 0x7f090018

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1484
    .end local v2           #builder3:Landroid/app/AlertDialog$Builder;
    :pswitch_4
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1485
    .local v3, builder4:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f090104

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1486
    const-string v10, "China"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "china"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "CHINA"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1487
    :cond_1
    const v10, 0x7f090106

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1491
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09010a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$18;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$18;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v3, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1503
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09010b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$19;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$19;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v3, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1513
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 1489
    :cond_2
    const v10, 0x7f090105

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 1516
    .end local v3           #builder4:Landroid/app/AlertDialog$Builder;
    :pswitch_5
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1517
    .local v4, builder5:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f090107

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1518
    const-string v10, "China"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "china"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "CHINA"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1519
    :cond_3
    const v10, 0x7f090109

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1523
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09010a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$20;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$20;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1540
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09010b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$21;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$21;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1551
    new-instance v10, Lcom/sec/android/app/camera/AbstractCameraActivity$22;

    invoke-direct {v10, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$22;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1563
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 1521
    :cond_4
    const v10, 0x7f090108

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 1566
    .end local v4           #builder5:Landroid/app/AlertDialog$Builder;
    :pswitch_6
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1567
    .local v5, builder6:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f090126

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x1010355

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f090127

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0900a1

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$24;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$24;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0900d9

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$23;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$23;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1582
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 1585
    .end local v5           #builder6:Landroid/app/AlertDialog$Builder;
    :pswitch_7
    const-string v10, "AbstractCameraActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FLIP_OPEN_DLG, mCameraSettings.getShootingMode()="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iget-object v10, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 1587
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1588
    .local v6, builder7:Landroid/app/AlertDialog$Builder;
    iget-object v10, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v10

    if-nez v10, :cond_5

    const v9, 0x7f090157

    .line 1590
    .local v9, msgId01:I
    :goto_4
    const v10, 0x7f090004

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1591
    const v10, 0x1010355

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1592
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1593
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1594
    const v10, 0x7f0900a1

    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$25;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$25;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v6, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1599
    new-instance v10, Lcom/sec/android/app/camera/AbstractCameraActivity$26;

    invoke-direct {v10, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$26;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1609
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 1588
    .end local v9           #msgId01:I
    :cond_5
    const v9, 0x7f090158

    goto :goto_4

    .line 1612
    .end local v6           #builder7:Landroid/app/AlertDialog$Builder;
    :cond_6
    const-string v10, "AbstractCameraActivity"

    const-string v11, "It\'s not self-mode"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1616
    :pswitch_8
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setGpsPopupDisplayed(Z)V

    .line 1617
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1618
    .local v7, builder8:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f090126

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x1010355

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f09015a

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0900a1

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$28;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$28;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0900d9

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$27;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$27;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1632
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 1403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1136
    const-string v0, "AbstractCameraActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1142
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->clear()V

    .line 1143
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 1145
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 1147
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1149
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    .line 1152
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1153
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1154
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    .line 1157
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1158
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1159
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    .line 1162
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1163
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1164
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    .line 1167
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 1168
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1169
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    .line 1172
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_6

    .line 1173
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->clear()V

    .line 1174
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 1177
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_7

    .line 1178
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1179
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1182
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_8

    .line 1183
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1184
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1187
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_9

    .line 1188
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1189
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1192
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_a

    .line 1193
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1194
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1197
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_b

    .line 1198
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1199
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1202
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    if-eqz v0, :cond_c

    .line 1203
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->clear()V

    .line 1204
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    .line 1206
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_d

    .line 1207
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1208
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1211
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_e

    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1213
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1216
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 1217
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    .line 1219
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 1220
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 1221
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    .line 1222
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 1223
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 1225
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1226
    return-void
.end method

.method public onDeviceListMenuSelect()V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public onEditModeSelectCommand()V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method public onEffectMenuSelect(I)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 369
    return-void
.end method

.method public onEffectRecorderMenuSelectCommand(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 483
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .locals 0
    .parameter "exposureValue"

    .prologue
    .line 402
    return-void
.end method

.method public onExposuremeterMenuSelect(I)V
    .locals 0
    .parameter "exposuremeter"

    .prologue
    .line 414
    return-void
.end method

.method public onFlashModeMenuSelect(I)V
    .locals 0
    .parameter "flashMode"

    .prologue
    .line 351
    return-void
.end method

.method public onFlipMenuSelectCommand(I)V
    .locals 0
    .parameter "flip"

    .prologue
    .line 471
    return-void
.end method

.method public onFocusModeMenuSelect(I)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 348
    return-void
.end method

.method public onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 13
    .parameter "rootView"

    .prologue
    const v12, 0x7f06008b

    const v11, 0x7f060072

    const/4 v2, 0x0

    .line 730
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v10, v0

    .line 731
    .local v10, SCREEN_WIDTH:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v9, v0

    .line 733
    .local v9, SCREEN_HEIGHT:I
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v0, :cond_0

    .line 734
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 735
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 736
    new-instance v3, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v8, v0

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 742
    new-instance v3, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v8, v0

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 745
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 746
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 747
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 749
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 750
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 757
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 758
    return-void
.end method

.method public onGpsChanged(I)V
    .locals 0
    .parameter "gps"

    .prologue
    .line 444
    return-void
.end method

.method public onGuidelineSelect(I)V
    .locals 0
    .parameter "guideline"

    .prologue
    .line 441
    return-void
.end method

.method public onHdrMenuSelectCommand(I)V
    .locals 0
    .parameter "hdr"

    .prologue
    .line 474
    return-void
.end method

.method public onISOMenuSelect(I)V
    .locals 0
    .parameter "iso"

    .prologue
    .line 411
    return-void
.end method

.method public onModechanged()V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public onObjecttrackingSelect(I)V
    .locals 0
    .parameter "objecttracking"

    .prologue
    .line 420
    return-void
.end method

.method public onOutdoorVisibilitySelect(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 459
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 990
    const-string v1, "AbstractCameraActivity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 994
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v1, :cond_0

    .line 995
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearInvisibleViews()V

    .line 998
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 999
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->onPause()V

    .line 1002
    :cond_1
    iput-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 1004
    const-string v1, "AbstractCameraActivity"

    const-string v2, "GL Cleared!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mbNeedToStartEngineSync:Z

    .line 1008
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1011
    const-string v1, "AbstractCameraActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause : SCREEN_BRIGHTNESS_MODE - bTurnOnScrAB:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    if-eqz v1, :cond_2

    .line 1013
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1021
    :cond_2
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    .line 1023
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1031
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledVideoGamma(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1037
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1038
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1039
    :cond_3
    iput-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 1041
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1042
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1044
    :cond_4
    iput-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 1046
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1047
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1048
    :cond_5
    iput-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    .line 1050
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1051
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1052
    :cond_6
    iput-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    .line 1054
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1055
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1056
    :cond_7
    iput-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    .line 1058
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1059
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1060
    :cond_8
    iput-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    .line 1062
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1063
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1064
    :cond_9
    iput-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    .line 1066
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1067
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1068
    :cond_a
    iput-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    .line 1070
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 1071
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopOverheatTimer()V

    .line 1072
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopAFHideRectTimer()V

    .line 1074
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1075
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1078
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 1079
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1082
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    if-eqz v1, :cond_d

    .line 1083
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 1084
    iput-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    .line 1088
    :cond_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1089
    .local v0, dvfsLockIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.DVFS_LCD_FRAME_RATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    const-string v1, "RATE"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1093
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1094
    iput-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnResumePending:Z

    .line 1095
    return-void

    .line 1032
    .end local v0           #dvfsLockIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 1024
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v5, 0x1

    .line 1638
    const-string v2, "AbstractCameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    packed-switch p1, :pswitch_data_0

    .line 1660
    :goto_0
    return-void

    .line 1641
    :pswitch_0
    const v2, 0x7f090005

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1642
    .local v1, message:Ljava/lang/String;
    iget v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-ne v2, v5, :cond_0

    .line 1643
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorageLow(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 1646
    const-string v2, "AbstractCameraActivity"

    const-string v3, "change_to_card_memory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    const v2, 0x7f090007

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_1
    move-object v0, p2

    .line 1657
    check-cast v0, Landroid/app/AlertDialog;

    .line 1658
    .local v0, builder:Landroid/app/AlertDialog;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1648
    .end local v0           #builder:Landroid/app/AlertDialog;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    if-ne v2, v5, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorageLow(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 1650
    const-string v2, "AbstractCameraActivity"

    const-string v3, "change_to_phone_memory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    const v2, 0x7f090008

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1653
    :cond_2
    const-string v2, "AbstractCameraActivity"

    const-string v3, "not_enough_space"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const v2, 0x7f090006

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1639
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreviewFileReceived(I)V
    .locals 0
    .parameter "preview"

    .prologue
    .line 393
    return-void
.end method

.method public onRecordingModeMenuSelect(I)V
    .locals 0
    .parameter "recordingMode"

    .prologue
    .line 408
    return-void
.end method

.method public onResolutionMenuSelect(I)V
    .locals 0
    .parameter "resolution"

    .prologue
    .line 366
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 859
    const-string v5, "AbstractCameraActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume hasWindowFocus()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hasWindowFocus()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 861
    const-string v5, "AbstractCameraActivity"

    const-string v6, "onResume. mOnResumePending=true"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iput-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnResumePending:Z

    .line 866
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 867
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/MenuBase;->onResume()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_3

    .line 875
    :cond_1
    :goto_0
    iput-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    .line 878
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 879
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 881
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 882
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 884
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 885
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 888
    :cond_3
    const/4 v3, 0x1

    .line 890
    .local v3, mAutomatic:I
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 896
    :goto_1
    if-ne v3, v8, :cond_8

    .line 897
    iput-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    .line 899
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 900
    .local v4, pm:Landroid/os/PowerManager;
    const-string v5, "persist.sys.default_brightness"

    const/16 v6, 0x78

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 906
    .end local v4           #pm:Landroid/os/PowerManager;
    :goto_2
    const-string v5, "AbstractCameraActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume : SCREEN_BRIGHTNESS_MODE - mAutomatic:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bTurnOnScrAB:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v5, 0x1

    :try_start_2
    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledVideoGamma(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 919
    :goto_3
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v5, :cond_4

    .line 920
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v5}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 922
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v5, :cond_5

    .line 923
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->onResume()V

    .line 925
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-boolean v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLContext;->enableOrientation(Z)V

    .line 927
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLContext;->setScrollBarAutoHide(Z)V

    .line 932
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getUsbMassStorageEnabledStatus()V

    .line 935
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_battery_percentage"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDisplayBatteryPercentage:I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 941
    :goto_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 942
    .local v0, dvfsLockIntent:Landroid/content/Intent;
    const-string v5, "com.sec.android.intent.action.DVFS_LCD_FRAME_RATE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    const-string v5, "RATE"

    const-string v6, "40"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 944
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 946
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 947
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_6

    .line 951
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 952
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "from-camera"

    invoke-virtual {v5, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "from-camcorder"

    invoke-virtual {v5, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_7

    .line 954
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableOnDeviceHelp"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 955
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showOnDeviceHelpScreen()V

    .line 966
    :cond_7
    :goto_5
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 967
    return-void

    .line 892
    .end local v0           #dvfsLockIntent:Landroid/content/Intent;
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v1

    .line 893
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "AbstractCameraActivity"

    const-string v6, "to get SCREEN_BRIGHTNESS_MODE failed"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 903
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_8
    iput-boolean v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    goto/16 :goto_2

    .line 936
    :catch_1
    move-exception v1

    .line 937
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "AbstractCameraActivity"

    const-string v6, "to get DISPLAY_BATTERY_PERCENTAGE failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 957
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0       #dvfsLockIntent:Landroid/content/Intent;
    .restart local v2       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showEditableShortcutHelpTextDialog()V

    goto :goto_5

    .line 961
    :cond_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableOnDeviceHelp"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 962
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showOnDeviceHelpScreen()V

    goto :goto_5

    .line 964
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showEditableShortcutHelpTextDialog()V

    goto :goto_5

    .line 915
    .end local v0           #dvfsLockIntent:Landroid/content/Intent;
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :catch_2
    move-exception v5

    goto/16 :goto_3

    .line 869
    .end local v3           #mAutomatic:I
    :catch_3
    move-exception v5

    goto/16 :goto_0
.end method

.method public onReviewMenuSelect(I)V
    .locals 0
    .parameter "cameraReview"

    .prologue
    .line 384
    return-void
.end method

.method public onRunSNSAfterConnect(I)V
    .locals 0
    .parameter "sns"

    .prologue
    .line 396
    return-void
.end method

.method public onSaturationMenuSelect(I)V
    .locals 0
    .parameter "saturation"

    .prologue
    .line 378
    return-void
.end method

.method public onSceneModeMenuSelect(I)V
    .locals 0
    .parameter "sceneMode"

    .prologue
    .line 405
    return-void
.end method

.method public onSelfModeChangeSelected()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public onSharpnessMenuSelect(I)V
    .locals 0
    .parameter "sharpness"

    .prologue
    .line 381
    return-void
.end method

.method public onShootAndShareMenuSelect(I)V
    .locals 0
    .parameter "sns"

    .prologue
    .line 387
    return-void
.end method

.method public onShootingModeMenuSelect(I)V
    .locals 0
    .parameter "shootingMode"

    .prologue
    .line 357
    return-void
.end method

.method public onShutterSoundMenuSelect(I)V
    .locals 0
    .parameter "shutterSound"

    .prologue
    .line 399
    return-void
.end method

.method public onStartingPreviewCompleted()V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1116
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->onStop()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 1124
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopOverheatTimer()V

    .line 1125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFlagOverheat:Z

    .line 1126
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopAFHideRectTimer()V

    .line 1128
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1132
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1133
    return-void

    .line 1119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStorageMenuSelect(I)V
    .locals 0
    .parameter "storage"

    .prologue
    .line 447
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 450
    return-void
.end method

.method public onTimerMenuSelect(I)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 360
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 813
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 814
    return-void
.end method

.method public onVintageMenuSelect(I)V
    .locals 0
    .parameter "vintage"

    .prologue
    .line 453
    return-void
.end method

.method public onWhiteBalanceMenuSelect(I)V
    .locals 0
    .parameter "whiteBalance"

    .prologue
    .line 372
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 970
    const-string v0, "AbstractCameraActivity"

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

    .line 971
    if-eqz p1, :cond_0

    .line 972
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 973
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnResumePending:Z

    if-eqz v0, :cond_0

    .line 974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnResumePending:Z

    .line 976
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 977
    return-void
.end method

.method public onZoomValueMenuSelect(I)V
    .locals 0
    .parameter "zoomValue"

    .prologue
    .line 363
    return-void
.end method

.method public abstract playCameraSound(II)V
.end method

.method public abstract playFocusSound(I)V
.end method

.method public popMenu(I)V
    .locals 1
    .parameter "zOrder"

    .prologue
    .line 601
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    :catch_0
    move-exception v0

    .line 611
    :cond_0
    return-void
.end method

.method public processBack()V
    .locals 4

    .prologue
    .line 569
    const/4 v2, 0x0

    .line 572
    .local v2, view:Lcom/sec/android/app/camera/MenuBase;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    move-object v2, v0
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 580
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 581
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 584
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 585
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 591
    :cond_1
    :goto_1
    return-void

    .line 573
    :catch_0
    move-exception v1

    .line 575
    .local v1, e:Ljava/util/EmptyStackException;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto :goto_0

    .line 587
    .end local v1           #e:Ljava/util/EmptyStackException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public pushMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 556
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->popMenu(I)V

    .line 558
    invoke-virtual {p1}, Lcom/sec/android/app/camera/MenuBase;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    return-void

    .line 561
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract resetFocus(Landroid/view/View;)V
.end method

.method public abstract resetPosIndicator()V
.end method

.method public resetStorageMedia()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1670
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 1672
    :cond_0
    iput v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1673
    return-void
.end method

.method public abstract resetToDefaultSettings()V
.end method

.method public abstract resetTouchFocus()V
.end method

.method public abstract resizeForPreviewAspectRatio()Z
.end method

.method public restartInactivityTimer()V
    .locals 2

    .prologue
    .line 773
    const-string v0, "AbstractCameraActivity"

    const-string v1, "restarting inactivity timer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 775
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startInactivityTimer()V

    .line 776
    return-void
.end method

.method public setCamcorderSelfIconLoaded(Z)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2041
    sput-boolean p1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCamcorderSelfIconLoaded:Z

    .line 2042
    return-void
.end method

.method public setCameraSelfIconLoaded(Z)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2037
    sput-boolean p1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCameraSelfIconLoaded:Z

    .line 2038
    return-void
.end method

.method public setConnectingStateGPS(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 492
    return-void
.end method

.method public abstract setDefaultLayout()V
.end method

.method public setDefaultStorageStatus()V
    .locals 1

    .prologue
    .line 1750
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1751
    return-void
.end method

.method public setEULAenable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2210
    sput-boolean p1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsEULAenabled:Z

    .line 2211
    return-void
.end method

.method protected setGpsPopupDisplayed(Z)V
    .locals 0
    .parameter "displayed"

    .prologue
    .line 1662
    iput-boolean p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsDisplayed:Z

    .line 1663
    return-void
.end method

.method public abstract setGuideLineSize(Landroid/view/View;)V
.end method

.method public setLastCapturedTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 480
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 477
    return-void
.end method

.method public abstract setSelectedMenuId(I)V
.end method

.method public showDefaultLayoutPopup()V
    .locals 3

    .prologue
    .line 1934
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1935
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1936
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1937
    const v1, 0x7f0900d5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1939
    const v1, 0x7f0900a1

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$33;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$33;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1947
    const v1, 0x7f0900d9

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$34;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$34;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1955
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1956
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 1959
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    .line 1960
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1961
    return-void
.end method

.method public showDlg(I)V
    .locals 3
    .parameter "nId"

    .prologue
    .line 1754
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1755
    if-ne v0, p1, :cond_0

    .line 1756
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 1757
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDialog(I)V

    .line 1754
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1760
    :cond_1
    return-void
.end method

.method public abstract showEditBackground(Z)V
.end method

.method protected showEditableShortcutHelpTextDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2120
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    .line 2166
    :cond_0
    :goto_0
    return-void

    .line 2123
    :cond_1
    const-string v6, "AbstractCameraActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create showEditableShortcutHelpTextDialog - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getEditableShortcutHelpTextDialog()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getEditableShortcutHelpTextDialog()I

    move-result v6

    if-eq v6, v9, :cond_0

    .line 2125
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2126
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2128
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030003

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2129
    .local v4, layout:Landroid/view/View;
    const v6, 0x7f0b0014

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2130
    .local v2, img:Landroid/widget/ImageView;
    const v6, 0x7f0b0015

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2131
    .local v5, message:Landroid/widget/TextView;
    const v6, 0x7f0b0016

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2133
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v6, 0x7f090124

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2134
    const v6, 0x7f020052

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2136
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2137
    const v6, 0x7f090123

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2138
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2139
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2141
    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$39;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$39;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2148
    const v6, 0x7f0900a1

    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$40;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$40;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2154
    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$41;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$41;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2163
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    .line 2164
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showOnDeviceHelpScreen()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2053
    iget-object v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    if-eqz v7, :cond_1

    .line 2116
    :cond_0
    :goto_0
    return-void

    .line 2057
    :cond_1
    const-string v7, "AbstractCameraActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create mOnDeviceHelpScreen - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getOnDeviceHelpScreen()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getOnDeviceHelpScreen()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2061
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 2062
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    new-instance v2, Landroid/app/Dialog;

    const v7, 0x7f0a0003

    invoke-direct {v2, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2064
    .local v2, dialog:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2065
    .local v3, inflater:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 2067
    .local v4, layout:Landroid/view/View;
    const v7, 0x7f03000c

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2068
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isFirstSidemenuSelf()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2069
    const v7, 0x7f0b0027

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2070
    .local v6, message:Landroid/widget/TextView;
    const v7, 0x7f090136

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2073
    .end local v6           #message:Landroid/widget/TextView;
    :cond_2
    const v7, 0x7f0b0016

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2074
    .local v1, checkBox:Landroid/widget/CheckBox;
    const v7, 0x7f0b0029

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2076
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v2, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2077
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2078
    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2079
    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2081
    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$37;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$37;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2088
    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$38;

    invoke-direct {v7, p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity$38;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2107
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 2108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06006d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2109
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06006e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2110
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2111
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2113
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    .line 2114
    iget-object v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public showResetPopup()V
    .locals 3

    .prologue
    .line 1964
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1965
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1966
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1967
    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1969
    const v1, 0x7f09010a

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$35;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$35;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1977
    const v1, 0x7f09010b

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$36;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$36;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1985
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1986
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 1989
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    .line 1990
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1991
    return-void
.end method

.method public abstract showSideMenu()V
.end method

.method public abstract showSideMenuItems()V
.end method

.method public showStatusIcon()V
    .locals 2

    .prologue
    .line 2027
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2028
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 2029
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2030
    return-void
.end method

.method public showWaitingAnimation()V
    .locals 4

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 527
    return-void
.end method

.method public showWaitingAnimation_direct()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 531
    return-void
.end method

.method public startAFHideRectTimer()V
    .locals 4

    .prologue
    .line 794
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 795
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bAFTimerStarted:Z

    .line 796
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 797
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 798
    return-void
.end method

.method public abstract startContinuousAF()V
.end method

.method public startInactivityTimer()V
    .locals 4

    .prologue
    .line 768
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 770
    return-void
.end method

.method protected startOverheatTimer()V
    .locals 4

    .prologue
    .line 786
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 787
    return-void
.end method

.method public stopAFHideRectTimer()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 804
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bAFTimerStarted:Z

    .line 805
    return-void
.end method

.method public abstract stopContinuousAF()V
.end method

.method public stopInactivityTimer()V
    .locals 2

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 783
    :cond_0
    return-void
.end method

.method protected stopOverheatTimer()V
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 791
    return-void
.end method

.method public abstract updateRemainTime()V
.end method

.method public abstract updateUIWhenDefaultLayout()V
.end method

.method public abstract updateUIWhenResetSettings()V
.end method

.method public abstract updateUIWhenSwitchCamera()V
.end method
