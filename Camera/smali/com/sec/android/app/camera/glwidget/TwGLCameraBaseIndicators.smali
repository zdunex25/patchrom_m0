.class public Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCameraBaseIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final FACERECT_THICKNESS:I = 0x3

.field private static FOCUS_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FOCUS_BUTTON_POS_X_DELTA:I = 0x0

.field private static FOCUS_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FULL_SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FULL_SCREEN_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_ALIGNMENT:F = 0.0f

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
.field private static final INDICATOR_TEXT_SIZE:I = 0x0

.field private static final MAX_FACE_COUNT:I = 0xa

#the value of this static final field might be set in the static constructor
.field private static final PERCENTAGE_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final REMAIN_COUNTER_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SIDE_MENU_WIDTH:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLCameraBaseIndicators"

#the value of this static final field might be set in the static constructor
.field private static final VISIBLE_BATTERY_LEVEL:I = 0x0

.field private static final VISIBLE_REMAIN_COUNT:I = 0x12c


# instance fields
.field private mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

.field private mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

.field private mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

.field private mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

.field private mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

.field private mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

.field private mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

.field private mMatrixForFace:Landroid/graphics/Matrix;

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRect:Landroid/graphics/RectF;

.field private mRemainCount:I

.field private mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

.field private mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

.field private mTouchFocusRectCenterX:I

.field private mTouchFocusRectCenterY:I

.field private mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

.field private mWifiIndicator:Lcom/sec/android/glview/TwGLImage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f06006e

    const v2, 0x7f06006d

    .line 33
    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_WIDTH:I

    .line 34
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_HEIGHT:I

    .line 35
    const v0, 0x7f06008b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SIDE_MENU_WIDTH:I

    .line 37
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v1

    const v1, 0x7f0600aa

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    .line 38
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_HEIGHT:I

    const v1, 0x7f0600ad

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    .line 39
    const v0, 0x7f0600ac

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    .line 40
    const v0, 0x7f0600af

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_WIDTH:I

    .line 41
    const v0, 0x7f0600b1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    .line 42
    const v0, 0x7f08001f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_SIZE:I

    .line 43
    const v0, 0x7f0600b2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->REMAIN_COUNTER_WIDTH:I

    .line 44
    const v0, 0x7f0600b5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->PERCENTAGE_WIDTH:I

    .line 46
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_X:I

    .line 47
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    .line 49
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SIDE_MENU_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_X_DELTA:I

    .line 51
    const v0, 0x7f080002

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->VISIBLE_BATTERY_LEVEL:I

    .line 54
    const v0, 0x7f06016b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    .line 55
    const v0, 0x7f06016c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    .line 56
    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    .line 57
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    .line 58
    const v0, 0x7f080021

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIZE:F

    .line 59
    const v0, 0x7f060175

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_ALIGNMENT:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 8
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 87
    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 65
    new-array v0, v7, [Lcom/sec/android/glview/TwGLRectangle;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    .line 74
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    .line 76
    new-array v0, v7, [Lcom/sec/android/seccamera/SecCamera$Face;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    .line 80
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMatrixForFace:Landroid/graphics/Matrix;

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTouchHandled(Z)V

    .line 90
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->init()V

    .line 94
    return-void
.end method

.method private init()V
    .locals 13

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    .line 99
    .local v1, glContext:Lcom/sec/android/glview/TwGLContext;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 108
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    .line 113
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_HEIGHT:I

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v6, 0x7f0b0004

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->handleGuidelineSettingsChanged(I)V

    .line 119
    new-instance v0, Lcom/sec/android/glview/TwGLIndicator;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->setRotatable(Z)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SIDE_MENU_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SIDE_MENU_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getRemainStorage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    .line 126
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->REMAIN_COUNTER_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 129
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    .line 130
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    .line 131
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->PERCENTAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 134
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isVoiceInputSettingOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVisibility(I)V

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceStatus(I)V

    .line 142
    :goto_0
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setVisibility(I)V

    .line 146
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201fe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBatteryLevel()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isBatteryCharging()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setBatteryLevel(IZ)V

    .line 162
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRemainCount(I)V

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->initGPSIndicator()V

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setWifiDirectStatus()V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 174
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    const/16 v0, 0xa

    if-ge v10, v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    new-instance v2, Lcom/sec/android/glview/TwGLRectangle;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xff

    invoke-static {v8, v9, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x3

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    aput-object v2, v0, v10

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v10

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v2, v2, v10

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 174
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 139
    .end local v10           #i:I
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVisibility(I)V

    goto/16 :goto_0

    .line 180
    .restart local v10       #i:I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 182
    new-instance v2, Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v8, 0x7f09012f

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIZE:F

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SIDE_MENU_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const v4, 0x7f060072

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    const v3, 0x7f060071

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_ALIGNMENT:F

    sub-float/2addr v3, v4

    const v4, 0x7f060072

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    add-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 197
    return-void
.end method


# virtual methods
.method protected ChangeGPS(I)V
    .locals 3
    .parameter "modeid"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    if-nez v0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 533
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 535
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    .line 538
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 215
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 217
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    .line 218
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    .line 220
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 221
    return-void
.end method

.method public declared-synchronized doesFaceRectContainsThisPoint(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8
    .parameter "input"

    .prologue
    .line 449
    monitor-enter p0

    const/4 v3, 0x0

    .line 451
    .local v3, ret:Landroid/graphics/Point;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    .line 453
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v4, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 462
    :cond_0
    monitor-exit p0

    return-object v3

    .line 454
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->convertCoordinate(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 455
    .local v1, loc:Landroid/graphics/Point;
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->convertCoordinate(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 457
    .local v2, loc2:Landroid/graphics/Point;
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    if-gt v4, v5, :cond_2

    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    if-gt v4, v5, :cond_2

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    if-gt v4, v5, :cond_2

    iget v4, p1, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-gt v4, v5, :cond_2

    .line 459
    new-instance v3, Landroid/graphics/Point;

    .end local v3           #ret:Landroid/graphics/Point;
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    .restart local v3       #ret:Landroid/graphics/Point;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 449
    .end local v1           #loc:Landroid/graphics/Point;
    .end local v2           #loc2:Landroid/graphics/Point;
    .end local v3           #ret:Landroid/graphics/Point;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getRemainCount()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    return v0
.end method

.method public getTouchFocusRectCenterX()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterX:I

    return v0
.end method

.method public getTouchFocusRectCenterY()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterY:I

    return v0
.end method

.method public getTouchRectHeight()F
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getYDelta()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTouchRectWidth()F
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getXDelta()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public hideAllFaceRect()V
    .locals 3

    .prologue
    .line 357
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_0
    return-void
.end method

.method public hideFocusIndicator()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    .line 320
    :cond_0
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 601
    :cond_0
    return-void
.end method

.method public hideTouchFocusIndicator()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    .line 354
    return-void
.end method

.method public initGPSIndicator()V
    .locals 2

    .prologue
    .line 525
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 526
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->ChangeGPS(I)V

    .line 527
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 225
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 7
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 244
    sparse-switch p1, :sswitch_data_0

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 246
    :sswitch_0
    if-ne p2, v5, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->resetFaceRect()V

    goto :goto_0

    .line 251
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->handleGuidelineSettingsChanged(I)V

    goto :goto_0

    .line 254
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_1

    .line 255
    const/16 v1, 0xf

    if-ne p2, v1, :cond_3

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 264
    :cond_1
    :goto_1
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 268
    :cond_2
    const/4 v0, 0x1

    .line 278
    .local v0, bHideFocus:Z
    :goto_2
    if-eqz v0, :cond_7

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    .line 284
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideAllFaceRect()V

    goto :goto_0

    .line 258
    .end local v0           #bHideFocus:Z
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_1

    .line 269
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 270
    const/4 v0, 0x1

    .restart local v0       #bHideFocus:Z
    goto :goto_2

    .line 271
    .end local v0           #bHideFocus:Z
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-nez v1, :cond_6

    .line 273
    const/4 v0, 0x1

    .restart local v0       #bHideFocus:Z
    goto :goto_2

    .line 275
    .end local v0           #bHideFocus:Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #bHideFocus:Z
    goto :goto_2

    .line 281
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    goto :goto_3

    .line 288
    .end local v0           #bHideFocus:Z
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->setStorage(I)V

    goto/16 :goto_0

    .line 293
    :sswitch_5
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->ChangeGPS(I)V

    goto/16 :goto_0

    .line 244
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x5 -> :sswitch_3
        0x13 -> :sswitch_1
        0x14 -> :sswitch_5
        0x16 -> :sswitch_4
        0x24 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 240
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 241
    return-void
.end method

.method public resetFaceRect()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    .line 347
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setColor(I)V

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_0
    return-void
.end method

.method public resetFocus(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_X:I

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->resetInit(II)V

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 209
    return-void
.end method

.method public resetPosIndicator()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->resetPosIndicator()V

    .line 344
    :cond_0
    return-void
.end method

.method public resetTouchFocusRectView()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->reset()V

    .line 426
    :cond_0
    return-void
.end method

.method public restoreMenu()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 232
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    .line 233
    return-void
.end method

.method public setBatteryLevel(IZ)V
    .locals 7
    .parameter "level"
    .parameter "ischarging"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 480
    if-eqz p2, :cond_0

    .line 481
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 482
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    .line 483
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 521
    :goto_0
    return-void

    .line 486
    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->VISIBLE_BATTERY_LEVEL:I

    if-gt p1, v1, :cond_1

    if-nez p1, :cond_2

    .line 487
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 488
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    .line 492
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 493
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getDisplayBatteryPercentageEnabled()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 494
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 495
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 497
    :cond_3
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->VISIBLE_BATTERY_LEVEL:I

    div-int/lit8 v0, v1, 0x5

    .line 498
    .local v0, factor:I
    div-int v1, p1, v0

    packed-switch v1, :pswitch_data_0

    .line 518
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 500
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 503
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 506
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 509
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 512
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 515
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setConnectingStateGPS(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    if-nez v0, :cond_0

    .line 560
    :goto_0
    return-void

    .line 548
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 556
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 550
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 553
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized setFaceRectChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V
    .locals 6
    .parameter "faces"

    .prologue
    .line 365
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 367
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    .line 365
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMatrixForFace:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V

    .line 373
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 375
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMatrixForFace:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 378
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v2, p1, v0

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 365
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 382
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public setFocusIndicator(I)V
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setFocusIndicator(I)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLRectangle;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 313
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setMainFaceRectChanged(I)V

    .line 314
    :cond_1
    return-void
.end method

.method public setGuideLineSize(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setGuideLineSize(Landroid/view/View;)V

    .line 445
    :cond_0
    return-void
.end method

.method public setMainFaceRectChanged(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 385
    packed-switch p1, :pswitch_data_0

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v2

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setColor(I)V

    .line 396
    :goto_0
    return-void

    .line 387
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v2

    invoke-static {v1, v2, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setColor(I)V

    goto :goto_0

    .line 390
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v2

    invoke-static {v1, v1, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setColor(I)V

    goto :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRemainCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 466
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    .line 467
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_0

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 473
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public setTouchFocusRectCenter(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 399
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterX:I

    .line 400
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterY:I

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->onFocus(II)V

    .line 404
    :cond_0
    return-void
.end method

.method public setTouchFocusRectCenterWithoutAnimation(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 407
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterX:I

    .line 408
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterY:I

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->onFocus(IIZ)V

    .line 412
    :cond_0
    return-void
.end method

.method public setVoiceStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 576
    const-string v0, "TwGLCameraBaseIndicators"

    const-string v1, "setVoiceStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    if-nez v0, :cond_0

    .line 581
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVoiceStatus(I)V

    goto :goto_0
.end method

.method public setWifiDirectStatus()V
    .locals 3

    .prologue
    .line 563
    const-string v1, "TwGLCameraBaseIndicators"

    const-string v2, "setWifiDirectStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    if-nez v1, :cond_0

    .line 573
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection(Z)Z

    move-result v0

    .line 568
    .local v0, wifidirect:Z
    if-eqz v0, :cond_1

    .line 569
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f0201ff

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto :goto_0

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f0201fe

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto :goto_0
.end method

.method public showFocusIndicator()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->resetPosIndicator()V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHelpText()V
    .locals 3

    .prologue
    .line 584
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 586
    .local v0, menu:Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 591
    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    .line 592
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 594
    :cond_1
    const-string v1, "TwGLCameraBaseIndicators"

    const-string v2, "show help text"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-void
.end method

.method public showVoiceInputIndicator(I)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public shrinkFocusRect()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->shrinkRect()V

    .line 432
    :cond_0
    return-void
.end method
