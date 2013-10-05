.class public Lcom/android/camera/glwidget/TwGLSmileMenu;
.super Lcom/android/camera/MenuBase;
.source "TwGLSmileMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_SIZE:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_Y:I = 0x0

.field private static final INT_10:I = 0xa

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field public static OnSmileDetectingStoppedListener:Lcom/android/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener; = null

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SIDEMENU_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SMILESHOT_BLINK_IMAGE_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SMILESHOT_BLINK_IMAGE_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SMILESHOT_BLINK_IMAGE_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SMILESHOT_BLINK_IMAGE_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SMILESHOT_RECT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SMILESHOT_RECT_THICKNESS:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLSmileMenu"


# instance fields
.field public blinkAnimation:Landroid/view/animation/Animation;

.field private mBlinkImage:Lcom/sec/android/glview/TwGLImage;

.field private mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

.field public mHelpText:Lcom/sec/android/glview/TwGLText;

.field public mIsDetecting:Z

.field public mIsFrontCamera:Z

.field public mIsSelfFlipOn:Z

.field private mOnSmileDetectingStoppedListener:Lcom/android/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPrevieWidth:I

.field private mPreviewResizeRatio:F

.field private mPreviewStartPositionX:I

.field private mPreviewStartPositionY:I

.field private mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const v0, 0x7f070019

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    .line 36
    const v0, 0x7f07001a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    .line 37
    const v0, 0x7f080026

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_SIZE:F

    .line 38
    const v0, 0x7f070252

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    .line 39
    const v0, 0x7f07009a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    .line 40
    const v0, 0x7f07009b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    .line 41
    sget v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    sget v1, Lcom/android/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sget v2, Lcom/android/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_X:I

    .line 42
    sget v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_Y:I

    .line 43
    const v0, 0x7f070250

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_X:I

    .line 44
    const v0, 0x7f070251

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    .line 45
    const v0, 0x7f07001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_WIDTH:I

    .line 46
    const v0, 0x7f07001c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_HEIGHT:I

    .line 48
    const v0, 0x7f070253

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_POS_X:I

    .line 49
    const v0, 0x7f07001d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_THICKNESS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;)V
    .locals 12
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 83
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/MenuBase;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;IZ)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionX:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionY:I

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mIsFrontCamera:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mIsSelfFlipOn:Z

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPrevieWidth:I

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/glview/TwGLRectangle;

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/glview/TwGLRectangle;

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    .line 68
    new-instance v0, Lcom/android/camera/glwidget/TwGLSmileMenu$1;

    invoke-direct {v0, p0}, Lcom/android/camera/glwidget/TwGLSmileMenu$1;-><init>(Lcom/android/camera/glwidget/TwGLSmileMenu;)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLSmileMenu;->setCaptureEnabled(Z)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLSmileMenu;->setTouchHandled(Z)V

    .line 88
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_X:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_Y:I

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0900e4

    invoke-virtual {p1, v6}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 91
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_X:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const v7, 0x7f020043

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    .line 95
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    sget v2, Lcom/android/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/android/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    add-int/lit8 v3, v3, 0xa

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 100
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    sget v2, Lcom/android/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 101
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    sget v2, Lcom/android/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 103
    const v0, 0x7f040002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->blinkAnimation:Landroid/view/animation/Animation;

    .line 104
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 105
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 107
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 111
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 113
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v0, 0x5

    if-ge v8, v0, :cond_0

    .line 114
    iget-object v9, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/16 v7, 0xc8

    const/16 v10, 0x7d

    const/4 v11, 0x0

    invoke-static {v6, v7, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget v7, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_THICKNESS:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    aput-object v0, v9, v8

    .line 115
    iget-object v9, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/16 v10, 0xff

    const/4 v11, 0x0

    invoke-static {v6, v7, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget v7, Lcom/android/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_THICKNESS:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    aput-object v0, v9, v8

    .line 116
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 119
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 113
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    new-instance v1, Lcom/android/camera/glwidget/TwGLSmileMenu$2;

    invoke-direct {v1, p0}, Lcom/android/camera/glwidget/TwGLSmileMenu$2;-><init>(Lcom/android/camera/glwidget/TwGLSmileMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 135
    invoke-direct {p0}, Lcom/android/camera/glwidget/TwGLSmileMenu;->init()V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/glwidget/TwGLSmileMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 139
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 140
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    sget v3, Lcom/android/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_X:I

    sget v2, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/android/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/android/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/android/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 143
    return-void
.end method


# virtual methods
.method public cleanSmileRect()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 357
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 360
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 364
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    .line 357
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_2
    return-void
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 261
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 236
    :cond_0
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 248
    return-void
.end method

.method public isDetecting()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    return v0
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/android/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/android/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    invoke-interface {v0}, Lcom/android/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;->onSmileDetectingStopped()V

    .line 208
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/camera/MenuBase;->onBack()V

    .line 209
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/android/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/android/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    invoke-interface {v0}, Lcom/android/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;->onSmileDetectingStopped()V

    .line 182
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLSmileMenu;->showPostCaptureLayout()V

    .line 197
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLSmileMenu;->hideHelpText()V

    .line 198
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onSmileDetectingStopped()V

    .line 224
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLSmileMenu;->showHelpText()V

    .line 193
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 269
    const-string v0, "TwGLSmileMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLSmileMenu;->setTouchHandled(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLSmileMenu;->showHelpText()V

    .line 241
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 243
    :cond_0
    return-void
.end method

.method public setOnSmileDetectingStoppedListener(Lcom/android/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/android/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    .line 189
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 265
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 230
    :cond_0
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 253
    return-void
.end method

.method public smileShotFaceRectChanged([B)V
    .locals 11
    .parameter "data"

    .prologue
    .line 277
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v6, 0x5

    if-ge v1, v6, :cond_3

    .line 278
    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x0

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v2, v6, v7

    .line 281
    .local v2, left:I
    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x5

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x6

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x7

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v5, v6, v7

    .line 284
    .local v5, top:I
    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x8

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x9

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xa

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xb

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v3, v6, v7

    .line 287
    .local v3, right:I
    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xc

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xd

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xe

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xf

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v0, v6, v7

    .line 293
    .local v0, bottom:I
    iget-boolean v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mIsFrontCamera:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mIsSelfFlipOn:Z

    if-nez v6, :cond_0

    .line 294
    iget v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPrevieWidth:I

    sub-int v2, v6, v2

    .line 295
    iget v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPrevieWidth:I

    sub-int v3, v6, v3

    .line 296
    move v4, v3

    .line 297
    .local v4, temp:I
    move v3, v2

    .line 298
    move v2, v4

    .line 300
    .end local v4           #temp:I
    :cond_0
    int-to-float v6, v2

    iget v7, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 301
    int-to-float v6, v5

    iget v7, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 302
    int-to-float v6, v3

    iget v7, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 303
    int-to-float v6, v0

    iget v7, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 305
    sub-int v6, v3, v2

    if-lez v6, :cond_2

    sub-int v6, v0, v5

    if-lez v6, :cond_2

    .line 306
    iget-object v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    iget v7, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionX:I

    add-int/2addr v7, v2

    int-to-float v7, v7

    iget v8, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionY:I

    add-int/2addr v8, v5

    int-to-float v8, v8

    sub-int v9, v3, v2

    int-to-float v9, v9

    sub-int v10, v0, v5

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 307
    iget-object v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 277
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 308
    :cond_2
    iget-object v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLRectangle;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 309
    iget-object v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 310
    iget-object v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    goto :goto_1

    .line 313
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v5           #top:I
    :cond_3
    return-void
.end method

.method public smileShotSmileRectChanged([B)V
    .locals 11
    .parameter "data"

    .prologue
    .line 318
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v6, 0x5

    if-ge v1, v6, :cond_3

    .line 319
    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x0

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v2, v6, v7

    .line 322
    .local v2, left:I
    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x5

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x6

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x7

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v5, v6, v7

    .line 325
    .local v5, top:I
    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x8

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x9

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xa

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xb

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v3, v6, v7

    .line 328
    .local v3, right:I
    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xc

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xd

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xe

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xf

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v0, v6, v7

    .line 333
    .local v0, bottom:I
    iget-boolean v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mIsFrontCamera:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mIsSelfFlipOn:Z

    if-nez v6, :cond_0

    .line 334
    iget v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPrevieWidth:I

    sub-int v2, v6, v2

    .line 335
    iget v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPrevieWidth:I

    sub-int v3, v6, v3

    .line 336
    move v4, v3

    .line 337
    .local v4, temp:I
    move v3, v2

    .line 338
    move v2, v4

    .line 340
    .end local v4           #temp:I
    :cond_0
    int-to-float v6, v2

    iget v7, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 341
    int-to-float v6, v5

    iget v7, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 342
    int-to-float v6, v3

    iget v7, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 343
    int-to-float v6, v0

    iget v7, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 345
    sub-int v6, v3, v2

    if-lez v6, :cond_2

    sub-int v6, v0, v5

    if-lez v6, :cond_2

    .line 346
    iget-object v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    iget v7, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionX:I

    add-int/2addr v7, v2

    int-to-float v7, v7

    iget v8, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionY:I

    add-int/2addr v8, v5

    int-to-float v8, v8

    sub-int v9, v3, v2

    int-to-float v9, v9

    sub-int v10, v0, v5

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 347
    iget-object v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 318
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 348
    :cond_2
    iget-object v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLRectangle;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 349
    iget-object v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 350
    iget-object v6, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    goto :goto_1

    .line 354
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v5           #top:I
    :cond_3
    return-void
.end method

.method public startDetect(III)V
    .locals 3
    .parameter "originalViewFinderWidth"
    .parameter "originalViewFinderHeight"
    .parameter "previewWidth"

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mIsFrontCamera:Z

    .line 151
    iput-boolean v2, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mIsSelfFlipOn:Z

    .line 152
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 153
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    .line 157
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    .line 158
    iput p3, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPrevieWidth:I

    .line 159
    sget v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionX:I

    .line 160
    sget v0, Lcom/android/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionY:I

    .line 161
    return-void
.end method

.method public stopDetect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 165
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 167
    iput-boolean v2, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    .line 168
    return-void
.end method

.method public stopSmileShot()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 171
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->showSideMenu()V

    .line 172
    iget-boolean v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    if-eq v0, v2, :cond_0

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    .line 175
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 176
    invoke-virtual {p0, v2}, Lcom/android/camera/glwidget/TwGLSmileMenu;->setTouchHandled(Z)V

    goto :goto_0
.end method
