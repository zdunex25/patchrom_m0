.class public abstract Lcom/sec/android/app/camera/AbstractCameraActivity;
.super Landroid/app/Activity;
.source "AbstractCameraActivity.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;
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

.field protected static final CAMERA_TEMPERATURE_SYS_PATH:Ljava/lang/String; = "DEVPATH=/devices/platform/sec-subthermistor"

.field protected static final CAMERA_TEMPERATURE_VALUE_PATH:Ljava/lang/String; = "/sys/devices/platform/sec-subthermistor/temperature"

.field protected static final CAM_AVAILABLE_LOW_TEMP:I = -0x64

.field protected static final CAM_FLASH_AVAILABLE_TEMP:I = -0x32

.field protected static final CHECK_CALL_DLG:I = 0x2

.field protected static final CHECK_CAMERA_USING:I = 0xb

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

.field protected static final MULTIWINDOW_TITLE_HEIGHT:I = 0x27

.field public static final NAME_WITH_DATA:I = 0x7d5

.field protected static final NUM_OF_DLG:I = 0xc

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x0

.field protected static final OVERHEAT_TIMEOUT:I = 0x5

.field protected static final OVERHEAT_TIMER_EXPIRED:I = 0x2

.field protected static final OVER_CURRENT_THRESHOLD:I = 0x0

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

.field public static final USERPROFILE_DLG:I = 0x6

.field protected static mCameraActivitySwitching:Z

.field public static mIsCamcorderSelfIconLoaded:Z

.field public static mIsCameraSelfIconLoaded:Z

.field private static mIsEULAenabled:Z


# instance fields
.field private bAFTimerStarted:Z

.field protected bFlagOverheat:Z

.field protected bFromSecureSetting:Z

.field protected bIsCharging:Z

.field protected bTurnOnScrAB:Z

.field private mAquaShotHelpDialog:Landroid/app/AlertDialog;

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

.field protected mCheckVtCalling:Z

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

.field private mHDRHelpTextDialog:Landroid/app/AlertDialog;

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

.field private mTurnOnBurstShotHelpTextDialog:Landroid/app/AlertDialog;

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

.field private mWindowManager:Landroid/view/IWindowManager;

.field msgToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    .line 211
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_TEMP_FLASH_THRESHOLD_VALUE:I

    .line 238
    sput-boolean v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsEULAenabled:Z

    .line 264
    sput-boolean v2, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCameraSelfIconLoaded:Z

    .line 265
    sput-boolean v2, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCamcorderSelfIconLoaded:Z

    .line 317
    sput-boolean v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraActivitySwitching:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 587
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 120
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    .line 141
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 157
    const/16 v0, 0xc

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    .line 170
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 171
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 173
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    .line 175
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    .line 177
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z

    .line 187
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    .line 189
    new-instance v0, Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    .line 190
    new-instance v0, Lcom/sec/android/app/camera/CameraSettings;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 195
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDisplayBatteryPercentage:I

    .line 198
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 199
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    .line 200
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    .line 201
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    .line 202
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    .line 204
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    .line 205
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 206
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    .line 207
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    .line 208
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    .line 223
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    .line 232
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bAFTimerStarted:Z

    .line 233
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckMemory:Lcom/sec/android/app/camera/CheckMemory;

    .line 235
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    .line 236
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsFromSNS:Z

    .line 237
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFromSecureSetting:Z

    .line 240
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsDisplayed:Z

    .line 243
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsPinupMode:Z

    .line 246
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    .line 248
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    .line 250
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAquaShotHelpDialog:Landroid/app/AlertDialog;

    .line 253
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    .line 256
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    .line 257
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mTurnOnBurstShotHelpTextDialog:Landroid/app/AlertDialog;

    .line 259
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHDRHelpTextDialog:Landroid/app/AlertDialog;

    .line 261
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 263
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    .line 267
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLastElementView:Lcom/sec/android/app/camera/MenuBase;

    .line 269
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWindowManager:Landroid/view/IWindowManager;

    .line 271
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$1;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 285
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$2;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    .line 311
    new-instance v0, Lcom/sec/android/app/camera/command/CommandIdMap;

    invoke-direct {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    .line 314
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 593
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$3;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 603
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$4;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 2200
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    .line 2841
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    .line 588
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/AbstractCameraActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/AbstractCameraActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAquaShotHelpDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAquaShotHelpDialog:Landroid/app/AlertDialog;

    return-object p1
.end method


# virtual methods
.method public CannotStartCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1508
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    if-eqz v0, :cond_1

    .line 1509
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1513
    :goto_0
    return-void

    .line 1511
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_0
.end method

.method protected IsGpsEnableInSettings()V
    .locals 3

    .prologue
    .line 2769
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900e1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090018

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$61;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$61;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900e2

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$60;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$60;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2780
    return-void
.end method

.method public PauseGLSurface()V
    .locals 1

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 2324
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 2326
    :cond_0
    return-void
.end method

.method protected cameraDuringCall()Z
    .locals 1

    .prologue
    .line 2866
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
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2844
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->enableDuringCallDefaultValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2845
    iput-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    .line 2847
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getForcedShutterSound()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 2848
    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    .line 2855
    :cond_0
    :goto_0
    return-void

    .line 2853
    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    goto :goto_0
.end method

.method public checkCameraStartCondition_Call()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1553
    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1556
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1557
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2

    .line 1558
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1560
    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    if-nez v4, :cond_0

    .line 1561
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 1563
    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-eqz v4, :cond_2

    .line 1564
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkCameraStartCondition_VtCall()Z

    .line 1565
    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1598
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_0
    return v3

    .line 1568
    .restart local v1       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    const-string v4, "phone2"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1569
    .local v2, phoneServ2:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 1570
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1572
    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    if-nez v4, :cond_3

    .line 1573
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 1575
    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-eqz v4, :cond_1

    .line 1576
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkCameraStartCondition_VtCall()Z

    .line 1577
    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1595
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    .end local v2           #phoneServ2:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1596
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "AbstractCameraActivity"

    const-string v5, "phoneServ.isOffhook() or phoneServ.isVoIPIdle() failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkCameraStartCondition_Security()Z
    .locals 2

    .prologue
    .line 1655
    const-string v1, "persist.sys.camera_lock"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1656
    .local v0, dev_camera_lock_state:Ljava/lang/String;
    const-string v1, "camera_lock.enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1657
    const/4 v1, 0x1

    .line 1659
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

    .line 1602
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    .line 1605
    .line 1606
    :try_start_0
    goto :goto_1

    if-eqz v1, :cond_0

    .line 1607
    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    .line 1609
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 1610
    iget-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    .end local v1
    :cond_0
    :goto_1
    return v2

    .restart local v1
    :cond_1
    move v3, v2

    .line 1607
    goto :goto_0

    .line 1612
    .end local v1
    :catch_0
    move-exception v0

    .line 1614
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method protected checkCameraStartCondition_VtCall()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1620
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z

    .line 1622
    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-nez v3, :cond_1

    .line 1641
    :cond_0
    :goto_0
    return v2

    .line 1626
    :cond_1
    :try_start_0
    goto :goto_0

    .line 1628
    if-eqz v1, :cond_0

    .line 1629
    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z

    .line 1631
    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z

    if-ne v3, v4, :cond_2

    .line 1632
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 1634
    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z

    if-eqz v3, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1636
    .end local v1
    :catch_0
    move-exception v0

    .line 1637
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AbstractCameraActivity"

    const-string v4, "phoneServ.isVideoCall is failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1638
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1639
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v3, "AbstractCameraActivity"

    const-string v4, "phoneServ.isVideoCall is not defined"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkOpenFolderWarningPopUp(I)Z
    .locals 3
    .parameter "currentFolderStatus"

    .prologue
    const/4 v2, 0x1

    .line 2750
    const/4 v0, 0x0

    .line 2754
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2755
    if-ne p1, v2, :cond_1

    .line 2756
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleFlipClose(Z)V

    .line 2757
    const/4 v0, 0x0

    .line 2765
    :cond_0
    :goto_0
    return v0

    .line 2759
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2760
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleFlipClose(Z)V

    .line 2761
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkOutgoingCall()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1520
    const/4 v1, 0x1

    .line 1521
    .local v1, outgoingCall:Z
    const/4 v2, 0x1

    .line 1523
    .local v2, outgoingVoipCall:Z
    :try_start_0
    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 1524
    .local v3, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 1525
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v8

    if-nez v8, :cond_3

    move v1, v6

    .line 1527
    :cond_0
    :goto_0
    const-string v8, "phone2"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 1528
    .local v4, phoneServ2:Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_1

    .line 1529
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v8

    if-nez v8, :cond_4

    move v1, v6

    .line 1538
    .line 1539
    :cond_1
    :goto_1
    goto :goto_2

    if-eqz v5, :cond_2

    .line 1540
    invoke-interface {v5}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1546
    .end local v3           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    .end local v4           #phoneServ2:Lcom/android/internal/telephony/ITelephony;
    .end local v5
    :cond_2
    :goto_2
    iget-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    if-nez v8, :cond_5

    .line 1549
    :goto_3
    return v6

    .restart local v3       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_3
    move v1, v7

    .line 1525
    goto :goto_0

    .restart local v4       #phoneServ2:Lcom/android/internal/telephony/ITelephony;
    :cond_4
    move v1, v7

    .line 1529
    goto :goto_1

    .line 1542
    .end local v3           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    .end local v4           #phoneServ2:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1543
    .local v0, e:Landroid/os/RemoteException;
    const-string v8, "AbstractCameraActivity"

    const-string v9, "phoneServ.isOffhook() or phoneServ.isVoIPIdle() failed"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1549
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

    .line 2017
    if-eqz p1, :cond_3

    .line 2018
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 2020
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSelectedMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 2021
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2026
    :goto_0
    if-eqz p2, :cond_0

    .line 2027
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 2028
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 2029
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 2033
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-nez v0, :cond_1

    .line 2034
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

    .line 2038
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showChangeStoragetDialog()V

    .line 2057
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateRemainTime()V

    .line 2058
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->mediaStorageDialog()V

    .line 2059
    return-void

    .line 2023
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x75

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0

    .line 2042
    :cond_3
    if-eqz p2, :cond_4

    .line 2043
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    .line 2045
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 2047
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->resetStorageMedia()V

    .line 2048
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getChangeStorageSettingDialog()I

    move-result v0

    if-eqz v0, :cond_5

    .line 2049
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setChangeStorageSettingDialog(I)V

    .line 2051
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2052
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method public checkStorageLow(I)I
    .locals 6
    .parameter "storage"

    .prologue
    .line 1986
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAvailableStorage(I)J

    move-result-wide v0

    .line 1987
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1988
    const/4 v2, 0x2

    .line 1994
    :goto_0
    return v2

    .line 1990
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

    .line 1992
    const/4 v2, 0x1

    goto :goto_0

    .line 1994
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

    .line 853
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->clear()V

    .line 855
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 857
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 858
    return-void
.end method

.method public dismissResetDialog()V
    .locals 1

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2317
    return-void
.end method

.method public dumpViewStack()Ljava/lang/String;
    .locals 5

    .prologue
    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    .local v1, log:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 754
    .local v2, view:Lcom/sec/android/app/camera/MenuBase;
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v3

    .line 755
    .local v3, viewSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 756
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Lcom/sec/android/app/camera/MenuBase;
    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 757
    .restart local v2       #view:Lcom/sec/android/app/camera/MenuBase;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 759
    const-string v4, " => "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    const-string v4, "(Z:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 763
    const-string v4, ",C:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isCaptureEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 765
    const-string v4, ",P:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isPreviewTouchEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 767
    const-string v4, ")\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 769
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public enableDuringCallDefaultValue()Z
    .locals 1

    .prologue
    .line 2859
    const/4 v0, 0x1

    return v0
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 693
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->PauseGLSurface()V

    .line 694
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 696
    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->overridePendingTransition(II)V

    .line 697
    return-void
.end method

.method public finishMultiCamera()V
    .locals 1

    .prologue
    .line 1516
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1517
    return-void
.end method

.method public finishOnError(I)V
    .locals 7
    .parameter "error"

    .prologue
    const v6, 0x7f090011

    const v5, 0x7f0900a8

    .line 1403
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

    .line 1405
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1406
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

    .line 1493
    :goto_0
    return-void

    .line 1410
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1411
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090004

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1412
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1413
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1415
    packed-switch p1, :pswitch_data_0

    .line 1483
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1488
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    .line 1489
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1490
    :catch_0
    move-exception v1

    .line 1491
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto :goto_0

    .line 1418
    .end local v1           #ex:Ljava/lang/Exception;
    :pswitch_0
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1419
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$5;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1426
    :pswitch_1
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1427
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$6;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1434
    :pswitch_2
    const v2, 0x7f090013

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1435
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$7;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1442
    :pswitch_3
    const v2, 0x7f090017

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1443
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$8;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1450
    :pswitch_4
    const v2, 0x7f090014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1451
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$9;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1458
    :pswitch_5
    const-string v2, "The firmware is not latest.\nDo you want to continue?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1459
    const v2, 0x7f0900d4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1460
    const v2, 0x7f0900d5

    new-instance v3, Lcom/sec/android/app/camera/AbstractCameraActivity$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$10;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1467
    :pswitch_6
    const v2, 0x7f090015

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1468
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$11;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1475
    :pswitch_7
    const v2, 0x7f090016

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1476
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$12;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$12;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 1415
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_7
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
    .line 941
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bAFTimerStarted:Z

    return v0
.end method

.method public getAutoRotation()Z
    .locals 1

    .prologue
    .line 973
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    return v0
.end method

.method public getAvailableStorage()J
    .locals 4

    .prologue
    .line 1999
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v0

    .line 2001
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2002
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 2004
    :cond_0
    return-wide v0
.end method

.method public getAvailableStorage(I)J
    .locals 4
    .parameter "storage"

    .prologue
    .line 2008
    invoke-static {p1}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v0

    .line 2010
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2011
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 2013
    :cond_0
    return-wide v0
.end method

.method public final getBaseLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 2189
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBatteryLevel:I

    return v0
.end method

.method public getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    return-object v0
.end method

.method protected final getCameraTemperature()I
    .locals 12

    .prologue
    const/4 v8, -0x1

    .line 2783
    const/4 v3, 0x0

    .line 2784
    .local v3, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 2785
    .local v5, fileReader:Ljava/io/FileReader;
    const/16 v9, 0xa

    new-array v4, v9, [C

    .line 2787
    .local v4, fileBuffer:[C
    const/4 v1, 0x1

    .line 2790
    .local v1, currentTemp:I
    new-instance v3, Ljava/io/File;

    .end local v3           #file:Ljava/io/File;
    const-string v9, "/sys/devices/platform/sec-subthermistor/temperature"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2792
    .restart local v3       #file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 2793
    const-string v9, "AbstractCameraActivity"

    const-string v10, "getCameraTemperature : Camera Temperature file not found"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    :cond_0
    :goto_0
    return v8

    .line 2798
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2799
    .end local v5           #fileReader:Ljava/io/FileReader;
    .local v6, fileReader:Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/io/FileReader;->read([C)I

    move-result v0

    .line 2801
    .local v0, count:I
    if-ne v8, v0, :cond_3

    .line 2802
    const-string v9, "AbstractCameraActivity"

    const-string v10, "getCameraTemperature : Camera Temperature file is empty"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 2803
    const/4 v1, 0x1

    .line 2819
    :goto_1
    if-eqz v6, :cond_6

    .line 2821
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 2828
    .end local v0           #count:I
    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    :cond_2
    :goto_2
    const-string v8, "AbstractCameraActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCameraTemperature : currentTemp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v1

    .line 2830
    goto :goto_0

    .line 2805
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v0       #count:I
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :cond_3
    :try_start_3
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([C)V

    new-instance v10, Ljava/lang/String;

    const-string v11, "\n"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2806
    .local v7, splitString:[Ljava/lang/String;
    if-nez v7, :cond_4

    .line 2807
    const-string v9, "AbstractCameraActivity"

    const-string v10, "getCameraTemperature : failed to split buffer"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    const/4 v1, 0x1

    goto :goto_1

    .line 2810
    :cond_4
    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v1

    goto :goto_1

    .line 2822
    .end local v7           #splitString:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2823
    .local v2, exception:Ljava/io/IOException;
    const-string v8, "AbstractCameraActivity"

    const-string v9, "getCameraTemperature : failed to close Camera Temperature file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 2824
    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_2

    .line 2813
    .end local v0           #count:I
    .end local v2           #exception:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 2814
    .local v2, exception:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    const-string v9, "AbstractCameraActivity"

    const-string v10, "getCameraTemperature : failed to open Camera Temperature file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2819
    if-eqz v5, :cond_0

    .line 2821
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 2822
    :catch_2
    move-exception v2

    .line 2823
    .local v2, exception:Ljava/io/IOException;
    const-string v9, "AbstractCameraActivity"

    const-string v10, "getCameraTemperature : failed to close Camera Temperature file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2816
    .end local v2           #exception:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 2817
    .restart local v2       #exception:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v8, "AbstractCameraActivity"

    const-string v9, "getCameraTemperature : failed to read Camera Temperaturet file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2819
    if-eqz v5, :cond_2

    .line 2821
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 2822
    :catch_4
    move-exception v2

    .line 2823
    const-string v8, "AbstractCameraActivity"

    const-string v9, "getCameraTemperature : failed to close Camera Temperature file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2819
    .end local v2           #exception:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v5, :cond_5

    .line 2821
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 2824
    :cond_5
    :goto_6
    throw v8

    .line 2822
    :catch_5
    move-exception v2

    .line 2823
    .restart local v2       #exception:Ljava/io/IOException;
    const-string v9, "AbstractCameraActivity"

    const-string v10, "getCameraTemperature : failed to close Camera Temperature file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2819
    .end local v2           #exception:Ljava/io/IOException;
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_5

    .line 2816
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_4

    .line 2813
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_3

    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v0       #count:I
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :cond_6
    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto/16 :goto_2
.end method

.method public abstract getChkKeyFromApp()Ljava/lang/String;
.end method

.method public getCityId()J
    .locals 2

    .prologue
    .line 2873
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 727
    :goto_0
    return v0

    .line 724
    :catch_0
    move-exception v0

    .line 727
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayBatteryPercentageEnabled()I
    .locals 1

    .prologue
    .line 2197
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDisplayBatteryPercentage:I

    return v0
.end method

.method public getEULAenable()Z
    .locals 1

    .prologue
    .line 2838
    sget-boolean v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsEULAenabled:Z

    return v0
.end method

.method public final getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public getFolderStatus()I
    .locals 1

    .prologue
    .line 2742
    const/4 v0, 0x1

    .line 2746
    .local v0, ret:I
    return v0
.end method

.method public final getGLContext()Lcom/sec/android/glview/TwGLContext;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    return-object v0
.end method

.method public getGpsPopupDisplayed()Z
    .locals 1

    .prologue
    .line 1976
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsDisplayed:Z

    return v0
.end method

.method public abstract getIsLaunchGallery()Z
.end method

.method public getLastElementView()Lcom/sec/android/app/camera/MenuBase;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLastElementView:Lcom/sec/android/app/camera/MenuBase;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMemoryStatus()I
    .locals 1

    .prologue
    .line 2096
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    return v0
.end method

.method public getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    return-object v0
.end method

.method public getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method public final getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public final getPopupMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public abstract getRemainStorage()I
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method public final getShootingmodeRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public final getSideMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public abstract getTouchAutoFocusActive()Z
.end method

.method public getUsbMassStorageEnabledStatus()V
    .locals 4

    .prologue
    .line 2333
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2334
    .local v0, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    .line 2335
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

    .line 2336
    return-void
.end method

.method protected getWeather()I
    .locals 1

    .prologue
    .line 2870
    const/4 v0, 0x0

    return v0
.end method

.method protected handleBatteryOverheat()V
    .locals 5

    .prologue
    .line 2143
    const-string v1, "AbstractCameraActivity"

    const-string v2, "handleBatteryOverheat"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2178
    :goto_0
    return-void

    .line 2149
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2150
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2151
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2152
    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2154
    const v1, 0x7f09001a

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$34;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$34;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2161
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2162
    new-instance v1, Lcom/sec/android/app/camera/AbstractCameraActivity$35;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$35;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2175
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    .line 2176
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2177
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

    .line 2181
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

    .line 2182
    if-eqz p1, :cond_0

    .line 2183
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 2186
    :goto_0
    return-void

    .line 2185
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_0
.end method

.method protected handleLowBattery(Z)V
    .locals 3
    .parameter "temp"

    .prologue
    .line 2100
    const-string v1, "AbstractCameraActivity"

    const-string v2, "handleLowBattery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2140
    :goto_0
    return-void

    .line 2105
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2106
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2107
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2108
    if-eqz p1, :cond_1

    .line 2109
    const v1, 0x7f090147

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2113
    :goto_1
    const v1, 0x7f09001a

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$32;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$32;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2121
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2122
    new-instance v1, Lcom/sec/android/app/camera/AbstractCameraActivity$33;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$33;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2138
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 2139
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 2111
    :cond_1
    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public hideAllDlg()V
    .locals 3

    .prologue
    .line 2086
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 2087
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2088
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 2090
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->removeDialog(I)V

    .line 2086
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2093
    :cond_1
    return-void
.end method

.method public hideDlg(I)V
    .locals 3
    .parameter "nId"

    .prologue
    .line 2075
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 2076
    if-ne v0, p1, :cond_0

    .line 2077
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2078
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 2079
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->dismissDialog(I)V

    .line 2075
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2083
    :cond_1
    return-void
.end method

.method public hideFaceRect()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public abstract hideFocusRect()V
.end method

.method public abstract hideSideMenu()V
.end method

.method public abstract hideSideMenuItems()V
.end method

.method public hideWaitingAnimation()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 632
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 633
    return-void
.end method

.method protected inflateWaitingView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 636
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    .line 637
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 638
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030013

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 639
    .local v2, v:Landroid/view/View;
    const v3, 0x7f0b002c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 640
    .local v1, pBar4:Landroid/widget/ProgressBar;
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 643
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 644
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 645
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f020232

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 646
    return-void
.end method

.method protected initializeGLSurfaceView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 792
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 793
    new-instance v0, Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, v2, p0, v3}, Lcom/sec/android/glview/TwGLContext;-><init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v6, 0x4

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 799
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 803
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 806
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v5}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/sec/android/app/camera/AbstractCameraActivity$hoverclass;

    invoke-direct {v1, p0, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity$hoverclass;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/app/camera/AbstractCameraActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 817
    :cond_0
    :goto_0
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 818
    .local v7, glViewLayout:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 820
    iput-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 821
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

    .line 822
    return-void

    .line 812
    .end local v7           #glViewLayout:Landroid/widget/LinearLayout;
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isHoveringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/sec/android/app/camera/AbstractCameraActivity$hoverclass;

    invoke-direct {v1, p0, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity$hoverclass;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/app/camera/AbstractCameraActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const v1, 0x7f0b0007

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setHoverBaseView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public invalidatePreview()V
    .locals 2

    .prologue
    .line 1393
    const v1, 0x7f0b0009

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 1394
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->invalidate()V

    .line 1395
    return-void
.end method

.method public isAccuWeatherEnable()Z
    .locals 1

    .prologue
    .line 2876
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isActivityDestoying()Z
.end method

.method public abstract isAutoFocusing()Z
.end method

.method public isBatteryCharging()Z
    .locals 1

    .prologue
    .line 2193
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bIsCharging:Z

    return v0
.end method

.method public isCaptureEnabled()Z
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 741
    const/4 v0, 0x1

    .line 748
    :goto_0
    return v0

    .line 744
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

    .line 745
    :catch_0
    move-exception v0

    .line 748
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isCapturing()Z
.end method

.method public isFirstSidemenuSelf()Z
    .locals 1

    .prologue
    .line 2347
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSelectedMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 2348
    sget-boolean v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCameraSelfIconLoaded:Z

    .line 2350
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCamcorderSelfIconLoaded:Z

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 4

    .prologue
    .line 977
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 978
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    .line 979
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

    .line 981
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

.method public isMmsCapable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2884
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.mms"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2885
    const/4 v0, 0x1

    .line 2890
    :cond_0
    :goto_0
    return v0

    .line 2887
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public abstract isPreviewStarted()Z
.end method

.method public isPreviewTouchEnabled()Z
    .locals 1

    .prologue
    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isPreviewTouchEnabled()Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 736
    :goto_0
    return v0

    .line 733
    :catch_0
    move-exception v0

    .line 736
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResetDialogActive()Z
    .locals 1

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2310
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 2312
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
    .line 2329
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    return v0
.end method

.method protected makeToast(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 8
    .parameter "cls"
    .parameter "id"
    .parameter "str"

    .prologue
    const v6, 0x7f02021b

    const/4 v7, 0x0

    .line 2203
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2204
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03000d

    const v4, 0x7f0b001d

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2205
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b001e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2206
    .local v0, image:Landroid/widget/ImageView;
    const v4, 0x7f0b001f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2208
    .local v3, text:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    if-eqz v4, :cond_0

    .line 2214
    :goto_0
    if-eqz p3, :cond_1

    .line 2215
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2219
    :goto_1
    const/high16 v4, 0x420c

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2220
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2222
    packed-switch p2, :pswitch_data_0

    .line 2239
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    const/16 v5, 0x51

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v7, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 2240
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 2241
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2242
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2243
    return-void

    .line 2211
    :cond_0
    new-instance v4, Landroid/widget/Toast;

    invoke-direct {v4, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    goto :goto_0

    .line 2217
    :cond_1
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2224
    :pswitch_0
    const-string v4, "AbstractCameraActivity"

    const-string v5, "MESSAGE_TYPE_SMS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 2229
    :pswitch_1
    const-string v4, "AbstractCameraActivity"

    const-string v5, "MESSAGE_TYPE_PUSH_SMS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 2234
    :pswitch_2
    const-string v4, "AbstractCameraActivity"

    const-string v5, "MESSAGE_TYPE_MMS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    const v4, 0x7f02021a

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 2222
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

    .line 1496
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eqz v0, :cond_1

    .line 1497
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    .line 1501
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1505
    :goto_0
    return-void

    .line 1503
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_0
.end method

.method protected notifyOnPause()V
    .locals 1

    .prologue
    .line 1129
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public onAdjustContrastMenuSelect(I)V
    .locals 0
    .parameter "adjustcontrast"

    .prologue
    .line 578
    return-void
.end method

.method public onAdjustSaturationMenuSelect(I)V
    .locals 0
    .parameter "adjustsaturation"

    .prologue
    .line 581
    return-void
.end method

.method public onAntishakeSelect(I)V
    .locals 0
    .parameter "antishake"

    .prologue
    .line 490
    return-void
.end method

.method public onAudioRecordingSelect(I)V
    .locals 0
    .parameter "audiorecording"

    .prologue
    .line 536
    return-void
.end method

.method public onAutoShareShotModeSelectCommand(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 566
    return-void
.end method

.method public onAutocontrastSelect(I)V
    .locals 0
    .parameter "autocontrast"

    .prologue
    .line 493
    return-void
.end method

.method public onBlinkdetectionSelect(I)V
    .locals 0
    .parameter "blinkdetection"

    .prologue
    .line 496
    return-void
.end method

.method public onBurstModeSelectCommand(I)V
    .locals 0
    .parameter "mBurstMode"

    .prologue
    .line 557
    return-void
.end method

.method public onCamcorderQualityMenuSelect(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 502
    return-void
.end method

.method public onCamcorderSpeedMenuSelect(I)V
    .locals 1
    .parameter "speed"

    .prologue
    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0, p1, v0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCamcorderSpeedMenuSelect(IZZ)V

    .line 509
    return-void
.end method

.method public onCamcorderSpeedMenuSelect(IZZ)V
    .locals 0
    .parameter "speed"
    .parameter "isSubMenu"
    .parameter "fromResetSettings"

    .prologue
    .line 505
    return-void
.end method

.method public onCameraQualityMenuSelect(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 499
    return-void
.end method

.method public onContextualFilenameSelect(I)V
    .locals 0
    .parameter "contextualFilename"

    .prologue
    .line 560
    return-void
.end method

.method public onContrastMenuSelect(I)V
    .locals 0
    .parameter "contrast"

    .prologue
    .line 439
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 1260
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1261
    const-string v1, "AbstractCameraActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1264
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x2000000a

    const-string v2, "AbstractCameraActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1265
    invoke-static {p0}, Lcom/sec/android/app/camera/CheckMemory;->setStorageVolume(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 1268
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWindowManager:Landroid/view/IWindowManager;

    .line 1270
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFlagOverheat:Z

    .line 1271
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsPinupMode:Z

    .line 1272
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .parameter "id"

    .prologue
    .line 1663
    const-string v11, "ro.csc.country_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1665
    .local v9, country_code:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1938
    :pswitch_0
    const/4 v11, 0x0

    :goto_0
    return-object v11

    .line 1667
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1668
    .local v0, builder1:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f090004

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x1010355

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f090005

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f09001a

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$13;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$13;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1688
    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$14;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$14;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1711
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto :goto_0

    .line 1713
    .end local v0           #builder1:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1714
    .local v2, builder2:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f0900e6

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0900d4

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$16;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$16;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0900d5

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$15;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$15;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1728
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto :goto_0

    .line 1730
    .end local v2           #builder2:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1732
    .local v3, builder3:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v11

    if-nez v11, :cond_0

    .line 1733
    const v11, 0x7f09001b

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1737
    :goto_1
    const v11, 0x7f090004

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x1010355

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f09001a

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$17;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$17;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1744
    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$18;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$18;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1754
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto/16 :goto_0

    .line 1735
    :cond_0
    const v11, 0x7f09001c

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1757
    .end local v3           #builder3:Landroid/app/AlertDialog$Builder;
    :pswitch_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1758
    .local v4, builder4:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f090116

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1759
    const-string v11, "China"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "china"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "CHINA"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1760
    :cond_1
    const v11, 0x7f090118

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1764
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09011c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$19;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$19;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v4, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1776
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09011d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$20;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$20;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v4, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1786
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto/16 :goto_0

    .line 1762
    :cond_2
    const v11, 0x7f090117

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 1789
    .end local v4           #builder4:Landroid/app/AlertDialog$Builder;
    :pswitch_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1790
    .local v5, builder5:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f090119

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1791
    const-string v11, "China"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "china"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "CHINA"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1792
    :cond_3
    const v11, 0x7f09011b

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1796
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09011c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$21;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$21;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1813
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09011d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$22;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$22;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1826
    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$23;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$23;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1840
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto/16 :goto_0

    .line 1794
    :cond_4
    const v11, 0x7f09011a

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 1843
    .end local v5           #builder5:Landroid/app/AlertDialog$Builder;
    :pswitch_6
    const-string v11, "AbstractCameraActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FLIP_OPEN_DLG, mCameraSettings.getShootingMode()="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    iget-object v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 1845
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1846
    .local v6, builder7:Landroid/app/AlertDialog$Builder;
    iget-object v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v11

    if-nez v11, :cond_5

    const v10, 0x7f090174

    .line 1848
    .local v10, msgId01:I
    :goto_4
    const v11, 0x7f090004

    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1849
    const v11, 0x1010355

    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1850
    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1851
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1852
    const v11, 0x7f0900a8

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$24;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$24;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v6, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1857
    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$25;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$25;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1867
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto/16 :goto_0

    .line 1846
    .end local v10           #msgId01:I
    :cond_5
    const v10, 0x7f090175

    goto :goto_4

    .line 1870
    .end local v6           #builder7:Landroid/app/AlertDialog$Builder;
    :cond_6
    const-string v11, "AbstractCameraActivity"

    const-string v12, "It\'s not self-mode"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1874
    :pswitch_7
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setGpsPopupDisplayed(Z)V

    .line 1875
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1876
    .local v7, builder8:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f09017e

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x1010355

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f090177

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0900a8

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$27;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$27;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0900e2

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$26;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$26;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1890
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto/16 :goto_0

    .line 1892
    .end local v7           #builder8:Landroid/app/AlertDialog$Builder;
    :pswitch_8
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setGpsPopupDisplayed(Z)V

    .line 1893
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1894
    .local v8, builder9:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f0900c4

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0900df

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0900a8

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$29;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$29;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0900e2

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$28;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$28;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1909
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto/16 :goto_0

    .line 1911
    .end local v8           #builder9:Landroid/app/AlertDialog$Builder;
    :pswitch_9
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1913
    .local v1, builder10:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v11

    if-nez v11, :cond_7

    .line 1914
    const v11, 0x7f09001d

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1918
    :goto_5
    const v11, 0x7f090004

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x1010355

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f09001a

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$30;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$30;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1925
    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$31;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$31;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1935
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto/16 :goto_0

    .line 1916
    :cond_7
    const v11, 0x7f09001e

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    .line 1665
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
        :pswitch_9
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1296
    const-string v0, "AbstractCameraActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1302
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->clear()V

    .line 1303
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 1305
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 1307
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1309
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    .line 1312
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1313
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1314
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    .line 1317
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1318
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1319
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    .line 1322
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1323
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1324
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    .line 1327
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 1328
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1329
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    .line 1332
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_6

    .line 1333
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->clear()V

    .line 1334
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 1337
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_7

    .line 1338
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1339
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1342
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_8

    .line 1343
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1344
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1347
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_9

    .line 1348
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1349
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1352
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_a

    .line 1353
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1354
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1357
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_b

    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1359
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1362
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    if-eqz v0, :cond_c

    .line 1363
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->clear()V

    .line 1364
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    .line 1366
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_d

    .line 1367
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1368
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1371
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_e

    .line 1372
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1373
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1376
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 1377
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    .line 1379
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 1380
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 1381
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    .line 1382
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 1384
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWindowManager:Landroid/view/IWindowManager;

    .line 1386
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1387
    return-void
.end method

.method public onDeviceListMenuSelect()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method public onEditModeSelectCommand()V
    .locals 0

    .prologue
    .line 539
    return-void
.end method

.method public onEffectMenuSelect(I)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 433
    return-void
.end method

.method public onEffectRecorderMenuSelectCommand(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 554
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .locals 0
    .parameter "exposureValue"

    .prologue
    .line 469
    return-void
.end method

.method public onExposuremeterMenuSelect(I)V
    .locals 0
    .parameter "exposuremeter"

    .prologue
    .line 481
    return-void
.end method

.method public onFlashModeMenuSelect(I)V
    .locals 0
    .parameter "flashMode"

    .prologue
    .line 415
    return-void
.end method

.method public onFlipMenuSelectCommand(I)V
    .locals 0
    .parameter "flip"

    .prologue
    .line 542
    return-void
.end method

.method public onFocusModeMenuSelect(I)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 412
    return-void
.end method

.method public onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 13
    .parameter "rootView"

    .prologue
    const v12, 0x7f0700b8

    const v11, 0x7f07009f

    const/4 v2, 0x0

    .line 861
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v10, v0

    .line 862
    .local v10, SCREEN_WIDTH:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v9, v0

    .line 864
    .local v9, SCREEN_HEIGHT:I
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v0, :cond_0

    .line 865
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 866
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 867
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

    const v1, 0x7f0700b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v8, v0

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 873
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

    const v1, 0x7f07009e

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

    .line 876
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 877
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 878
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 879
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 880
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 881
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 882
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 883
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 885
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 888
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 889
    return-void
.end method

.method public onGpsChanged(I)V
    .locals 0
    .parameter "gps"

    .prologue
    .line 515
    return-void
.end method

.method public onGuidelineSelect(I)V
    .locals 0
    .parameter "guideline"

    .prologue
    .line 512
    return-void
.end method

.method public onHDRIntensityModeSelectCommand(I)V
    .locals 0
    .parameter "mHDRIntensityMode"

    .prologue
    .line 575
    return-void
.end method

.method public onHDRPictureModeSelectCommand(I)V
    .locals 0
    .parameter "mHDRPictureMode"

    .prologue
    .line 572
    return-void
.end method

.method public onHdrMenuSelectCommand(I)V
    .locals 0
    .parameter "hdr"

    .prologue
    .line 545
    return-void
.end method

.method public onISOMenuSelect(I)V
    .locals 0
    .parameter "iso"

    .prologue
    .line 478
    return-void
.end method

.method public onModechanged()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method public onObjecttrackingSelect(I)V
    .locals 0
    .parameter "objecttracking"

    .prologue
    .line 487
    return-void
.end method

.method public onOutdoorVisibilitySelect(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 530
    return-void
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1138
    const-string v2, "AbstractCameraActivity"

    const-string v3, "onPause"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1142
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v2, :cond_0

    .line 1143
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearInvisibleViews()V

    .line 1146
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1147
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->onPause()V

    .line 1150
    :cond_1
    iput-boolean v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 1152
    const-string v2, "AbstractCameraActivity"

    const-string v3, "GL Cleared!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1157
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

    .line 1158
    iget-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    if-eqz v2, :cond_2

    .line 1159
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1160
    .line 1167
    .local v1, pm:Landroid/os/PowerManager;
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    .line 1169
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1177
    :goto_0
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledVideoGamma(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1183
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1184
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1185
    :cond_3
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 1187
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1188
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1190
    :cond_4
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 1192
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1193
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1194
    :cond_5
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    .line 1196
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1197
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1198
    :cond_6
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    .line 1200
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1201
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1202
    :cond_7
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    .line 1204
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1205
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1206
    :cond_8
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    .line 1208
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1209
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1210
    :cond_9
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    .line 1212
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1213
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1214
    :cond_a
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    .line 1216
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1217
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1218
    :cond_b
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    .line 1220
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1221
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1222
    :cond_c
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    .line 1224
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1225
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1226
    :cond_d
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    .line 1228
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 1229
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopOverheatTimer()V

    .line 1230
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopAFHideRectTimer()V

    .line 1232
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1233
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1236
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_f

    .line 1237
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1240
    :cond_f
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    if-eqz v2, :cond_10

    .line 1241
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 1242
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    .line 1246
    :cond_10
    sget-boolean v2, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraActivitySwitching:Z

    if-nez v2, :cond_11

    .line 1247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1248
    .local v0, boostIntent:Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    const-string v2, "SSRM_STATUS_NAME"

    const-string v3, "Camera_preview"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1250
    const-string v2, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1251
    const-string v2, "PackageName"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1252
    const-string v2, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1253
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1255
    .end local v0           #boostIntent:Landroid/content/Intent;
    :cond_11
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1257
    return-void

    .line 1178
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 1170
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 7
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1942
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

    .line 1943
    packed-switch p1, :pswitch_data_0

    .line 1970
    :goto_0
    return-void

    .line 1945
    :pswitch_0
    const v2, 0x7f090005

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1946
    .local v1, message:Ljava/lang/String;
    iget v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-ne v2, v5, :cond_0

    .line 1947
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

    .line 1950
    const-string v2, "AbstractCameraActivity"

    const-string v3, "change_to_card_memory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090007

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090008

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1954
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    :cond_0
    :goto_1
    move-object v0, p2

    .line 1967
    check-cast v0, Landroid/app/AlertDialog;

    .line 1968
    .local v0, builder:Landroid/app/AlertDialog;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1958
    .end local v0           #builder:Landroid/app/AlertDialog;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorageLow(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 1960
    const-string v2, "AbstractCameraActivity"

    const-string v3, "change_to_phone_memory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    const v2, 0x7f090009

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1963
    :cond_2
    const-string v2, "AbstractCameraActivity"

    const-string v3, "not_enough_space"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const v2, 0x7f090006

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1943
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreviewFileReceived(I)V
    .locals 0
    .parameter "preview"

    .prologue
    .line 460
    return-void
.end method

.method public onRecordingModeMenuSelect(I)V
    .locals 0
    .parameter "recordingMode"

    .prologue
    .line 475
    return-void
.end method

.method public onResolutionMenuSelect(I)V
    .locals 0
    .parameter "resolution"

    .prologue
    .line 430
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 988
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

    .line 995
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 996
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/MenuBase;->onResume()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1002
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1003
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1005
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1006
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 1008
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 1009
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1012
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1015
    .local v3, mAutomatic:I
    if-ne v3, v8, :cond_7

    .line 1016
    iput-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    .line 1018
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1019
    .local v4, pm:Landroid/os/PowerManager;
    const-string v5, "persist.sys.default_brightness"

    const/16 v6, 0x78

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1020
    .local v1, defBrightness:I
    const/4 v5, -0x1

    .line 1025
    .end local v1           #defBrightness:I
    .end local v4           #pm:Landroid/os/PowerManager;
    :goto_1
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

    .line 1033
    const/4 v5, 0x1

    :try_start_1
    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledVideoGamma(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1038
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v5, :cond_3

    .line 1039
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v5}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 1044
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v5, :cond_4

    .line 1045
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->onResume()V

    .line 1047
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-boolean v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLContext;->enableOrientation(Z)V

    .line 1049
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLContext;->setScrollBarAutoHide(Z)V

    .line 1054
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getUsbMassStorageEnabledStatus()V

    .line 1056
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_battery_percentage"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDisplayBatteryPercentage:I

    .line 1059
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1060
    .local v0, boostIntent:Landroid/content/Intent;
    const-string v5, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    const-string v5, "SSRM_STATUS_NAME"

    const-string v6, "Camera_preview"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1062
    const-string v5, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1063
    const-string v5, "PackageName"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    const-string v5, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1065
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1067
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1068
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "from-camera"

    invoke-virtual {v5, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "from-camcorder"

    invoke-virtual {v5, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1070
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableOnDeviceHelp"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1071
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showOnDeviceHelpScreen()V

    .line 1109
    :cond_5
    :goto_3
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1110
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_6

    .line 1111
    .line 1114
    :cond_6
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1115
    return-void

    .line 1022
    .end local v0           #boostIntent:Landroid/content/Intent;
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    iput-boolean v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    goto/16 :goto_1

    .line 1073
    .restart local v0       #boostIntent:Landroid/content/Intent;
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v5

    if-nez v5, :cond_a

    .line 1075
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-nez v5, :cond_5

    .line 1076
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v5, :cond_9

    .line 1077
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSingleShotBurstHelpTextDialog()V

    goto :goto_3

    .line 1079
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showEditableShortcutHelpTextDialog()V

    goto :goto_3

    .line 1084
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v5

    if-ne v5, v8, :cond_5

    .line 1085
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showEditableShortcutHelpTextDialog()V

    goto :goto_3

    .line 1091
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableOnDeviceHelp"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1092
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showOnDeviceHelpScreen()V

    goto :goto_3

    .line 1094
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v5

    if-nez v5, :cond_d

    .line 1096
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-nez v5, :cond_5

    .line 1097
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 1098
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSingleShotBurstHelpTextDialog()V

    goto :goto_3

    .line 1103
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v5

    if-ne v5, v8, :cond_5

    .line 1104
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showEditableShortcutHelpTextDialog()V

    goto :goto_3

    .line 1034
    .end local v0           #boostIntent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    goto/16 :goto_2

    .line 998
    .end local v3           #mAutomatic:I
    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method

.method public onReviewMenuSelect(I)V
    .locals 0
    .parameter "cameraReview"

    .prologue
    .line 448
    return-void
.end method

.method public onRunSNSAfterConnect(I)V
    .locals 0
    .parameter "sns"

    .prologue
    .line 463
    return-void
.end method

.method public onSaturationMenuSelect(I)V
    .locals 0
    .parameter "saturation"

    .prologue
    .line 442
    return-void
.end method

.method public onSceneModeMenuSelect(I)V
    .locals 0
    .parameter "sceneMode"

    .prologue
    .line 472
    return-void
.end method

.method public onSelfModeChangeSelected()V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method public onSharpnessMenuSelect(I)V
    .locals 0
    .parameter "sharpness"

    .prologue
    .line 445
    return-void
.end method

.method public onShootAndShareMenuSelect(I)V
    .locals 0
    .parameter "sns"

    .prologue
    .line 454
    return-void
.end method

.method public onShootingModeMenuSelect(I)V
    .locals 0
    .parameter "shootingMode"

    .prologue
    .line 421
    return-void
.end method

.method public onShutterSoundMenuSelect(I)V
    .locals 0
    .parameter "shutterSound"

    .prologue
    .line 466
    return-void
.end method

.method public onStartingPreviewCompleted()V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1276
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->onStop()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 1284
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopOverheatTimer()V

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFlagOverheat:Z

    .line 1286
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopAFHideRectTimer()V

    .line 1288
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1289
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1292
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1293
    return-void

    .line 1279
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStorageMenuSelect(I)V
    .locals 0
    .parameter "storage"

    .prologue
    .line 518
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 521
    return-void
.end method

.method public onTimerMenuSelect(I)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 424
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 946
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 947
    return-void
.end method

.method public onVintageMenuSelect(I)V
    .locals 0
    .parameter "vintage"

    .prologue
    .line 524
    return-void
.end method

.method public onVoiceCommandMenuSelect(I)V
    .locals 0
    .parameter "VoiceCommand"

    .prologue
    .line 451
    return-void
.end method

.method public onVolumeKeyMenuSelect(I)V
    .locals 0
    .parameter "volumeKey"

    .prologue
    .line 2880
    return-void
.end method

.method public onWhiteBalanceMenuSelect(I)V
    .locals 0
    .parameter "whiteBalance"

    .prologue
    .line 436
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 1118
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

    .line 1119
    if-eqz p1, :cond_0

    .line 1120
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 1124
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1125
    return-void
.end method

.method public onZoomValueMenuSelect(I)V
    .locals 0
    .parameter "zoomValue"

    .prologue
    .line 427
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
    .line 701
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 703
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 708
    :catch_0
    move-exception v0

    .line 711
    :cond_0
    return-void
.end method

.method public processBack()V
    .locals 4

    .prologue
    .line 667
    const/4 v2, 0x0

    .line 670
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

    .line 677
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 678
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 679
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 682
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 683
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 689
    :cond_1
    :goto_1
    return-void

    .line 671
    :catch_0
    move-exception v1

    .line 673
    .local v1, e:Ljava/util/EmptyStackException;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 674
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto :goto_0

    .line 685
    .end local v1           #e:Ljava/util/EmptyStackException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public pushMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 653
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLastElementView:Lcom/sec/android/app/camera/MenuBase;

    .line 654
    invoke-virtual {p1}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->popMenu(I)V

    .line 656
    invoke-virtual {p1}, Lcom/sec/android/app/camera/MenuBase;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    return-void

    .line 659
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :goto_0
    return-void

    .line 716
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

    .line 1980
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 1982
    :cond_0
    iput v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1983
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
    .line 906
    const-string v0, "AbstractCameraActivity"

    const-string v1, "restarting inactivity timer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 908
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startInactivityTimer()V

    .line 909
    return-void
.end method

.method public setCamcorderSelfIconLoaded(Z)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2343
    sput-boolean p1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCamcorderSelfIconLoaded:Z

    .line 2344
    return-void
.end method

.method public setCameraSelfIconLoaded(Z)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2339
    sput-boolean p1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCameraSelfIconLoaded:Z

    .line 2340
    return-void
.end method

.method public setConnectingStateGPS(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 563
    return-void
.end method

.method public abstract setDefaultLayout()V
.end method

.method public setDefaultStorageStatus()V
    .locals 1

    .prologue
    .line 2062
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 2063
    return-void
.end method

.method public setEULAenable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2834
    sput-boolean p1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsEULAenabled:Z

    .line 2835
    return-void
.end method

.method protected setGpsPopupDisplayed(Z)V
    .locals 0
    .parameter "displayed"

    .prologue
    .line 1972
    iput-boolean p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsDisplayed:Z

    .line 1973
    return-void
.end method

.method public abstract setGuideLineSize(Landroid/view/View;)V
.end method

.method public setLastCapturedTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 551
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 548
    return-void
.end method

.method public abstract setPinupMode(Z)V
.end method

.method public abstract setSelectedMenuId(I)V
.end method

.method public abstract setSurfaceTransparent()V
.end method

.method public abstract setTouchAutoFocusActive(Z)V
.end method

.method public setWeatherConnect(Z)V
    .locals 0
    .parameter "connect"

    .prologue
    .line 569
    return-void
.end method

.method protected showAquaShotHelpDialog()V
    .locals 5

    .prologue
    .line 2481
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAquaShotHelpDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 2503
    :goto_0
    return-void

    .line 2484
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2487
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2489
    .local v1, dialogMsg:Ljava/lang/String;
    const v2, 0x7f0901a1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900a8

    new-instance v4, Lcom/sec/android/app/camera/AbstractCameraActivity$45;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$45;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2501
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAquaShotHelpDialog:Landroid/app/AlertDialog;

    .line 2502
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAquaShotHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected showChangeStoragetDialog()V
    .locals 5

    .prologue
    .line 2506
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 2533
    :goto_0
    return-void

    .line 2509
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2512
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09013d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09013e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2518
    .local v1, dialogMsg:Ljava/lang/String;
    const v2, 0x7f09013c

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

    const v3, 0x7f0900a8

    new-instance v4, Lcom/sec/android/app/camera/AbstractCameraActivity$47;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$47;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900e2

    new-instance v4, Lcom/sec/android/app/camera/AbstractCameraActivity$46;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$46;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2531
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    .line 2532
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showDefaultLayoutPopup()V
    .locals 3

    .prologue
    .line 2247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2248
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0900ca

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2249
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2250
    const v1, 0x7f090199

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2252
    const v1, 0x7f0900a8

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$36;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$36;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2260
    const v1, 0x7f0900e2

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$37;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$37;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2269
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2270
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 2273
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    .line 2274
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2275
    return-void
.end method

.method public showDlg(I)V
    .locals 3
    .parameter "nId"

    .prologue
    .line 2066
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 2067
    if-ne v0, p1, :cond_0

    .line 2068
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 2069
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDialog(I)V

    .line 2066
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2072
    :cond_1
    return-void
.end method

.method public abstract showEditBackground(Z)V
.end method

.method protected showEditableShortcutHelpTextDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2422
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    .line 2478
    :cond_0
    :goto_0
    return-void

    .line 2426
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

    .line 2427
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getEditableShortcutHelpTextDialog()I

    move-result v6

    if-eq v6, v9, :cond_0

    .line 2428
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2429
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2431
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030004

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2432
    .local v4, layout:Landroid/view/View;
    const v6, 0x7f0b0003

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2433
    .local v2, img:Landroid/widget/ImageView;
    const v6, 0x7f0b0004

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2434
    .local v5, message:Landroid/widget/TextView;
    const v6, 0x7f0b0006

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2436
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v6, 0x7f090137

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2445
    const v6, 0x7f020031

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2448
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2449
    const v6, 0x7f090136

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2450
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2451
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2453
    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$42;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$42;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2460
    const v6, 0x7f0900a8

    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$43;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$43;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2466
    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$44;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$44;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2475
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    .line 2476
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method protected showHDRTextDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2690
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHDRHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    .line 2739
    :cond_0
    :goto_0
    return-void

    .line 2693
    :cond_1
    const-string v5, "AbstractCameraActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create HDRHelpTextDialog - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getHDRHelpTextDialog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getHDRHelpTextDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 2695
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2696
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2698
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030004

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2699
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2700
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2702
    .local v0, checkBox:Landroid/widget/CheckBox;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09018f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<br><br>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090190

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<br><b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09018d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b><br>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090191

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<br><b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09018e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b><br>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090192

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2709
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2710
    const v5, 0x7f090187

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2711
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2712
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2714
    new-instance v5, Lcom/sec/android/app/camera/AbstractCameraActivity$57;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$57;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2721
    const v5, 0x7f0900a8

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$58;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity$58;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2727
    new-instance v5, Lcom/sec/android/app/camera/AbstractCameraActivity$59;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$59;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2736
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHDRHelpTextDialog:Landroid/app/AlertDialog;

    .line 2737
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHDRHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showOnDeviceHelpScreen()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2355
    iget-object v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    if-eqz v7, :cond_1

    .line 2418
    :cond_0
    :goto_0
    return-void

    .line 2359
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

    .line 2361
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getOnDeviceHelpScreen()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2363
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 2364
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    new-instance v2, Landroid/app/Dialog;

    const v7, 0x7f0a0003

    invoke-direct {v2, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2366
    .local v2, dialog:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2367
    .local v3, inflater:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 2369
    .local v4, layout:Landroid/view/View;
    const v7, 0x7f03000f

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2370
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isFirstSidemenuSelf()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2371
    const v7, 0x7f0b0023

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2372
    .local v6, message:Landroid/widget/TextView;
    const v7, 0x7f090152

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2375
    .end local v6           #message:Landroid/widget/TextView;
    :cond_2
    const v7, 0x7f0b0006

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2376
    .local v1, checkBox:Landroid/widget/CheckBox;
    const v7, 0x7f0b0025

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2378
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v2, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2379
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2380
    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2381
    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2383
    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$40;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$40;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2390
    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$41;

    invoke-direct {v7, p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity$41;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2409
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 2410
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07009a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2411
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07009b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2412
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2413
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2415
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    .line 2416
    iget-object v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public showResetPopup()V
    .locals 3

    .prologue
    .line 2278
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2279
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0900ca

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2280
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2281
    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2283
    const v1, 0x7f0900d4

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$38;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$38;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2292
    const v1, 0x7f0900d5

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$39;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$39;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2300
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2301
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 2304
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    .line 2305
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2306
    return-void
.end method

.method protected showSbeamHelpTextDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2537
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    .line 2570
    :cond_0
    :goto_0
    return-void

    .line 2540
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

    .line 2541
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getSbeamHelpTextDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 2542
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2543
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2545
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030010

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2546
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2547
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2549
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f09013b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2550
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2551
    const v5, 0x7f090119

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2552
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2553
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2555
    new-instance v5, Lcom/sec/android/app/camera/AbstractCameraActivity$48;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$48;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2562
    const v5, 0x7f0900a8

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$49;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$49;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2567
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    .line 2568
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public abstract showSideMenu()V
.end method

.method public abstract showSideMenuItems()V
.end method

.method protected showSingleShotBurstHelpTextDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2574
    iget-object v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_1

    .line 2627
    :cond_0
    :goto_0
    return-void

    .line 2577
    :cond_1
    const-string v7, "AbstractCameraActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create showSingleShotBurstHelpTextDialog - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getSingleShotBurstHelpTextDialog()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getSingleShotBurstHelpTextDialog()I

    move-result v7

    if-eq v7, v10, :cond_0

    .line 2579
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2580
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 2582
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030001

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2583
    .local v5, layout:Landroid/view/View;
    const v7, 0x7f0b0003

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2584
    .local v3, img:Landroid/widget/ImageView;
    const v7, 0x7f0b0004

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2585
    .local v6, message:Landroid/widget/TextView;
    const v7, 0x7f0b0006

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2586
    .local v0, checkBox:Landroid/widget/CheckBox;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f090139

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f09013a

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2588
    .local v2, helptext:Ljava/lang/String;
    const v7, 0x7f020032

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2590
    iget-object v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getBurstShot()I

    move-result v7

    if-nez v7, :cond_2

    .line 2591
    const v7, 0x7f090138

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2592
    const v7, 0x7f020031

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2595
    :cond_2
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2597
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2598
    const v7, 0x7f090136

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2599
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2600
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2602
    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$50;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$50;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2609
    const v7, 0x7f0900a8

    new-instance v8, Lcom/sec/android/app/camera/AbstractCameraActivity$51;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$51;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2615
    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$52;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$52;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2624
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    .line 2625
    iget-object v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showTurnOnBurstShotHelpTextDialog(I)V
    .locals 9
    .parameter "burstmode"

    .prologue
    const/4 v8, 0x1

    .line 2631
    const-string v6, "AbstractCameraActivity"

    const-string v7, "create TurnOnBurstShotHelpTextDialog"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 2687
    :goto_0
    return-void

    .line 2637
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getshowTurnOnBurstShotHelpTextDialog()I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 2638
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2639
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2641
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030004

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2642
    .local v4, layout:Landroid/view/View;
    const v6, 0x7f0b0004

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2643
    .local v5, message:Landroid/widget/TextView;
    const v6, 0x7f0b0006

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2645
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v6, 0x7f0901a4

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2647
    .local v2, helptext:Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2649
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2650
    const v6, 0x7f090033

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2651
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2652
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2654
    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$53;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$53;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2661
    const v6, 0x7f0900e2

    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$54;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$54;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2666
    const v6, 0x7f0900a8

    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$55;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$55;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2672
    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$56;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$56;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2681
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mTurnOnBurstShotHelpTextDialog:Landroid/app/AlertDialog;

    .line 2682
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mTurnOnBurstShotHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 2685
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #dialog:Landroid/app/AlertDialog$Builder;
    .end local v2           #helptext:Ljava/lang/String;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #layout:Landroid/view/View;
    .end local v5           #message:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onBurstModeSelectCommand(I)V

    goto :goto_0
.end method

.method public showWaitingAnimation()V
    .locals 4

    .prologue
    .line 619
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 620
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1450

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 622
    return-void
.end method

.method public showWaitingAnimation_direct()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 627
    return-void
.end method

.method public startAFHideRectTimer()V
    .locals 4

    .prologue
    .line 927
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 928
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bAFTimerStarted:Z

    .line 929
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 930
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 931
    return-void
.end method

.method public abstract startContinuousAF()V
.end method

.method public startInactivityTimer()V
    .locals 4

    .prologue
    .line 899
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 903
    :cond_0
    return-void
.end method

.method protected startOverheatTimer()V
    .locals 4

    .prologue
    .line 919
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 920
    return-void
.end method

.method public stopAFHideRectTimer()V
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 937
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bAFTimerStarted:Z

    .line 938
    return-void
.end method

.method public abstract stopContinuousAF()V
.end method

.method public stopInactivityTimer()V
    .locals 2

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 916
    :cond_0
    return-void
.end method

.method protected stopOverheatTimer()V
    .locals 2

    .prologue
    .line 923
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 924
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
