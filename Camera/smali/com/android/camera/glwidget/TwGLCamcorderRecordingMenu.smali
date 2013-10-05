.class public Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;
.super Lcom/android/camera/MenuBase;
.source "TwGLCamcorderRecordingMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BOTTOM_MENU_BAR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CAF_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CAF_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CAF_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CAF_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CUR_SIZE_GROUP_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CUR_SIZE_GROUP_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CUR_SIZE_GROUP_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CUR_SIZE_GROUP_WIDTH:I = 0x0

.field private static final DISABLE_SEC:J = 0x3e8L

#the value of this static final field might be set in the static constructor
.field private static final FULL_SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FULL_SCREEN_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GROUP_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GROUP_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_REC_TIME_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MARGIN:I = 0x0

.field public static final MAX_EMAIL_SIZE:J = 0x3200000L

.field private static final MAX_RECORDING_TIME:I = 0x1517f

#the value of this static final field might be set in the static constructor
.field private static final PREVIEW_NORMAL_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PREVIEW_NORMAL_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESSBAR_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESSBAR_POS_X:I = 0x0

.field private static final PROGRESSBAR_TEXT_INTERVAL:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final PROGRESSBAR_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_GROUP_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_GROUP_PORTRAIT_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_GROUP_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_GROUP_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_GROUP_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_MAX_SIZE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_SIZE_TEXT_WIDTH:I = 0x0

.field public static final RECORDING_MENU_CANCEL:I = 0x4

.field public static final RECORDING_MENU_PAUSE:I = 0x1

.field public static final RECORDING_MENU_RESUME:I = 0x3

.field public static final RECORDING_MENU_STOP:I = 0x2

.field public static final RECORDING_MENU_TAKEPICTURE:I = 0x5

.field public static final RECORDING_TIMER_STEP_MSG:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final REC_ICON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final REC_ICON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final REC_ICON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final RIGHT_CAMCORDER_MARGIN:I = 0x0

.field private static final SECONDS_IN_AN_HOUR:I = 0xe10

.field private static final SECONDS_IN_A_DAY:I = 0x15180

.field private static final SECONDS_IN_A_MINUTE:I = 0x3c

#the value of this static final field might be set in the static constructor
.field private static final SHIFT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_IMAGE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_IMAGE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SIDE_MENU_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SNAPBUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SNAPBUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final STOPBUTTON_POS_Y:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLCamcorderRecordingMenu"

.field private static final TEXT_SIZE:I


# instance fields
.field private isEmailMode:Z

.field private isMMSMode:Z

.field private mCAFButton:Lcom/sec/android/glview/TwGLButton;

.field private mCurRecSize:Lcom/sec/android/glview/TwGLText;

.field private mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

.field private mHMS:Ljava/lang/String;

.field private mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

.field private mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

.field private mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPauseTime:J

.field private mProgress:I

.field private mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecSizeText:Lcom/sec/android/glview/TwGLText;

.field private mRecordingLimitTime:I

.field private mRecordingProgressHandler:Landroid/os/Handler;

.field private mRecordingState:I

.field private mRecordingTime:I

.field private mResumeButton:Lcom/sec/android/glview/TwGLButton;

.field private mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

.field private mResumeTime:J

.field private mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

.field private mStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

.field private mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

.field private mStopping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const v0, 0x7f07009a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    .line 34
    const v0, 0x7f07009b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    .line 35
    const v0, 0x7f0700b8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    .line 36
    const v0, 0x7f07009f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    .line 37
    const v0, 0x7f07009e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    .line 38
    const v0, 0x7f080024

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    .line 39
    const v0, 0x7f0700e2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    .line 40
    const v0, 0x7f070011

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    .line 41
    const v0, 0x7f070012

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->BOTTOM_MENU_BAR:I

    .line 42
    const v0, 0x7f070016

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_CAMCORDER_MARGIN:I

    .line 45
    const v0, 0x7f0700e3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    .line 46
    const v0, 0x7f0700e4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    .line 47
    const v0, 0x7f0700d8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_REC_TIME_WIDTH:I

    .line 48
    const v0, 0x7f0700e5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    .line 49
    const v0, 0x7f070014

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_POS_X:I

    .line 50
    const v0, 0x7f070015

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_POS_Y:I

    .line 53
    const v0, 0x7f0700e0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    .line 54
    const v0, 0x7f07018c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    .line 55
    const v0, 0x7f0700e1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    .line 57
    sget v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    .line 58
    sget v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    add-int/lit8 v0, v0, 0x5

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_POS_X:I

    .line 59
    sget v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    .line 60
    sget v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    .line 61
    const v0, 0x7f0700dd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_X:I

    .line 62
    const v0, 0x7f0700de

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_Y:I

    .line 63
    const v0, 0x7f0700df

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_PORTRAIT_WIDTH:I

    .line 66
    const v0, 0x7f0700dc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    .line 67
    sget v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v0, v1

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_X:I

    .line 68
    sget v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_Y:I

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    .line 69
    sget v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    .line 72
    const v0, 0x7f0700c0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_X:I

    .line 73
    const v0, 0x7f0700c1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_Y:I

    .line 74
    const v0, 0x7f0700c2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_IMAGE_POS_X:I

    .line 75
    const v0, 0x7f0700c3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_IMAGE_POS_Y:I

    .line 78
    const v0, 0x7f07000c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPBUTTON_WIDTH:I

    .line 79
    const v0, 0x7f07000d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPBUTTON_POS_Y:I

    .line 82
    const v0, 0x7f070013

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->STOPBUTTON_POS_Y:I

    .line 85
    const v0, 0x7f07000e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_WIDTH:I

    .line 86
    const v0, 0x7f07000f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_HEIGHT:I

    .line 87
    sget v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v0, v1

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2e

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_X:I

    .line 88
    sget v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;I)V
    .locals 9
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"
    .parameter "zOrder"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 153
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/MenuBase;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;IZ)V

    .line 105
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 129
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 131
    iput v6, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    .line 132
    iput v6, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    .line 133
    iput v6, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    .line 134
    iput-boolean v6, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    .line 135
    iput-boolean v6, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 136
    iput-boolean v6, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    .line 140
    iput-wide v7, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeTime:J

    .line 141
    iput-wide v7, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseTime:J

    .line 143
    new-instance v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu$1;

    invoke-direct {v0, p0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu$1;-><init>(Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->setTouchHandled(Z)V

    .line 156
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 157
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 158
    invoke-direct {p0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->init()V

    .line 159
    return-void
.end method

.method private doStop()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 587
    iget v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    if-eqz v0, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->stopTimer()V

    .line 601
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camcorder;->handleRecordingCommand(I)V

    .line 602
    iput v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 604
    iput-boolean v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    goto :goto_0
.end method

.method private hmsConvert(I)V
    .locals 8
    .parameter "seconds"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 502
    const v4, 0x1517f

    if-le p1, v4, :cond_0

    .line 503
    const p1, 0x1517f

    .line 506
    :cond_0
    div-int/lit16 v0, p1, 0xe10

    .line 507
    .local v0, hr:I
    div-int/lit8 v4, p1, 0x3c

    mul-int/lit8 v5, v0, 0x3c

    sub-int v1, v4, v5

    .line 508
    .local v1, min:I
    rem-int/lit8 v2, p1, 0x3c

    .line 510
    .local v2, sec:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    .local v3, str:Ljava/lang/StringBuilder;
    if-ge v0, v7, :cond_1

    .line 513
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 519
    :goto_0
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    if-ge v1, v7, :cond_2

    .line 522
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    :goto_1
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    if-ge v2, v7, :cond_3

    .line 531
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 537
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 538
    return-void

    .line 516
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 525
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 534
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private init()V
    .locals 12

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    .line 164
    .local v1, glContext:Lcom/sec/android/glview/TwGLContext;
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_CAMCORDER_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 165
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    int-to-float v2, v2

    const/4 v3, 0x0

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_REC_TIME_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    sget v7, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    .line 166
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 167
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0201e0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    .line 168
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 170
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 171
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->BOTTOM_MENU_BAR:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 174
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 178
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 180
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 182
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_X:I

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_CAMCORDER_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 183
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    int-to-float v5, v5

    const-string v6, "0K"

    sget v7, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    int-to-float v7, v7

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    .line 184
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 187
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v3, v4

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 188
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v4, v5

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->BOTTOM_MENU_BAR:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 190
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 192
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 193
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 195
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_X:I

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_CAMCORDER_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_Y:I

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 196
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v5

    const-string v6, "0K"

    sget v7, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    int-to-float v7, v7

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    .line 197
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020247

    const v7, 0x7f020246

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 198
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v5

    const-string v6, ""

    sget v7, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    int-to-float v7, v7

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 199
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v5

    const-string v6, "50M"

    sget v7, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    int-to-float v7, v7

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 200
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 202
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 204
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_X:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 205
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->BOTTOM_MENU_BAR:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 206
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 208
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 209
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 210
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 211
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 212
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 213
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 214
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 215
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 218
    new-instance v2, Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v4

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_X:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_Y:I

    int-to-float v5, v0

    const v6, 0x7f020180

    const v7, 0x7f020181

    const v8, 0x7f020180

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    .line 223
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 224
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 226
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090183

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupOffset(II)V

    .line 229
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x5351

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupGravity(I)V

    .line 231
    new-instance v2, Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v4

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_X:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_Y:I

    int-to-float v5, v0

    const v6, 0x7f02000a

    const v7, 0x7f02000b

    const v8, 0x7f02000a

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    .line 236
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 239
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090184

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupOffset(II)V

    .line 242
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x5351

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupGravity(I)V

    .line 244
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_IMAGE_POS_X:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_IMAGE_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f02017f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    .line 245
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 252
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 253
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 255
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_X:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_Y:I

    int-to-float v3, v3

    const v4, 0x7f020008

    const v5, 0x7f020009

    const v6, 0x7f02000b

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    .line 259
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 262
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090186

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupOffset(II)V

    .line 265
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x5351

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupGravity(I)V

    .line 266
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 271
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPBUTTON_WIDTH:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPBUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020230

    const v5, 0x7f020231

    const v6, 0x7f020231

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    .line 273
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 278
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090185

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupOffset(II)V

    .line 280
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x5351

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupGravity(I)V

    .line 281
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 285
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02000e

    const v5, 0x7f02000f

    const v6, 0x7f02000f

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    .line 287
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_HEIGHT:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_WIDTH:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 291
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x2

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_WIDTH:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_HEIGHT:I

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    add-int/2addr v4, v5

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 292
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x3

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_HEIGHT:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_WIDTH:I

    sget v5, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 293
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 298
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_X:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->STOPBUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020225

    const v5, 0x7f020226

    const v6, 0x7f020225

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 300
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 302
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 304
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090186

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupOffset(II)V

    .line 308
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x5351

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupGravity(I)V

    .line 309
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 312
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 313
    return-void
.end method

.method private isNotElapsed1SEC()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 657
    iget v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v2, v0, :cond_2

    .line 658
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gez v2, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 658
    goto :goto_0

    .line 659
    :cond_2
    iget v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 660
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 662
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 319
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 324
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_2

    .line 327
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 332
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 337
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 341
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 342
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    .line 345
    :cond_5
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_6

    .line 346
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 347
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 350
    :cond_6
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_7

    .line 351
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 352
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 355
    :cond_7
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    .line 356
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    .line 357
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    .line 358
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 359
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    .line 360
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 361
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 363
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 364
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 365
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 366
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    .line 368
    invoke-super {p0}, Lcom/android/camera/MenuBase;->clear()V

    .line 369
    return-void
.end method

.method public getRecordingState()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    return v0
.end method

.method public getRecordingTime()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    return v0
.end method

.method public hideCAFButton()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 654
    :cond_0
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 7
    .parameter "view"

    .prologue
    const/4 v4, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 668
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_6

    .line 669
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->isPauseResumeMenuSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 670
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_2

    .line 671
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeTime:J

    .line 672
    iget v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->isNotElapsed1SEC()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 712
    :goto_0
    return v0

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0, v6}, Lcom/android/camera/Camcorder;->handleRecordingCommand(I)V

    .line 676
    iput v6, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 677
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_1
    :goto_1
    move v0, v1

    .line 697
    goto :goto_0

    .line 680
    :cond_2
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_1

    .line 681
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseTime:J

    .line 682
    iget v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v0, v6, :cond_3

    invoke-direct {p0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->isNotElapsed1SEC()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 683
    goto :goto_0

    .line 685
    :cond_3
    iget v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    if-ge v0, v1, :cond_4

    move v0, v1

    .line 686
    goto :goto_0

    .line 688
    :cond_4
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camcorder;->handleRecordingCommand(I)V

    .line 689
    iput v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 690
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_1

    .line 695
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto :goto_1

    .line 698
    :cond_6
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_7

    .line 699
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->setContinuousAF()V

    .line 700
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    move v0, v1

    .line 701
    goto :goto_0

    .line 702
    :cond_7
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_9

    .line 703
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getRemainStorage()I

    move-result v0

    if-ge v0, v4, :cond_8

    move v0, v1

    .line 704
    goto :goto_0

    .line 706
    :cond_8
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camcorder;->handleRecordingCommand(I)V

    move v0, v1

    .line 707
    goto :goto_0

    .line 708
    :cond_9
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_a

    .line 709
    invoke-direct {p0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    move v0, v1

    .line 710
    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 712
    goto/16 :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 480
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 488
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->stopTimer()V

    .line 490
    invoke-super {p0}, Lcom/android/camera/MenuBase;->onHide()V

    .line 491
    return-void
.end method

.method public onHideMenu()V
    .locals 0

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->onHide()V

    .line 495
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 716
    move v0, p1

    .line 728
    .local v0, fakeKeyCode:I
    const/16 v3, 0x18

    if-eq v0, v3, :cond_0

    const/16 v3, 0x19

    if-ne v0, v3, :cond_1

    .line 749
    :cond_0
    :goto_0
    return v1

    .line 732
    :cond_1
    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    move v1, v2

    .line 733
    goto :goto_0

    .line 736
    :cond_2
    const/16 v3, 0x1b

    if-eq v0, v3, :cond_3

    const/16 v3, 0x17

    if-eq v0, v3, :cond_3

    const/16 v3, 0x42

    if-ne v0, v3, :cond_0

    .line 739
    :cond_3
    iget-object v1, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camcorder;

    invoke-virtual {v1}, Lcom/android/camera/Camcorder;->isShutterPressedByHardKey()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_4
    move v1, v2

    .line 746
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 753
    move v0, p1

    .line 765
    .local v0, fakeKeyCode:I
    const/16 v3, 0x18

    if-eq v0, v3, :cond_0

    const/16 v3, 0x19

    if-ne v0, v3, :cond_1

    .line 822
    :cond_0
    :goto_0
    return v1

    .line 769
    :cond_1
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 770
    iget-boolean v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    if-eqz v1, :cond_2

    move v1, v2

    .line 771
    goto :goto_0

    .line 774
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    move v1, v2

    .line 775
    goto :goto_0

    .line 778
    :cond_3
    const/16 v3, 0x1b

    if-eq v0, v3, :cond_4

    const/16 v3, 0x17

    if-eq v0, v3, :cond_4

    const/16 v3, 0x42

    if-ne v0, v3, :cond_0

    .line 782
    :cond_4
    iget-object v1, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camcorder;

    invoke-virtual {v1}, Lcom/android/camera/Camcorder;->isShutterPressedByHardKey()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 816
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    move v1, v2

    .line 819
    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v3, 0x0

    .line 828
    packed-switch p1, :pswitch_data_0

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 831
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    if-eqz v0, :cond_2

    .line 835
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_PORTRAIT_WIDTH:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    .line 837
    :cond_2
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_3

    .line 838
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_PORTRAIT_WIDTH:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getLayoutY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveBaseLayoutAbsolute(FF)V

    .line 840
    :cond_3
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_PORTRAIT_WIDTH:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getLayoutY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0

    .line 846
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_4

    .line 847
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 849
    :cond_4
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    if-eqz v0, :cond_5

    .line 850
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    .line 852
    :cond_5
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_6

    .line 853
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLText;->getLayoutY()F

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLText;->moveBaseLayoutAbsolute(FF)V

    .line 855
    :cond_6
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLText;->getLayoutY()F

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLText;->moveBaseLayoutAbsolute(FF)V

    goto/16 :goto_0

    .line 828
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->onHide()V

    .line 499
    return-void
.end method

.method protected onShow()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 372
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->isPauseResumeMenuSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 374
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 377
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->getRecordingState()I

    move-result v0

    if-eq v0, v8, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 384
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    if-nez v0, :cond_8

    .line 385
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 390
    :goto_1
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-eq v0, v8, :cond_1

    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 391
    :cond_1
    iput-boolean v8, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    .line 392
    iput-boolean v6, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 393
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 403
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 404
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->BOTTOM_MENU_BAR:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v10, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 405
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 439
    :goto_2
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v0

    if-ne v0, v8, :cond_b

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 457
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    .line 461
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 462
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 468
    :cond_4
    :goto_4
    iput-boolean v6, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    .line 470
    iget v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    if-lez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    if-nez v0, :cond_6

    .line 471
    :cond_5
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 472
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    const-string v1, "0K"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 474
    :cond_6
    iput v6, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    .line 476
    invoke-super {p0}, Lcom/android/camera/MenuBase;->onShow()V

    .line 477
    return-void

    .line 381
    :cond_7
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 387
    :cond_8
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->showShutterButton()V

    goto/16 :goto_1

    .line 406
    :cond_9
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-ne v0, v7, :cond_a

    .line 407
    iput-boolean v6, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    .line 408
    iput-boolean v8, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 409
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 419
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 420
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->BOTTOM_MENU_BAR:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v10, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 421
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    goto/16 :goto_2

    .line 423
    :cond_a
    iput-boolean v6, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    .line 424
    iput-boolean v6, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 425
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 434
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 435
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sget v3, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->BOTTOM_MENU_BAR:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v10, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 436
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    goto/16 :goto_2

    .line 453
    :cond_b
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 464
    :cond_c
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public pauseTimer()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 635
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 636
    return-void
.end method

.method public setRecordingState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 643
    iput p1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 644
    return-void
.end method

.method public showCAFButton()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 649
    :cond_0
    return-void
.end method

.method public startTimer()V
    .locals 3

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 609
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 611
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->getRequestedDurationLimit()I

    move-result v0

    iput v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    .line 613
    iget v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 614
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->hmsConvert(I)V

    .line 615
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->stepSecond()V

    .line 619
    return-void
.end method

.method public stepSecond()V
    .locals 5

    .prologue
    .line 622
    iget-object v1, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camcorder;

    invoke-virtual {v1}, Lcom/android/camera/Camcorder;->handleRecordingTimerElapsed()I

    move-result v0

    .line 624
    .local v0, drift:I
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    rsub-int/lit8 v3, v0, 0x64

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 625
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 629
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    .line 630
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 631
    return-void
.end method

.method public updateProgressBarText(J)V
    .locals 8
    .parameter "bytes"

    .prologue
    const-wide/16 v6, 0x400

    .line 566
    iget-boolean v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    if-eqz v2, :cond_2

    .line 567
    :cond_0
    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v0

    .line 568
    .local v0, mMaxSize:J
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    .line 569
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget v3, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 571
    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 572
    invoke-direct {p0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    .line 574
    :cond_1
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 584
    .end local v0           #mMaxSize:J
    :goto_0
    return-void

    .line 575
    :cond_2
    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getAttachMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 576
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_3
    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getRemainStorage()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    .line 579
    invoke-direct {p0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto :goto_0

    .line 582
    :cond_4
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getAvailableStorage()J

    move-result-wide v4

    const-wide/32 v6, 0x500000

    add-long/2addr v4, v6

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateRecordingTime(I)V
    .locals 4
    .parameter "second"

    .prologue
    const/4 v3, 0x0

    .line 541
    iput p1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    .line 542
    invoke-direct {p0, p1}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->hmsConvert(I)V

    .line 544
    iget v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 550
    :goto_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 559
    :goto_1
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_1

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_1
.end method
