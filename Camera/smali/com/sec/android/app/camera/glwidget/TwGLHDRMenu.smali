.class public Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLHDRMenu.java"


# static fields
.field private static HDRSHOT_POPUP_GROUP_HEIGHT:F

.field private static HDRSHOT_POPUP_GROUP_WIDTH:F

.field private static HDRSHOT_POPUP_GROUP_X:F

.field private static HDRSHOT_POPUP_GROUP_Y:F

.field private static HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

.field private static HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

.field private static HDRSHOT_PROGRESSBAR_HEIGHT:F

.field private static HDRSHOT_PROGRESSBAR_WIDTH:F

.field private static HDRSHOT_PROGRESSBAR_X:F

.field private static HDRSHOT_PROGRESSBAR_Y:F

.field private static HDRSHOT_PROGRESS_TEXT_HEIGHT:F

.field private static HDRSHOT_PROGRESS_TEXT_SIZE:F

.field private static HDRSHOT_PROGRESS_TEXT_WIDTH:F

.field private static HDRSHOT_PROGRESS_TEXT_X:F

.field private static HDRSHOT_PROGRESS_TEXT_Y:F

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_WIDTH:F


# instance fields
.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mProgressText:Lcom/sec/android/glview/TwGLText;

.field private mSideMenuHidden:Z

.field private mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    const v0, 0x7f06014e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_X:F

    .line 38
    const v0, 0x7f06014f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_Y:F

    .line 39
    const v0, 0x7f060150

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_WIDTH:F

    .line 40
    const v0, 0x7f060151

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_HEIGHT:F

    .line 41
    const v0, 0x7f060162

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_X:F

    .line 42
    const v0, 0x7f060164

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_Y:F

    .line 43
    const v0, 0x7f060165

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_WIDTH:F

    .line 44
    const v0, 0x7f060166

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_HEIGHT:F

    .line 45
    const v0, 0x7f080020

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_SIZE:F

    .line 46
    const v0, 0x7f060154

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_WIDTH:F

    .line 47
    const v0, 0x7f060155

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_HEIGHT:F

    .line 48
    const v0, 0x7f06015f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_X:F

    .line 49
    const v0, 0x7f060160

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_Y:F

    .line 50
    new-array v0, v4, [F

    const v1, 0x7f060167

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f060168

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    .line 52
    new-array v0, v4, [F

    const v1, 0x7f060169

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f06016a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    .line 55
    const v0, 0x7f06016b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    .line 56
    const v0, 0x7f06016c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    .line 57
    const v0, 0x7f06006d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const v1, 0x7f06008b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_X:F

    .line 58
    const v0, 0x7f06006e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_Y:F

    .line 59
    const v0, 0x7f080021

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_SIZE:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 71
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mSideMenuHidden:Z

    .line 73
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 75
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

    .line 78
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_HEIGHT:F

    const v6, 0x7f02027e

    const v7, 0x7f02027d

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 80
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    const v6, 0x7f0900d2

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setCaptureEnabled(Z)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setTouchHandled(Z)V

    .line 100
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->init()V

    .line 101
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/high16 v6, 0x4000

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020278

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_X:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLProgressBar;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x7f06006e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_Y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v4

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    const v2, 0x7f060072

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x7f060071

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    const v3, 0x7f060072

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 127
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->resetAcquisitionProgress()V

    .line 128
    return-void
.end method


# virtual methods
.method public getProgressValue()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 140
    :cond_0
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 190
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 155
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hideHelpText()V

    .line 149
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 204
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 206
    const/4 v0, 0x1

    .line 210
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
    .line 214
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 216
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->resetAcquisitionProgress()V

    .line 233
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->reset()V

    .line 237
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showHelpText()V

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    .line 145
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    .line 226
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setTouchHandled(Z)V

    .line 163
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mSideMenuHidden:Z

    .line 164
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .parameter "nProgress"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 170
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mSideMenuHidden:Z

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setTouchHandled(Z)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 175
    :cond_0
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 179
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 183
    return-void
.end method

.method public setRederingProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 201
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 134
    :cond_0
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hideHelpText()V

    .line 197
    return-void
.end method
