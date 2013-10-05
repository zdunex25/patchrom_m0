.class public Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;
.super Lcom/android/camera/glwidget/TwGLDragDropBox;
.source "TwGLSideMenuDragDropBox.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BG_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BG_POS_Y:I = 0x0

.field private static final RELOCATEITEM_ANIMATION_DURATION:I = 0xc8


# instance fields
.field private mActivityContext:Lcom/android/camera/AbstractCameraActivity;

.field private mNormalBG:Lcom/sec/android/glview/TwGLImage;

.field private mPressedBG:Lcom/sec/android/glview/TwGLImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f0700bc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->BG_POS_X:I

    .line 38
    const v0, 0x7f0700bd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->BG_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;)V
    .locals 6
    .parameter "activityContext"

    .prologue
    const/4 v5, 0x4

    .line 46
    invoke-virtual {p1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/glwidget/TwGLDragDropBox;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 48
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 50
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02004a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    .line 51
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02004b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    .line 52
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->setClipping(Z)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;FF)V
    .locals 7
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 62
    invoke-virtual {p1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/glwidget/TwGLDragDropBox;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 64
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 66
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02004a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    .line 67
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02004b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    .line 68
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 75
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 77
    invoke-virtual {p0, v5}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->setClipping(Z)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;FFFF)V
    .locals 8
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 81
    invoke-virtual {p1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/glwidget/TwGLDragDropBox;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 83
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 85
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02004a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    .line 86
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02004b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    .line 87
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 94
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 96
    invoke-virtual {p0, v6}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->setClipping(Z)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method private relocateItem(Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;Lcom/sec/android/glview/TwGLView;)V
    .locals 7
    .parameter "fromDragDropBox"
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 100
    invoke-virtual {p1}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->getLayoutX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->getLayoutX()F

    move-result v4

    sub-float v1, v3, v4

    .line 101
    .local v1, fromX:F
    invoke-virtual {p1}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->getLayoutY()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->getLayoutY()F

    move-result v4

    sub-float v2, v3, v4

    .line 102
    .local v2, fromY:F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v5, v2, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 103
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 104
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 105
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 106
    invoke-virtual {p2, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 107
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 108
    invoke-virtual {p0, p2}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->setClipRect(Landroid/graphics/Rect;)V

    .line 112
    new-instance v3, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox$1;

    invoke-direct {v3, p0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox$1;-><init>(Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;)V

    invoke-virtual {p2, v3}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 125
    return-void
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 231
    instance-of v0, p1, Lcom/android/camera/glwidget/TwGLItem;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 232
    check-cast v0, Lcom/android/camera/glwidget/TwGLItem;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItem;->setContentType(I)V

    move-object v0, p1

    .line 233
    check-cast v0, Lcom/android/camera/glwidget/TwGLItem;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItem;->setZOrder(I)V

    .line 234
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 235
    invoke-virtual {p1, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 236
    invoke-virtual {p1, v2}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 237
    invoke-virtual {p1, v2}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 238
    new-instance v0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox$2;

    invoke-direct {v0, p0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox$2;-><init>(Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    move-object v0, p1

    .line 246
    check-cast v0, Lcom/android/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->setDraggable(Z)V

    .line 252
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/glwidget/TwGLDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 253
    instance-of v0, p1, Lcom/android/camera/glwidget/TwGLItem;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 256
    :cond_1
    return-void

    .line 249
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->setDraggable(Z)V

    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 132
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 133
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 139
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 148
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 150
    invoke-super {p0}, Lcom/android/camera/glwidget/TwGLDragDropBox;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLayoutX()F
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/camera/glwidget/TwGLDragDropBox;->getLayoutX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getLayoutY()F
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/camera/glwidget/TwGLDragDropBox;->getLayoutY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 185
    invoke-super/range {p0 .. p5}, Lcom/android/camera/glwidget/TwGLDragDropBox;->onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V

    .line 186
    return-void
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/glwidget/TwGLDragDropBox;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 191
    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/glwidget/TwGLDragDropBox;->onDragStart(Lcom/sec/android/glview/TwGLView;FF)V

    .line 181
    return-void
.end method

.method protected onDrop(Lcom/sec/android/glview/TwGLView;Lcom/android/camera/glwidget/TwGLDragDropBox;)V
    .locals 6
    .parameter "view"
    .parameter "fromDropBox"

    .prologue
    const/16 v5, 0x63

    .line 195
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lcom/android/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 199
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    .line 200
    .local v2, viewToRelocate:Lcom/sec/android/glview/TwGLView;
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    check-cast v3, Lcom/android/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    if-eq v3, v5, :cond_1

    move-object v3, p1

    .line 201
    check-cast v3, Lcom/android/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/android/camera/glwidget/TwGLItem;->getContentType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    move-object v3, p2

    .line 202
    check-cast v3, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-direct {v3, p0, v2}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->relocateItem(Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;Lcom/sec/android/glview/TwGLView;)V

    .line 207
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/glwidget/TwGLDragDropBox;->onDrop(Lcom/sec/android/glview/TwGLView;Lcom/android/camera/glwidget/TwGLDragDropBox;)V

    .line 210
    .end local v2           #viewToRelocate:Lcom/sec/android/glview/TwGLView;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/android/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 211
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 213
    :cond_3
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0x29

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    .line 214
    .local v1, cameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    if-eqz v1, :cond_4

    .line 215
    invoke-virtual {v1}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 217
    :cond_4
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0xbd2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;

    .line 218
    .local v0, camcorderSideMenu:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;
    if-eqz v0, :cond_5

    .line 219
    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;->refreshAnchors()V

    .line 222
    :cond_5
    check-cast p1, Lcom/android/camera/glwidget/TwGLItem;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    if-ne v3, v5, :cond_7

    .line 223
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->setDraggable(Z)V

    .line 227
    :goto_1
    return-void

    .line 203
    .end local v0           #camcorderSideMenu:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;
    .end local v1           #cameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    .restart local v2       #viewToRelocate:Lcom/sec/android/glview/TwGLView;
    .restart local p1
    :cond_6
    instance-of v3, p2, Lcom/android/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 204
    check-cast v3, Lcom/android/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    invoke-virtual {v3, v2}, Lcom/android/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->addToFirst(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    .line 225
    .end local v2           #viewToRelocate:Lcom/sec/android/glview/TwGLView;
    .end local p1
    .restart local v0       #camcorderSideMenu:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;
    .restart local v1       #cameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    :cond_7
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->setDraggable(Z)V

    goto :goto_1
.end method

.method public onTouchOver(Lcom/sec/android/glview/TwGLView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 165
    if-nez p1, :cond_2

    .line 166
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 173
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    const v1, 0x3e4ccccd

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setNormalBGVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 262
    :cond_0
    return-void
.end method

.method public setPressedBGVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 268
    :cond_0
    return-void
.end method
