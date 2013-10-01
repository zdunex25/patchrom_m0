.class public Lcom/android/camera/ui/PieRenderer;
.super Lcom/android/camera/ui/OverlayRenderer;
.source "PieRenderer.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PieRenderer$LinearAnimation;,
        Lcom/android/camera/ui/PieRenderer$ScaleAnimation;,
        Lcom/android/camera/ui/PieRenderer$Disappear;,
        Lcom/android/camera/ui/PieRenderer$EndAction;,
        Lcom/android/camera/ui/PieRenderer$PieListener;
    }
.end annotation


# instance fields
.field private mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

.field private mBlockFocus:Z

.field private mCenter:Landroid/graphics/Point;

.field private mCenterX:I

.field private mCenterY:I

.field private mCircle:Landroid/graphics/RectF;

.field private mCircleSize:I

.field private mCurrentItem:Lcom/android/camera/ui/PieItem;

.field private mDial:Landroid/graphics/RectF;

.field private mDialAngle:I

.field private mDisappear:Ljava/lang/Runnable;

.field private mDown:Landroid/graphics/Point;

.field private mEndAction:Landroid/view/animation/Animation$AnimationListener;

.field private mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

.field private mFailColor:I

.field private volatile mFocusCancelled:Z

.field private mFocusPaint:Landroid/graphics/Paint;

.field private mFocusX:I

.field private mFocusY:I

.field private mFocused:Z

.field private mHandler:Landroid/os/Handler;

.field private mInnerOffset:I

.field private mInnerStroke:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/camera/ui/PieRenderer$PieListener;

.field private mOpenItem:Lcom/android/camera/ui/PieItem;

.field private mOpening:Z

.field private mOuterStroke:I

.field private mPoint1:Landroid/graphics/Point;

.field private mPoint2:Landroid/graphics/Point;

.field private mRadius:I

.field private mRadiusInc:I

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mStartAnimationAngle:I

.field private volatile mState:I

.field private mSubPaint:Landroid/graphics/Paint;

.field private mSuccessColor:I

.field private mTapMode:Z

.field private mTouchOffset:I

.field private mTouchSlopSquared:I

.field private mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Lcom/android/camera/ui/OverlayRenderer;-><init>()V

    .line 54
    new-instance v0, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    .line 60
    new-instance v0, Lcom/android/camera/ui/PieRenderer$Disappear;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/PieRenderer$Disappear;-><init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    .line 61
    new-instance v0, Lcom/android/camera/ui/PieRenderer$EndAction;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/PieRenderer$EndAction;-><init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mEndAction:Landroid/view/animation/Animation$AnimationListener;

    .line 122
    new-instance v0, Lcom/android/camera/ui/PieRenderer$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PieRenderer$1;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer;->init(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/ui/PieRenderer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/ui/PieRenderer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterX:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/camera/ui/PieRenderer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterY:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/PieRenderer;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PieRenderer;->setCircle(II)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/camera/ui/PieRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/camera/ui/PieRenderer;->mFocused:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/camera/ui/PieRenderer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/PieRenderer;)Lcom/android/camera/ui/PieRenderer$PieListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mListener:Lcom/android/camera/ui/PieRenderer$PieListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/PieRenderer;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenter:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$LinearAnimation;)Lcom/android/camera/ui/PieRenderer$LinearAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->deselect()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ui/PieRenderer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$LinearAnimation;)Lcom/android/camera/ui/PieRenderer$LinearAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/ui/PieRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusCancelled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/PieRenderer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    return-object v0
.end method

.method private cancelFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusCancelled:Z

    .line 719
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 720
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;->cancel()V

    .line 723
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/ui/PieRenderer;->mFocusCancelled:Z

    .line 724
    iput-boolean v2, p0, Lcom/android/camera/ui/PieRenderer;->mFocused:Z

    .line 725
    iput v2, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 726
    return-void
.end method

.method private static convertCart(IILandroid/graphics/Point;)V
    .locals 8
    .parameter "angle"
    .parameter "radius"
    .parameter "out"

    .prologue
    const-wide/high16 v6, 0x3fe0

    .line 681
    const-wide v2, 0x401921fb54442d18L

    rem-int/lit16 v4, p0, 0x168

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L

    div-double v0, v2, v4

    .line 682
    .local v0, a:D
    int-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, p2, Landroid/graphics/Point;->x:I

    .line 683
    int-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, p2, Landroid/graphics/Point;->y:I

    .line 684
    return-void
.end method

.method private deselect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 516
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOpenItem:Lcom/android/camera/ui/PieItem;

    if-eqz v0, :cond_1

    .line 520
    iput-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mOpenItem:Lcom/android/camera/ui/PieItem;

    .line 522
    :cond_1
    iput-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    .line 523
    return-void
.end method

.method private drawItem(Landroid/graphics/Canvas;Lcom/android/camera/ui/PieItem;F)V
    .locals 5
    .parameter "canvas"
    .parameter "item"
    .parameter "alpha"

    .prologue
    .line 400
    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 401
    invoke-virtual {p2}, Lcom/android/camera/ui/PieItem;->getPath()Landroid/graphics/Path;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 402
    invoke-virtual {p2}, Lcom/android/camera/ui/PieItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    .line 404
    .local v0, p:Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 405
    .local v2, state:I
    invoke-virtual {p2}, Lcom/android/camera/ui/PieItem;->getStartAngle()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {p0, v3, v4}, Lcom/android/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v1

    .line 406
    .local v1, r:F
    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 407
    invoke-virtual {p2}, Lcom/android/camera/ui/PieItem;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 408
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 410
    .end local v0           #p:Landroid/graphics/Paint;
    .end local v1           #r:F
    .end local v2           #state:I
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/ui/PieItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, 0x3f80

    :goto_0
    mul-float/2addr p3, v3

    .line 412
    invoke-virtual {p2, p3}, Lcom/android/camera/ui/PieItem;->setAlpha(F)V

    .line 413
    invoke-virtual {p2, p1}, Lcom/android/camera/ui/PieItem;->draw(Landroid/graphics/Canvas;)V

    .line 416
    :cond_1
    return-void

    .line 410
    :cond_2
    const v3, 0x3e99999a

    goto :goto_0
.end method

.method private drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "angle"
    .parameter "p"

    .prologue
    .line 674
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mPoint1:Landroid/graphics/Point;

    invoke-static {p2, v0, v1}, Lcom/android/camera/ui/PieRenderer;->convertCart(IILandroid/graphics/Point;)V

    .line 675
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mPoint2:Landroid/graphics/Point;

    invoke-static {p2, v0, v1}, Lcom/android/camera/ui/PieRenderer;->convertCart(IILandroid/graphics/Point;)V

    .line 676
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mPoint1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mPoint1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mPoint2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mPoint2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 678
    return-void
.end method

.method private fadeIn()V
    .locals 3

    .prologue
    .line 252
    new-instance v0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;-><init>(Lcom/android/camera/ui/PieRenderer;FF)V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    .line 253
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->setDuration(J)V

    .line 254
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    new-instance v1, Lcom/android/camera/ui/PieRenderer$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PieRenderer$2;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 268
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->startNow()V

    .line 269
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 270
    return-void
.end method

.method private findItem(Landroid/graphics/PointF;)Lcom/android/camera/ui/PieItem;
    .locals 4
    .parameter "polar"

    .prologue
    .line 574
    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer;->mOpenItem:Lcom/android/camera/ui/PieItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer;->mOpenItem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v3}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v2

    .line 575
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PieItem;

    .line 576
    .local v1, item:Lcom/android/camera/ui/PieItem;
    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/PieRenderer;->inside(Landroid/graphics/PointF;Lcom/android/camera/ui/PieItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 580
    .end local v1           #item:Lcom/android/camera/ui/PieItem;
    :goto_1
    return-object v1

    .line 574
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mItems:Ljava/util/List;

    goto :goto_0

    .line 580
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getDegrees(D)F
    .locals 6
    .parameter "angle"

    .prologue
    .line 347
    const-wide v0, 0x4076800000000000L

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v2, p1

    const-wide v4, 0x400921fb54442d18L

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getPolar(FFZ)Landroid/graphics/PointF;
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "useOffset"

    .prologue
    const/4 v5, 0x0

    .line 552
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 554
    .local v0, res:Landroid/graphics/PointF;
    const v1, 0x3fc90fdb

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 555
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    .line 556
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sub-float p2, v1, p2

    .line 557
    mul-float v1, p1, p1

    mul-float v2, p2, p2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 558
    cmpl-float v1, p1, v5

    if-eqz v1, :cond_0

    .line 559
    float-to-double v1, p2

    float-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 560
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_0

    .line 561
    const-wide v1, 0x401921fb54442d18L

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-double v3, v3

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 564
    :cond_0
    iget v2, v0, Landroid/graphics/PointF;->y:F

    if-eqz p3, :cond_1

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mTouchOffset:I

    :goto_0
    int-to-float v1, v1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 565
    return-object v0

    .line 564
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRandomRange()I
    .locals 6

    .prologue
    .line 626
    const-wide/high16 v0, -0x3fb2

    const-wide/high16 v2, 0x405e

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private hasMoved(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    .line 491
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mTouchSlopSquared:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .parameter "ctx"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 155
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/PieRenderer;->setVisible(Z)V

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mItems:Ljava/util/List;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 158
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0e003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mRadius:I

    .line 159
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mRadius:I

    const v2, 0x7f0e0041

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    .line 160
    const v1, 0x7f0e003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    .line 161
    const v1, 0x7f0e003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mTouchOffset:I

    .line 162
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCenter:Landroid/graphics/Point;

    .line 163
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    .line 164
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0x33

    const/16 v4, 0xb5

    const/16 v5, 0xe5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSubPaint:Landroid/graphics/Paint;

    .line 167
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSubPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSubPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc8

    const/16 v3, 0xfa

    const/16 v4, 0xe6

    const/16 v5, 0x80

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    .line 170
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 171
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    const v1, -0xff0100

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mSuccessColor:I

    .line 174
    const/high16 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mFailColor:I

    .line 175
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCircle:Landroid/graphics/RectF;

    .line 176
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDial:Landroid/graphics/RectF;

    .line 177
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mPoint1:Landroid/graphics/Point;

    .line 178
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mPoint2:Landroid/graphics/Point;

    .line 179
    const v1, 0x7f0e0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    .line 180
    const v1, 0x7f0e0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mOuterStroke:I

    .line 181
    const v1, 0x7f0e0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerStroke:I

    .line 182
    iput v6, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 183
    iput-boolean v6, p0, Lcom/android/camera/ui/PieRenderer;->mBlockFocus:Z

    .line 184
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mTouchSlopSquared:I

    .line 185
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mTouchSlopSquared:I

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mTouchSlopSquared:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mTouchSlopSquared:I

    .line 186
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    .line 187
    return-void
.end method

.method private inside(Landroid/graphics/PointF;Lcom/android/camera/ui/PieItem;)Z
    .locals 2
    .parameter "polar"
    .parameter "item"

    .prologue
    .line 584
    invoke-virtual {p2}, Lcom/android/camera/ui/PieItem;->getInnerRadius()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/camera/ui/PieItem;->getStartAngle()F

    move-result v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/camera/ui/PieItem;->getStartAngle()F

    move-result v0

    invoke-virtual {p2}, Lcom/android/camera/ui/PieItem;->getSweep()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/camera/ui/PieItem;->getOuterRadius()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutItems(Ljava/util/List;FIII)V
    .locals 23
    .parameter
    .parameter "centerAngle"
    .parameter "inner"
    .parameter "outer"
    .parameter "gap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/PieItem;",
            ">;FIII)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    const v10, 0x3e060a92

    .line 290
    .local v10, emptyangle:F
    const v3, 0x40060a92

    const/high16 v4, 0x4000

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    div-float v17, v3, v4

    .line 291
    .local v17, sweep:F
    const v3, 0x3f860a92

    sub-float v3, p2, v3

    add-float/2addr v3, v10

    const/high16 v4, 0x4000

    div-float v4, v17, v4

    add-float v9, v3, v4

    .line 295
    .local v9, angle:F
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/ui/PieItem;

    .line 296
    .local v13, item:Lcom/android/camera/ui/PieItem;
    invoke-virtual {v13}, Lcom/android/camera/ui/PieItem;->getCenter()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 297
    invoke-virtual {v13}, Lcom/android/camera/ui/PieItem;->getSweep()F

    move-result v17

    .line 301
    .end local v13           #item:Lcom/android/camera/ui/PieItem;
    :cond_1
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v3

    move/from16 v0, p5

    int-to-float v4, v0

    sub-float v4, v3, v4

    move/from16 v0, v17

    float-to-double v6, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v3

    move/from16 v0, p5

    int-to-float v6, v0

    add-float v5, v3, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/ui/PieRenderer;->mCenter:Landroid/graphics/Point;

    move-object/from16 v3, p0

    move/from16 v6, p4

    move/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/ui/PieRenderer;->makeSlice(FFIILandroid/graphics/Point;)Landroid/graphics/Path;

    move-result-object v15

    .line 303
    .local v15, path:Landroid/graphics/Path;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v5, v9

    .end local v9           #angle:F
    .local v5, angle:F
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/ui/PieItem;

    .line 305
    .restart local v13       #item:Lcom/android/camera/ui/PieItem;
    invoke-virtual {v13, v15}, Lcom/android/camera/ui/PieItem;->setPath(Landroid/graphics/Path;)V

    .line 306
    invoke-virtual {v13}, Lcom/android/camera/ui/PieItem;->getCenter()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 307
    invoke-virtual {v13}, Lcom/android/camera/ui/PieItem;->getCenter()F

    move-result v5

    .line 309
    :cond_2
    invoke-virtual {v13}, Lcom/android/camera/ui/PieItem;->getIntrinsicWidth()I

    move-result v18

    .line 310
    .local v18, w:I
    invoke-virtual {v13}, Lcom/android/camera/ui/PieItem;->getIntrinsicHeight()I

    move-result v11

    .line 312
    .local v11, h:I
    sub-int v3, p4, p3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    add-int v16, p3, v3

    .line 313
    .local v16, r:I
    move/from16 v0, v16

    int-to-double v3, v0

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v3, v6

    double-to-int v0, v3

    move/from16 v19, v0

    .line 314
    .local v19, x:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move/from16 v0, v16

    int-to-double v6, v0

    float-to-double v0, v5

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v6, v6, v21

    double-to-int v4, v6

    sub-int/2addr v3, v4

    div-int/lit8 v4, v11, 0x2

    sub-int v20, v3, v4

    .line 315
    .local v20, y:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int v3, v3, v19

    div-int/lit8 v4, v18, 0x2

    sub-int v19, v3, v4

    .line 316
    add-int v3, v19, v18

    add-int v4, v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1, v3, v4}, Lcom/android/camera/ui/PieItem;->setBounds(IIII)V

    .line 317
    const/high16 v3, 0x4000

    div-float v3, v17, v3

    sub-float v14, v5, v3

    .line 318
    .local v14, itemstart:F
    move/from16 v0, v17

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v13, v14, v0, v1, v2}, Lcom/android/camera/ui/PieItem;->setGeometry(FFII)V

    .line 319
    invoke-virtual {v13}, Lcom/android/camera/ui/PieItem;->hasItems()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 320
    invoke-virtual {v13}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    div-int/lit8 v3, v3, 0x2

    add-int v7, p4, v3

    move-object/from16 v3, p0

    move/from16 v6, p3

    move/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/ui/PieRenderer;->layoutItems(Ljava/util/List;FIII)V

    .line 323
    :cond_3
    add-float v5, v5, v17

    .line 324
    goto/16 :goto_0

    .line 325
    .end local v11           #h:I
    .end local v13           #item:Lcom/android/camera/ui/PieItem;
    .end local v14           #itemstart:F
    .end local v16           #r:I
    .end local v18           #w:I
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_4
    return-void
.end method

.method private layoutPie()V
    .locals 7

    .prologue
    .line 280
    const/4 v6, 0x2

    .line 281
    .local v6, rgap:I
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mRadius:I

    add-int v3, v0, v6

    .line 282
    .local v3, inner:I
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mRadius:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    add-int/2addr v0, v1

    sub-int v4, v0, v6

    .line 283
    .local v4, outer:I
    const/4 v5, 0x1

    .line 284
    .local v5, gap:I
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mItems:Ljava/util/List;

    const v2, 0x3fc90fdb

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/PieRenderer;->layoutItems(Ljava/util/List;FIII)V

    .line 285
    return-void
.end method

.method private makeSlice(FFIILandroid/graphics/Point;)Landroid/graphics/Path;
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "outer"
    .parameter "inner"
    .parameter "center"

    .prologue
    .line 328
    new-instance v0, Landroid/graphics/RectF;

    iget v3, p5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p3

    int-to-float v3, v3

    iget v4, p5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, p3

    int-to-float v4, v4

    iget v5, p5, Landroid/graphics/Point;->x:I

    add-int/2addr v5, p3

    int-to-float v5, v5

    iget v6, p5, Landroid/graphics/Point;->y:I

    add-int/2addr v6, p3

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 331
    .local v0, bb:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p4

    int-to-float v3, v3

    iget v4, p5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, p4

    int-to-float v4, v4

    iget v5, p5, Landroid/graphics/Point;->x:I

    add-int/2addr v5, p4

    int-to-float v5, v5

    iget v6, p5, Landroid/graphics/Point;->y:I

    add-int/2addr v6, p4

    int-to-float v6, v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 334
    .local v1, bbi:Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 335
    .local v2, path:Landroid/graphics/Path;
    sub-float v3, p2, p1

    const/4 v4, 0x1

    invoke-virtual {v2, v0, p1, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 336
    sub-float v3, p1, p2

    invoke-virtual {v2, v1, p2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 337
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 338
    return-object v2
.end method

.method private onEnter(Lcom/android/camera/ui/PieItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 504
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/ui/PieItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 506
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    .line 507
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mOpenItem:Lcom/android/camera/ui/PieItem;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieItem;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->openCurrentItem()V

    .line 513
    :cond_1
    :goto_0
    return-void

    .line 511
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    goto :goto_0
.end method

.method private openCurrentItem()V
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieItem;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 528
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOpenItem:Lcom/android/camera/ui/PieItem;

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    .line 530
    new-instance v0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;-><init>(Lcom/android/camera/ui/PieRenderer;FF)V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    .line 531
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->setDuration(J)V

    .line 532
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    new-instance v1, Lcom/android/camera/ui/PieRenderer$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PieRenderer$4;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 546
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->startNow()V

    .line 547
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 549
    :cond_0
    return-void
.end method

.method private setCircle(II)V
    .locals 6
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCircle:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    add-int/2addr v4, p2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 646
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mDial:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 648
    return-void
.end method

.method private show(Z)V
    .locals 5
    .parameter "show"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 230
    if-eqz p1, :cond_2

    .line 231
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 233
    iput-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    .line 234
    iput-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mOpenItem:Lcom/android/camera/ui/PieItem;

    .line 235
    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PieItem;

    .line 236
    .local v1, item:Lcom/android/camera/ui/PieItem;
    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    goto :goto_0

    .line 238
    .end local v1           #item:Lcom/android/camera/ui/PieItem;
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->layoutPie()V

    .line 239
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->fadeIn()V

    .line 247
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/PieRenderer;->setVisible(Z)V

    .line 248
    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 249
    return-void

    .line 241
    :cond_2
    iput v2, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 242
    iput-boolean v2, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    .line 243
    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v3, :cond_1

    .line 244
    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v3}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->cancel()V

    goto :goto_1

    .line 248
    :cond_3
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private startAnimation(JZF)V
    .locals 6
    .parameter "duration"
    .parameter "timeout"
    .parameter "toScale"

    .prologue
    .line 737
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    int-to-float v4, v0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/PieRenderer;->startAnimation(JZFF)V

    .line 739
    return-void
.end method

.method private startAnimation(JZFF)V
    .locals 2
    .parameter "duration"
    .parameter "timeout"
    .parameter "fromScale"
    .parameter "toScale"

    .prologue
    .line 743
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PieRenderer;->setVisible(Z)V

    .line 744
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;->reset()V

    .line 745
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;->setDuration(J)V

    .line 746
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0, p4, p5}, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;->setScale(FF)V

    .line 747
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mEndAction:Landroid/view/animation/Animation$AnimationListener;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 748
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 749
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->update()V

    .line 750
    return-void

    .line 747
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startFadeOut()V
    .locals 3

    .prologue
    .line 351
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_PROPERTY_ANIMATOR:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderOverlay;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/PieRenderer$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PieRenderer$3;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 365
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->deselect()V

    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addItem(Lcom/android/camera/ui/PieItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public alignFocus(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 612
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;->cancel()V

    .line 613
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;->reset()V

    .line 614
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    .line 615
    iput p2, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    .line 616
    const/16 v0, 0x9d

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    .line 617
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PieRenderer;->setCircle(II)V

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocused:Z

    .line 619
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 730
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->cancelFocus()V

    .line 732
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 204
    return-void
.end method

.method public drawFocus(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x4234

    .line 651
    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mBlockFocus:Z

    if-eqz v0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mOuterStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 653
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 654
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 656
    .local v6, color:I
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 657
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocused:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mSuccessColor:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 660
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/PieRenderer;->drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 661
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    add-int/lit8 v0, v0, 0x2d

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/PieRenderer;->drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 662
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    add-int/lit16 v0, v0, 0xb4

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/PieRenderer;->drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 663
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    add-int/lit16 v0, v0, 0xe1

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/PieRenderer;->drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 664
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 666
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 667
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDial:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 668
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDial:Landroid/graphics/RectF;

    const/high16 v2, 0x4334

    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 669
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 670
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 657
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFailColor:I

    goto :goto_1
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public handlesTouch()Z
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x1

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    .line 223
    return-void
.end method

.method public layout(IIII)V
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 631
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/OverlayRenderer;->layout(IIII)V

    .line 632
    sub-int v0, p3, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterX:I

    .line 633
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterY:I

    .line 634
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterX:I

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    .line 635
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterY:I

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    .line 636
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/PieRenderer;->setCircle(II)V

    .line 637
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 638
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterX:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mCenterY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/PieRenderer;->setCenter(II)V

    .line 639
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->layoutPie()V

    .line 641
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/high16 v7, 0x3f80

    .line 369
    const/high16 v0, 0x3f80

    .line 370
    .local v0, alpha:F
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v6, :cond_2

    .line 371
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v6}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->getValue()F

    move-result v0

    .line 375
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 376
    .local v5, state:I
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v6, :cond_1

    .line 377
    const v6, 0x3f666666

    const v8, 0x3dcccccd

    mul-float/2addr v8, v0

    add-float v4, v6, v8

    .line 378
    .local v4, sf:F
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mCenter:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget-object v8, p0, Lcom/android/camera/ui/PieRenderer;->mCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {p1, v4, v4, v6, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 380
    .end local v4           #sf:F
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/PieRenderer;->drawFocus(Landroid/graphics/Canvas;)V

    .line 381
    iget v6, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    .line 382
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 397
    :goto_1
    return-void

    .line 372
    .end local v5           #state:I
    :cond_2
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v6, :cond_0

    .line 373
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v6}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->getValue()F

    move-result v0

    goto :goto_0

    .line 385
    .restart local v5       #state:I
    :cond_3
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mOpenItem:Lcom/android/camera/ui/PieItem;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v6, :cond_5

    .line 387
    :cond_4
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/PieItem;

    .line 388
    .local v3, item:Lcom/android/camera/ui/PieItem;
    invoke-direct {p0, p1, v3, v0}, Lcom/android/camera/ui/PieRenderer;->drawItem(Landroid/graphics/Canvas;Lcom/android/camera/ui/PieItem;F)V

    goto :goto_2

    .line 391
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/android/camera/ui/PieItem;
    :cond_5
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mOpenItem:Lcom/android/camera/ui/PieItem;

    if-eqz v6, :cond_7

    .line 392
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mOpenItem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v6}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/PieItem;

    .line 393
    .local v2, inner:Lcom/android/camera/ui/PieItem;
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v6, :cond_6

    const/high16 v6, 0x3f00

    mul-float/2addr v6, v0

    sub-float v6, v7, v6

    :goto_4
    invoke-direct {p0, p1, v2, v6}, Lcom/android/camera/ui/PieRenderer;->drawItem(Landroid/graphics/Canvas;Lcom/android/camera/ui/PieItem;F)V

    goto :goto_3

    :cond_6
    move v6, v7

    goto :goto_4

    .line 396
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #inner:Lcom/android/camera/ui/PieItem;
    :cond_7
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "evt"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 421
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 422
    .local v5, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 423
    .local v0, action:I
    iget-boolean v6, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    if-nez v6, :cond_1

    move v6, v7

    :goto_0
    invoke-direct {p0, v4, v5, v6}, Lcom/android/camera/ui/PieRenderer;->getPolar(FFZ)Landroid/graphics/PointF;

    move-result-object v3

    .line 424
    .local v3, polar:Landroid/graphics/PointF;
    if-nez v0, :cond_3

    .line 425
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Point;->x:I

    .line 426
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Point;->y:I

    .line 427
    iput-boolean v8, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    .line 428
    iget-boolean v6, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    if-eqz v6, :cond_2

    .line 429
    invoke-direct {p0, v3}, Lcom/android/camera/ui/PieRenderer;->findItem(Landroid/graphics/PointF;)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 430
    .local v1, item:Lcom/android/camera/ui/PieItem;
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eq v6, v1, :cond_0

    .line 431
    const/16 v6, 0x8

    iput v6, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 432
    invoke-direct {p0, v1}, Lcom/android/camera/ui/PieRenderer;->onEnter(Lcom/android/camera/ui/PieItem;)V

    .line 487
    .end local v1           #item:Lcom/android/camera/ui/PieItem;
    :cond_0
    :goto_1
    return v7

    .end local v3           #polar:Landroid/graphics/PointF;
    :cond_1
    move v6, v8

    .line 423
    goto :goto_0

    .line 435
    .restart local v3       #polar:Landroid/graphics/PointF;
    :cond_2
    float-to-int v6, v4

    float-to-int v8, v5

    invoke-virtual {p0, v6, v8}, Lcom/android/camera/ui/PieRenderer;->setCenter(II)V

    .line 436
    invoke-direct {p0, v7}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    goto :goto_1

    .line 439
    :cond_3
    if-ne v7, v0, :cond_6

    .line 440
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 441
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    .line 442
    .restart local v1       #item:Lcom/android/camera/ui/PieItem;
    iget-boolean v6, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    if-eqz v6, :cond_4

    .line 443
    invoke-direct {p0, v3}, Lcom/android/camera/ui/PieRenderer;->findItem(Landroid/graphics/PointF;)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 444
    if-eqz v1, :cond_4

    iget-boolean v6, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    if-eqz v6, :cond_4

    .line 445
    iput-boolean v8, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    goto :goto_1

    .line 449
    :cond_4
    if-nez v1, :cond_5

    .line 450
    iput-boolean v8, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    .line 451
    invoke-direct {p0, v8}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    goto :goto_1

    .line 452
    :cond_5
    iget-boolean v6, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    if-nez v6, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/ui/PieItem;->hasItems()Z

    move-result v6

    if-nez v6, :cond_0

    .line 454
    invoke-virtual {v1}, Lcom/android/camera/ui/PieItem;->performClick()V

    .line 455
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->startFadeOut()V

    .line 456
    iput-boolean v8, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    goto :goto_1

    .line 460
    .end local v1           #item:Lcom/android/camera/ui/PieItem;
    :cond_6
    const/4 v6, 0x3

    if-ne v6, v0, :cond_9

    .line 461
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v6

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    if-eqz v6, :cond_8

    .line 462
    :cond_7
    invoke-direct {p0, v8}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    .line 464
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->deselect()V

    move v7, v8

    .line 465
    goto :goto_1

    .line 466
    :cond_9
    const/4 v6, 0x2

    if-ne v6, v0, :cond_e

    .line 467
    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcom/android/camera/ui/PieRenderer;->mRadius:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_b

    .line 468
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mOpenItem:Lcom/android/camera/ui/PieItem;

    if-eqz v6, :cond_a

    .line 469
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mOpenItem:Lcom/android/camera/ui/PieItem;

    :goto_2
    move v7, v8

    .line 473
    goto :goto_1

    .line 471
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->deselect()V

    goto :goto_2

    .line 475
    :cond_b
    invoke-direct {p0, v3}, Lcom/android/camera/ui/PieRenderer;->findItem(Landroid/graphics/PointF;)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 476
    .restart local v1       #item:Lcom/android/camera/ui/PieItem;
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer;->hasMoved(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 477
    .local v2, moved:Z
    if-eqz v1, :cond_e

    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eq v6, v1, :cond_e

    iget-boolean v6, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    if-eqz v6, :cond_c

    if-eqz v2, :cond_e

    .line 479
    :cond_c
    iput-boolean v8, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    .line 480
    if-eqz v2, :cond_d

    .line 482
    iput-boolean v8, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    .line 484
    :cond_d
    invoke-direct {p0, v1}, Lcom/android/camera/ui/PieRenderer;->onEnter(Lcom/android/camera/ui/PieItem;)V

    .end local v1           #item:Lcom/android/camera/ui/PieItem;
    .end local v2           #moved:Z
    :cond_e
    move v7, v8

    .line 487
    goto/16 :goto_1
.end method

.method public setBlockFocus(Z)V
    .locals 0
    .parameter "blocked"

    .prologue
    .line 598
    iput-boolean p1, p0, Lcom/android/camera/ui/PieRenderer;->mBlockFocus:Z

    .line 599
    if-eqz p1, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->clear()V

    .line 602
    :cond_0
    return-void
.end method

.method public setCenter(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenter:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 274
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenter:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/PieRenderer;->alignFocus(II)V

    .line 277
    return-void
.end method

.method public setFocus(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 605
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    .line 606
    iput p2, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    .line 607
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/PieRenderer;->setCircle(II)V

    .line 608
    return-void
.end method

.method public setPieListener(Lcom/android/camera/ui/PieRenderer$PieListener;)V
    .locals 0
    .parameter "pl"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mListener:Lcom/android/camera/ui/PieRenderer$PieListener;

    .line 148
    return-void
.end method

.method public showFail(Z)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 709
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 710
    const-wide/16 v0, 0x64

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/ui/PieRenderer;->startAnimation(JZF)V

    .line 712
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocused:Z

    .line 715
    :cond_0
    return-void
.end method

.method public showInCenter()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iput-boolean v1, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    .line 209
    invoke-direct {p0, v1}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    .line 219
    :goto_0
    return-void

    .line 211
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->cancelFocus()V

    .line 214
    :cond_1
    iput v3, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 215
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterX:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mCenterY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/PieRenderer;->setCenter(II)V

    .line 216
    iput-boolean v2, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    .line 217
    invoke-direct {p0, v2}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    goto :goto_0
.end method

.method public showStart()V
    .locals 7

    .prologue
    .line 688
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 695
    :goto_0
    return-void

    .line 689
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->cancelFocus()V

    .line 690
    const/16 v0, 0x43

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mStartAnimationAngle:I

    .line 691
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getRandomRange()I

    move-result v6

    .line 692
    .local v6, range:I
    const-wide/16 v1, 0x258

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mStartAnimationAngle:I

    add-int/2addr v0, v6

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/PieRenderer;->startAnimation(JZFF)V

    .line 694
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    goto :goto_0
.end method

.method public showSuccess(Z)V
    .locals 4
    .parameter "timeout"

    .prologue
    const/4 v3, 0x1

    .line 699
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    if-ne v0, v3, :cond_0

    .line 700
    const-wide/16 v0, 0x64

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/ui/PieRenderer;->startAnimation(JZF)V

    .line 702
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 703
    iput-boolean v3, p0, Lcom/android/camera/ui/PieRenderer;->mFocused:Z

    .line 705
    :cond_0
    return-void
.end method

.method public showsItems()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    return v0
.end method
