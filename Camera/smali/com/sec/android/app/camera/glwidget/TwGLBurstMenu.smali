.class public Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLBurstMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;,
        Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;
    }
.end annotation


# static fields
.field private static BESTGROUP_MAX_IMAGE_COUNT:I = 0x0

.field public static final BESTPIC_ICON_POX_X:[I = null

.field public static final BESTPIC_ICON_POX_Y:[I = null

.field public static final BESTPIC_TEXT_POX_X:[I = null

.field public static final BESTPIC_TEXT_POX_Y:[I = null

.field private static BEST_MAX_IMAGE_COUNT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BEST_PIC_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BEST_PIC_BUTTON_WIDTH:I = 0x0

.field private static BURSTSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F = null

.field private static BURSTSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F = null

#the value of this static final field might be set in the static constructor
.field private static final BURSTSHOT_POST_PROGRESSBAR_HEIGHT:I = 0x0

.field private static final BURSTSHOT_POST_PROGRESSBAR_POS_X:[I = null

.field private static final BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I = null

#the value of this static final field might be set in the static constructor
.field private static final BURSTSHOT_POST_PROGRESSBAR_WIDTH:I = 0x0

.field private static BURSTSHOT_PROGRESS_BAR_HEIGHT:I = 0x0

.field private static BURSTSHOT_PROGRESS_BAR_WIDTH:I = 0x0

.field private static BURSTSHOT_PROGRESS_BAR_X:I = 0x0

.field private static BURSTSHOT_PROGRESS_BAR_Y:I = 0x0

.field private static BURSTSHOT_PROGRESS_TEXT_HEIGHT:I = 0x0

.field private static BURSTSHOT_PROGRESS_TEXT_SIZE:F = 0.0f

.field private static BURSTSHOT_PROGRESS_TEXT_WIDTH:I = 0x0

.field private static BURSTSHOT_PROGRESS_TEXT_X:I = 0x0

.field private static BURSTSHOT_PROGRESS_TEXT_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final BURSTSHOT_RESULT_TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final BURSTSHOT_RESULT_TEXT_POS_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field public static final BURSTSHOT_RESULT_TEXT_POS_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field public static final BURSTSHOT_RESULT_TEXT_WIDTH:I = 0x0

.field private static BURST_MAX_IMAGE_COUNT:I = 0x0

.field private static BURST_MODE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final Best_Pic_Icon_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final Best_Pic_Icon_TEXT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final Best_Pic_Icon_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_SIZE:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_WIDTH:I = 0x0

.field private static final HELP_TEXT_X:[I = null

.field private static final HELP_TEXT_Y:[I = null

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

#the value of this static final field might be set in the static constructor
.field private static final PROGRESSBAR_TEXT_INTERVAL:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESSBAR_TEXT_SIZE:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_BAR_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_HEIGHT:I = 0x0

.field private static final PROGRESS_WIDTH:[I = null

.field private static final PROGRESS_X:[I = null

.field private static final PROGRESS_Y:[I = null

.field protected static final TAG:Ljava/lang/String; = "TwGLBurstMenu"

.field private static mScannerClient:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;


# instance fields
.field private BestPoseFilePath:[Ljava/lang/String;

.field private mBestGroupMode:Z

.field private mBestPicButton:Lcom/sec/android/glview/TwGLButton;

.field private mBestPicMode:Z

.field private mBestPicNum:I

.field private mBestPicText:Lcom/sec/android/glview/TwGLText;

.field private mBestPosepCount:I

.field private mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

.field protected mBurstMsgHandler:Landroid/os/Handler;

.field private mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mCaptureCount:I

.field private mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mIsBurstCapturing:Z

.field private mLastOrientationTake:I

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

.field private mOrientation:I

.field private mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mProgressText:Lcom/sec/android/glview/TwGLText;

.field private mStoreCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 74
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTGROUP_MAX_IMAGE_COUNT:I

    .line 75
    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    .line 76
    const/16 v0, 0x14

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    .line 77
    sput-boolean v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MODE:Z

    .line 89
    new-array v0, v6, [I

    const v1, 0x7f06015c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f06015d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f06015e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f06015f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_X:[I

    .line 91
    new-array v0, v6, [I

    const v1, 0x7f060160

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f060161

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f060162

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f060163

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_Y:[I

    .line 93
    new-array v0, v4, [I

    const v1, 0x7f060157

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f060158

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_WIDTH:[I

    .line 94
    const v0, 0x7f06015a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_BAR_HEIGHT:I

    .line 95
    const v0, 0x7f06015b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_HEIGHT:I

    .line 96
    const v0, 0x7f080021

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESSBAR_TEXT_SIZE:F

    .line 97
    const v0, 0x7f060166

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESSBAR_TEXT_INTERVAL:I

    .line 98
    const v0, 0x7f060170

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_WIDTH:I

    .line 99
    const v0, 0x7f060171

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_HEIGHT:I

    .line 100
    new-array v0, v6, [I

    const v1, 0x7f060172

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f060173

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f060174

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f060175

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_X:[I

    .line 102
    new-array v0, v6, [I

    const v1, 0x7f060176

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f060177

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f060178

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f060179

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_Y:[I

    .line 104
    const v0, 0x7f080022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_SIZE:F

    .line 105
    new-array v0, v6, [I

    const v1, 0x7f06019f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0601a0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0601a1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0601a2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    .line 107
    new-array v0, v6, [I

    const v1, 0x7f0601a3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0601a4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0601a5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0601a6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    .line 109
    const v0, 0x7f0601a7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_WIDTH:I

    .line 110
    const v0, 0x7f0601a8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_HEIGHT:I

    .line 111
    const v0, 0x7f0601a9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_RESULT_TEXT_POS_X:F

    .line 112
    const v0, 0x7f0601ad

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_RESULT_TEXT_POS_Y:F

    .line 113
    const v0, 0x7f060155

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_RESULT_TEXT_WIDTH:I

    .line 114
    const v0, 0x7f060156

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_RESULT_TEXT_HEIGHT:I

    .line 115
    const v0, 0x7f060167

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_X:I

    .line 116
    const v0, 0x7f060169

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_Y:I

    .line 117
    const v0, 0x7f06016a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_WIDTH:I

    .line 118
    const v0, 0x7f06016b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_HEIGHT:I

    .line 119
    const v0, 0x7f080021

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_SIZE:F

    .line 120
    const v0, 0x7f0601b5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_X:I

    .line 121
    const v0, 0x7f0601b6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_Y:I

    .line 122
    const v0, 0x7f060159

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_WIDTH:I

    .line 123
    const v0, 0x7f06015a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_HEIGHT:I

    .line 124
    new-array v0, v4, [F

    const v1, 0x7f0601b7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0601b8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    .line 126
    new-array v0, v4, [F

    const v1, 0x7f0601b9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0601ba

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    .line 128
    const v0, 0x7f0601bc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->Best_Pic_Icon_WIDTH:I

    .line 129
    const v0, 0x7f0601bd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->Best_Pic_Icon_HEIGHT:I

    .line 130
    const v0, 0x7f0601bb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->Best_Pic_Icon_TEXT:I

    .line 131
    new-array v0, v6, [I

    const v1, 0x7f0601be

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0601bf

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0601c0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0601c1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_X:[I

    .line 133
    new-array v0, v6, [I

    const v1, 0x7f0601c2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0601c3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0601c4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0601c5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_Y:[I

    .line 135
    new-array v0, v6, [I

    const v1, 0x7f0601c6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0601c7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0601c8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0601c9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_X:[I

    .line 137
    new-array v0, v6, [I

    const v1, 0x7f0601ca

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0601cb

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0601cc

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0601cd

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_Y:[I

    .line 142
    const v0, 0x7f0601bc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_PIC_BUTTON_WIDTH:I

    .line 143
    const v0, 0x7f0601bd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_PIC_BUTTON_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 11
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 190
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mOrientation:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPosepCount:I

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicNum:I

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestGroupMode:Z

    .line 165
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setCaptureEnabled(Z)V

    .line 194
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_WIDTH:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_BAR_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f02029a

    const v8, 0x7f020299

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESSBAR_TEXT_INTERVAL:I

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESSBAR_TEXT_SIZE:F

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFIIIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 197
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0900d4

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 200
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_RESULT_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_RESULT_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_RESULT_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_RESULT_TEXT_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 203
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020022

    const v7, 0x7f020002

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->Best_Pic_Icon_WIDTH:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->Best_Pic_Icon_HEIGHT:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    .line 206
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02029a

    const v7, 0x7f020299

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 208
    new-instance v0, Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    const v4, 0x7f02002b

    const v5, 0x7f02002c

    const v6, 0x7f02002c

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_PIC_BUTTON_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_PIC_BUTTON_HEIGHT:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLSelectButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    .line 211
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f09000b

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 215
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f090131

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->Best_Pic_Icon_TEXT:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f090133

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->Best_Pic_Icon_TEXT:I

    int-to-float v2, v2

    const/16 v3, 0x88

    const/16 v4, 0xa0

    const/16 v5, 0xb9

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setRotatable(Z)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setBypassTouch(Z)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 240
    sget-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MODE:Z

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLProgressBar;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 259
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->init()V

    .line 261
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScannerClient:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;

    .line 262
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020294

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setLeftTop(IFF)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setLeftTop(IFF)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setLeftTop(IFF)V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_X:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLProgressBar;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x7f060073

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_Y:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v4

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 302
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestGroupMode:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTGROUP_MAX_IMAGE_COUNT:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 310
    return-void

    .line 304
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    goto :goto_0
.end method


# virtual methods
.method protected calculateOrientationForPicture(I)I
    .locals 3
    .parameter "orientation"

    .prologue
    .line 990
    move v0, p1

    .line 991
    .local v0, rotation:I
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_1

    .line 992
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 993
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    .line 1000
    :cond_1
    :goto_0
    return v0

    .line 995
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 996
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 316
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    .line 318
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 319
    return-void
.end method

.method public convertToExifInterfaceOrientation(I)I
    .locals 2
    .parameter "orientation"

    .prologue
    const/4 v0, 0x1

    .line 977
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_1

    .line 978
    const/4 v0, 0x6

    .line 986
    :cond_0
    :goto_0
    return v0

    .line 979
    :cond_1
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_2

    .line 980
    const/4 v0, 0x3

    goto :goto_0

    .line 981
    :cond_2
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_3

    .line 982
    const/16 v0, 0x8

    goto :goto_0

    .line 983
    :cond_3
    const/16 v1, 0x168

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_0

    goto :goto_0
.end method

.method public createDirForBurst()Z
    .locals 2

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    .line 1006
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-nez v1, :cond_1

    .line 1008
    new-instance v0, Ljava/io/File;

    const-string v1, "mnt/sdcard/DCIM"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1010
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1012
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #directory:Ljava/io/File;
    const-string v1, "mnt/sdcard/DCIM/Camera"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1013
    .restart local v0       #directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1014
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1017
    .end local v0           #directory:Ljava/io/File;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method getBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "index"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, tempBitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, v4, v5, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 734
    return-object v0
.end method

.method public getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    return v0
.end method

.method public getPostCaptureProgress()I
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->getProgress()I

    move-result v0

    .line 417
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    goto :goto_0
.end method

.method public getPostCaptureProgressMax()I
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestGroupMode:Z

    if-eqz v0, :cond_0

    .line 426
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTGROUP_MAX_IMAGE_COUNT:I

    .line 430
    :goto_0
    return v0

    .line 427
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_1

    .line 428
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    goto :goto_0

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getMax()I

    move-result v0

    goto :goto_0
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 471
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 326
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 435
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 442
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 443
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public interruptProcessforBestPics()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 914
    iget-boolean v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-nez v10, :cond_1

    .line 915
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->interruptProcessforBurstShots()Z

    move-result v8

    .line 973
    :cond_0
    :goto_0
    return v8

    .line 920
    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v10

    if-nez v10, :cond_5

    .line 921
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/.BestPic"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 926
    .local v3, fromBestpic:Ljava/io/File;
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 929
    const/4 v0, 0x0

    .line 933
    .local v0, bMove:Z
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v4, v10

    .line 934
    .local v4, i:I
    const-string v10, "TwGLBurstMenu"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Move BestPics to /Camera folder. file number is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    array-length v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    :cond_2
    if-lez v4, :cond_3

    .line 941
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v4, v10

    .line 942
    if-nez v4, :cond_6

    .line 965
    :cond_3
    if-eqz v0, :cond_4

    .line 967
    const-string v7, "bucket_id = ?"

    .line 968
    .local v7, mWhereClause:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 969
    .local v1, bucketId:I
    iget-object v10, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v12, v9, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-virtual {v10, v11, v7, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 971
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .end local v1           #bucketId:I
    .end local v7           #mWhereClause:Ljava/lang/String;
    :cond_4
    move v8, v9

    .line 973
    goto :goto_0

    .line 923
    .end local v0           #bMove:Z
    .end local v3           #fromBestpic:Ljava/io/File;
    .end local v4           #i:I
    :cond_5
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/.BestPic"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v3       #fromBestpic:Ljava/io/File;
    goto :goto_1

    .line 935
    .restart local v0       #bMove:Z
    :catch_0
    move-exception v2

    .line 936
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v9, "TwGLBurstMenu"

    const-string v10, "directory is not valid, so return."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 944
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v4       #i:I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    .line 946
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 947
    .local v5, mFilePath:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const-string v11, "_bestshot"

    invoke-virtual {v5, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v6, v10, v8, v11}, Ljava/lang/String;-><init>([BII)V

    .line 948
    .local v6, mFilename:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 949
    iget-object v10, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v10

    if-nez v10, :cond_8

    .line 950
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    aget-object v10, v10, v4

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 952
    if-eqz v0, :cond_7

    .line 953
    sget-object v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScannerClient:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->scanPath(Ljava/lang/String;)V

    .line 960
    :cond_7
    :goto_2
    if-nez v0, :cond_2

    .line 961
    const-string v9, "TwGLBurstMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moveBestPicfiles moving failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 955
    :cond_8
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    aget-object v10, v10, v4

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 957
    if-eqz v0, :cond_7

    .line 958
    sget-object v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScannerClient:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->scanPath(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public interruptProcessforBurstShots()Z
    .locals 5

    .prologue
    .line 893
    const/4 v1, 0x0

    .line 894
    .local v1, mDelete:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    if-gt v0, v3, :cond_4

    .line 895
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    .line 896
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    if-nez v3, :cond_1

    .line 897
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Burst0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 905
    .local v2, mFile:Ljava/io/File;
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 906
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 894
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 899
    .end local v2           #mFile:Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Burst0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #mFile:Ljava/io/File;
    goto :goto_1

    .line 901
    .end local v2           #mFile:Ljava/io/File;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    if-nez v3, :cond_3

    .line 902
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Burst"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #mFile:Ljava/io/File;
    goto :goto_1

    .line 904
    .end local v2           #mFile:Ljava/io/File;
    :cond_3
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Burst"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #mFile:Ljava/io/File;
    goto/16 :goto_1

    .line 910
    .end local v2           #mFile:Ljava/io/File;
    :cond_4
    return v1
.end method

.method public isBestGroupMode()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestGroupMode:Z

    return v0
.end method

.method public isBestPicMode()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    return v0
.end method

.method public isBurstCapturing()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    return v0
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    if-lez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;->onBurstCaptureCancelled()V

    .line 331
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 8
    .parameter "view"

    .prologue
    const/16 v7, 0xb9

    const/16 v6, 0xa0

    const/16 v5, 0x88

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 643
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_2

    .line 644
    const-string v0, "TwGLBurstMenu"

    const-string v3, "mBestPicButton clicked Change mode"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    .line 646
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->onBurstModeChanged(Z)V

    .line 647
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090132

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->Best_Pic_Icon_TEXT:I

    int-to-float v4, v4

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 652
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 656
    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 645
    goto :goto_0

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090133

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->Best_Pic_Icon_TEXT:I

    int-to-float v4, v4

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 656
    goto :goto_2
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 345
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v4, 0x1b

    const/4 v3, 0x4

    const/4 v1, 0x1

    .line 493
    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    const/16 v2, 0x17

    if-ne p1, v2, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v1

    .line 497
    :cond_1
    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-ne p1, v2, :cond_4

    .line 498
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v2

    if-gtz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_4

    .line 499
    :cond_3
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - block zoom function."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :cond_4
    if-eq p1, v3, :cond_5

    if-ne p1, v4, :cond_7

    .line 505
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v2

    if-lez v2, :cond_6

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v2, :cond_6

    .line 506
    const-string v2, "TwGLBurstMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown - it is stitching ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 508
    :cond_6
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v2, :cond_7

    .line 509
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - Now Burst capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 514
    :cond_7
    if-ne p1, v3, :cond_8

    .line 515
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_8

    .line 516
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - Now Burst capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 520
    :cond_8
    if-ne p1, v4, :cond_c

    .line 521
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 522
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - BEST_MAX_IMAGE_COUNT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 524
    :cond_9
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_a

    .line 525
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - Now Burst capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 529
    :cond_a
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mOrientation:I

    mul-int/lit8 v1, v1, 0x5a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    .line 530
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-nez v1, :cond_c

    .line 532
    new-instance v0, Ljava/io/File;

    const-string v1, "mnt/sdcard/DCIM"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    .line 534
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 536
    :cond_b
    new-instance v0, Ljava/io/File;

    .end local v0           #directory:Ljava/io/File;
    const-string v1, "mnt/sdcard/DCIM/Camera"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 537
    .restart local v0       #directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    .line 538
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 545
    .end local v0           #directory:Ljava/io/File;
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x1b

    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 549
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_2

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v1

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v1, :cond_2

    .line 551
    :cond_1
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyDown - block zoom function."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :goto_0
    return v0

    .line 556
    :cond_2
    if-eq p1, v2, :cond_3

    if-ne p1, v3, :cond_5

    .line 557
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v1

    if-lez v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v1, :cond_4

    .line 558
    const-string v1, "TwGLBurstMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp - it is stitching ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v1, :cond_5

    .line 561
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyUp - Now Burst capturing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 566
    :cond_5
    if-ne p1, v2, :cond_6

    .line 567
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v1, :cond_6

    .line 568
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyUp - Now Burst capturing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 573
    :cond_6
    if-ne p1, v3, :cond_7

    .line 574
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 575
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyUp - BEST_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 630
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mOrientation:I

    .line 631
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setSizeForOrientation()V

    .line 632
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 584
    const-string v0, "TwGLBurstMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v0, :cond_1

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onBurstCaptureCancelled()V

    .line 587
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 589
    :cond_1
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showCaptureLayout()V

    .line 341
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 592
    const-string v0, "TwGLBurstMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->stopCancelTimer()V

    .line 594
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 348
    const-string v0, "TwGLBurstMenu"

    const-string v1, "Burstshot restart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->resetProgressBar()V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 355
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    .line 356
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    .line 357
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setTouchHandled(Z)V

    .line 358
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->stopCancelTimer()V

    .line 359
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPosepCount:I

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideStatusIcon()V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showCaptureLayout()V

    .line 370
    :cond_0
    return-void
.end method

.method public restartCancelTimer()V
    .locals 2

    .prologue
    .line 381
    const-string v0, "TwGLBurstMenu"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->stopCancelTimer()V

    .line 383
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->startCancelTimer()V

    .line 384
    return-void
.end method

.method public setBestGroupMode(Z)V
    .locals 0
    .parameter "bestGroupMode"

    .prologue
    .line 671
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestGroupMode:Z

    .line 672
    return-void
.end method

.method public setBestPic(I)V
    .locals 0
    .parameter "bestpicNum"

    .prologue
    .line 661
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicNum:I

    .line 662
    return-void
.end method

.method public setBestPicMode(Z)V
    .locals 2
    .parameter "bestPicMode"

    .prologue
    .line 665
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    .line 666
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onBurstModeChanged(Z)V

    .line 667
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 668
    return-void
.end method

.method public setBurstCapturing(Z)V
    .locals 0
    .parameter "capture"

    .prologue
    .line 609
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    .line 610
    return-void
.end method

.method public setCaptureProgressIncreased()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 394
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setTouchHandled(Z)V

    goto :goto_0
.end method

.method public setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 489
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    .line 490
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 409
    const-string v0, "TwGLBurstMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public setPostCaptureProgressImage(Landroid/graphics/Bitmap;ILandroid/net/Uri;)V
    .locals 2
    .parameter "captureBitmap"
    .parameter "orientation"
    .parameter "uri"

    .prologue
    .line 636
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0, p1, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setCaptureProgressIncreased(Landroid/graphics/Bitmap;Landroid/net/Uri;I)V

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 639
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 422
    return-void
.end method

.method public setSizeForOrientation()V
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 626
    :goto_0
    return-void

    .line 617
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_WIDTH:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    goto :goto_0

    .line 622
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_WIDTH:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    goto :goto_0

    .line 614
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showBestGroupHighlight()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 689
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    .line 691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 692
    .local v1, dateTaken:J
    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v7, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, address:Ljava/lang/String;
    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 696
    .local v6, mTempName:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v7

    if-nez v7, :cond_0

    .line 697
    sget-object v3, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 702
    .local v3, directory:Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 705
    .local v5, mResultName:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 706
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "com.arcsoft.picturesbest.app"

    const-string v8, "com.arcsoft.picturesbest.app.ArcPicturesBestActivity"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    const-string v7, "TwGLBurstMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Burst Orientation1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v9

    mul-int/lit8 v9, v9, 0x5a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string v7, "TwGLBurstMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Burst ResultFilePath:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v7, "Camera-BestPose"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 714
    const-string v7, "from-Camera"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 715
    const-string v7, "FilePath1"

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    const-string v7, "FilePath2"

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    const-string v7, "FilePath3"

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    const-string v7, "FilePath4"

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    const-string v7, "FilePath5"

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string v7, "ResultFilePath"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    const-string v7, "Orientation"

    iget-object v8, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v8

    mul-int/lit8 v8, v8, 0x5a

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 725
    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v8, 0x7d7

    invoke-virtual {v7, v4, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 726
    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/high16 v8, 0x7f04

    const v9, 0x7f040001

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->overridePendingTransition(II)V

    .line 727
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 728
    return-void

    .line 699
    .end local v3           #directory:Ljava/lang/String;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #mResultName:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v3       #directory:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public showCaptureLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 475
    sget-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MODE:Z

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 482
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestGroupMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hidePostCaptureLayout()V

    .line 486
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 322
    return-void
.end method

.method public showHighlight()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 675
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    .line 677
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 678
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.miui.gallery"

    const-string v2, "com.miui.gallery.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicNum:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->getUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 681
    const-string v1, "Camera-BestPic"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 682
    const-string v1, "from-Camera"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 683
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 684
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 686
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 446
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 453
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 454
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestGroupMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 461
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public startCancelTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 378
    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 387
    const-string v0, "TwGLBurstMenu"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 391
    :cond_0
    return-void
.end method

.method public storeBurstStrings([B)V
    .locals 31
    .parameter "data"

    .prologue
    .line 738
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 739
    .local v22, mTemp:Ljava/lang/String;
    const-string v3, "jpeg"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v3, :cond_0

    .line 746
    new-instance v20, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "jpeg"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 747
    .local v20, mFilePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 750
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 751
    .local v15, fromPix:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    .line 753
    .local v19, mFileName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 754
    .local v10, dateTaken:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 756
    .local v8, address:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestGroupMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 757
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    invoke-static {v10, v11, v3, v4}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 760
    .local v23, mTempName:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/Camera;->setLastCapturedTitle(Ljava/lang/String;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    if-nez v3, :cond_3

    .line 764
    sget-object v12, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 769
    .local v12, directory:Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 771
    .local v21, mTargetName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 772
    .local v9, bMove:Z
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestGroupMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPosepCount:I

    add-int/lit8 v29, v4, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPosepCount:I

    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v29, v3, v4

    goto/16 :goto_0

    .line 759
    .end local v9           #bMove:Z
    .end local v12           #directory:Ljava/lang/String;
    .end local v21           #mTargetName:Ljava/lang/String;
    .end local v23           #mTempName:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    invoke-static {v10, v11, v8, v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .restart local v23       #mTempName:Ljava/lang/String;
    goto :goto_1

    .line 766
    :cond_3
    sget-object v12, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v12       #directory:Ljava/lang/String;
    goto :goto_2

    .line 779
    .restart local v9       #bMove:Z
    .restart local v21       #mTargetName:Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_7

    .line 781
    new-instance v28, Landroid/content/ContentValues;

    const/16 v3, 0x8

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 782
    .local v28, values:Landroid/content/ContentValues;
    const-string v3, "title"

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v3, "_display_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v29, ".jpg"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v3, "datetaken"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 789
    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v3, "orientation"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->calculateOrientationForPicture(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 791
    const-string v3, "_data"

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v3, "height"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 793
    const-string v3, "width"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGpsLocation()Landroid/location/Location;

    move-result-object v18

    .line 796
    .local v18, loc:Landroid/location/Location;
    if-eqz v18, :cond_5

    .line 797
    const-string v3, "latitude"

    invoke-virtual/range {v18 .. v18}, Landroid/location/Location;->getLatitude()D

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 798
    const-string v3, "longitude"

    invoke-virtual/range {v18 .. v18}, Landroid/location/Location;->getLongitude()D

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 805
    :cond_5
    const-string v3, "date_modified"

    const-wide/16 v29, 0x3e8

    div-long v29, v10, v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 818
    const/4 v14, 0x0

    .line 821
    .local v14, fileUri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v28

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 830
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".jpg"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v4, v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v29

    move-wide/from16 v0, v29

    invoke-static {v3, v14, v0, v1}, Lcom/sec/android/app/camera/ImageSavingUtils;->setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    .line 832
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v14}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v3, :cond_6

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v29, "com.android.camera.NEW_PICTURE"

    move-object/from16 v0, v29

    invoke-direct {v4, v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    .end local v14           #fileUri:Landroid/net/Uri;
    .end local v18           #loc:Landroid/location/Location;
    .end local v28           #values:Landroid/content/ContentValues;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    if-ne v3, v4, :cond_0

    .line 886
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-static/range {v21 .. v21}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->calculateOrientationForPicture(I)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/app/camera/Camera;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_0

    .line 845
    .restart local v14       #fileUri:Landroid/net/Uri;
    .restart local v18       #loc:Landroid/location/Location;
    .restart local v28       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v26

    .line 846
    .local v26, sfe:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "TwGLBurstMenu"

    const-string v4, "Not enough space in database"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f0900ec

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 850
    .end local v14           #fileUri:Landroid/net/Uri;
    .end local v18           #loc:Landroid/location/Location;
    .end local v26           #sfe:Landroid/database/sqlite/SQLiteFullException;
    .end local v28           #values:Landroid/content/ContentValues;
    :cond_7
    const-string v3, "TwGLBurstMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "storeBurstStrings moving failed trying to copy. "

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 852
    .local v27, sourceFile:Ljava/io/File;
    const/16 v16, 0x0

    .line 853
    .local v16, input:Ljava/io/FileInputStream;
    const/16 v24, 0x0

    .line 854
    .local v24, output:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 855
    .local v2, fcin:Ljava/nio/channels/FileChannel;
    const/4 v7, 0x0

    .line 858
    .local v7, fcout:Ljava/nio/channels/FileChannel;
    :try_start_1
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 859
    .end local v16           #input:Ljava/io/FileInputStream;
    .local v17, input:Ljava/io/FileInputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    if-nez v3, :cond_8

    .line 860
    new-instance v25, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .end local v24           #output:Ljava/io/FileOutputStream;
    .local v25, output:Ljava/io/FileOutputStream;
    move-object/from16 v24, v25

    .line 864
    .end local v25           #output:Ljava/io/FileOutputStream;
    .restart local v24       #output:Ljava/io/FileOutputStream;
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 865
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 867
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    .line 868
    .local v5, size:J
    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 877
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 878
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 879
    :catch_1
    move-exception v3

    goto/16 :goto_3

    .line 862
    .end local v5           #size:J
    :cond_8
    :try_start_4
    new-instance v25, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .end local v24           #output:Ljava/io/FileOutputStream;
    .restart local v25       #output:Ljava/io/FileOutputStream;
    move-object/from16 v24, v25

    .end local v25           #output:Ljava/io/FileOutputStream;
    .restart local v24       #output:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 870
    .end local v17           #input:Ljava/io/FileInputStream;
    .restart local v16       #input:Ljava/io/FileInputStream;
    :catch_2
    move-exception v13

    .line 872
    .local v13, e:Ljava/lang/Exception;
    :goto_5
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 873
    const-string v3, "TwGLBurstMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "storeBurstStrings copying failed "

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 877
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 878
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_3

    .line 879
    :catch_3
    move-exception v3

    goto/16 :goto_3

    .line 876
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 877
    :goto_6
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 878
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 881
    :goto_7
    throw v3

    .line 879
    :catch_4
    move-exception v4

    goto :goto_7

    .line 876
    .end local v16           #input:Ljava/io/FileInputStream;
    .restart local v17       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object/from16 v16, v17

    .end local v17           #input:Ljava/io/FileInputStream;
    .restart local v16       #input:Ljava/io/FileInputStream;
    goto :goto_6

    .line 870
    .end local v16           #input:Ljava/io/FileInputStream;
    .restart local v17       #input:Ljava/io/FileInputStream;
    :catch_5
    move-exception v13

    move-object/from16 v16, v17

    .end local v17           #input:Ljava/io/FileInputStream;
    .restart local v16       #input:Ljava/io/FileInputStream;
    goto :goto_5
.end method
