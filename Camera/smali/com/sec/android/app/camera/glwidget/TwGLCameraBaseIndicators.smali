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

.field private mFaceCount:I

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
    const v3, 0x7f060073

    const v2, 0x7f060072

    .line 40
    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_WIDTH:I

    .line 41
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_HEIGHT:I

    .line 42
    const v0, 0x7f060090

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SIDE_MENU_WIDTH:I

    .line 44
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v1

    const v1, 0x7f0600af

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    .line 45
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_HEIGHT:I

    const v1, 0x7f0600b2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    .line 46
    const v0, 0x7f0600b1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    .line 47
    const v0, 0x7f0600b4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_WIDTH:I

    .line 48
    const v0, 0x7f0600b6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    .line 49
    const v0, 0x7f080020

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_SIZE:I

    .line 50
    const v0, 0x7f0600b7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->REMAIN_COUNTER_WIDTH:I

    .line 51
    const v0, 0x7f0600ba

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->PERCENTAGE_WIDTH:I

    .line 53
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_X:I

    .line 54
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    .line 56
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SIDE_MENU_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_X_DELTA:I

    .line 58
    const v0, 0x7f080002

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->VISIBLE_BATTERY_LEVEL:I

    .line 61
    const v0, 0x7f060170

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    .line 62
    const v0, 0x7f060171

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    .line 63
    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    .line 64
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    .line 65
    const v0, 0x7f080022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIZE:F

    .line 66
    const v0, 0x7f06017a

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

    .line 94
    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 72
    new-array v0, v7, [Lcom/sec/android/glview/TwGLRectangle;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    .line 81
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    .line 83
    new-array v0, v7, [Lcom/sec/android/seccamera/SecCamera$Face;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    .line 87
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMatrixForFace:Landroid/graphics/Matrix;

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    .line 405
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTouchHandled(Z)V

    .line 97
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 100
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->init()V

    .line 101
    return-void
.end method

.method private init()V
    .locals 13

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    .line 106
    .local v1, glContext:Lcom/sec/android/glview/TwGLContext;
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 110
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    .line 120
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FULL_SCREEN_HEIGHT:I

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v6, 0x7f0b0004

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->handleGuidelineSettingsChanged(I)V

    .line 126
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

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->setRotatable(Z)V

    .line 128
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

    .line 129
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

    .line 130
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

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getRemainStorage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    .line 133
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

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 136
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    .line 137
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    .line 138
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

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 141
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    .line 144
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setVisibility(I)V

    .line 148
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020211

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBatteryLevel()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isBatteryCharging()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setBatteryLevel(IZ)V

    .line 164
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRemainCount(I)V

    .line 166
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->initGPSIndicator()V

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setWifiDirectStatus()V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 176
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    const/16 v0, 0xa

    if-ge v10, v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    new-instance v2, Lcom/sec/android/glview/TwGLRectangle;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

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

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v10

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v2, v2, v10

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 176
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 184
    new-instance v2, Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v8, 0x7f090137

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIZE:F

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SIDE_MENU_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const v4, 0x7f060077

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    const v3, 0x7f060076

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_ALIGNMENT:F

    sub-float/2addr v3, v4

    const v4, 0x7f060077

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    add-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isVoiceInputSettingOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVisibility(I)V

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceStatus(I)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 204
    const v0, 0x7f090140

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceHelpText(I)V

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showHelpText()V

    .line 210
    :cond_2
    :goto_1
    return-void

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected ChangeGPS(I)V
    .locals 3
    .parameter "modeid"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    if-nez v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 587
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 589
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    .line 592
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 587
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

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 231
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 233
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    .line 234
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    .line 236
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 237
    return-void
.end method

.method public declared-synchronized doesFaceRectContainsThisPoint(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8
    .parameter "input"

    .prologue
    .line 503
    monitor-enter p0

    const/4 v3, 0x0

    .line 505
    .local v3, ret:Landroid/graphics/Point;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    .line 507
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v4, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 516
    :cond_0
    monitor-exit p0

    return-object v3

    .line 508
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

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

    .line 509
    .local v1, loc:Landroid/graphics/Point;
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

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

    .line 511
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

    .line 513
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

    .line 505
    .restart local v3       #ret:Landroid/graphics/Point;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 503
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
    .line 530
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    return v0
.end method

.method public getTouchFocusRectCenterX()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterX:I

    return v0
.end method

.method public getTouchFocusRectCenterY()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterY:I

    return v0
.end method

.method public getTouchRectHeight()F
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getYDelta()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTouchRectWidth()F
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getXDelta()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public hideAllFaceRect()V
    .locals 3

    .prologue
    .line 399
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_0
    return-void
.end method

.method public hideFocusIndicator()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    .line 356
    :cond_0
    return-void
.end method

.method public hideFocusRect()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->hideFocusRect()V

    .line 362
    :cond_0
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 655
    :cond_0
    return-void
.end method

.method public hideTouchFocusIndicator()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    .line 396
    return-void
.end method

.method public initGPSIndicator()V
    .locals 2

    .prologue
    .line 579
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 580
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->ChangeGPS(I)V

    .line 581
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 241
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 7
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 274
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_2

    .line 275
    const/16 v1, 0xf

    if-ne p2, v1, :cond_4

    .line 276
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 285
    :cond_2
    :goto_1
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 289
    :cond_3
    const/4 v0, 0x1

    .line 299
    .local v0, bHideFocus:Z
    :goto_2
    if-eqz v0, :cond_8

    .line 300
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    .line 305
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideAllFaceRect()V

    goto :goto_0

    .line 265
    .end local v0           #bHideFocus:Z
    :sswitch_2
    if-ne p2, v4, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->resetFaceRect()V

    goto :goto_0

    .line 270
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->handleGuidelineSettingsChanged(I)V

    goto :goto_0

    .line 278
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_1

    .line 290
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 291
    const/4 v0, 0x1

    .restart local v0       #bHideFocus:Z
    goto :goto_2

    .line 292
    .end local v0           #bHideFocus:Z
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-nez v1, :cond_7

    .line 294
    const/4 v0, 0x1

    .restart local v0       #bHideFocus:Z
    goto :goto_2

    .line 296
    .end local v0           #bHideFocus:Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #bHideFocus:Z
    goto :goto_2

    .line 302
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    goto :goto_3

    .line 309
    .end local v0           #bHideFocus:Z
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->setStorage(I)V

    goto/16 :goto_0

    .line 314
    :sswitch_5
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->ChangeGPS(I)V

    goto/16 :goto_0

    .line 317
    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 319
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showVoiceInputIndicator(I)V

    .line 320
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceStatus(I)V

    goto/16 :goto_0

    .line 323
    :cond_9
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showVoiceInputIndicator(I)V

    goto/16 :goto_0

    .line 263
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_1
        0x13 -> :sswitch_3
        0x14 -> :sswitch_5
        0x16 -> :sswitch_4
        0x24 -> :sswitch_2
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 256
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 257
    return-void
.end method

.method public resetFaceRect()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    .line 389
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setColor(I)V

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method

.method public resetFocus(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_X:I

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->resetInit(II)V

    .line 224
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 225
    return-void
.end method

.method public resetPosIndicator()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->resetPosIndicator()V

    .line 386
    :cond_0
    return-void
.end method

.method public resetTouchFocusRectView()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->reset()V

    .line 480
    :cond_0
    return-void
.end method

.method public restoreMenu()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 248
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    .line 249
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

    .line 534
    if-eqz p2, :cond_0

    .line 535
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 536
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    .line 537
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 575
    :goto_0
    return-void

    .line 540
    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->VISIBLE_BATTERY_LEVEL:I

    if-gt p1, v1, :cond_1

    if-nez p1, :cond_2

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 542
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    .line 546
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 547
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getDisplayBatteryPercentageEnabled()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 548
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 549
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

    .line 551
    :cond_3
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->VISIBLE_BATTERY_LEVEL:I

    div-int/lit8 v0, v1, 0x5

    .line 552
    .local v0, factor:I
    div-int v1, p1, v0

    packed-switch v1, :pswitch_data_0

    .line 572
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 554
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 557
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 560
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 563
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 566
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 569
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 552
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
    .line 599
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    if-nez v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 602
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 610
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 604
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 607
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 602
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
    .line 409
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 411
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    .line 409
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMatrixForFace:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V

    .line 417
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 419
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMatrixForFace:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 421
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

    .line 422
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 423
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v2, p1, v0

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 409
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 436
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public setFocusIndicator(I)V
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setFocusIndicator(I)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLRectangle;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 343
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setMainFaceRectChanged(I)V

    .line 344
    :cond_1
    return-void
.end method

.method public setGuideLineSize(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setGuideLineSize(Landroid/view/View;)V

    .line 499
    :cond_0
    return-void
.end method

.method public setHelpText(I)V
    .locals 2
    .parameter "resourceid"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 660
    :cond_0
    return-void
.end method

.method public setMainFaceRectChanged(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 439
    packed-switch p1, :pswitch_data_0

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v2

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setColor(I)V

    .line 450
    :goto_0
    return-void

    .line 441
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v2

    invoke-static {v1, v2, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setColor(I)V

    goto :goto_0

    .line 444
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v2

    invoke-static {v1, v1, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setColor(I)V

    goto :goto_0

    .line 439
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
    .line 520
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    .line 521
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_0

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 527
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 525
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
    .line 453
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterX:I

    .line 454
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterY:I

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->onFocus(II)V

    .line 458
    :cond_0
    return-void
.end method

.method public setTouchFocusRectCenterWithoutAnimation(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 461
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterX:I

    .line 462
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterY:I

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->onFocus(IIZ)V

    .line 466
    :cond_0
    return-void
.end method

.method public setVoiceHelpText(I)V
    .locals 14
    .parameter "resourceid"

    .prologue
    const/4 v13, 0x0

    const v12, 0x7f090140

    .line 662
    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v10, :cond_2

    .line 663
    iget-object v10, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 664
    .local v8, res:Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 665
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 666
    .local v2, globalLocale:Ljava/util/Locale;
    const-string v5, ""

    .line 667
    .local v5, language:Ljava/lang/String;
    const-string v1, ""

    .line 668
    .local v1, country:Ljava/lang/String;
    const-string v3, ""

    .line 669
    .local v3, helptext:Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "voicetalk_language"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 670
    .local v9, voiceLocale:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 671
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .line 672
    .local v6, length:I
    if-lez v6, :cond_0

    .line 674
    const/16 v10, 0x2d

    :try_start_0
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 675
    .local v4, index:I
    if-lez v4, :cond_0

    .line 676
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 677
    add-int/lit8 v10, v4, 0x1

    if-ge v10, v6, :cond_0

    .line 678
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 685
    .end local v4           #index:I
    .end local v6           #length:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 686
    iget-object v7, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 687
    .local v7, locale:Ljava/util/Locale;
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 690
    :cond_1
    new-instance v10, Ljava/util/Locale;

    invoke-direct {v10, v5, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 691
    invoke-virtual {v8, v0, v13}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 692
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 693
    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v10, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 696
    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 697
    invoke-virtual {v8, v0, v13}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 704
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #country:Ljava/lang/String;
    .end local v2           #globalLocale:Ljava/util/Locale;
    .end local v3           #helptext:Ljava/lang/String;
    .end local v5           #language:Ljava/lang/String;
    .end local v7           #locale:Ljava/util/Locale;
    .end local v8           #res:Landroid/content/res/Resources;
    .end local v9           #voiceLocale:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 699
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #country:Ljava/lang/String;
    .restart local v2       #globalLocale:Ljava/util/Locale;
    .restart local v3       #helptext:Ljava/lang/String;
    .restart local v5       #language:Ljava/lang/String;
    .restart local v7       #locale:Ljava/util/Locale;
    .restart local v8       #res:Landroid/content/res/Resources;
    .restart local v9       #voiceLocale:Ljava/lang/String;
    :cond_3
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 700
    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v10, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 681
    .end local v7           #locale:Ljava/util/Locale;
    .restart local v6       #length:I
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method public setVoiceStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 630
    const-string v0, "TwGLCameraBaseIndicators"

    const-string v1, "setVoiceStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    if-nez v0, :cond_0

    .line 635
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVoiceStatus(I)V

    goto :goto_0
.end method

.method public setWifiDirectStatus()V
    .locals 3

    .prologue
    .line 617
    const-string v1, "TwGLCameraBaseIndicators"

    const-string v2, "setWifiDirectStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    if-nez v1, :cond_0

    .line 627
    :goto_0
    return-void

    .line 621
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection(Z)Z

    move-result v0

    .line 622
    .local v0, wifidirect:Z
    if-eqz v0, :cond_1

    .line 623
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020212

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto :goto_0

    .line 625
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020211

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto :goto_0
.end method

.method public showFocusIndicator()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->resetPosIndicator()V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showFocusIndicator(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->showFocusIndicator(I)V

    .line 350
    :cond_0
    return-void
.end method

.method public showHelpText()V
    .locals 3

    .prologue
    .line 638
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 640
    .local v0, menu:Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 645
    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 648
    :cond_1
    const-string v1, "TwGLCameraBaseIndicators"

    const-string v2, "show help text"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void
.end method

.method public showVoiceInputIndicator(I)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public shrinkFocusRect()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->shrinkRect()V

    .line 486
    :cond_0
    return-void
.end method
