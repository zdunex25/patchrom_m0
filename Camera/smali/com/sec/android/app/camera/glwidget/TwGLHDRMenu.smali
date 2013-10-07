.class public Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLHDRMenu.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final HDRSHOT_BUTTON_HEIGHT:I = 0x0

.field private static final HDRSHOT_BUTTON_ICON_POS_X:[F = null

.field private static final HDRSHOT_BUTTON_ICON_POS_Y:[F = null

#the value of this static final field might be set in the static constructor
.field private static final HDRSHOT_BUTTON_TEXT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HDRSHOT_BUTTON_WIDTH:I = 0x0

.field private static HDRSHOT_POPUP_GROUP_HEIGHT:F = 0.0f

.field private static HDRSHOT_POPUP_GROUP_WIDTH:F = 0.0f

.field private static HDRSHOT_POPUP_GROUP_X:F = 0.0f

.field private static HDRSHOT_POPUP_GROUP_Y:F = 0.0f

.field private static HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F = null

.field private static HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F = null

.field private static HDRSHOT_PROGRESSBAR_HEIGHT:F = 0.0f

.field private static HDRSHOT_PROGRESSBAR_WIDTH:F = 0.0f

.field private static HDRSHOT_PROGRESSBAR_X:F = 0.0f

.field private static HDRSHOT_PROGRESSBAR_Y:F = 0.0f

.field private static HDRSHOT_PROGRESS_TEXT_HEIGHT:F = 0.0f

.field private static HDRSHOT_PROGRESS_TEXT_SIZE:F = 0.0f

.field private static HDRSHOT_PROGRESS_TEXT_WIDTH:F = 0.0f

.field private static HDRSHOT_PROGRESS_TEXT_X:F = 0.0f

.field private static HDRSHOT_PROGRESS_TEXT_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_POS_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_POS_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_SIZE:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_WIDTH:F = 0.0f

.field protected static final TAG:Ljava/lang/String; = "TwGLHDRMenu"


# instance fields
.field private final HDR_LEVEL_NORMAL:I

.field private final HDR_LEVEL_STRONG:I

.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mHDRMode:I

.field private mHDRText:[I

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mModeButton:Lcom/sec/android/glview/TwGLButton;

.field private mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mProgressText:Lcom/sec/android/glview/TwGLText;

.field private mSideMenuHidden:Z

.field private mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    const v0, 0x7f070185

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_X:F

    .line 47
    const v0, 0x7f070186

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_Y:F

    .line 48
    const v0, 0x7f070187

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_WIDTH:F

    .line 49
    const v0, 0x7f070188

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_HEIGHT:F

    .line 50
    const v0, 0x7f070199

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_X:F

    .line 51
    const v0, 0x7f07019b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_Y:F

    .line 52
    const v0, 0x7f07019c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_WIDTH:F

    .line 53
    const v0, 0x7f07019d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_HEIGHT:F

    .line 54
    const v0, 0x7f080025

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_SIZE:F

    .line 55
    const v0, 0x7f07018b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_WIDTH:F

    .line 56
    const v0, 0x7f07018c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_HEIGHT:F

    .line 57
    const v0, 0x7f070196

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_X:F

    .line 58
    const v0, 0x7f070197

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_Y:F

    .line 59
    new-array v0, v4, [F

    const v1, 0x7f07019e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f07019f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    .line 61
    new-array v0, v4, [F

    const v1, 0x7f0701a0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0701a1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    .line 64
    const v0, 0x7f0701a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    .line 65
    const v0, 0x7f0701a3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    .line 66
    const v0, 0x7f07009a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const v1, 0x7f0700b8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_X:F

    .line 67
    const v0, 0x7f07009b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_Y:F

    .line 68
    const v0, 0x7f080026

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_SIZE:F

    .line 70
    const v0, 0x7f070200

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_WIDTH:I

    .line 71
    const v0, 0x7f070201

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_HEIGHT:I

    .line 72
    const v0, 0x7f07020a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_TEXT_SIZE:I

    .line 74
    new-array v0, v6, [F

    const v1, 0x7f070202

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f070203

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f070204

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f070205

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_X:[F

    .line 80
    new-array v0, v6, [F

    const v1, 0x7f070206

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f070207

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f070208

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f070209

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_Y:[F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 104
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDR_LEVEL_NORMAL:I

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDR_LEVEL_STRONG:I

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mSideMenuHidden:Z

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRMode:I

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRText:[I

    .line 106
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 108
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 110
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_HEIGHT:F

    const v6, 0x7f09000d

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 113
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_HEIGHT:F

    const v6, 0x7f020247

    const v7, 0x7f020246

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 115
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    const v6, 0x7f0900da

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 117
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    const v4, 0x7f02000c

    const v5, 0x7f02000d

    const v6, 0x7f02000d

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_HEIGHT:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f090188

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    const/16 v3, 0x88

    const/16 v4, 0xa0

    const/16 v5, 0xb9

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setCaptureEnabled(Z)V

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setTouchHandled(Z)V

    .line 150
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->init()V

    .line 151
    return-void

    .line 100
    nop

    :array_0
    .array-data 0x4
        0x7ct 0x1t 0x9t 0x7ft
        0x7dt 0x1t 0x9t 0x7ft
    .end array-data
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x4000

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020241

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_X:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLProgressBar;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x7f07009b

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_Y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v4

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    const v2, 0x7f07009f

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x7f07009e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    const v3, 0x7f07009f

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_X:[F

    aget v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_Y:[F

    aget v2, v2, v4

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_X:[F

    aget v1, v1, v5

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_Y:[F

    aget v2, v2, v5

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_X:[F

    aget v1, v1, v6

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_Y:[F

    aget v2, v2, v6

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->resetAcquisitionProgress()V

    .line 182
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 316
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    .line 318
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 319
    return-void
.end method

.method public getHDRMode()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRMode:I

    return v0
.end method

.method public getProgressValue()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 194
    :cond_0
    return-void
.end method

.method public hideModeButton()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 258
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 223
    :cond_0
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 5
    .parameter "view"

    .prologue
    .line 346
    const/16 v1, 0x47

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 347
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 349
    const/4 v1, 0x1

    .line 351
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hideHelpText()V

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hideModeButton()V

    .line 217
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 273
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 275
    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 283
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 285
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->resetAcquisitionProgress()V

    .line 302
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->reset()V

    .line 306
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showHelpText()V

    .line 210
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showModeButton()V

    .line 211
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    .line 212
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 294
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    .line 295
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setTouchHandled(Z)V

    .line 231
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mSideMenuHidden:Z

    .line 232
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .parameter "nProgress"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 238
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mSideMenuHidden:Z

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setTouchHandled(Z)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 243
    :cond_0
    return-void
.end method

.method public setHDRMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    .line 360
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRMode:I

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRText:[I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRMode:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    const/16 v3, 0x88

    const/16 v4, 0xa0

    const/16 v5, 0xb9

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRText:[I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRMode:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 247
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 251
    return-void
.end method

.method public setRederingProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 270
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 188
    :cond_0
    return-void
.end method

.method public showModeButton()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 200
    :cond_0
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hideHelpText()V

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hideModeButton()V

    .line 266
    return-void
.end method
