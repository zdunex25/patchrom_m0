.class public abstract Lcom/sec/android/app/camera/AbstractCameraActivity;
.super Landroid/app/Activity;
.source "AbstractCameraActivity.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;
.implements Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;
.implements Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/AbstractCameraActivity$hoverclass;
    }
.end annotation


# static fields
.field protected static final AF_HIDE_RECT_TIMER:I = 0x3

.field private static final AF_HIDE_RECT_TIMER_DURATION:I = 0x1f4

.field public static final BACK_FROM_ACCEPT_DIALOG:I = 0x7d6

.field protected static final CAM_AVAILABLE_LOW_TEMP:I = -0x64

.field protected static final CAM_FLASH_AVAILABLE_TEMP:I = -0x32

.field protected static final CHECK_CALL_DLG:I = 0x2

.field protected static final DIALOG_ID_WIFI_DIRECT_NOTIFICATION:I = 0x4

.field protected static final DIALOG_ID_WIFI_NOTIFICATION:I = 0x3

.field protected static final DLG_HIDE:Z = false

.field protected static final DLG_SHOW:Z = true

.field protected static final ENABLE_AUTOSHARESHOT_DLG:I = 0xa

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

.field protected static final MULTIWINDOW_TITLE_HEIGHT:I = 0x23

.field public static final NAME_WITH_DATA:I = 0x7d5

.field protected static final NUM_OF_DLG:I = 0xb

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x0

.field protected static final OVERHEAT_TIMEOUT:I = 0x5

.field protected static final OVERHEAT_TIMER_EXPIRED:I = 0x2

.field public static final PHOTO_PICKED_WITH_DATA:I = 0x7d4

.field public static final REQUEST_ATTACH_IMAGE:I = 0x7d1

.field public static final REQUEST_ATTACH_VIDEO:I = 0x7d2

.field public static final REQUEST_BESTGROUPPOSE_IMAGE:I = 0x7d7

.field public static final REQUEST_BLINKDETECT_IMAGE:I = 0x7d3

.field public static final SELECT_PIC_DLG:I = 0x7

.field protected static final STORAGE_CHANGE_DLG:I = 0x1

.field protected static final STORAGE_STATUS_DLG:I = 0x0

.field protected static final STORAGE_STATUS_LOW:I = 0x1

.field protected static final STORAGE_STATUS_NONE:I = 0x2

.field protected static final STORAGE_STATUS_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AbstractCameraActivity"

.field private static final TAG_BASE:Ljava/lang/String; = "Settings.Multimedia"

.field private static final TAG_CAMERA:Ljava/lang/String; = "Settings.Multimedia.Camera"

.field private static final TAG_CAMERA_SHUTTER:Ljava/lang/String; = "ShutterSound"

.field public static final USERPROFILE_DLG:I = 0x6

.field public static mIsCamcorderSelfIconLoaded:Z

.field public static mIsCameraSelfIconLoaded:Z

.field private static mIsEULAenabled:Z


# instance fields
.field private final DEFAULT_CSC_FILE:Ljava/lang/String;

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

.field private mChangeStoragetDialog:Landroid/app/AlertDialog;

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

.field protected mEnableDuringCall:Z

.field protected mErrorPopup:Landroid/app/AlertDialog;

.field protected mGLContext:Lcom/sec/android/glview/TwGLContext;

.field protected mGLInitialized:Z

.field protected mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

.field protected mInactivityPopupHandler:Landroid/os/Handler;

.field private mIsDisplayed:Z

.field public mIsFromSNS:Z

.field protected mIsPinupMode:Z

.field public mLastElementView:Lcom/sec/android/app/camera/MenuBase;

.field protected mLowBatteryPopup:Landroid/app/AlertDialog;

.field protected mLowBatteryWarningLevel:I

.field protected mMainHandler:Landroid/os/Handler;

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

.field private mSbeamHelpTextDialog:Landroid/app/AlertDialog;

.field protected mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field protected mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field private mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

.field public mShowWifiDialog:Z

.field protected mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

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

    .line 184
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    .line 185
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_TEMP_FLASH_THRESHOLD_VALUE:I

    .line 207
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsEULAenabled:Z

    .line 228
    sput-boolean v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCameraSelfIconLoaded:Z

    .line 229
    sput-boolean v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCamcorderSelfIconLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 531
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    .line 118
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 133
    const/16 v0, 0xb

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    .line 146
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 147
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 149
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    .line 151
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    .line 161
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    .line 163
    new-instance v0, Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    .line 164
    new-instance v0, Lcom/sec/android/app/camera/CameraSettings;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 169
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDisplayBatteryPercentage:I

    .line 172
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 173
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    .line 174
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    .line 175
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    .line 176
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    .line 178
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    .line 179
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 180
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    .line 181
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    .line 182
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    .line 191
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    .line 200
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bAFTimerStarted:Z

    .line 201
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckMemory:Lcom/sec/android/app/camera/CheckMemory;

    .line 203
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    .line 204
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsFromSNS:Z

    .line 205
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mbNeedToStartEngineSync:Z

    .line 206
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFromSecureSetting:Z

    .line 209
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsDisplayed:Z

    .line 212
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsPinupMode:Z

    .line 215
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    .line 217
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    .line 220
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    .line 223
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    .line 225
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 227
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    .line 231
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLastElementView:Lcom/sec/android/app/camera/MenuBase;

    .line 233
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$1;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 247
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$2;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    .line 273
    new-instance v0, Lcom/sec/android/app/camera/command/CommandIdMap;

    invoke-direct {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    .line 276
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 278
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnResumePending:Z

    .line 537
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$3;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 547
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$4;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 1999
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    .line 2508
    invoke-static {}, Lcom/sec/android/app/camera/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->DEFAULT_CSC_FILE:Ljava/lang/String;

    .line 2510
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    .line 532
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/AbstractCameraActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
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

    .line 1417
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    if-eqz v0, :cond_1

    .line 1418
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1422
    :goto_0
    return-void

    .line 1420
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_0
.end method

.method protected IsGpsEnableInSettings()V
    .locals 3

    .prologue
    .line 2435
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900da

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090015

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$50;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$50;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900db

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$49;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$49;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2446
    return-void
.end method

.method public PauseGLSurface()V
    .locals 1

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 2124
    :cond_0
    return-void
.end method

.method protected cameraDuringCall()Z
    .locals 1

    .prologue
    .line 2540
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    return v0
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

.method protected checkCameraDuringCall()V
    .locals 2

    .prologue
    .line 2532
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    .line 2537
    :goto_0
    return-void

    .line 2535
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    goto :goto_0
.end method

.method public checkCameraStartCondition_Call()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1451
    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1453
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1454
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2

    .line 1455
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1457
    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    if-nez v4, :cond_0

    .line 1458
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 1459
    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-eqz v4, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1472
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_0
    return v3

    .line 1461
    .restart local v1       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    const-string v4, "phone2"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1462
    .local v2, phoneServ2:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 1463
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1465
    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    if-nez v4, :cond_3

    .line 1466
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 1467
    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-eqz v4, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1469
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    .end local v2           #phoneServ2:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1470
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "AbstractCameraActivity"

    const-string v5, "phoneServ.isOffhook() or phoneServ.isVoIPIdle() failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkCameraStartCondition_Security()Z
    .locals 2

    .prologue
    .line 1504
    const-string v1, "persist.sys.camera_lock"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1505
    .local v0, dev_camera_lock_state:Ljava/lang/String;
    const-string v1, "camera_lock.enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1506
    const/4 v1, 0x1

    .line 1508
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

    .line 1476
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    .line 1479
    :try_start_0
    const-string v3, "voip"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 1480
    .local v1, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v1, :cond_0

    .line 1481
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    .line 1483
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 1484
    iget-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    .end local v1           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_0
    :goto_1
    return v2

    .restart local v1       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_1
    move v3, v2

    .line 1481
    goto :goto_0

    .line 1486
    .end local v1           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v0

    .line 1488
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public checkOpenFolderWarningPopUp(I)Z
    .locals 3
    .parameter "currentFolderStatus"

    .prologue
    const/4 v2, 0x1

    .line 2416
    const/4 v0, 0x0

    .line 2420
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2421
    if-ne p1, v2, :cond_1

    .line 2422
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleFlipClose(Z)V

    .line 2423
    const/4 v0, 0x0

    .line 2431
    :cond_0
    :goto_0
    return v0

    .line 2425
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2426
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleFlipClose(Z)V

    .line 2427
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkOutgoingCall()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1425
    const/4 v1, 0x1

    .line 1426
    .local v1, outgoingCall:Z
    const/4 v2, 0x1

    .line 1428
    .local v2, outgoingVoipCall:Z
    :try_start_0
    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 1429
    .local v3, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 1430
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v8

    if-nez v8, :cond_3

    move v1, v6

    .line 1432
    :cond_0
    :goto_0
    const-string v8, "phone2"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 1433
    .local v4, phoneServ2:Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_1

    .line 1434
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v8

    if-nez v8, :cond_4

    move v1, v6

    .line 1436
    :cond_1
    :goto_1
    const-string v8, "voip"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v5

    .line 1437
    .local v5, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v5, :cond_2

    .line 1438
    invoke-interface {v5}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1444
    .end local v3           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    .end local v4           #phoneServ2:Lcom/android/internal/telephony/ITelephony;
    .end local v5           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_2
    :goto_2
    iget-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    if-nez v8, :cond_5

    .line 1447
    :goto_3
    return v6

    .restart local v3       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_3
    move v1, v7

    .line 1430
    goto :goto_0

    .restart local v4       #phoneServ2:Lcom/android/internal/telephony/ITelephony;
    :cond_4
    move v1, v7

    .line 1434
    goto :goto_1

    .line 1440
    .end local v3           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    .end local v4           #phoneServ2:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1441
    .local v0, e:Landroid/os/RemoteException;
    const-string v8, "AbstractCameraActivity"

    const-string v9, "phoneServ.isOffhook() or phoneServ.isVoIPIdle() failed"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1447
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    iget-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-eqz v8, :cond_6

    if-nez v1, :cond_7

    :cond_6
    iget-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    if-eqz v8, :cond_8

    if-eqz v2, :cond_8

    :cond_7
    move v7, v6

    :cond_8
    move v6, v7

    goto :goto_3
.end method

.method public checkStorage(ZZ)V
    .locals 4
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1819
    if-eqz p1, :cond_3

    .line 1820
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1822
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSelectedMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1823
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1828
    :goto_0
    if-eqz p2, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 1830
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1831
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1835
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-nez v0, :cond_1

    .line 1836
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getChangeStorageSettingDialog()I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    .line 1840
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showChangeStoragetDialog()V

    .line 1857
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateRemainTime()V

    .line 1858
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->mediaStorageDialog()V

    .line 1859
    return-void

    .line 1825
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x75

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0

    .line 1844
    :cond_3
    if-eqz p2, :cond_4

    .line 1845
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    .line 1847
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1849
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->resetStorageMedia()V

    .line 1850
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getChangeStorageSettingDialog()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1851
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setChangeStorageSettingDialog(I)V

    .line 1853
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1854
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1
.end method

.method public checkStorageLow(I)I
    .locals 6
    .parameter "storage"

    .prologue
    .line 1788
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAvailableStorage(I)J

    move-result-wide v0

    .line 1789
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1790
    const/4 v2, 0x2

    .line 1796
    :goto_0
    return v2

    .line 1792
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

    .line 1794
    const/4 v2, 0x1

    goto :goto_0

    .line 1796
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

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->clear()V

    .line 785
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 787
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 788
    return-void
.end method

.method public dismissResetDialog()V
    .locals 1

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2115
    return-void
.end method

.method public displayEULADialog()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2457
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2458
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2460
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030006

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2461
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b000f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2462
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0010

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2464
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    .line 2466
    const v5, 0x7f0900d7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2468
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2469
    const v5, 0x1010355

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2470
    const v5, 0x1040014

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2471
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2472
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2474
    new-instance v5, Lcom/sec/android/app/camera/AbstractCameraActivity$51;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$51;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2481
    const v5, 0x7f0900a1

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$52;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity$52;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2491
    const v5, 0x7f0900db

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$53;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$53;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2498
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    .line 2499
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 2500
    return-void
.end method

.method public dumpViewStack()Ljava/lang/String;
    .locals 5

    .prologue
    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .local v1, log:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 690
    .local v2, view:Lcom/sec/android/app/camera/MenuBase;
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v3

    .line 691
    .local v3, viewSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 692
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Lcom/sec/android/app/camera/MenuBase;
    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 693
    .restart local v2       #view:Lcom/sec/android/app/camera/MenuBase;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 695
    const-string v4, " => "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const-string v4, "(Z:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 699
    const-string v4, ",C:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isCaptureEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 701
    const-string v4, ",P:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isPreviewTouchEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 703
    const-string v4, ")\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 629
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->PauseGLSurface()V

    .line 630
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 632
    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->overridePendingTransition(II)V

    .line 633
    return-void
.end method

.method public finishOnError(I)V
    .locals 7
    .parameter "error"

    .prologue
    const v6, 0x7f09000f

    const v5, 0x7f0900a1

    .line 1324
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

    .line 1326
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1327
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

    .line 1406
    :goto_0
    return-void

    .line 1331
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1332
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090004

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1333
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1334
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1336
    packed-switch p1, :pswitch_data_0

    .line 1396
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1401
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    .line 1402
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1403
    :catch_0
    move-exception v1

    .line 1404
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto :goto_0

    .line 1339
    .end local v1           #ex:Ljava/lang/Exception;
    :pswitch_0
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1340
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$5;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1347
    :pswitch_1
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1348
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$6;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1355
    :pswitch_2
    const v2, 0x7f090011

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1356
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$7;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1363
    :pswitch_3
    const v2, 0x7f090014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1364
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$8;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1371
    :pswitch_4
    const v2, 0x7f090012

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1372
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$9;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1379
    :pswitch_5
    const-string v2, "The firmware is not latest.\nDo you want to continue?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1380
    const v2, 0x7f0900cd

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1381
    const v2, 0x7f0900ce

    new-instance v3, Lcom/sec/android/app/camera/AbstractCameraActivity$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$10;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1388
    :pswitch_6
    const v2, 0x7f090013

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1389
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$11;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1336
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
    .line 869
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bAFTimerStarted:Z

    return v0
.end method

.method public getAutoRotation()Z
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    return v0
.end method

.method public getAvailableStorage()J
    .locals 4

    .prologue
    .line 1801
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v0

    .line 1803
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1804
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1806
    :cond_0
    return-wide v0
.end method

.method public getAvailableStorage(I)J
    .locals 4
    .parameter "storage"

    .prologue
    .line 1810
    invoke-static {p1}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v0

    .line 1812
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1813
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1815
    :cond_0
    return-wide v0
.end method

.method public final getBaseLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 1988
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBatteryLevel:I

    return v0
.end method

.method public getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    return-object v0
.end method

.method public abstract getChkKeyFromApp()Ljava/lang/String;
.end method

.method public getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 663
    :goto_0
    return v0

    .line 660
    :catch_0
    move-exception v0

    .line 663
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayBatteryPercentageEnabled()I
    .locals 1

    .prologue
    .line 1996
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDisplayBatteryPercentage:I

    return v0
.end method

.method public getEULAenable()Z
    .locals 1

    .prologue
    .line 2453
    sget-boolean v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsEULAenabled:Z

    return v0
.end method

.method public final getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public getFolderStatus()I
    .locals 1

    .prologue
    .line 2408
    const/4 v0, 0x1

    .line 2412
    .local v0, ret:I
    return v0
.end method

.method public final getGLContext()Lcom/sec/android/glview/TwGLContext;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    return-object v0
.end method

.method public getGpsPopupDisplayed()Z
    .locals 1

    .prologue
    .line 1778
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsDisplayed:Z

    return v0
.end method

.method public abstract getIsLaunchGallery()Z
.end method

.method public getLastElementView()Lcom/sec/android/app/camera/MenuBase;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLastElementView:Lcom/sec/android/app/camera/MenuBase;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMemoryStatus()I
    .locals 1

    .prologue
    .line 1895
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    return v0
.end method

.method public getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    return-object v0
.end method

.method public getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method public final getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public final getPopupMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public abstract getRemainStorage()I
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method public final getShootingmodeRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public final getSideMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public abstract getTouchAutoFocusActive()Z
.end method

.method public getUsbMassStorageEnabledStatus()V
    .locals 4

    .prologue
    .line 2131
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2132
    .local v0, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    .line 2133
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

    .line 2134
    return-void
.end method

.method protected getWeather()I
    .locals 1

    .prologue
    .line 2544
    const/4 v0, 0x0

    return v0
.end method

.method protected handleBatteryOverheat()V
    .locals 5

    .prologue
    .line 1942
    const-string v1, "AbstractCameraActivity"

    const-string v2, "handleBatteryOverheat"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1977
    :goto_0
    return-void

    .line 1948
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1949
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1950
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1951
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1953
    const v1, 0x7f090017

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$31;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$31;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1960
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1961
    new-instance v1, Lcom/sec/android/app/camera/AbstractCameraActivity$32;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$32;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1974
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    .line 1975
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1976
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

    .line 1980
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

    .line 1981
    if-eqz p1, :cond_0

    .line 1982
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1985
    :goto_0
    return-void

    .line 1984
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_0
.end method

.method protected handleLowBattery(Z)V
    .locals 3
    .parameter "temp"

    .prologue
    .line 1899
    const-string v1, "AbstractCameraActivity"

    const-string v2, "handleLowBattery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1939
    :goto_0
    return-void

    .line 1904
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1905
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1906
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1907
    if-eqz p1, :cond_1

    .line 1908
    const v1, 0x7f090136

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1912
    :goto_1
    const v1, 0x7f090017

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$29;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$29;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1920
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1921
    new-instance v1, Lcom/sec/android/app/camera/AbstractCameraActivity$30;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$30;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1937
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 1938
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1910
    :cond_1
    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public hideAllDlg()V
    .locals 3

    .prologue
    .line 1886
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 1887
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1888
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 1889
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->dismissDialog(I)V

    .line 1886
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1892
    :cond_1
    return-void
.end method

.method public hideDlg(I)V
    .locals 3
    .parameter "nId"

    .prologue
    .line 1875
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 1876
    if-ne v0, p1, :cond_0

    .line 1877
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1878
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 1879
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->dismissDialog(I)V

    .line 1875
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1883
    :cond_1
    return-void
.end method

.method public hideFaceRect()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public abstract hideFocusRect()V
.end method

.method public abstract hideSideMenu()V
.end method

.method public abstract hideSideMenuItems()V
.end method

.method public hideStatusIcon()V
    .locals 2

    .prologue
    .line 2137
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2138
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 2139
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2140
    return-void
.end method

.method public hideWaitingAnimation()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 569
    return-void
.end method

.method protected inflateWaitingView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 572
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    .line 573
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 574
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 575
    .local v2, v:Landroid/view/View;
    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 576
    .local v1, pBar4:Landroid/widget/ProgressBar;
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 579
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 580
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 581
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f02027f

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 582
    return-void
.end method

.method protected initializeGLSurfaceView()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 728
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 729
    new-instance v0, Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, v2, p0, v3}, Lcom/sec/android/glview/TwGLContext;-><init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v6, 0x4

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 741
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 742
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v5}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/sec/android/app/camera/AbstractCameraActivity$hoverclass;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity$hoverclass;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/app/camera/AbstractCameraActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 747
    :cond_0
    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 748
    .local v7, glViewLayout:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 750
    iput-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 751
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

    .line 752
    return-void
.end method

.method public invalidatePreview()V
    .locals 2

    .prologue
    .line 1314
    const v1, 0x7f0b0004

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 1315
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->invalidate()V

    .line 1316
    return-void
.end method

.method public abstract isActivityDestoying()Z
.end method

.method public abstract isAutoFocusing()Z
.end method

.method public isBatteryCharging()Z
    .locals 1

    .prologue
    .line 1992
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bIsCharging:Z

    return v0
.end method

.method public isCaptureEnabled()Z
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 677
    const/4 v0, 0x1

    .line 684
    :goto_0
    return v0

    .line 680
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

    .line 681
    :catch_0
    move-exception v0

    .line 684
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isCapturing()Z
.end method

.method public isFirstSidemenuSelf()Z
    .locals 1

    .prologue
    .line 2161
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSelectedMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 2162
    sget-boolean v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCameraSelfIconLoaded:Z

    .line 2164
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCamcorderSelfIconLoaded:Z

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 4

    .prologue
    .line 905
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 906
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    .line 907
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

    .line 909
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
    .line 2149
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mbNeedToStartEngineSync:Z

    return v0
.end method

.method public abstract isPreviewStarted()Z
.end method

.method public isPreviewTouchEnabled()Z
    .locals 1

    .prologue
    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isPreviewTouchEnabled()Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 672
    :goto_0
    return v0

    .line 669
    :catch_0
    move-exception v0

    .line 672
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResetDialogActive()Z
    .locals 1

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 2110
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
    .line 2127
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    return v0
.end method

.method protected makeToast(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 8
    .parameter "cls"
    .parameter "id"
    .parameter "str"

    .prologue
    const v6, 0x7f02025a

    const/4 v7, 0x0

    .line 2002
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2003
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03000a

    const v4, 0x7f0b001b

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2004
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b001c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2005
    .local v0, image:Landroid/widget/ImageView;
    const v4, 0x7f0b001d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2007
    .local v3, text:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    if-eqz v4, :cond_0

    .line 2013
    :goto_0
    if-eqz p3, :cond_1

    .line 2014
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2018
    :goto_1
    const/high16 v4, 0x420c

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2019
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2021
    packed-switch p2, :pswitch_data_0

    .line 2038
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    const/16 v5, 0x51

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v7, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 2039
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 2040
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2041
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2042
    return-void

    .line 2010
    :cond_0
    new-instance v4, Landroid/widget/Toast;

    invoke-direct {v4, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    goto :goto_0

    .line 2016
    :cond_1
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2023
    :pswitch_0
    const-string v4, "AbstractCameraActivity"

    const-string v5, "MESSAGE_TYPE_SMS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 2028
    :pswitch_1
    const-string v4, "AbstractCameraActivity"

    const-string v5, "MESSAGE_TYPE_PUSH_SMS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 2033
    :pswitch_2
    const-string v4, "AbstractCameraActivity"

    const-string v5, "MESSAGE_TYPE_MMS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    const v4, 0x7f020259

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 2021
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

    .line 1409
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eqz v0, :cond_0

    .line 1410
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1414
    :goto_0
    return-void

    .line 1412
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_0
.end method

.method protected notifyOnPause()V
    .locals 1

    .prologue
    .line 1051
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1054
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
    .line 449
    return-void
.end method

.method public onAudioRecordingSelect(I)V
    .locals 0
    .parameter "audiorecording"

    .prologue
    .line 495
    return-void
.end method

.method public onAutoShareShotModeSelectCommand(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 525
    return-void
.end method

.method public onAutocontrastSelect(I)V
    .locals 0
    .parameter "autocontrast"

    .prologue
    .line 452
    return-void
.end method

.method public onBlinkdetectionSelect(I)V
    .locals 0
    .parameter "blinkdetection"

    .prologue
    .line 455
    return-void
.end method

.method public onBurstModeSelectCommand(I)V
    .locals 0
    .parameter "mBurstMode"

    .prologue
    .line 516
    return-void
.end method

.method public onCamcorderQualityMenuSelect(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 461
    return-void
.end method

.method public onCamcorderSpeedMenuSelect(I)V
    .locals 1
    .parameter "speed"

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCamcorderSpeedMenuSelect(IZ)V

    .line 468
    return-void
.end method

.method public onCamcorderSpeedMenuSelect(IZ)V
    .locals 0
    .parameter "speed"
    .parameter "isSubMenu"

    .prologue
    .line 464
    return-void
.end method

.method public onCameraQualityMenuSelect(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 458
    return-void
.end method

.method public onContextualFilenameSelect(I)V
    .locals 0
    .parameter "contextualFilename"

    .prologue
    .line 519
    return-void
.end method

.method public onContrastMenuSelect(I)V
    .locals 0
    .parameter "contrast"

    .prologue
    .line 398
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 1180
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1181
    const-string v1, "AbstractCameraActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1184
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x2000000a

    const-string v2, "AbstractCameraActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1185
    invoke-static {p0}, Lcom/sec/android/app/camera/CheckMemory;->setStorageVolume(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 1187
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFlagOverheat:Z

    .line 1188
    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mbNeedToStartEngineSync:Z

    .line 1191
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideStatusIcon()V

    .line 1194
    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsPinupMode:Z

    .line 1195
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    .line 1512
    const-string v10, "ro.csc.country_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1514
    .local v8, country_code:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1746
    :pswitch_0
    const/4 v10, 0x0

    :goto_0
    return-object v10

    .line 1516
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1517
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

    .line 1537
    new-instance v10, Lcom/sec/android/app/camera/AbstractCameraActivity$13;

    invoke-direct {v10, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$13;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1547
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto :goto_0

    .line 1549
    .end local v0           #builder1:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1550
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0900df

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0900cd

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$15;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$15;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0900ce

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$14;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$14;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1564
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto :goto_0

    .line 1566
    .end local v1           #builder2:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1568
    .local v2, builder3:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1569
    const v10, 0x7f090019

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1576
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

    .line 1583
    new-instance v10, Lcom/sec/android/app/camera/AbstractCameraActivity$17;

    invoke-direct {v10, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$17;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1593
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 1573
    :cond_0
    const v10, 0x7f090018

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1596
    .end local v2           #builder3:Landroid/app/AlertDialog$Builder;
    :pswitch_4
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1597
    .local v3, builder4:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f090106

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1598
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

    .line 1599
    :cond_1
    const v10, 0x7f090108

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1603
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09010c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$18;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$18;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v3, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1615
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09010d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$19;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$19;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v3, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1625
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 1601
    :cond_2
    const v10, 0x7f090107

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 1628
    .end local v3           #builder4:Landroid/app/AlertDialog$Builder;
    :pswitch_5
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1629
    .local v4, builder5:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f090109

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1630
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

    .line 1631
    :cond_3
    const v10, 0x7f09010b

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1635
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09010c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$20;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$20;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1652
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09010d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$21;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$21;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1663
    new-instance v10, Lcom/sec/android/app/camera/AbstractCameraActivity$22;

    invoke-direct {v10, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$22;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1675
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 1633
    :cond_4
    const v10, 0x7f09010a

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 1678
    .end local v4           #builder5:Landroid/app/AlertDialog$Builder;
    :pswitch_6
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

    .line 1679
    iget-object v10, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 1680
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1681
    .local v5, builder7:Landroid/app/AlertDialog$Builder;
    iget-object v10, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v10

    if-nez v10, :cond_5

    const v9, 0x7f090161

    .line 1683
    .local v9, msgId01:I
    :goto_4
    const v10, 0x7f090004

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1684
    const v10, 0x1010355

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1685
    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1686
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1687
    const v10, 0x7f0900a1

    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$23;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$23;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1692
    new-instance v10, Lcom/sec/android/app/camera/AbstractCameraActivity$24;

    invoke-direct {v10, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$24;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1702
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 1681
    .end local v9           #msgId01:I
    :cond_5
    const v9, 0x7f090162

    goto :goto_4

    .line 1705
    .end local v5           #builder7:Landroid/app/AlertDialog$Builder;
    :cond_6
    const-string v10, "AbstractCameraActivity"

    const-string v11, "It\'s not self-mode"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1709
    :pswitch_7
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setGpsPopupDisplayed(Z)V

    .line 1710
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1711
    .local v6, builder8:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f09012b

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x1010355

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f090164

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0900a1

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$26;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$26;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0900db

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$25;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$25;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1725
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 1727
    .end local v6           #builder8:Landroid/app/AlertDialog$Builder;
    :pswitch_8
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setGpsPopupDisplayed(Z)V

    .line 1728
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1729
    .local v7, builder9:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0900bd

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0900d8

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

    const v11, 0x7f0900db

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$27;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$27;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1743
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 1514
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1219
    const-string v0, "AbstractCameraActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1225
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->clear()V

    .line 1226
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 1228
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 1230
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1232
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    .line 1235
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1236
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1237
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    .line 1240
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1241
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1242
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    .line 1245
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1246
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1247
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    .line 1250
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 1251
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1252
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    .line 1255
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_6

    .line 1256
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->clear()V

    .line 1257
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 1260
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_7

    .line 1261
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1262
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1265
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_8

    .line 1266
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1267
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1270
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_9

    .line 1271
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1272
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1275
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_a

    .line 1276
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1277
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1280
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_b

    .line 1281
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1282
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1285
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    if-eqz v0, :cond_c

    .line 1286
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->clear()V

    .line 1287
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    .line 1289
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_d

    .line 1290
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1291
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1294
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_e

    .line 1295
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1296
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1299
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 1300
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    .line 1302
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 1303
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 1304
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    .line 1305
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 1307
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1308
    return-void
.end method

.method public onDeviceListMenuSelect()V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public onEditModeSelectCommand()V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method public onEffectMenuSelect(I)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 392
    return-void
.end method

.method public onEffectRecorderMenuSelectCommand(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 513
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .locals 0
    .parameter "exposureValue"

    .prologue
    .line 428
    return-void
.end method

.method public onExposuremeterMenuSelect(I)V
    .locals 0
    .parameter "exposuremeter"

    .prologue
    .line 440
    return-void
.end method

.method public onFlashModeMenuSelect(I)V
    .locals 0
    .parameter "flashMode"

    .prologue
    .line 374
    return-void
.end method

.method public onFlipMenuSelectCommand(I)V
    .locals 0
    .parameter "flip"

    .prologue
    .line 501
    return-void
.end method

.method public onFocusModeMenuSelect(I)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 371
    return-void
.end method

.method public onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 13
    .parameter "rootView"

    .prologue
    const v12, 0x7f060090

    const v11, 0x7f060077

    const/4 v2, 0x0

    .line 791
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v10, v0

    .line 792
    .local v10, SCREEN_WIDTH:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v9, v0

    .line 794
    .local v9, SCREEN_HEIGHT:I
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v0, :cond_0

    .line 795
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 796
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 797
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

    const v1, 0x7f060091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v8, v0

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 803
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

    const v1, 0x7f060076

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

    .line 806
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 807
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 808
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 813
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 818
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 819
    return-void
.end method

.method public onGpsChanged(I)V
    .locals 0
    .parameter "gps"

    .prologue
    .line 474
    return-void
.end method

.method public onGuidelineSelect(I)V
    .locals 0
    .parameter "guideline"

    .prologue
    .line 471
    return-void
.end method

.method public onHdrMenuSelectCommand(I)V
    .locals 0
    .parameter "hdr"

    .prologue
    .line 504
    return-void
.end method

.method public onISOMenuSelect(I)V
    .locals 0
    .parameter "iso"

    .prologue
    .line 437
    return-void
.end method

.method public onModechanged()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public onObjecttrackingSelect(I)V
    .locals 0
    .parameter "objecttracking"

    .prologue
    .line 446
    return-void
.end method

.method public onOutdoorVisibilitySelect(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 489
    return-void
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1060
    const-string v2, "AbstractCameraActivity"

    const-string v3, "onPause"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1064
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v2, :cond_0

    .line 1065
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearInvisibleViews()V

    .line 1068
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1069
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->onPause()V

    .line 1072
    :cond_1
    iput-boolean v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 1074
    const-string v2, "AbstractCameraActivity"

    const-string v3, "GL Cleared!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mbNeedToStartEngineSync:Z

    .line 1078
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1081
    const-string v2, "AbstractCameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause : SCREEN_BRIGHTNESS_MODE - bTurnOnScrAB:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    if-eqz v2, :cond_2

    .line 1083
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1084
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1, v7, v7}, Landroid/os/PowerManager;->setAutoBrightnessLimit(II)V

    .line 1091
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    .line 1093
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1101
    :goto_0
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledVideoGamma(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1107
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1108
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1109
    :cond_3
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 1111
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1112
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1114
    :cond_4
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 1116
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1117
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1118
    :cond_5
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    .line 1120
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1121
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1122
    :cond_6
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    .line 1124
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1125
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1126
    :cond_7
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    .line 1128
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1129
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1130
    :cond_8
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    .line 1132
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1133
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1134
    :cond_9
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    .line 1136
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1137
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1138
    :cond_a
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    .line 1140
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1141
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1142
    :cond_b
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    .line 1144
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1145
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1146
    :cond_c
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    .line 1148
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1149
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1150
    :cond_d
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    .line 1152
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 1153
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopOverheatTimer()V

    .line 1154
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopAFHideRectTimer()V

    .line 1156
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1157
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1160
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_f

    .line 1161
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1164
    :cond_f
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    if-eqz v2, :cond_10

    .line 1165
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 1166
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    .line 1170
    :cond_10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1171
    .local v0, dvfsLockIntent:Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.DVFS_LCD_FRAME_RATE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    const-string v2, "RATE"

    const-string v3, "60"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1173
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1175
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1176
    iput-boolean v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnResumePending:Z

    .line 1177
    return-void

    .line 1102
    .end local v0           #dvfsLockIntent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 1094
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v5, 0x1

    .line 1750
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

    .line 1751
    packed-switch p1, :pswitch_data_0

    .line 1772
    :goto_0
    return-void

    .line 1753
    :pswitch_0
    const v2, 0x7f090005

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1754
    .local v1, message:Ljava/lang/String;
    iget v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-ne v2, v5, :cond_0

    .line 1755
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

    .line 1758
    const-string v2, "AbstractCameraActivity"

    const-string v3, "change_to_card_memory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    const v2, 0x7f090007

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_1
    move-object v0, p2

    .line 1769
    check-cast v0, Landroid/app/AlertDialog;

    .line 1770
    .local v0, builder:Landroid/app/AlertDialog;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1760
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

    .line 1762
    const-string v2, "AbstractCameraActivity"

    const-string v3, "change_to_phone_memory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    const v2, 0x7f090008

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1765
    :cond_2
    const-string v2, "AbstractCameraActivity"

    const-string v3, "not_enough_space"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    const v2, 0x7f090006

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1751
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreviewFileReceived(I)V
    .locals 0
    .parameter "preview"

    .prologue
    .line 419
    return-void
.end method

.method public onRecordingModeMenuSelect(I)V
    .locals 0
    .parameter "recordingMode"

    .prologue
    .line 434
    return-void
.end method

.method public onResolutionMenuSelect(I)V
    .locals 0
    .parameter "resolution"

    .prologue
    .line 389
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 916
    const-string v6, "AbstractCameraActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onResume hasWindowFocus()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hasWindowFocus()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 918
    const-string v6, "AbstractCameraActivity"

    const-string v7, "onResume. mOnResumePending=true"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iput-boolean v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnResumePending:Z

    .line 923
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 924
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/MenuBase;->onResume()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_3

    .line 930
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 931
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 933
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 934
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 936
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    .line 937
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 940
    :cond_3
    const/4 v4, 0x1

    .line 942
    .local v4, mAutomatic:I
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 948
    :goto_1
    if-ne v4, v9, :cond_8

    .line 949
    iput-boolean v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    .line 951
    const-string v6, "power"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 952
    .local v5, pm:Landroid/os/PowerManager;
    const-string v6, "persist.sys.default_brightness"

    const/16 v7, 0x78

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 953
    .local v0, defBrightness:I
    const/4 v6, -0x1

    invoke-virtual {v5, v0, v6}, Landroid/os/PowerManager;->setAutoBrightnessLimit(II)V

    .line 958
    .end local v0           #defBrightness:I
    .end local v5           #pm:Landroid/os/PowerManager;
    :goto_2
    const-string v6, "AbstractCameraActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onResume : SCREEN_BRIGHTNESS_MODE - mAutomatic:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bTurnOnScrAB:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v6, 0x1

    :try_start_2
    invoke-static {v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledVideoGamma(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 971
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v6, :cond_4

    .line 972
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v6}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 977
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v6, :cond_5

    .line 978
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->onResume()V

    .line 980
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-boolean v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLContext;->enableOrientation(Z)V

    .line 982
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLContext;->setScrollBarAutoHide(Z)V

    .line 987
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getUsbMassStorageEnabledStatus()V

    .line 990
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "display_battery_percentage"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDisplayBatteryPercentage:I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 996
    :goto_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 997
    .local v1, dvfsLockIntent:Landroid/content/Intent;
    const-string v6, "com.sec.android.intent.action.DVFS_LCD_FRAME_RATE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    const-string v6, "RATE"

    const-string v7, "40"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1001
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 1002
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_6

    .line 1003
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 1005
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 1006
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "from-camera"

    invoke-virtual {v6, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "from-camcorder"

    invoke-virtual {v6, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1008
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_EnableOnDeviceHelp"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1009
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showOnDeviceHelpScreen()V

    .line 1036
    :cond_7
    :goto_5
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1037
    return-void

    .line 944
    .end local v1           #dvfsLockIntent:Landroid/content/Intent;
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v2

    .line 945
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "AbstractCameraActivity"

    const-string v7, "to get SCREEN_BRIGHTNESS_MODE failed"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 955
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_8
    iput-boolean v10, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    goto/16 :goto_2

    .line 991
    :catch_1
    move-exception v2

    .line 992
    .restart local v2       #e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "AbstractCameraActivity"

    const-string v7, "to get DISPLAY_BATTERY_PERCENTAGE failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1017
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v1       #dvfsLockIntent:Landroid/content/Intent;
    .restart local v3       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showEditableShortcutHelpTextDialog()V

    goto :goto_5

    .line 1023
    :cond_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_EnableOnDeviceHelp"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1024
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showOnDeviceHelpScreen()V

    goto :goto_5

    .line 1032
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showEditableShortcutHelpTextDialog()V

    goto :goto_5

    .line 967
    .end local v1           #dvfsLockIntent:Landroid/content/Intent;
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :catch_2
    move-exception v6

    goto/16 :goto_3

    .line 926
    .end local v4           #mAutomatic:I
    :catch_3
    move-exception v6

    goto/16 :goto_0
.end method

.method public onReviewMenuSelect(I)V
    .locals 0
    .parameter "cameraReview"

    .prologue
    .line 407
    return-void
.end method

.method public onRunSNSAfterConnect(I)V
    .locals 0
    .parameter "sns"

    .prologue
    .line 422
    return-void
.end method

.method public onSaturationMenuSelect(I)V
    .locals 0
    .parameter "saturation"

    .prologue
    .line 401
    return-void
.end method

.method public onSceneModeMenuSelect(I)V
    .locals 0
    .parameter "sceneMode"

    .prologue
    .line 431
    return-void
.end method

.method public onSelfModeChangeSelected()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public onSharpnessMenuSelect(I)V
    .locals 0
    .parameter "sharpness"

    .prologue
    .line 404
    return-void
.end method

.method public onShootAndShareMenuSelect(I)V
    .locals 0
    .parameter "sns"

    .prologue
    .line 413
    return-void
.end method

.method public onShootingModeMenuSelect(I)V
    .locals 0
    .parameter "shootingMode"

    .prologue
    .line 380
    return-void
.end method

.method public onShutterSoundMenuSelect(I)V
    .locals 0
    .parameter "shutterSound"

    .prologue
    .line 425
    return-void
.end method

.method public onStartingPreviewCompleted()V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1199
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->onStop()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 1207
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopOverheatTimer()V

    .line 1208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFlagOverheat:Z

    .line 1209
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopAFHideRectTimer()V

    .line 1211
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1215
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1216
    return-void

    .line 1202
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStorageMenuSelect(I)V
    .locals 0
    .parameter "storage"

    .prologue
    .line 477
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 480
    return-void
.end method

.method public onTimerMenuSelect(I)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 383
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 874
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 875
    return-void
.end method

.method public onVintageMenuSelect(I)V
    .locals 0
    .parameter "vintage"

    .prologue
    .line 483
    return-void
.end method

.method public onVoiceCommandMenuSelect(I)V
    .locals 0
    .parameter "VoiceCommand"

    .prologue
    .line 410
    return-void
.end method

.method public onWhiteBalanceMenuSelect(I)V
    .locals 0
    .parameter "whiteBalance"

    .prologue
    .line 395
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 1040
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

    .line 1041
    if-eqz p1, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 1043
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnResumePending:Z

    if-eqz v0, :cond_0

    .line 1044
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnResumePending:Z

    .line 1046
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1047
    return-void
.end method

.method public onZoomValueMenuSelect(I)V
    .locals 0
    .parameter "zoomValue"

    .prologue
    .line 386
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
    .line 637
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 647
    :cond_0
    return-void
.end method

.method public processBack()V
    .locals 4

    .prologue
    .line 603
    const/4 v2, 0x0

    .line 606
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

    .line 613
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 614
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 615
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 618
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 619
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 625
    :cond_1
    :goto_1
    return-void

    .line 607
    :catch_0
    move-exception v1

    .line 609
    .local v1, e:Ljava/util/EmptyStackException;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto :goto_0

    .line 621
    .end local v1           #e:Ljava/util/EmptyStackException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public pushMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 589
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLastElementView:Lcom/sec/android/app/camera/MenuBase;

    .line 590
    invoke-virtual {p1}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->popMenu(I)V

    .line 592
    invoke-virtual {p1}, Lcom/sec/android/app/camera/MenuBase;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    return-void

    .line 595
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    return-void

    .line 652
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

    .line 1782
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 1784
    :cond_0
    iput v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1785
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
    .line 834
    const-string v0, "AbstractCameraActivity"

    const-string v1, "restarting inactivity timer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 836
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startInactivityTimer()V

    .line 837
    return-void
.end method

.method public setCamcorderSelfIconLoaded(Z)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2157
    sput-boolean p1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCamcorderSelfIconLoaded:Z

    .line 2158
    return-void
.end method

.method public setCameraSelfIconLoaded(Z)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2153
    sput-boolean p1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCameraSelfIconLoaded:Z

    .line 2154
    return-void
.end method

.method public setConnectingStateGPS(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 522
    return-void
.end method

.method public abstract setDefaultLayout()V
.end method

.method public setDefaultStorageStatus()V
    .locals 1

    .prologue
    .line 1862
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1863
    return-void
.end method

.method public setEULAenable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2449
    sput-boolean p1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsEULAenabled:Z

    .line 2450
    return-void
.end method

.method protected setGpsPopupDisplayed(Z)V
    .locals 0
    .parameter "displayed"

    .prologue
    .line 1774
    iput-boolean p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsDisplayed:Z

    .line 1775
    return-void
.end method

.method public abstract setGuideLineSize(Landroid/view/View;)V
.end method

.method public setLastCapturedTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 510
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 507
    return-void
.end method

.method public abstract setPinupMode(Z)V
.end method

.method public abstract setSelectedMenuId(I)V
.end method

.method public abstract setTouchAutoFocusActive(Z)V
.end method

.method protected showChangeStoragetDialog()V
    .locals 5

    .prologue
    .line 2289
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 2316
    :goto_0
    return-void

    .line 2292
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2298
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09012c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2301
    .local v1, dialogMsg:Ljava/lang/String;
    const v2, 0x7f09012b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900a1

    new-instance v4, Lcom/sec/android/app/camera/AbstractCameraActivity$43;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$43;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900db

    new-instance v4, Lcom/sec/android/app/camera/AbstractCameraActivity$42;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$42;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2314
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    .line 2315
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showDefaultLayoutPopup()V
    .locals 3

    .prologue
    .line 2046
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2047
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0900c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2048
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2049
    const v1, 0x7f0900d6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2051
    const v1, 0x7f0900a1

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$33;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$33;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2059
    const v1, 0x7f0900db

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$34;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$34;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2067
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2068
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 2071
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    .line 2072
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2073
    return-void
.end method

.method public showDlg(I)V
    .locals 3
    .parameter "nId"

    .prologue
    .line 1866
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 1867
    if-ne v0, p1, :cond_0

    .line 1868
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 1869
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDialog(I)V

    .line 1866
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1872
    :cond_1
    return-void
.end method

.method public abstract showEditBackground(Z)V
.end method

.method protected showEditableShortcutHelpTextDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2236
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    .line 2286
    :cond_0
    :goto_0
    return-void

    .line 2239
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

    .line 2240
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getEditableShortcutHelpTextDialog()I

    move-result v6

    if-eq v6, v9, :cond_0

    .line 2241
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2242
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2244
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030003

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2245
    .local v4, layout:Landroid/view/View;
    const v6, 0x7f0b000e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2246
    .local v2, img:Landroid/widget/ImageView;
    const v6, 0x7f0b000f

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2247
    .local v5, message:Landroid/widget/TextView;
    const v6, 0x7f0b0010

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2249
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v6, 0x7f090127

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2251
    const v6, 0x7f020054

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2256
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2257
    const v6, 0x7f090126

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2258
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2259
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2261
    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$39;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$39;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2268
    const v6, 0x7f0900a1

    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$40;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$40;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2274
    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$41;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$41;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2283
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    .line 2284
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showOnDeviceHelpScreen()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2169
    iget-object v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    if-eqz v7, :cond_1

    .line 2232
    :cond_0
    :goto_0
    return-void

    .line 2173
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

    .line 2175
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getOnDeviceHelpScreen()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2177
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 2178
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    new-instance v2, Landroid/app/Dialog;

    const v7, 0x7f0a0003

    invoke-direct {v2, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2180
    .local v2, dialog:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2181
    .local v3, inflater:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 2183
    .local v4, layout:Landroid/view/View;
    const v7, 0x7f03000c

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2184
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isFirstSidemenuSelf()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2185
    const v7, 0x7f0b0021

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2186
    .local v6, message:Landroid/widget/TextView;
    const v7, 0x7f09013f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2189
    .end local v6           #message:Landroid/widget/TextView;
    :cond_2
    const v7, 0x7f0b0010

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2190
    .local v1, checkBox:Landroid/widget/CheckBox;
    const v7, 0x7f0b0023

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2192
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v2, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2193
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2194
    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2195
    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2197
    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$37;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$37;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2204
    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$38;

    invoke-direct {v7, p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity$38;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2223
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 2224
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060072

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2225
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060073

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2226
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2227
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2229
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    .line 2230
    iget-object v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public showResetPopup()V
    .locals 3

    .prologue
    .line 2076
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2077
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2078
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2079
    const v1, 0x7f0900de

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2081
    const v1, 0x7f09010c

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$35;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$35;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2090
    const v1, 0x7f09010d

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$36;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$36;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2098
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2099
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 2102
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    .line 2103
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2104
    return-void
.end method

.method protected showSbeamHelpTextDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2320
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    .line 2353
    :cond_0
    :goto_0
    return-void

    .line 2323
    :cond_1
    const-string v5, "AbstractCameraActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create showSbeamHelpTextDialog - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getSbeamHelpTextDialog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getSbeamHelpTextDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 2325
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2326
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2328
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03000d

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2329
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b000f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2330
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0010

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2332
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f09012a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2333
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2334
    const v5, 0x7f090109

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2335
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2336
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2338
    new-instance v5, Lcom/sec/android/app/camera/AbstractCameraActivity$44;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$44;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2345
    const v5, 0x7f0900a1

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$45;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$45;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2350
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    .line 2351
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public abstract showSideMenu()V
.end method

.method public abstract showSideMenuItems()V
.end method

.method protected showSingleShotBurstHelpTextDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2357
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    .line 2405
    :cond_0
    :goto_0
    return-void

    .line 2360
    :cond_1
    const-string v6, "AbstractCameraActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create showSingleShotBurstHelpTextDialog - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getSingleShotBurstHelpTextDialog()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getSingleShotBurstHelpTextDialog()I

    move-result v6

    if-eq v6, v9, :cond_0

    .line 2362
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2363
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2365
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030003

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2366
    .local v4, layout:Landroid/view/View;
    const v6, 0x7f0b000e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2367
    .local v2, img:Landroid/widget/ImageView;
    const v6, 0x7f0b000f

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2368
    .local v5, message:Landroid/widget/TextView;
    const v6, 0x7f0b0010

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2370
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v6, 0x7f090129

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2373
    const v6, 0x7f020054

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2375
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2376
    const v6, 0x7f090126

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2377
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2378
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2380
    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$46;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$46;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2387
    const v6, 0x7f0900a1

    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$47;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$47;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2393
    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$48;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$48;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2402
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    .line 2403
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showStatusIcon()V
    .locals 2

    .prologue
    .line 2143
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2144
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 2145
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2146
    return-void
.end method

.method public showWaitingAnimation()V
    .locals 4

    .prologue
    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 560
    return-void
.end method

.method public showWaitingAnimation_direct()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 564
    return-void
.end method

.method public startAFHideRectTimer()V
    .locals 4

    .prologue
    .line 855
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 856
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bAFTimerStarted:Z

    .line 857
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 858
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 859
    return-void
.end method

.method public abstract startContinuousAF()V
.end method

.method public startInactivityTimer()V
    .locals 4

    .prologue
    .line 829
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 831
    return-void
.end method

.method protected startOverheatTimer()V
    .locals 4

    .prologue
    .line 847
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 848
    return-void
.end method

.method public stopAFHideRectTimer()V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 865
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bAFTimerStarted:Z

    .line 866
    return-void
.end method

.method public abstract stopContinuousAF()V
.end method

.method public stopInactivityTimer()V
    .locals 2

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 844
    :cond_0
    return-void
.end method

.method protected stopOverheatTimer()V
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 852
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
