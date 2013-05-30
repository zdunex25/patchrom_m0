.class public Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLModeSwitchButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CELL_PADDING_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final CELL_PADDING_WIDTH:F = 0.0f

.field public static final MODE_CAMCORDER:I = 0x1

.field public static final MODE_CAMERA:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SELECTED_IMAGE_POS_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final SWITCH_BALL_MAX_MOVEMENT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SWITCH_BALL_SELECT_AREA_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SWITCH_BALL_SELECT_AREA_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SWITCH_BG_IMAGE_POS_X:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "TwGLModeSwitchButton"

.field public static final TOUCH_PADDING:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mButtonLocked:Z

.field private mCamcorderSelectedImage:Lcom/sec/android/glview/TwGLImage;

.field private mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

.field private mMoveSum:I

.field private mOnModeChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;

.field private mStartY:I

.field private mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

.field private mSwitchBall:Lcom/sec/android/glview/TwGLImage;

.field private mSwitchBallPosTop:I

.field private mSwitchBallPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f060109

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BG_IMAGE_POS_X:F

    .line 48
    const v0, 0x7f06010a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SELECTED_IMAGE_POS_X:F

    .line 49
    const v0, 0x7f06010b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->CELL_PADDING_WIDTH:F

    .line 50
    const v0, 0x7f06010c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->CELL_PADDING_HEIGHT:F

    .line 51
    const v0, 0x7f06010d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    .line 52
    const v0, 0x7f060110

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    .line 53
    const v0, 0x7f060111

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_SELECT_AREA_WIDTH:I

    .line 54
    const v0, 0x7f060112

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_SELECT_AREA_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFZ)V
    .locals 2
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "cameramode"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 56
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    .line 58
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosTop:I

    .line 59
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mMoveSum:I

    .line 60
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mStartY:I

    .line 80
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->init()V

    .line 82
    if-nez p4, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setCamcorderSelected()V

    .line 85
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setFocusable(Z)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mOnModeChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;

    return-object v0
.end method

.method static synthetic access$108(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    return v0
.end method

.method static synthetic access$110(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 120
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SELECTED_IMAGE_POS_X:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    const v4, 0x7f0200c5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    .line 124
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BG_IMAGE_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    const v4, 0x7f0200b8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    .line 128
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SELECTED_IMAGE_POS_X:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    const v4, 0x7f0200c3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCamcorderSelectedImage:Lcom/sec/android/glview/TwGLImage;

    .line 132
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->CELL_PADDING_WIDTH:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->CELL_PADDING_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_SELECT_AREA_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_SELECT_AREA_HEIGHT:I

    int-to-float v5, v5

    const v7, 0x7f0200c1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setResourceOffset(FF)Z

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setTitle(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setClickable(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->getTop()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->CELL_PADDING_HEIGHT:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosTop:I

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCamcorderSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCamcorderSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCamcorderSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setDragSensitivity(I)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setDragVibration(Z)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setDragSensitivity(I)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setDragVibration(Z)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCamcorderSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 164
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 97
    :cond_1
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public lockButton(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    .line 102
    return-void
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 4
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 242
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    if-eqz v0, :cond_1

    .line 243
    const-string v0, "TwGLModeSwitchButton"

    const-string v1, "return mButtonLocked is true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    const-string v0, "TwGLModeSwitchButton"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    const-string v0, "TwGLModeSwitchButton"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    const-string v0, "TwGLModeSwitchButton"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_DisableCompensationTouchAreaInScrollBar"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 266
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->getLeft()F

    move-result v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->getRight()F

    move-result v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 271
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->getTop()F

    move-result v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_6

    .line 272
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 284
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_0

    .line 273
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->getBottom()F

    move-result v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_7

    .line 274
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    goto :goto_1

    .line 276
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    int-to-float v0, v0

    add-float/2addr v0, p5

    cmpg-float v0, v0, v2

    if-gez v0, :cond_8

    .line 277
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    goto :goto_1

    .line 278
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    int-to-float v0, v0

    add-float/2addr v0, p5

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 279
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    goto :goto_1

    .line 281
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    int-to-float v0, v0

    add-float/2addr v0, p5

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    goto :goto_1
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 289
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    if-eqz v1, :cond_1

    .line 290
    const-string v1, "TwGLModeSwitchButton"

    const-string v2, "return mButtonLocked is true"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 295
    const-string v1, "TwGLModeSwitchButton"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    const-string v1, "TwGLModeSwitchButton"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v1, v1, Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_4

    .line 305
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 306
    const-string v1, "TwGLModeSwitchButton"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_5

    .line 312
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 332
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 333
    .end local v0           #t:Ljava/lang/Thread;
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    div-int/lit8 v2, v2, 0x2

    if-gt v1, v2, :cond_0

    .line 334
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 354
    .restart local v0       #t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    if-eqz v0, :cond_1

    .line 218
    const-string v0, "TwGLModeSwitchButton"

    const-string v1, "return mButtonLocked is true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    const-string v0, "TwGLModeSwitchButton"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    const-string v0, "TwGLModeSwitchButton"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "TwGLModeSwitchButton"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 193
    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-ne p1, v1, :cond_3

    .line 194
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    if-eqz v1, :cond_1

    .line 204
    :goto_0
    return v0

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setCamcorderSelected()V

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setCameraSelected()V

    goto :goto_0

    .line 204
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 208
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    if-eqz v0, :cond_1

    .line 210
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 360
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    if-eqz v0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v3

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camcorder;

    if-eqz v0, :cond_3

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camcorder;

    if-eqz v0, :cond_5

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 397
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosTop:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_SELECT_AREA_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 398
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    if-gez v0, :cond_7

    .line 399
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 403
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 404
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mMoveSum:I

    .line 405
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mStartY:I

    goto :goto_0

    .line 400
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    if-lt v0, v1, :cond_6

    .line 401
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    goto :goto_1

    .line 408
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosTop:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_SELECT_AREA_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 410
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mMoveSum:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mStartY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mMoveSum:I

    .line 411
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mStartY:I

    goto/16 :goto_0

    .line 414
    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    if-gtz v0, :cond_8

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setCameraSelected()V

    goto/16 :goto_0

    .line 418
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    if-lt v0, v1, :cond_0

    .line 419
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setCamcorderSelected()V

    goto/16 :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCamcorderSelected()V
    .locals 3

    .prologue
    .line 180
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mOnModeChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    :cond_0
    return-void
.end method

.method public setCameraSelected()V
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->resetTranslate()V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mOnModeChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    :cond_0
    return-void
.end method

.method public setModeButtonDimmed(Z)V
    .locals 3
    .parameter "dimmed"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCamcorderSelectedImage:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setResourceOffset(FF)Z

    .line 117
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCamcorderSelectedImage:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setResourceOffset(FF)Z

    goto :goto_0
.end method

.method public setOnModeChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mOnModeChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;

    .line 75
    return-void
.end method
