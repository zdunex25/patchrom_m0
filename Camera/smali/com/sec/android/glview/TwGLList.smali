.class public Lcom/sec/android/glview/TwGLList;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLList.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;,
        Lcom/sec/android/glview/TwGLList$OnScrollListener;,
        Lcom/sec/android/glview/TwGLList$OnItemSelectedListener;,
        Lcom/sec/android/glview/TwGLList$Adapter;
    }
.end annotation


# static fields
.field private static final BOUNCE_DECELERATION_POSITION_DIVIDE_FACTOR:F = 2.0f

.field private static final BOUNCE_EFFECT_IMAGE_DEFAULT_ALPHA:F = 0.0f

.field private static final BOUNCE_IMAGE_FULLY_VISIBLE_THRESHOLD_DIP:F = 100.0f

.field private static final BOUNCE_SEVERAL_TIMES:Z = false

.field private static final BOUNCE_SMOOTH_LANDING_FACTOR:F = 0.3f

.field private static final BOUNCING_VELOCITY_DIP:F = 3.0f

.field private static final COEFFICIENT_OF_RESTITUTION:F = 0.4f

.field private static final DEFAULT_SCROLLBAR_PADDING:I = 0x1

.field private static final DEFAULT_SCROLL_THRESHOLD_DIP:F = 10.0f

.field private static final DRAG_ATTENUATION_RATE_FACTOR:F = 0.2f

.field private static final FLING_VELOCITY_DIP:F = 0.6f

.field private static final HIDE_SCROLLBAR:I = 0x1

.field private static final SCROLLBAR_ID:I = 0xfffff

.field private static final SCROLLBAR_TIMEOUT:I = 0x3e8

.field public static final SCROLL_LANDSCAPE:I = 0x2

.field public static final SCROLL_PORTRAIT:I = 0x1

.field public static final STACK_DOWN:I = 0x0

.field public static final STACK_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwGLList"

.field private static final VELOCITY_MODERATION_RATIO:F = 0.3f

.field private static final VELOCITY_REVISE_LIMIT_DIP:F = 30.0f


# instance fields
.field private BOUNCE_EDGE_SIZE:F

.field private BOUNCE_IMAGE_SIZE:F

.field private mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

.field private mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

.field private mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

.field private mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

.field private final mBounceImageMaxAlphaThreshold:F

.field private mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

.field private mBouncing:Z

.field private final mBouncingVelocity:F

.field private mContentHeight:F

.field private mContentWidth:F

.field private mFirstFullyVisibleViewIndex:I

.field private final mFlingVelocity:F

.field private mFlingVelocityX:F

.field private mFlingVelocityY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLandscapeBounceMaxOffset:F

.field private mLandscapeBounceOffset:F

.field private mListVisibleHeight:F

.field private mListVisibleWidth:F

.field protected mMainHandler:Landroid/os/Handler;

.field private mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

.field private mPortraitBounceMaxOffset:F

.field private mPortraitBounceOffset:F

.field private mScroll:I

.field private mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

.field private mScrollBarOffset:F

.field private mScrollBarSize:F

.field private mScrollBarVisible:Z

.field private mScrollRequested:Z

.field private mScrollSumX:F

.field private mScrollSumY:F

.field private mScrollThreshold:F

.field private mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

.field private mScrollX:F

.field private mScrollY:F

.field private mScrolling:Z

.field private mStackOrientation:I

.field private final mVelocityLimit:F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 4
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v3, 0x4120

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 324
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 54
    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    .line 69
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    .line 72
    iput v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    .line 77
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    .line 80
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    .line 83
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 86
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 89
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 92
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 95
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 98
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 101
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    .line 104
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    .line 124
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    .line 127
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    .line 130
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    .line 132
    const/high16 v0, 0x4339

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    .line 134
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    .line 147
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    .line 150
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    .line 156
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 159
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 168
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 198
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    .line 202
    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    .line 207
    new-instance v0, Lcom/sec/android/glview/TwGLList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLList$1;-><init>(Lcom/sec/android/glview/TwGLList;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    .line 326
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    .line 327
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    .line 328
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    .line 329
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    .line 330
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41f0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    .line 335
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/glview/TwGLList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/glview/TwGLList;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/glview/TwGLList;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/glview/TwGLList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method private checkBoundary()Z
    .locals 7

    .prologue
    const v6, 0x3e99999a

    const/4 v5, 0x0

    .line 1478
    const/4 v1, 0x0

    .line 1479
    .local v1, ret:Z
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1480
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 1482
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1483
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 1484
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    .line 1486
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1487
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1488
    .local v0, originalVelocity:F
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1489
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1490
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1493
    .end local v0           #originalVelocity:F
    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    .line 1495
    :cond_1
    const/4 v1, 0x1

    .line 1554
    :cond_2
    :goto_0
    return v1

    .line 1496
    :cond_3
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 1498
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1499
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 1500
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_4

    .line 1502
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 1503
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1504
    .restart local v0       #originalVelocity:F
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1505
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1506
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1509
    .end local v0           #originalVelocity:F
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    .line 1511
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 1513
    :cond_6
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1514
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    goto :goto_0

    .line 1516
    :cond_7
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1517
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a

    .line 1519
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1520
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 1521
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_8

    .line 1523
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 1524
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1525
    .restart local v0       #originalVelocity:F
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1526
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1527
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1530
    .end local v0           #originalVelocity:F
    :cond_8
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    .line 1532
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1533
    :cond_a
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaWidth()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    .line 1535
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1536
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c

    .line 1537
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_b

    .line 1539
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 1540
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1541
    .restart local v0       #originalVelocity:F
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1542
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1543
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1546
    .end local v0           #originalVelocity:F
    :cond_b
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    .line 1548
    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1550
    :cond_d
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1551
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    goto/16 :goto_0
.end method

.method private setScrollBarLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f80

    .line 483
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_4

    .line 487
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_3

    .line 491
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatch;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 495
    :goto_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    .line 496
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 513
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 514
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    goto :goto_0

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatch;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 497
    :cond_4
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v0, v5, :cond_2

    .line 498
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_5

    .line 502
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLNinePatch;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 506
    :goto_3
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    .line 507
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatch;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto/16 :goto_2

    .line 504
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLNinePatch;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    goto :goto_3
.end method

.method private setVisibleArea()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    .line 450
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    .line 453
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 458
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 460
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 465
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 466
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 468
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 469
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 751
    instance-of v2, p1, Lcom/sec/android/glview/TwGLList;

    if-eqz v2, :cond_0

    .line 752
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 754
    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v2, :cond_4

    .line 755
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 756
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 757
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 766
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    .line 767
    .local v1, paddings:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 769
    .local v0, childPaddings:Landroid/graphics/Rect;
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 770
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 771
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 775
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 776
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 780
    :goto_2
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 781
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 783
    :cond_2
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-eqz v2, :cond_3

    .line 784
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_7

    .line 785
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 789
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_8

    .line 790
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 794
    :goto_4
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 795
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 798
    :cond_3
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 799
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 800
    return-void

    .line 760
    .end local v0           #childPaddings:Landroid/graphics/Rect;
    .end local v1           #paddings:Landroid/graphics/Rect;
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 761
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 762
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto/16 :goto_0

    .line 773
    .restart local v0       #childPaddings:Landroid/graphics/Rect;
    .restart local v1       #paddings:Landroid/graphics/Rect;
    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 778
    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2

    .line 787
    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 792
    :cond_8
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1707
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 1709
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    .line 1711
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 1712
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1713
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 1715
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_2

    .line 1716
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1717
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 1719
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 1720
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1721
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 1723
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    .line 1724
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1725
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    .line 1728
    :cond_4
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1729
    return-void
.end method

.method public contains(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x0

    .line 431
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method public findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;
    .locals 2
    .parameter "focusedView"
    .parameter "direction"

    .prologue
    .line 1619
    const/4 v0, 0x0

    .line 1623
    .local v0, newDirection:I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getCenterPivot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1624
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1675
    move v0, p2

    .line 1679
    :cond_0
    :goto_0
    invoke-super {p0, p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    return-object v1

    .line 1626
    :pswitch_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1628
    :sswitch_0
    const/16 v0, 0x82

    .line 1629
    goto :goto_0

    .line 1631
    :sswitch_1
    const/16 v0, 0x21

    .line 1632
    goto :goto_0

    .line 1634
    :sswitch_2
    const/16 v0, 0x11

    .line 1635
    goto :goto_0

    .line 1637
    :sswitch_3
    const/16 v0, 0x42

    goto :goto_0

    .line 1642
    :pswitch_1
    sparse-switch p2, :sswitch_data_1

    goto :goto_0

    .line 1644
    :sswitch_4
    const/16 v0, 0x42

    .line 1645
    goto :goto_0

    .line 1647
    :sswitch_5
    const/16 v0, 0x11

    .line 1648
    goto :goto_0

    .line 1650
    :sswitch_6
    const/16 v0, 0x82

    .line 1651
    goto :goto_0

    .line 1653
    :sswitch_7
    const/16 v0, 0x21

    goto :goto_0

    .line 1658
    :pswitch_2
    sparse-switch p2, :sswitch_data_2

    goto :goto_0

    .line 1660
    :sswitch_8
    const/16 v0, 0x21

    .line 1661
    goto :goto_0

    .line 1663
    :sswitch_9
    const/16 v0, 0x82

    .line 1664
    goto :goto_0

    .line 1666
    :sswitch_a
    const/16 v0, 0x42

    .line 1667
    goto :goto_0

    .line 1669
    :sswitch_b
    const/16 v0, 0x11

    goto :goto_0

    .line 1624
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1626
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch

    .line 1642
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_4
        0x21 -> :sswitch_6
        0x42 -> :sswitch_5
        0x82 -> :sswitch_7
    .end sparse-switch

    .line 1658
    :sswitch_data_2
    .sparse-switch
        0x11 -> :sswitch_8
        0x21 -> :sswitch_a
        0x42 -> :sswitch_9
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method public getFirstFullyVisibleViewIndex()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    return v0
.end method

.method public getScrollThreshold()F
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    return v0
.end method

.method protected hideScrollBar()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 575
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScrollBarAutoHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 579
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    goto :goto_0

    .line 582
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_4

    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    goto :goto_0

    .line 587
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 588
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    new-instance v1, Lcom/sec/android/glview/TwGLList$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLList$2;-><init>(Lcom/sec/android/glview/TwGLList;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 598
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->startAnimation()V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 734
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    monitor-enter v1

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 736
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 739
    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 741
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$Adapter;->reset()V

    .line 742
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    .line 743
    return-void

    .line 736
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 1206
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onAlphaUpdated()V

    .line 1207
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1214
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onAlphaUpdated()V

    .line 1216
    :cond_2
    return-void
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1230
    invoke-virtual {p0, p4, p5}, Lcom/sec/android/glview/TwGLList;->translate(FF)V

    .line 1231
    return-void
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1238
    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1223
    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 17
    .parameter "gl"

    .prologue
    .line 878
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    monitor-enter v12

    .line 879
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    if-eqz v11, :cond_0

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->scrollToVisible()Z

    .line 882
    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 883
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 884
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    .line 885
    .local v8, size:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v11

    if-nez v11, :cond_b

    .line 887
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v8, :cond_2

    .line 888
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/glview/TwGLView;

    .line 889
    .local v9, view:Lcom/sec/android/glview/TwGLView;
    if-nez v9, :cond_1

    .line 887
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 894
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v13, v14}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_1

    .line 1200
    .end local v5           #i:I
    .end local v8           #size:I
    .end local v9           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 896
    .restart local v5       #i:I
    .restart local v8       #size:I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v11, :cond_3

    .line 897
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    mul-float/2addr v13, v14

    neg-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FFZ)V

    .line 901
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 902
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 903
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 904
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 908
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_9

    .line 909
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 910
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v11, v11, v13

    if-gez v11, :cond_4

    .line 911
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 917
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_a

    .line 918
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 919
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v11, v11, v13

    if-gez v11, :cond_5

    .line 920
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1150
    .end local v5           #i:I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-eqz v11, :cond_7

    .line 1151
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1153
    :cond_7
    const/4 v2, 0x0

    .line 1154
    .local v2, checked:Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getMatrix()[F

    move-result-object v7

    .line 1155
    .local v7, matrix:[F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1156
    .local v3, clipRect:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_4
    if-ge v5, v8, :cond_27

    .line 1157
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/glview/TwGLView;

    .line 1159
    .restart local v9       #view:Lcom/sec/android/glview/TwGLView;
    if-nez v2, :cond_8

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->isClipped()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1160
    if-nez v5, :cond_26

    .line 1161
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    .line 1162
    const/4 v2, 0x1

    .line 1168
    :cond_8
    :goto_5
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1169
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 1170
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v7, v3}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1171
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 1172
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1156
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 913
    .end local v2           #checked:Z
    .end local v3           #clipRect:Landroid/graphics/Rect;
    .end local v7           #matrix:[F
    .end local v9           #view:Lcom/sec/android/glview/TwGLView;
    :cond_9
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 914
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_4

    .line 915
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto/16 :goto_2

    .line 922
    :cond_a
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 923
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_5

    .line 924
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto/16 :goto_3

    .line 926
    .end local v5           #i:I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-eqz v11, :cond_5

    .line 937
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_18

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpg-float v11, v11, v13

    if-gez v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v4

    .line 940
    .local v4, height:F
    :goto_6
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    div-float/2addr v11, v13

    const/high16 v13, 0x3f80

    cmpl-float v11, v11, v13

    if-lez v11, :cond_d

    const/high16 v1, 0x3f80

    .line 941
    .local v1, alpha:F
    :goto_7
    const/high16 v11, 0x3f80

    mul-float/2addr v11, v1

    const/4 v13, 0x0

    add-float v1, v11, v13

    .line 943
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_13

    .line 947
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/glview/TwGLView;

    .line 948
    .restart local v9       #view:Lcom/sec/android/glview/TwGLView;
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v13, v14}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_8

    .line 938
    .end local v1           #alpha:F
    .end local v4           #height:F
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #view:Lcom/sec/android/glview/TwGLView;
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto :goto_6

    .line 940
    .restart local v4       #height:F
    :cond_d
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    div-float v1, v11, v13

    goto :goto_7

    .line 950
    .restart local v1       #alpha:F
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v11, :cond_f

    .line 951
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 954
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 955
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-virtual {v11, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 956
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 961
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_11

    .line 962
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 975
    :goto_9
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v11, v13

    const/4 v13, 0x0

    cmpg-float v11, v11, v13

    if-gtz v11, :cond_10

    .line 982
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 983
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 984
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 1132
    .end local v1           #alpha:F
    .end local v4           #height:F
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_10
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-nez v11, :cond_5

    .line 1134
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/glview/TwGLView;

    .line 1135
    .restart local v9       #view:Lcom/sec/android/glview/TwGLView;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v13, v14}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_b

    .line 965
    .end local v9           #view:Lcom/sec/android/glview/TwGLView;
    .restart local v1       #alpha:F
    .restart local v4       #height:F
    :cond_11
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    cmpl-float v11, v11, v13

    if-lez v11, :cond_12

    .line 966
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto :goto_9

    .line 968
    :cond_12
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const v13, 0x3e99999a

    mul-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto :goto_9

    .line 987
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_13
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v11, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v13

    cmpg-float v11, v11, v13

    if-gez v11, :cond_10

    .line 991
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/glview/TwGLView;

    .line 992
    .restart local v9       #view:Lcom/sec/android/glview/TwGLView;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    sub-float v13, v4, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v13, v14}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_c

    .line 994
    .end local v9           #view:Lcom/sec/android/glview/TwGLView;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v11, :cond_15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v11, :cond_15

    .line 995
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float v15, v4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 999
    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-virtual {v11, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v11, v13, v14}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1008
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v11, v11, v13

    if-gez v11, :cond_16

    .line 1009
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1022
    :goto_d
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    sub-float v13, v4, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    cmpl-float v11, v11, v13

    if-ltz v11, :cond_10

    .line 1029
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    sub-float v11, v4, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1030
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1031
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_a

    .line 1012
    :cond_16
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    cmpl-float v11, v11, v13

    if-lez v11, :cond_17

    .line 1013
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto :goto_d

    .line 1015
    :cond_17
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const v13, 0x3e99999a

    mul-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto/16 :goto_d

    .line 1035
    .end local v1           #alpha:F
    .end local v4           #height:F
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_18
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_10

    .line 1036
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpg-float v11, v11, v13

    if-gez v11, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v10

    .line 1038
    .local v10, width:F
    :goto_e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    const v14, 0x3dcccccd

    mul-float/2addr v13, v14

    div-float/2addr v11, v13

    const/high16 v13, 0x3f80

    cmpl-float v11, v11, v13

    if-lez v11, :cond_1a

    const/high16 v1, 0x3f80

    .line 1039
    .restart local v1       #alpha:F
    :goto_f
    const/high16 v11, 0x3f80

    mul-float/2addr v11, v1

    const/4 v13, 0x0

    add-float v1, v11, v13

    .line 1041
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_1f

    .line 1045
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/glview/TwGLView;

    .line 1046
    .restart local v9       #view:Lcom/sec/android/glview/TwGLView;
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v13, v14}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_10

    .line 1036
    .end local v1           #alpha:F
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #view:Lcom/sec/android/glview/TwGLView;
    .end local v10           #width:F
    :cond_19
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_e

    .line 1038
    .restart local v10       #width:F
    :cond_1a
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    const v14, 0x3e4ccccd

    mul-float/2addr v13, v14

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    div-float v1, v11, v13

    goto :goto_f

    .line 1048
    .restart local v1       #alpha:F
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v11, :cond_1c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v11, :cond_1c

    .line 1049
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 1052
    :cond_1c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v14

    invoke-virtual {v11, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1059
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_1d

    .line 1060
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1073
    :goto_11
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v11, v13

    const/4 v13, 0x0

    cmpg-float v11, v11, v13

    if-gtz v11, :cond_10

    .line 1080
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1081
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1082
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_a

    .line 1063
    :cond_1d
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    cmpl-float v11, v11, v13

    if-lez v11, :cond_1e

    .line 1064
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto :goto_11

    .line 1066
    :cond_1e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const v13, 0x3e99999a

    mul-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto :goto_11

    .line 1085
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_1f
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v11, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaWidth()F

    move-result v13

    cmpg-float v11, v11, v13

    if-gez v11, :cond_10

    .line 1089
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/glview/TwGLView;

    .line 1090
    .restart local v9       #view:Lcom/sec/android/glview/TwGLView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    sub-float v11, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v11, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v13, v14}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_12

    .line 1092
    .end local v9           #view:Lcom/sec/android/glview/TwGLView;
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v11, :cond_21

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v11, :cond_21

    .line 1093
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float v14, v10, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    neg-float v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 1096
    :cond_21
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v14

    invoke-virtual {v11, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v14, v15

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1104
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v11, v11, v13

    if-gez v11, :cond_22

    .line 1105
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1118
    :goto_13
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float v13, v10, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    cmpl-float v11, v11, v13

    if-ltz v11, :cond_10

    .line 1125
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    sub-float v11, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1126
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1127
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_a

    .line 1108
    :cond_22
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    cmpl-float v11, v11, v13

    if-lez v11, :cond_23

    .line 1109
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto :goto_13

    .line 1111
    :cond_23
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const v13, 0x3e99999a

    mul-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto/16 :goto_13

    .line 1137
    .end local v1           #alpha:F
    .end local v10           #width:F
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v11, :cond_25

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v11, :cond_25

    .line 1138
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v13, v14

    neg-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 1141
    :cond_25
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1146
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_3

    .line 1163
    .end local v6           #i$:Ljava/util/Iterator;
    .restart local v2       #checked:Z
    .restart local v3       #clipRect:Landroid/graphics/Rect;
    .restart local v5       #i:I
    .restart local v7       #matrix:[F
    .restart local v9       #view:Lcom/sec/android/glview/TwGLView;
    :cond_26
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    add-int/lit8 v13, v5, -0x1

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->isClipped()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1164
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    .line 1165
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 1175
    .end local v9           #view:Lcom/sec/android/glview/TwGLView;
    :cond_27
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v11, :cond_28

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v11, :cond_28

    .line 1176
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1177
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 1178
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v7, v3}, Lcom/sec/android/glview/TwGLNinePatch;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1179
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 1180
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1183
    :cond_28
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v11, :cond_29

    .line 1184
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1185
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 1186
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v7, v3}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v7, v3}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1188
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 1189
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1191
    :cond_29
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v11, :cond_2a

    .line 1192
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1193
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 1194
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v7, v3}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v7, v3}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1196
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 1197
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1200
    :cond_2a
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1201
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mDrawFirstTime:Z

    .line 1202
    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .parameter "view"
    .parameter "focusStatus"

    .prologue
    const/4 v0, 0x1

    .line 1462
    if-ne p2, v0, :cond_0

    .line 1463
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    .line 1464
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    .line 1466
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1451
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1457
    const/4 v0, 0x0

    return v0
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 350
    const/4 v0, 0x1

    .line 351
    .local v0, ret:Z
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    .line 352
    return v0
.end method

.method public onReset()V
    .locals 4

    .prologue
    .line 1684
    iget-object v3, p0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 1685
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v2, :cond_0

    .line 1686
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatch;->reset()V

    .line 1687
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_1

    .line 1688
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1690
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_2

    .line 1691
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1693
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_3

    .line 1694
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1696
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_4

    .line 1697
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1699
    :cond_4
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 1700
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    goto :goto_0

    .line 1702
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1703
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "e"

    .prologue
    .line 1244
    invoke-virtual {p0, p2}, Lcom/sec/android/glview/TwGLList;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "e"

    .prologue
    .line 1252
    iget-object v8, p0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    monitor-enter v8

    .line 1253
    :try_start_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1254
    .local v3, et:Landroid/view/MotionEvent;
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0, v7, v9, v10}, Lcom/sec/android/glview/TwGLList;->mapPointReverse([FFF)V

    .line 1255
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mTransformedScreenCoordinate:[F

    const/4 v9, 0x0

    aget v7, v7, v9

    iget-object v9, p0, Lcom/sec/android/glview/TwGLList;->mTransformedScreenCoordinate:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v3, v7, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1257
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v5

    .line 1259
    .local v5, mBoundary:Z
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v7, :cond_0

    .line 1260
    new-instance v7, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;

    invoke-direct {v10, p0}, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;-><init>(Lcom/sec/android/glview/TwGLList;)V

    invoke-direct {v7, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGestureDetector:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, v3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 1264
    const/4 v7, 0x1

    :try_start_2
    monitor-exit v8

    .line 1444
    :goto_0
    return v7

    .line 1266
    :catch_0
    move-exception v7

    .line 1270
    :cond_1
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    .line 1271
    const-string v7, "TwGLList"

    const-string v9, "ACTION_DOWN"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    .line 1273
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    .line 1274
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1275
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1276
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 1277
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 1445
    .end local v3           #et:Landroid/view/MotionEvent;
    .end local v5           #mBoundary:Z
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1279
    .restart local v3       #et:Landroid/view/MotionEvent;
    .restart local v5       #mBoundary:Z
    :cond_2
    :try_start_3
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mDragging:Z

    if-nez v7, :cond_5

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_5

    .line 1280
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    .line 1281
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_3

    .line 1283
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    .line 1284
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1287
    :cond_3
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v9, 0x2

    if-ne v7, v9, :cond_4

    .line 1288
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    .line 1290
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    .line 1291
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1294
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    .line 1295
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 1297
    :cond_5
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eqz v7, :cond_19

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mDragging:Z

    if-nez v7, :cond_19

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_19

    .line 1298
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    if-ne v7, v9, :cond_e

    .line 1299
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    sub-float v1, v7, v9

    .line 1300
    .local v1, delta:F
    move v2, v1

    .line 1303
    .local v2, deltaForContents:F
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-gez v7, :cond_6

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v9

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_8

    .line 1305
    :cond_6
    const/4 v2, 0x0

    .line 1317
    :cond_7
    :goto_1
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 1318
    .local v6, view:Lcom/sec/android/glview/TwGLView;
    if-nez v5, :cond_a

    .line 1319
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v2, v9}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_2

    .line 1306
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_8
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v1

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_9

    .line 1308
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    sub-float v2, v1, v7

    .line 1309
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto :goto_1

    .line 1310
    :cond_9
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    add-float/2addr v7, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_7

    .line 1312
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v7, v9

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    sub-float v2, v1, v7

    .line 1313
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto :goto_1

    .line 1321
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #view:Lcom/sec/android/glview/TwGLView;
    :cond_a
    const/4 v7, 0x0

    const v9, 0x3e4ccccd

    mul-float/2addr v9, v2

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v9, v10}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_2

    .line 1325
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_b
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_c

    .line 1326
    if-nez v5, :cond_f

    .line 1327
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v7, v9

    mul-float/2addr v7, v2

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    .line 1331
    :goto_3
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    neg-float v10, v10

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FF)V

    .line 1335
    :cond_c
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_d

    .line 1337
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1338
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1339
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1340
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1343
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1344
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1345
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1349
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    div-float/2addr v7, v9

    const/high16 v9, 0x3f80

    cmpl-float v7, v7, v9

    if-lez v7, :cond_10

    const/high16 v0, 0x3f80

    .line 1350
    .local v0, alpha:F
    :goto_4
    const/high16 v7, 0x3f80

    mul-float/2addr v7, v0

    const/4 v9, 0x0

    add-float v0, v7, v9

    .line 1351
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_11

    .line 1352
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1353
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1360
    .end local v0           #alpha:F
    :cond_d
    :goto_5
    if-nez v5, :cond_12

    .line 1361
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1366
    :goto_6
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    .line 1368
    .end local v1           #delta:F
    .end local v2           #deltaForContents:F
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_e
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v9, 0x2

    if-ne v7, v9, :cond_16

    .line 1369
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    sub-float v1, v7, v9

    .line 1370
    .restart local v1       #delta:F
    move v2, v1

    .line 1387
    .restart local v2       #deltaForContents:F
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 1388
    .restart local v6       #view:Lcom/sec/android/glview/TwGLView;
    if-nez v5, :cond_13

    .line 1389
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v2, v7, v9}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_7

    .line 1329
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_f
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v7, v9

    mul-float/2addr v7, v2

    const v9, 0x3e4ccccd

    mul-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    goto/16 :goto_3

    .line 1349
    :cond_10
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    div-float v0, v7, v9

    goto :goto_4

    .line 1354
    .restart local v0       #alpha:F
    :cond_11
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    cmpg-float v7, v7, v9

    if-gez v7, :cond_d

    .line 1355
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1356
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    goto :goto_5

    .line 1363
    .end local v0           #alpha:F
    :cond_12
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const v9, 0x3e4ccccd

    mul-float/2addr v9, v1

    add-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    goto :goto_6

    .line 1391
    .restart local v6       #view:Lcom/sec/android/glview/TwGLView;
    :cond_13
    const v7, 0x3e4ccccd

    mul-float/2addr v7, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v9, v10}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_7

    .line 1395
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_14
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_15

    .line 1396
    if-nez v5, :cond_17

    .line 1397
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v7, v9

    mul-float/2addr v7, v2

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    .line 1401
    :goto_8
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    neg-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FF)V

    .line 1426
    :cond_15
    if-nez v5, :cond_18

    .line 1427
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1431
    :goto_9
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    .line 1433
    .end local v1           #delta:F
    .end local v2           #deltaForContents:F
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_16
    const/4 v7, 0x1

    monitor-exit v8

    goto/16 :goto_0

    .line 1399
    .restart local v1       #delta:F
    .restart local v2       #deltaForContents:F
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_17
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v7, v9

    mul-float/2addr v7, v2

    const v9, 0x3e4ccccd

    mul-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    goto :goto_8

    .line 1429
    :cond_18
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const v9, 0x3e4ccccd

    mul-float/2addr v9, v1

    add-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto :goto_9

    .line 1435
    .end local v1           #delta:F
    .end local v2           #deltaForContents:F
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_19
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eqz v7, :cond_1b

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_1a

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_1b

    .line 1436
    :cond_1a
    const-string v7, "TwGLList"

    const-string v9, "ACTION_UP"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    .line 1438
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 1439
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1440
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    .line 1441
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1442
    const/4 v7, 0x0

    monitor-exit v8

    goto/16 :goto_0

    .line 1444
    :cond_1b
    const/4 v7, 0x0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public removeView(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 807
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    monitor-enter v1

    .line 808
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_1

    .line 810
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 815
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 818
    return-void

    .line 812
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_0

    .line 815
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected restartScrollBarTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 567
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 568
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 569
    return-void
.end method

.method public scrollToVisible(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    .line 822
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    .line 823
    return-void
.end method

.method public scrollToVisible()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 826
    iget-object v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    if-nez v8, :cond_0

    .line 870
    :goto_0
    return v6

    .line 830
    :cond_0
    iget-object v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v1

    .line 831
    .local v1, itemCurrentRect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v2

    .line 834
    .local v2, listCurrentRect:Landroid/graphics/RectF;
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 835
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    move v6, v7

    .line 836
    goto :goto_0

    .line 838
    :cond_1
    const/4 v4, 0x0

    .line 839
    .local v4, offsetY:F
    const/4 v3, 0x0

    .line 841
    .local v3, offsetX:F
    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v8, :cond_4

    .line 842
    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget v9, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 843
    iget v8, v2, Landroid/graphics/RectF;->top:F

    iget v9, v1, Landroid/graphics/RectF;->top:F

    sub-float v4, v8, v9

    .line 844
    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v8, v4

    iput v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 861
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/glview/TwGLView;

    .line 862
    .local v5, v:Lcom/sec/android/glview/TwGLView;
    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    invoke-virtual {v5, v8, v9, v6}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_2

    .line 845
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v5           #v:Lcom/sec/android/glview/TwGLView;
    :cond_3
    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 846
    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    iget v9, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v8, v9

    .line 847
    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v8, v4

    iput v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    goto :goto_1

    .line 849
    :cond_4
    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v8, v7, :cond_2

    .line 850
    iget v8, v1, Landroid/graphics/RectF;->left:F

    iget v9, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5

    .line 851
    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget v9, v1, Landroid/graphics/RectF;->left:F

    sub-float v3, v8, v9

    .line 852
    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v8, v3

    iput v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto :goto_1

    .line 853
    :cond_5
    iget v8, v1, Landroid/graphics/RectF;->right:F

    iget v9, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 854
    iget v8, v2, Landroid/graphics/RectF;->right:F

    iget v9, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v8, v9

    .line 855
    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v8, v3

    iput v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto :goto_1

    .line 864
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_6
    iget-boolean v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v8, :cond_7

    .line 865
    iget-object v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v9, v10

    neg-float v9, v9

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v10, v11

    neg-float v10, v10

    invoke-virtual {v8, v9, v10, v6}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 867
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 868
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 869
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    move v6, v7

    .line 870
    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    .line 629
    return-void
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V
    .locals 15
    .parameter "adapter"
    .parameter "stackOrientation"

    .prologue
    .line 638
    if-nez p1, :cond_0

    .line 639
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 641
    :cond_0
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    .line 642
    move/from16 v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    .line 644
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    monitor-enter v2

    .line 645
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 646
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v1, :cond_2

    .line 649
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLList;->setScroll(I)V

    .line 654
    :goto_0
    const/4 v12, 0x0

    .line 655
    .local v12, offset:I
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v9

    .line 656
    .local v9, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v9, :cond_7

    .line 657
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v2, 0x0

    invoke-interface {v1, v10, v2}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v14

    .line 658
    .local v14, view:Lcom/sec/android/glview/TwGLView;
    if-nez v14, :cond_3

    .line 728
    .end local v14           #view:Lcom/sec/android/glview/TwGLView;
    :cond_1
    :goto_2
    return-void

    .line 646
    .end local v9           #count:I
    .end local v10           #i:I
    .end local v12           #offset:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 651
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLList;->setScroll(I)V

    goto :goto_0

    .line 661
    .restart local v9       #count:I
    .restart local v10       #i:I
    .restart local v12       #offset:I
    .restart local v14       #view:Lcom/sec/android/glview/TwGLView;
    :cond_3
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v1, :cond_5

    .line 662
    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLView;->getScrollHint()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 663
    neg-int v1, v12

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 665
    :cond_4
    const/4 v1, 0x0

    int-to-float v2, v12

    invoke-virtual {v14, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 666
    int-to-float v1, v12

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v12, v1

    .line 674
    :goto_3
    invoke-virtual {v14, p0}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 675
    invoke-virtual {p0, v14}, Lcom/sec/android/glview/TwGLList;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 656
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 668
    :cond_5
    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLView;->getScrollHint()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 669
    neg-int v1, v12

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 671
    :cond_6
    int-to-float v1, v12

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 672
    int-to-float v1, v12

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v12, v1

    goto :goto_3

    .line 678
    .end local v14           #view:Lcom/sec/android/glview/TwGLView;
    :cond_7
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v1, :cond_a

    .line 679
    int-to-float v1, v12

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    .line 680
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v1

    int-to-float v2, v12

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 689
    :cond_8
    :goto_4
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v1, :cond_b

    .line 690
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v5

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    const/4 v7, 0x1

    const v8, 0x7f02024e

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 691
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v5

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    const/4 v7, 0x1

    const v8, 0x7f02024c

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 692
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v5

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v7, 0x1

    const v8, 0x7f02024d

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 693
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v5

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v7, 0x1

    const v8, 0x7f02024d

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    .line 700
    :goto_5
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLImage;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 701
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLImage;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 702
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLImage;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 703
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLImage;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 704
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 705
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 706
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 707
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 710
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 712
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v1, :cond_c

    .line 713
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_9

    .line 714
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    .line 722
    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/glview/TwGLView;

    .line 723
    .local v13, v:Lcom/sec/android/glview/TwGLView;
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    invoke-virtual {v13, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_7

    .line 683
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #v:Lcom/sec/android/glview/TwGLView;
    :cond_a
    int-to-float v1, v12

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    .line 684
    int-to-float v1, v12

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    goto/16 :goto_4

    .line 695
    :cond_b
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v6

    const/4 v7, 0x1

    const v8, 0x7f02024a

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 696
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v6

    const/4 v7, 0x1

    const v8, 0x7f02024b

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 697
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v6

    const/4 v7, 0x1

    const v8, 0x7f020249

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 698
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v6

    const/4 v7, 0x1

    const v8, 0x7f020249

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    goto/16 :goto_5

    .line 716
    :cond_c
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 717
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_9

    .line 718
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    goto/16 :goto_6

    .line 725
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_d
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_1

    .line 726
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v3, v4

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FF)V

    goto/16 :goto_2
.end method

.method public setOnScrollListener(Lcom/sec/android/glview/TwGLList$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    .line 344
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 12
    .parameter "paddings"

    .prologue
    .line 360
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    .line 361
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v3

    .line 362
    .local v3, left:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v4

    .line 363
    .local v4, right:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v5

    .line 364
    .local v5, top:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v0

    .line 366
    .local v0, bottom:F
    iget-object v8, p0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    monitor-enter v8

    .line 367
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGLViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 368
    .local v6, view:Lcom/sec/android/glview/TwGLView;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v1, v7, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 370
    .local v1, childPaddings:Landroid/graphics/Rect;
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v9, 0x1

    if-eq v7, v9, :cond_0

    .line 371
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v7

    sub-float/2addr v7, v3

    iget v9, p1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_2

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v7

    cmpl-float v7, v7, v3

    if-ltz v7, :cond_2

    .line 372
    iget v7, p1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v9

    sub-float/2addr v9, v3

    sub-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 376
    :goto_1
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v7

    sub-float v7, v4, v7

    iget v9, p1, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v7

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_3

    .line 377
    iget v7, p1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v9

    sub-float v9, v4, v9

    sub-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 381
    :goto_2
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 382
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 384
    :cond_0
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-eqz v7, :cond_1

    .line 385
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v7

    sub-float/2addr v7, v5

    iget v9, p1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v7

    cmpl-float v7, v7, v5

    if-ltz v7, :cond_4

    .line 386
    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v9

    sub-float/2addr v9, v5

    sub-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 390
    :goto_3
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v7

    sub-float v7, v0, v7

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v7

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_5

    .line 391
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v9

    sub-float v9, v0, v9

    sub-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 395
    :goto_4
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 396
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 398
    :cond_1
    invoke-virtual {v6, v1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 400
    .end local v1           #childPaddings:Landroid/graphics/Rect;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 374
    .restart local v1       #childPaddings:Landroid/graphics/Rect;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v6       #view:Lcom/sec/android/glview/TwGLView;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 379
    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 388
    :cond_4
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 393
    :cond_5
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 400
    .end local v1           #childPaddings:Landroid/graphics/Rect;
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_6
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 403
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_7

    .line 404
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    .line 406
    :cond_7
    return-void
.end method

.method public setScroll(I)V
    .locals 0
    .parameter "scroll"

    .prologue
    .line 523
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    .line 524
    return-void
.end method

.method public setScrollBarResource(I)V
    .locals 3
    .parameter "ninepatchId"

    .prologue
    const/4 v2, 0x0

    .line 440
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    .line 441
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const v1, 0xfffff

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setTag(I)V

    .line 442
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLNinePatch;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 443
    return-void
.end method

.method public setScrollThreshold(F)V
    .locals 3
    .parameter "scrollThresholdDIP"

    .prologue
    .line 532
    const-string v0, "TwGLList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollThreshold : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    .line 535
    return-void
.end method

.method public setScrolling(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eq v0, p1, :cond_0

    .line 551
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    .line 552
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    if-eqz v0, :cond_0

    .line 553
    if-eqz p1, :cond_2

    .line 554
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$OnScrollListener;->onScrollStart()V

    .line 559
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 560
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->resetDrag()V

    .line 561
    :cond_1
    return-void

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$OnScrollListener;->onScrollEnd()V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 413
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 415
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 418
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 419
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 420
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    .line 422
    :cond_1
    return-void
.end method

.method public showScrollBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 605
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 611
    :cond_2
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 615
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 616
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setAlpha(F)V

    .line 617
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    .line 618
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 619
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    goto :goto_0
.end method
