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
.field private mHDRPicMode:Z

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

    .line 44
    const v0, 0x7f060153

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_X:F

    .line 45
    const v0, 0x7f060154

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_Y:F

    .line 46
    const v0, 0x7f060155

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_WIDTH:F

    .line 47
    const v0, 0x7f060156

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_HEIGHT:F

    .line 48
    const v0, 0x7f060167

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_X:F

    .line 49
    const v0, 0x7f060169

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_Y:F

    .line 50
    const v0, 0x7f06016a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_WIDTH:F

    .line 51
    const v0, 0x7f06016b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_HEIGHT:F

    .line 52
    const v0, 0x7f080021

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_SIZE:F

    .line 53
    const v0, 0x7f060159

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_WIDTH:F

    .line 54
    const v0, 0x7f06015a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_HEIGHT:F

    .line 55
    const v0, 0x7f060164

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_X:F

    .line 56
    const v0, 0x7f060165

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_Y:F

    .line 57
    new-array v0, v4, [F

    const v1, 0x7f06016c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f06016d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    .line 59
    new-array v0, v4, [F

    const v1, 0x7f06016e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f06016f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    .line 62
    const v0, 0x7f060170

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    .line 63
    const v0, 0x7f060171

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    .line 64
    const v0, 0x7f060072

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const v1, 0x7f060090

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_X:F

    .line 65
    const v0, 0x7f060073

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_Y:F

    .line 66
    const v0, 0x7f080022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_SIZE:F

    .line 68
    const v0, 0x7f06024e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_WIDTH:I

    .line 69
    const v0, 0x7f06024f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_HEIGHT:I

    .line 70
    const v0, 0x7f060258

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_TEXT_SIZE:I

    .line 72
    new-array v0, v6, [F

    const v1, 0x7f060250

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f060251

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f060252

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f060253

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_X:[F

    .line 78
    new-array v0, v6, [F

    const v1, 0x7f060254

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f060255

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f060256

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f060257

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_Y:[F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 97
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mSideMenuHidden:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRPicMode:Z

    .line 99
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 101
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_HEIGHT:F

    const v6, 0x7f09000b

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 104
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_HEIGHT:F

    const v6, 0x7f02029a

    const v7, 0x7f020299

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 106
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    const v6, 0x7f0900d3

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 108
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020052

    const v7, 0x7f020053

    const v8, 0x7f020053

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f090168

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

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setCaptureEnabled(Z)V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setTouchHandled(Z)V

    .line 136
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->init()V

    .line 137
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x4000

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020294

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_X:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLProgressBar;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x7f060073

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_Y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v4

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    const v2, 0x7f060077

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x7f060076

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    const v3, 0x7f060077

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_X:[F

    aget v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_Y:[F

    aget v2, v2, v4

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_X:[F

    aget v1, v1, v5

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_Y:[F

    aget v2, v2, v5

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_X:[F

    aget v1, v1, v6

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_Y:[F

    aget v2, v2, v6

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->resetAcquisitionProgress()V

    .line 168
    return-void
.end method


# virtual methods
.method public getProgressValue()I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 180
    :cond_0
    return-void
.end method

.method public hideModeButton()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 247
    :cond_0
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 209
    :cond_0
    return-void
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

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_2

    .line 304
    const-string v0, "TwGLHDRMenu"

    const-string v3, "mHDRmodeButton clicked Change mode"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRPicMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRPicMode:Z

    .line 306
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRPicMode:Z

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->setHDRShotModeChanged(I)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090168

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_TEXT_SIZE:I

    int-to-float v4, v4

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 315
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 305
    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setHDRShotModeChanged(I)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090169

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_TEXT_SIZE:I

    int-to-float v4, v4

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 315
    goto :goto_1
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hideHelpText()V

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hideModeButton()V

    .line 203
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 262
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 264
    const/4 v0, 0x1

    .line 268
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
    .line 272
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 274
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->resetAcquisitionProgress()V

    .line 291
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->reset()V

    .line 295
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showHelpText()V

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showModeButton()V

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    .line 198
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 283
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    .line 284
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setTouchHandled(Z)V

    .line 217
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mSideMenuHidden:Z

    .line 218
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .parameter "nProgress"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 224
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mSideMenuHidden:Z

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setTouchHandled(Z)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 229
    :cond_0
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 233
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 237
    return-void
.end method

.method public setRederingProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 259
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 174
    :cond_0
    return-void
.end method

.method public showModeButton()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 186
    :cond_0
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 253
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hideHelpText()V

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hideModeButton()V

    .line 255
    return-void
.end method
