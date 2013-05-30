.class public Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSmileMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;
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

.field public static OnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener; = null

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

.field private mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPreviewResizeRatio:F

.field private mPreviewStartPositionX:I

.field private mPreviewStartPositionY:I

.field private mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const v0, 0x7f060015

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    .line 35
    const v0, 0x7f060016

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    .line 36
    const v0, 0x7f080022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_SIZE:F

    .line 37
    const v0, 0x7f060200

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    .line 38
    const v0, 0x7f060072

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    .line 39
    const v0, 0x7f060073

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    .line 40
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_X:I

    .line 41
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_Y:I

    .line 42
    const v0, 0x7f0601fe

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_X:I

    .line 43
    const v0, 0x7f0601ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    .line 44
    const v0, 0x7f060017

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_WIDTH:I

    .line 45
    const v0, 0x7f060018

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_HEIGHT:I

    .line 47
    const v0, 0x7f060201

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_POS_X:I

    .line 48
    const v0, 0x7f060019

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_THICKNESS:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 12
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 79
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionX:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionY:I

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/glview/TwGLRectangle;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/glview/TwGLRectangle;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    .line 64
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setCaptureEnabled(Z)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setTouchHandled(Z)V

    .line 84
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0900dd

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 87
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const v7, 0x7f02008a

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    add-int/lit8 v3, v3, 0xa

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 99
    const v0, 0x7f040002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->blinkAnimation:Landroid/view/animation/Animation;

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 109
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v0, 0x5

    if-ge v8, v0, :cond_0

    .line 110
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_POS_X:I

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

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_THICKNESS:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    aput-object v0, v9, v8

    .line 111
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_POS_X:I

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

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_THICKNESS:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    aput-object v0, v9, v8

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 109
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->init()V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 139
    return-void
.end method


# virtual methods
.method public cleanSmileRect()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 326
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 333
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    .line 326
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_2
    return-void
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 244
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 219
    :cond_0
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 231
    return-void
.end method

.method public isDetecting()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    return v0
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;->onSmileDetectingStopped()V

    .line 201
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 202
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;->onSmileDetectingStopped()V

    .line 175
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showPostCaptureLayout()V

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->hideHelpText()V

    .line 191
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    .line 207
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showHelpText()V

    .line 186
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 252
    const-string v0, "TwGLSmileMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setTouchHandled(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showHelpText()V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 226
    :cond_0
    return-void
.end method

.method public setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    .line 182
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 248
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 213
    :cond_0
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 236
    return-void
.end method

.method public smileShotFaceRectChanged([B)V
    .locals 10
    .parameter "data"

    .prologue
    .line 260
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_2

    .line 261
    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v2, v5, v6

    .line 264
    .local v2, left:I
    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x5

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x7

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v4, v5, v6

    .line 267
    .local v4, top:I
    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x8

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x9

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xa

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xb

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v3, v5, v6

    .line 270
    .local v3, right:I
    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0xc

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xd

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xe

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xf

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v0, v5, v6

    .line 276
    .local v0, bottom:I
    int-to-float v5, v2

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 277
    int-to-float v5, v4

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 278
    int-to-float v5, v3

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 279
    int-to-float v5, v0

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 281
    sub-int v5, v3, v2

    if-lez v5, :cond_1

    sub-int v5, v0, v4

    if-lez v5, :cond_1

    .line 282
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionX:I

    add-int/2addr v6, v2

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionY:I

    add-int/2addr v7, v4

    int-to-float v7, v7

    sub-int v8, v3, v2

    int-to-float v8, v8

    sub-int v9, v0, v4

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 283
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 260
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 284
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLRectangle;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 285
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 286
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    goto :goto_1

    .line 289
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    :cond_2
    return-void
.end method

.method public smileShotSmileRectChanged([B)V
    .locals 10
    .parameter "data"

    .prologue
    .line 294
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_2

    .line 295
    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v2, v5, v6

    .line 298
    .local v2, left:I
    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x5

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x7

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v4, v5, v6

    .line 301
    .local v4, top:I
    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x8

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x9

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xa

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xb

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v3, v5, v6

    .line 304
    .local v3, right:I
    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0xc

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xd

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xe

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xf

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v0, v5, v6

    .line 309
    .local v0, bottom:I
    int-to-float v5, v2

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 310
    int-to-float v5, v4

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 311
    int-to-float v5, v3

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 312
    int-to-float v5, v0

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 314
    sub-int v5, v3, v2

    if-lez v5, :cond_1

    sub-int v5, v0, v4

    if-lez v5, :cond_1

    .line 315
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionX:I

    add-int/2addr v6, v2

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionY:I

    add-int/2addr v7, v4

    int-to-float v7, v7

    sub-int v8, v3, v2

    int-to-float v8, v8

    sub-int v9, v0, v4

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 316
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 294
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 317
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLRectangle;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 318
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 319
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    goto :goto_1

    .line 323
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    :cond_2
    return-void
.end method

.method public startDetect(III)V
    .locals 2
    .parameter "originalViewFinderWidth"
    .parameter "originalViewFinderHeight"
    .parameter "previewWidth"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    .line 151
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    .line 152
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionX:I

    .line 153
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionY:I

    .line 154
    return-void
.end method

.method public stopDetect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 160
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    .line 161
    return-void
.end method

.method public stopSmileShot()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenu()V

    .line 165
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    if-eq v0, v2, :cond_0

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 169
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setTouchHandled(Z)V

    goto :goto_0
.end method
