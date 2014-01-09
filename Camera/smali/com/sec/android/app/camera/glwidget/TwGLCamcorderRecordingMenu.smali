.class public Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCamcorderRecordingMenu.java"


# static fields
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

#the value of this static final field might be set in the static constructor
.field private static final FULL_SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FULL_SCREEN_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GORUP_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GROUP_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GROUP_LANDSCAPE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GROUP_PORTRAIT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GROUP_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_REC_TIME_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MARGIN:I = 0x0

.field public static final MAX_EMAIL_SIZE:J = 0x3200000L

.field public static final MAX_MMS_SIZE:J = 0x49c00L

.field private static final MAX_RECORDING_TIME:I = 0x1517f

#the value of this static final field might be set in the static constructor
.field private static final PREVIEW_NORMAL_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PREVIEW_NORMAL_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESSBAR_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESSBAR_LAYOUT_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESSBAR_POS_X:I = 0x0

.field private static final PROGRESSBAR_TEXT_INTERVAL:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final PROGRESSBAR_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_HEIGHT:I = 0x0

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
.field private static final REC_TIME_PADDING:I = 0x0

.field private static final SECONDS_IN_AN_HOUR:I = 0xe10

.field private static final SECONDS_IN_A_DAY:I = 0x15180

.field private static final SECONDS_IN_A_MINUTE:I = 0x3c

#the value of this static final field might be set in the static constructor
.field private static final SHIFT:I = 0x0

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

.field private mProgress:I

.field private mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecSizeText:Lcom/sec/android/glview/TwGLText;

.field private mRecordingLimitTime:I

.field private mRecordingProgressHandler:Landroid/os/Handler;

.field private mRecordingState:I

.field private mRecordingTime:I

.field private mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

.field private mStopLightButton:Lcom/sec/android/glview/TwGLButton;

.field private mStopping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const v0, 0x7f06006d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    .line 31
    const v0, 0x7f06006e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    .line 32
    const v0, 0x7f06008b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    .line 33
    const v0, 0x7f060072

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    .line 34
    const v0, 0x7f060071

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    .line 35
    const v0, 0x7f08001f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    .line 36
    const v0, 0x7f0600ba

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    .line 37
    const v0, 0x7f060011

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    .line 40
    const v0, 0x7f0600b8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    .line 41
    const v0, 0x7f060155

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    .line 42
    const v0, 0x7f060156

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_HEIGHT:I

    .line 43
    const v0, 0x7f0600b9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    .line 45
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    .line 46
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    add-int/lit8 v0, v0, 0x5

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_POS_X:I

    .line 47
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_LAYOUT_WIDTH:I

    .line 50
    const v0, 0x7f060093

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_X:I

    .line 51
    const v0, 0x7f060094

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_Y:I

    .line 54
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v1

    const v1, 0x7f0600ab

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    .line 55
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    const v1, 0x7f0600ae

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    .line 56
    const v0, 0x7f0600ac

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GORUP_POS_Y:I

    .line 57
    const v0, 0x7f0600b0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    .line 58
    const v0, 0x7f0600b1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    .line 59
    const v0, 0x7f0600b3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_REC_TIME_WIDTH:I

    .line 60
    const v0, 0x7f0600b4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_TIME_PADDING:I

    .line 61
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_REC_TIME_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_TIME_PADDING:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_POS_X:I

    .line 64
    const v0, 0x7f0600b6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    .line 65
    const v0, 0x7f0600b7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    .line 66
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_X:I

    .line 67
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    .line 70
    const v0, 0x7f06000c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPBUTTON_WIDTH:I

    .line 71
    const v0, 0x7f06000d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPBUTTON_POS_Y:I

    .line 74
    const v0, 0x7f06000e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_WIDTH:I

    .line 75
    const v0, 0x7f06000f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_HEIGHT:I

    .line 76
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2e

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_X:I

    .line 77
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 7
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"
    .parameter "zOrder"

    .prologue
    const/4 v6, 0x0

    .line 134
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 95
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 115
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 117
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    .line 118
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    .line 119
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    .line 120
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    .line 121
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 122
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    .line 124
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->setTouchHandled(Z)V

    .line 137
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 139
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->init()V

    .line 140
    return-void
.end method

.method private doStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 450
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    if-lt v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->stopTimer()V

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 457
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    goto :goto_0
.end method

.method private hmsConvert(I)V
    .locals 8
    .parameter "seconds"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 375
    const v4, 0x1517f

    if-le p1, v4, :cond_0

    .line 376
    const p1, 0x1517f

    .line 379
    :cond_0
    div-int/lit16 v0, p1, 0xe10

    .line 380
    .local v0, hr:I
    div-int/lit8 v4, p1, 0x3c

    mul-int/lit8 v5, v0, 0x3c

    sub-int v1, v4, v5

    .line 381
    .local v1, min:I
    rem-int/lit8 v2, p1, 0x3c

    .line 383
    .local v2, sec:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .local v3, str:Ljava/lang/StringBuilder;
    if-ge v0, v7, :cond_1

    .line 386
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    :goto_0
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    if-ge v1, v7, :cond_2

    .line 395
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    :goto_1
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    if-ge v2, v7, :cond_3

    .line 404
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 411
    return-void

    .line 389
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 407
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private init()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/16 v10, 0xff

    const/4 v9, 0x1

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    .line 145
    .local v1, glContext:Lcom/sec/android/glview/TwGLContext;
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GORUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 146
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_REC_TIME_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    int-to-float v7, v2

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v13, v12}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 148
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_POS_X:I

    int-to-float v2, v2

    const v3, 0x7f020206

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GORUP_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    int-to-float v3, v3

    invoke-virtual {v0, v9, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GORUP_POS_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v12, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GORUP_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v13, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 163
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 164
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    int-to-float v5, v2

    const-string v6, "0K"

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    int-to-float v7, v2

    invoke-static {v10, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v9, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v12, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v13, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v13, v12}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 176
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_LAYOUT_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_LAYOUT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 178
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_HEIGHT:I

    int-to-float v5, v2

    const-string v6, "0K"

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    int-to-float v7, v2

    invoke-static {v10, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    .line 179
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02027e

    const v7, 0x7f02027d

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 180
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_HEIGHT:I

    int-to-float v5, v3

    const-string v6, "295K"

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    int-to-float v7, v3

    invoke-static {v10, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move v3, v11

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 181
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_HEIGHT:I

    int-to-float v5, v3

    const-string v6, "50M"

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    int-to-float v7, v3

    invoke-static {v10, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move v3, v11

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_LAYOUT_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v9, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_LAYOUT_WIDTH:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v12, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_LAYOUT_WIDTH:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v13, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v13, v12}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v9, v12}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v9, v12}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 198
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_X:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_Y:I

    int-to-float v3, v3

    const v4, 0x7f020023

    const v5, 0x7f020024

    const v6, 0x7f020027

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/glview/TwGLButton;

    .line 203
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPBUTTON_WIDTH:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPBUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020262

    const v5, 0x7f020263

    const v6, 0x7f020263

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    .line 208
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02002d

    const v5, 0x7f02002e

    const v6, 0x7f02002e

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v9, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v12, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v13, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_6

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 241
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_7

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 244
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 245
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 251
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/glview/TwGLButton;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 256
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 261
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 266
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 269
    :cond_3
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 270
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 271
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 272
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    .line 274
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 275
    return-void
.end method

.method public getRecordingState()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    return v0
.end method

.method public getRecordingTime()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    return v0
.end method

.method public hideCAFButton()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 507
    :cond_0
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x1

    .line 511
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    move v0, v1

    .line 525
    :goto_0
    return v0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->setContinuousAF()V

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    move v0, v1

    .line 517
    goto :goto_0

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_3

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getRemainStorage()I

    move-result v0

    if-ge v0, v3, :cond_2

    move v0, v1

    .line 520
    goto :goto_0

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    move v0, v1

    .line 523
    goto :goto_0

    .line 525
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 366
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->stopTimer()V

    .line 367
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 368
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 529
    const/16 v2, 0x18

    if-eq p1, v2, :cond_0

    const/16 v2, 0x19

    if-ne p1, v2, :cond_2

    :cond_0
    move v0, v1

    .line 543
    :cond_1
    :goto_0
    return v0

    .line 533
    :cond_2
    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    .line 537
    const/16 v2, 0x1b

    if-eq p1, v2, :cond_1

    const/16 v2, 0x17

    if-eq p1, v2, :cond_1

    const/16 v2, 0x42

    if-eq p1, v2, :cond_1

    move v0, v1

    .line 543
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 547
    const/16 v2, 0x18

    if-eq p1, v2, :cond_0

    const/16 v2, 0x19

    if-ne p1, v2, :cond_2

    :cond_0
    move v0, v1

    .line 567
    :cond_1
    :goto_0
    return v0

    .line 551
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 552
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    if-nez v1, :cond_1

    .line 556
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto :goto_0

    .line 560
    :cond_3
    const/16 v2, 0x1b

    if-eq p1, v2, :cond_4

    const/16 v2, 0x17

    if-eq p1, v2, :cond_4

    const/16 v2, 0x42

    if-ne p1, v2, :cond_5

    .line 563
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 567
    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onHide()V

    .line 372
    return-void
.end method

.method protected onShow()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    if-nez v0, :cond_5

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 287
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-eq v0, v8, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 288
    :cond_0
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    .line 289
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

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

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 321
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 339
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 350
    :cond_2
    :goto_3
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    .line 352
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    if-nez v0, :cond_4

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    const-string v1, "0K"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 356
    :cond_4
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    .line 358
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 359
    return-void

    .line 284
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->showShutterButton()V

    goto/16 :goto_0

    .line 298
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-ne v0, v7, :cond_7

    .line 299
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    .line 300
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

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

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 310
    :cond_7
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    .line 311
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 325
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    if-ne v0, v8, :cond_a

    .line 327
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 329
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 346
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public pauseTimer()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 489
    return-void
.end method

.method public setRecordingState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 496
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 497
    return-void
.end method

.method public showCAFButton()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 502
    :cond_0
    return-void
.end method

.method public startTimer()V
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 462
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getRequestedDurationLimit()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    .line 466
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 467
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hmsConvert(I)V

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->stepSecond()V

    .line 472
    return-void
.end method

.method public stepSecond()V
    .locals 4

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingTimerElapsed()V

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 478
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 484
    return-void
.end method

.method public updateProgressBarText(J)V
    .locals 8
    .parameter "bytes"

    .prologue
    const-wide/16 v6, 0x400

    .line 429
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    if-eqz v2, :cond_2

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v0

    .line 431
    .local v0, mMaxSize:J
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    .line 432
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 434
    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 435
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    .line 437
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

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

    .line 447
    .end local v0           #mMaxSize:J
    :goto_0
    return-void

    .line 438
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 439
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

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

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

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

    .line 441
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getRemainStorage()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    .line 442
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto :goto_0

    .line 445
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

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

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAvailableStorage()J

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
    .locals 3
    .parameter "second"

    .prologue
    .line 414
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    .line 415
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hmsConvert(I)V

    .line 417
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method
