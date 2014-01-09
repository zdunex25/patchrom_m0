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

.field private static BURST_PROGRESS_X:I = 0x0

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
.field private mBestPicButton:Lcom/sec/android/glview/TwGLButton;

.field private mBestPicMode:Z

.field private mBestPicNum:I

.field private mBestPicText:Lcom/sec/android/glview/TwGLText;

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

    .line 73
    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    .line 74
    const/16 v0, 0x14

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    .line 75
    sput-boolean v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MODE:Z

    .line 77
    const/16 v0, 0x19

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_PROGRESS_X:I

    .line 87
    new-array v0, v6, [I

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

    const v1, 0x7f060159

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f06015a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_X:[I

    .line 89
    new-array v0, v6, [I

    const v1, 0x7f06015b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f06015c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f06015d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f06015e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_Y:[I

    .line 91
    new-array v0, v4, [I

    const v1, 0x7f060152

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f060153

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_WIDTH:[I

    .line 92
    const v0, 0x7f060155

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_BAR_HEIGHT:I

    .line 93
    const v0, 0x7f060156

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_HEIGHT:I

    .line 94
    const v0, 0x7f080020

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESSBAR_TEXT_SIZE:F

    .line 95
    const v0, 0x7f060161

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESSBAR_TEXT_INTERVAL:I

    .line 96
    const v0, 0x7f06016b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_WIDTH:I

    .line 97
    const v0, 0x7f06016c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_HEIGHT:I

    .line 98
    new-array v0, v6, [I

    const v1, 0x7f06016d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f06016e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f06016f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f060170

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_X:[I

    .line 100
    new-array v0, v6, [I

    const v1, 0x7f060171

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f060172

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f060173

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f060174

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_Y:[I

    .line 102
    const v0, 0x7f080021

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_SIZE:F

    .line 103
    new-array v0, v6, [I

    const v1, 0x7f06019a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f06019b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f06019c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f06019d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    .line 105
    new-array v0, v6, [I

    const v1, 0x7f06019e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f06019f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0601a0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0601a1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    .line 107
    const v0, 0x7f0601a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_WIDTH:I

    .line 108
    const v0, 0x7f0601a3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_HEIGHT:I

    .line 109
    const v0, 0x7f0601a4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_RESULT_TEXT_POS_X:F

    .line 110
    const v0, 0x7f0601a8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_RESULT_TEXT_POS_Y:F

    .line 111
    const v0, 0x7f060150

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_RESULT_TEXT_WIDTH:I

    .line 112
    const v0, 0x7f060151

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_RESULT_TEXT_HEIGHT:I

    .line 113
    const v0, 0x7f060162

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_X:I

    .line 114
    const v0, 0x7f060164

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_Y:I

    .line 115
    const v0, 0x7f060165

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_WIDTH:I

    .line 116
    const v0, 0x7f060166

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_HEIGHT:I

    .line 117
    const v0, 0x7f080020

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_TEXT_SIZE:F

    .line 118
    const v0, 0x7f0601b0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_X:I

    .line 119
    const v0, 0x7f0601b1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_Y:I

    .line 120
    const v0, 0x7f060154

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_WIDTH:I

    .line 121
    const v0, 0x7f060155

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_HEIGHT:I

    .line 122
    new-array v0, v4, [F

    const v1, 0x7f0601b2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0601b3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    .line 124
    new-array v0, v4, [F

    const v1, 0x7f0601b4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0601b5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    .line 126
    const v0, 0x7f0601b7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->Best_Pic_Icon_WIDTH:I

    .line 127
    const v0, 0x7f0601b8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->Best_Pic_Icon_HEIGHT:I

    .line 128
    const v0, 0x7f0601b6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->Best_Pic_Icon_TEXT:I

    .line 129
    new-array v0, v6, [I

    const v1, 0x7f0601b9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0601ba

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0601bb

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0601bc

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_X:[I

    .line 131
    new-array v0, v6, [I

    const v1, 0x7f0601bd

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0601be

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0601bf

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0601c0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_Y:[I

    .line 133
    new-array v0, v6, [I

    const v1, 0x7f0601c1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0601c2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0601c3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0601c4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_X:[I

    .line 135
    new-array v0, v6, [I

    const v1, 0x7f0601c5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0601c6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0601c7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0601c8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_Y:[I

    .line 140
    const v0, 0x7f0601b7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_PIC_BUTTON_WIDTH:I

    .line 141
    const v0, 0x7f0601b8

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
    .line 187
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

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicNum:I

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    .line 162
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setCaptureEnabled(Z)V

    .line 191
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

    const v7, 0x7f02027e

    const v8, 0x7f02027d

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESSBAR_TEXT_INTERVAL:I

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESSBAR_TEXT_SIZE:F

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFIIIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 194
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

    const v6, 0x7f0900d3

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 197
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

    .line 200
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

    .line 203
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

    const v6, 0x7f02027e

    const v7, 0x7f02027d

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 205
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

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

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    .line 208
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

    .line 212
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

    const v6, 0x7f09012b

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->Best_Pic_Icon_TEXT:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f09012d

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

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setRotatable(Z)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setBypassTouch(Z)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 237
    sget-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MODE:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLProgressBar;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 256
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->init()V

    .line 258
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScannerClient:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;

    .line 259
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
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

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020278

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setLeftTop(IFF)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setLeftTop(IFF)V

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setLeftTop(IFF)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_X:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLProgressBar;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x7f06006e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_Y:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v4

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 299
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 304
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 305
    return-void

    .line 302
    :cond_0
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
    .line 912
    move v0, p1

    .line 913
    .local v0, rotation:I
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_1

    .line 914
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 915
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    .line 922
    :cond_1
    :goto_0
    return v0

    .line 917
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 918
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 311
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    .line 313
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 314
    return-void
.end method

.method public convertToExifInterfaceOrientation(I)I
    .locals 2
    .parameter "orientation"

    .prologue
    const/4 v0, 0x1

    .line 899
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_1

    .line 900
    const/4 v0, 0x6

    .line 908
    :cond_0
    :goto_0
    return v0

    .line 901
    :cond_1
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_2

    .line 902
    const/4 v0, 0x3

    goto :goto_0

    .line 903
    :cond_2
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_3

    .line 904
    const/16 v0, 0x8

    goto :goto_0

    .line 905
    :cond_3
    const/16 v1, 0x168

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_0

    goto :goto_0
.end method

.method public createDirForBurst()Z
    .locals 2

    .prologue
    .line 926
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    .line 928
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-nez v1, :cond_1

    .line 930
    new-instance v0, Ljava/io/File;

    const-string v1, "mnt/sdcard/DCIM"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 931
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 932
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 934
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #directory:Ljava/io/File;
    const-string v1, "mnt/sdcard/DCIM/Camera"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 935
    .restart local v0       #directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 936
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 939
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
    .line 666
    const/4 v0, 0x0

    .line 667
    .local v0, tempBitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, v4, v5, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 669
    return-object v0
.end method

.method public getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    return v0
.end method

.method public getPostCaptureProgress()I
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->getProgress()I

    move-result v0

    .line 410
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
    .line 418
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_0

    .line 419
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    .line 421
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getMax()I

    move-result v0

    goto :goto_0
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 456
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 321
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 426
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 433
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 434
    return-void

    .line 430
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

    .line 836
    iget-boolean v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-nez v10, :cond_1

    .line 837
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->interruptProcessforBurstShots()Z

    move-result v8

    .line 895
    :cond_0
    :goto_0
    return v8

    .line 842
    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v10

    if-nez v10, :cond_5

    .line 843
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

    .line 848
    .local v3, fromBestpic:Ljava/io/File;
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 851
    const/4 v0, 0x0

    .line 855
    .local v0, bMove:Z
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v4, v10

    .line 856
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

    .line 862
    :cond_2
    if-lez v4, :cond_3

    .line 863
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v4, v10

    .line 864
    if-nez v4, :cond_6

    .line 887
    :cond_3
    if-eqz v0, :cond_4

    .line 889
    const-string v7, "bucket_id = ?"

    .line 890
    .local v7, mWhereClause:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 891
    .local v1, bucketId:I
    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v12, v9, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-virtual {v10, v11, v7, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 893
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .end local v1           #bucketId:I
    .end local v7           #mWhereClause:Ljava/lang/String;
    :cond_4
    move v8, v9

    .line 895
    goto :goto_0

    .line 845
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

    .line 857
    .restart local v0       #bMove:Z
    :catch_0
    move-exception v2

    .line 858
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v9, "TwGLBurstMenu"

    const-string v10, "directory is not valid, so return."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 866
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v4       #i:I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    .line 868
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 869
    .local v5, mFilePath:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const-string v11, "_bestshot"

    invoke-virtual {v5, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v6, v10, v8, v11}, Ljava/lang/String;-><init>([BII)V

    .line 870
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

    .line 871
    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v10

    if-nez v10, :cond_8

    .line 872
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

    .line 874
    if-eqz v0, :cond_7

    .line 875
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

    .line 882
    :cond_7
    :goto_2
    if-nez v0, :cond_2

    .line 883
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

    .line 877
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

    .line 879
    if-eqz v0, :cond_7

    .line 880
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
    .line 815
    const/4 v1, 0x0

    .line 816
    .local v1, mDelete:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    if-gt v0, v3, :cond_4

    .line 817
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    .line 818
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    if-nez v3, :cond_1

    .line 819
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

    .line 827
    .local v2, mFile:Ljava/io/File;
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 828
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 816
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
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

    .line 823
    .end local v2           #mFile:Ljava/io/File;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    if-nez v3, :cond_3

    .line 824
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

    .line 826
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

    .line 832
    .end local v2           #mFile:Ljava/io/File;
    :cond_4
    return v1
.end method

.method public isBestPicMode()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    return v0
.end method

.method public isBurstCapturing()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    return v0
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x1

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    if-lez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;->onBurstCaptureCancelled()V

    .line 326
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

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

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_2

    .line 623
    const-string v0, "TwGLBurstMenu"

    const-string v3, "mBestPicButton clicked Change mode"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->onBurstModeChanged(Z)V

    .line 626
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    .line 628
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f09012c

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->Best_Pic_Icon_TEXT:I

    int-to-float v4, v4

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 633
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 634
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 637
    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 624
    goto :goto_0

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f09012d

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

    .line 637
    goto :goto_2
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 340
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

    .line 476
    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    const/16 v2, 0x17

    if-ne p1, v2, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v1

    .line 480
    :cond_1
    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-ne p1, v2, :cond_4

    .line 481
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v2

    if-gtz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_4

    .line 482
    :cond_3
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - block zoom function."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 487
    :cond_4
    if-eq p1, v3, :cond_5

    if-ne p1, v4, :cond_7

    .line 488
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v2

    if-lez v2, :cond_6

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v2, :cond_6

    .line 489
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

    .line 491
    :cond_6
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v2, :cond_7

    .line 492
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - Now Burst capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    :cond_7
    if-ne p1, v3, :cond_8

    .line 498
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_8

    .line 499
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - Now Burst capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 503
    :cond_8
    if-ne p1, v4, :cond_c

    .line 504
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 505
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - BEST_MAX_IMAGE_COUNT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 507
    :cond_9
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_a

    .line 508
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - Now Burst capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 512
    :cond_a
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mOrientation:I

    mul-int/lit8 v1, v1, 0x5a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    .line 513
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-nez v1, :cond_c

    .line 515
    new-instance v0, Ljava/io/File;

    const-string v1, "mnt/sdcard/DCIM"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    .line 517
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 519
    :cond_b
    new-instance v0, Ljava/io/File;

    .end local v0           #directory:Ljava/io/File;
    const-string v1, "mnt/sdcard/DCIM/Camera"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 520
    .restart local v0       #directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    .line 521
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 528
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

    .line 532
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_2

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v1

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v1, :cond_2

    .line 534
    :cond_1
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyDown - block zoom function."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :goto_0
    return v0

    .line 539
    :cond_2
    if-eq p1, v2, :cond_3

    if-ne p1, v3, :cond_5

    .line 540
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v1

    if-lez v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v1, :cond_4

    .line 541
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

    .line 543
    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v1, :cond_5

    .line 544
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyUp - Now Burst capturing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    :cond_5
    if-ne p1, v2, :cond_6

    .line 550
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v1, :cond_6

    .line 551
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyUp - Now Burst capturing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 556
    :cond_6
    if-ne p1, v3, :cond_7

    .line 557
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 558
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyUp - BEST_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 563
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 609
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mOrientation:I

    .line 610
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setSizeForOrientation()V

    .line 611
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 567
    const-string v0, "TwGLBurstMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v0, :cond_1

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onBurstCaptureCancelled()V

    .line 570
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 572
    :cond_1
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showCaptureLayout()V

    .line 336
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 575
    const-string v0, "TwGLBurstMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->stopCancelTimer()V

    .line 577
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 343
    const-string v0, "TwGLBurstMenu"

    const-string v1, "Burstshot restart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->resetProgressBar()V

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 350
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    .line 351
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    .line 352
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setTouchHandled(Z)V

    .line 353
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->stopCancelTimer()V

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideStatusIcon()V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showCaptureLayout()V

    .line 363
    return-void
.end method

.method public restartCancelTimer()V
    .locals 2

    .prologue
    .line 374
    const-string v0, "TwGLBurstMenu"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->stopCancelTimer()V

    .line 376
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->startCancelTimer()V

    .line 377
    return-void
.end method

.method public setBestPic(I)V
    .locals 0
    .parameter "bestpicNum"

    .prologue
    .line 642
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicNum:I

    .line 643
    return-void
.end method

.method public setBestPicMode(Z)V
    .locals 2
    .parameter "bestPicMode"

    .prologue
    .line 646
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    .line 647
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onBurstModeChanged(Z)V

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 649
    return-void
.end method

.method public setBurstCapturing(Z)V
    .locals 0
    .parameter "capture"

    .prologue
    .line 588
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    .line 589
    return-void
.end method

.method public setCaptureProgressIncreased()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 387
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-nez v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setTouchHandled(Z)V

    goto :goto_0
.end method

.method public setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 472
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    .line 473
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 402
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

    .line 404
    return-void
.end method

.method public setPostCaptureProgressImage(Landroid/graphics/Bitmap;ILandroid/net/Uri;)V
    .locals 2
    .parameter "captureBitmap"
    .parameter "orientation"
    .parameter "uri"

    .prologue
    .line 615
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 616
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0, p1, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setCaptureProgressIncreased(Landroid/graphics/Bitmap;Landroid/net/Uri;I)V

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 618
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 415
    return-void
.end method

.method public setSizeForOrientation()V
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 605
    :goto_0
    return-void

    .line 596
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_WIDTH:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    .line 597
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    goto :goto_0

    .line 601
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_WIDTH:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->PROGRESS_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_PROGRESS_BAR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    goto :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showCaptureLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 460
    sget-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MODE:Z

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 468
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hidePostCaptureLayout()V

    .line 469
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 317
    return-void
.end method

.method public showHighlight()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 652
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    .line 654
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 655
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicNum:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->getUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 658
    const-string v1, "Camera-BestPic"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 659
    const-string v1, "from-Camera"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 660
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 661
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 662
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 663
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 437
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 444
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 445
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 446
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public startCancelTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 371
    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 380
    const-string v0, "TwGLBurstMenu"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    :cond_0
    return-void
.end method

.method public storeBurstStrings([B)V
    .locals 32
    .parameter "data"

    .prologue
    .line 673
    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 674
    .local v23, mTemp:Ljava/lang/String;
    const-string v3, "jpeg"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    new-instance v21, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "jpeg"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 679
    .local v21, mFilePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 682
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 683
    .local v15, fromPix:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    .line 685
    .local v20, mFileName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 686
    .local v10, dateTaken:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 687
    .local v8, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    invoke-static {v10, v11, v8, v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 689
    .local v24, mTempName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/Camera;->setLastCapturedTitle(Ljava/lang/String;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    if-nez v3, :cond_4

    .line 693
    sget-object v12, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 698
    .local v12, directory:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 700
    .local v22, mTargetName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 701
    .local v9, bMove:Z
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    .line 703
    if-eqz v9, :cond_5

    .line 705
    new-instance v29, Landroid/content/ContentValues;

    const/16 v3, 0x8

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 706
    .local v29, values:Landroid/content/ContentValues;
    const-string v3, "title"

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v3, "_display_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v30, ".jpg"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v3, "datetaken"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 713
    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v3, "orientation"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->calculateOrientationForPicture(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 715
    const-string v3, "_data"

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v3, "height"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 717
    const-string v3, "width"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGpsLocation()Landroid/location/Location;

    move-result-object v19

    .line 720
    .local v19, loc:Landroid/location/Location;
    if-eqz v19, :cond_2

    .line 721
    const-string v3, "latitude"

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLatitude()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 722
    const-string v3, "longitude"

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLongitude()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 725
    :cond_2
    const-string v3, "date_modified"

    const-wide/16 v30, 0x3e8

    div-long v30, v10, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 739
    const/4 v14, 0x0

    .line 742
    .local v14, fileUri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v29

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ".jpg"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v4, v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-static {v3, v14, v0, v1}, Lcom/sec/android/app/camera/ImageSavingUtils;->setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    .line 754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v14}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v3, :cond_3

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v30, "com.android.camera.NEW_PICTURE"

    move-object/from16 v0, v30

    invoke-direct {v4, v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 760
    :cond_3
    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.sec.android.cloudagent.ACTION_REQUEST_CAPTURED"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 761
    .local v16, i:Landroid/content/Intent;
    const-string v3, "LOCALPATH"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 765
    const-string v3, "TwGLBurstMenu"

    const-string v4, "Google drive: Camera auto upload"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    .end local v14           #fileUri:Landroid/net/Uri;
    .end local v16           #i:Landroid/content/Intent;
    .end local v19           #loc:Landroid/location/Location;
    .end local v29           #values:Landroid/content/ContentValues;
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    if-ne v3, v4, :cond_0

    .line 808
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-static/range {v22 .. v22}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->calculateOrientationForPicture(I)I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/app/camera/Camera;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_0

    .line 695
    .end local v9           #bMove:Z
    .end local v12           #directory:Ljava/lang/String;
    .end local v22           #mTargetName:Ljava/lang/String;
    :cond_4
    sget-object v12, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v12       #directory:Ljava/lang/String;
    goto/16 :goto_1

    .line 767
    .restart local v9       #bMove:Z
    .restart local v14       #fileUri:Landroid/net/Uri;
    .restart local v19       #loc:Landroid/location/Location;
    .restart local v22       #mTargetName:Ljava/lang/String;
    .restart local v29       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v27

    .line 768
    .local v27, sfe:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "TwGLBurstMenu"

    const-string v4, "Not enough space in database"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f0900ea

    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 772
    .end local v14           #fileUri:Landroid/net/Uri;
    .end local v19           #loc:Landroid/location/Location;
    .end local v27           #sfe:Landroid/database/sqlite/SQLiteFullException;
    .end local v29           #values:Landroid/content/ContentValues;
    :cond_5
    const-string v3, "TwGLBurstMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "storeBurstStrings moving failed trying to copy. "

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    .local v28, sourceFile:Ljava/io/File;
    const/16 v17, 0x0

    .line 775
    .local v17, input:Ljava/io/FileInputStream;
    const/16 v25, 0x0

    .line 776
    .local v25, output:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 777
    .local v2, fcin:Ljava/nio/channels/FileChannel;
    const/4 v7, 0x0

    .line 780
    .local v7, fcout:Ljava/nio/channels/FileChannel;
    :try_start_1
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 781
    .end local v17           #input:Ljava/io/FileInputStream;
    .local v18, input:Ljava/io/FileInputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    if-nez v3, :cond_6

    .line 782
    new-instance v26, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .end local v25           #output:Ljava/io/FileOutputStream;
    .local v26, output:Ljava/io/FileOutputStream;
    move-object/from16 v25, v26

    .line 786
    .end local v26           #output:Ljava/io/FileOutputStream;
    .restart local v25       #output:Ljava/io/FileOutputStream;
    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 787
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 789
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    .line 790
    .local v5, size:J
    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 799
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 800
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 801
    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 784
    .end local v5           #size:J
    :cond_6
    :try_start_4
    new-instance v26, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .end local v25           #output:Ljava/io/FileOutputStream;
    .restart local v26       #output:Ljava/io/FileOutputStream;
    move-object/from16 v25, v26

    .end local v26           #output:Ljava/io/FileOutputStream;
    .restart local v25       #output:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 792
    .end local v18           #input:Ljava/io/FileInputStream;
    .restart local v17       #input:Ljava/io/FileInputStream;
    :catch_2
    move-exception v13

    .line 794
    .local v13, e:Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 795
    const-string v3, "TwGLBurstMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "storeBurstStrings copying failed "

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 799
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 800
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    .line 801
    :catch_3
    move-exception v3

    goto/16 :goto_2

    .line 798
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 799
    :goto_5
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 800
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 803
    :goto_6
    throw v3

    .line 801
    :catch_4
    move-exception v4

    goto :goto_6

    .line 798
    .end local v17           #input:Ljava/io/FileInputStream;
    .restart local v18       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object/from16 v17, v18

    .end local v18           #input:Ljava/io/FileInputStream;
    .restart local v17       #input:Ljava/io/FileInputStream;
    goto :goto_5

    .line 792
    .end local v17           #input:Ljava/io/FileInputStream;
    .restart local v18       #input:Ljava/io/FileInputStream;
    :catch_5
    move-exception v13

    move-object/from16 v17, v18

    .end local v18           #input:Ljava/io/FileInputStream;
    .restart local v17       #input:Ljava/io/FileInputStream;
    goto :goto_4
.end method
