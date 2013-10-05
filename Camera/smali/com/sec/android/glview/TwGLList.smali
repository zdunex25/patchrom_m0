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

.field private static final BOUNCE_SMOOTH_LANDING_FACTOR:F = 0.3f

.field private static final BOUNCING_VELOCITY_DIP:F = 3.0f

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

    .line 320
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 55
    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    .line 70
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    .line 73
    iput v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    .line 78
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    .line 81
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    .line 84
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 87
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 90
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 93
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 96
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 99
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 102
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    .line 105
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    .line 125
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    .line 128
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    .line 131
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    .line 133
    const/high16 v0, 0x4339

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    .line 135
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    .line 148
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    .line 151
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    .line 157
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 160
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 169
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 194
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    .line 198
    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    .line 203
    new-instance v0, Lcom/sec/android/glview/TwGLList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLList$1;-><init>(Lcom/sec/android/glview/TwGLList;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    .line 322
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    .line 323
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    .line 324
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    .line 325
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    .line 326
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41f0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    .line 331
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/glview/TwGLList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/glview/TwGLList;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/glview/TwGLList;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/glview/TwGLList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method private checkBoundary()Z
    .locals 7

    .prologue
    const v6, 0x3e99999a

    const/4 v5, 0x0

    .line 1389
    const/4 v1, 0x0

    .line 1390
    .local v1, ret:Z
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1391
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 1393
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1394
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 1395
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    .line 1397
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1398
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1399
    .local v0, originalVelocity:F
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1400
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1401
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1404
    .end local v0           #originalVelocity:F
    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    .line 1406
    :cond_1
    const/4 v1, 0x1

    .line 1465
    :cond_2
    :goto_0
    return v1

    .line 1407
    :cond_3
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 1409
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1410
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 1411
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_4

    .line 1413
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 1414
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1415
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

    .line 1416
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1417
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1420
    .end local v0           #originalVelocity:F
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    .line 1422
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 1424
    :cond_6
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1425
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    goto :goto_0

    .line 1427
    :cond_7
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1428
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a

    .line 1430
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1431
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 1432
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_8

    .line 1434
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 1435
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1436
    .restart local v0       #originalVelocity:F
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1437
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1438
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1441
    .end local v0           #originalVelocity:F
    :cond_8
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    .line 1443
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1444
    :cond_a
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaWidth()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    .line 1446
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1447
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c

    .line 1448
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_b

    .line 1450
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 1451
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1452
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

    .line 1453
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1454
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1457
    .end local v0           #originalVelocity:F
    :cond_b
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    .line 1459
    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1461
    :cond_d
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1462
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    goto/16 :goto_0
.end method

.method private setScrollBarLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f80

    .line 476
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_4

    .line 480
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_3

    .line 484
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

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 488
    :goto_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    .line 489
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 506
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

    .line 507
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    goto :goto_0

    .line 486
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatch;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 490
    :cond_4
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v0, v5, :cond_2

    .line 491
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_5

    .line 495
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

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

    .line 499
    :goto_3
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    .line 500
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatch;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto/16 :goto_2

    .line 497
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

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

    .line 444
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    .line 445
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    .line 447
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 451
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 452
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 457
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 460
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 461
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 462
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 463
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

    .line 745
    instance-of v2, p1, Lcom/sec/android/glview/TwGLList;

    if-eqz v2, :cond_0

    .line 746
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 748
    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v2, :cond_4

    .line 749
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 750
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 751
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 760
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    .line 761
    .local v1, paddings:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 763
    .local v0, childPaddings:Landroid/graphics/Rect;
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 764
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

    .line 765
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

    .line 769
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

    .line 770
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

    .line 774
    :goto_2
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 775
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 777
    :cond_2
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-eqz v2, :cond_3

    .line 778
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

    .line 779
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

    .line 783
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

    .line 784
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

    .line 788
    :goto_4
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 789
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 792
    :cond_3
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 793
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 794
    return-void

    .line 754
    .end local v0           #childPaddings:Landroid/graphics/Rect;
    .end local v1           #paddings:Landroid/graphics/Rect;
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 755
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 756
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto/16 :goto_0

    .line 767
    .restart local v0       #childPaddings:Landroid/graphics/Rect;
    .restart local v1       #paddings:Landroid/graphics/Rect;
    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 772
    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2

    .line 781
    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 786
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

    .line 1618
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 1620
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    .line 1622
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 1623
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1624
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 1626
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_2

    .line 1627
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1628
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 1630
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 1631
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1632
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 1634
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    .line 1635
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1636
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    .line 1639
    :cond_4
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1640
    return-void
.end method

.method public contains(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 424
    const/4 v0, 0x0

    .line 426
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
    .line 1530
    const/4 v0, 0x0

    .line 1534
    .local v0, newDirection:I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getCenterPivot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1535
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1586
    move v0, p2

    .line 1590
    :cond_0
    :goto_0
    invoke-super {p0, p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    return-object v1

    .line 1537
    :pswitch_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1539
    :sswitch_0
    const/16 v0, 0x82

    .line 1540
    goto :goto_0

    .line 1542
    :sswitch_1
    const/16 v0, 0x21

    .line 1543
    goto :goto_0

    .line 1545
    :sswitch_2
    const/16 v0, 0x11

    .line 1546
    goto :goto_0

    .line 1548
    :sswitch_3
    const/16 v0, 0x42

    goto :goto_0

    .line 1553
    :pswitch_1
    sparse-switch p2, :sswitch_data_1

    goto :goto_0

    .line 1555
    :sswitch_4
    const/16 v0, 0x42

    .line 1556
    goto :goto_0

    .line 1558
    :sswitch_5
    const/16 v0, 0x11

    .line 1559
    goto :goto_0

    .line 1561
    :sswitch_6
    const/16 v0, 0x82

    .line 1562
    goto :goto_0

    .line 1564
    :sswitch_7
    const/16 v0, 0x21

    goto :goto_0

    .line 1569
    :pswitch_2
    sparse-switch p2, :sswitch_data_2

    goto :goto_0

    .line 1571
    :sswitch_8
    const/16 v0, 0x21

    .line 1572
    goto :goto_0

    .line 1574
    :sswitch_9
    const/16 v0, 0x82

    .line 1575
    goto :goto_0

    .line 1577
    :sswitch_a
    const/16 v0, 0x42

    .line 1578
    goto :goto_0

    .line 1580
    :sswitch_b
    const/16 v0, 0x11

    goto :goto_0

    .line 1535
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1537
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch

    .line 1553
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_4
        0x21 -> :sswitch_6
        0x42 -> :sswitch_5
        0x82 -> :sswitch_7
    .end sparse-switch

    .line 1569
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
    .line 469
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    return v0
.end method

.method public getScrollThreshold()F
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    return v0
.end method

.method protected hideScrollBar()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 568
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScrollBarAutoHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 572
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    goto :goto_0

    .line 575
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_4

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    goto :goto_0

    .line 580
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 581
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    new-instance v1, Lcom/sec/android/glview/TwGLList$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLList$2;-><init>(Lcom/sec/android/glview/TwGLList;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 591
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->startAnimation()V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 727
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 728
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    goto :goto_0

    .line 732
    :cond_0
    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 733
    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 735
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->reset()V

    .line 736
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    .line 737
    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 1153
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onAlphaUpdated()V

    .line 1154
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1161
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onAlphaUpdated()V

    .line 1163
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
    .line 1177
    invoke-virtual {p0, p4, p5}, Lcom/sec/android/glview/TwGLList;->translate(FF)V

    .line 1178
    return-void
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1185
    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1170
    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 18
    .parameter "gl"

    .prologue
    .line 869
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v13

    .line 870
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    if-eqz v12, :cond_0

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->scrollToVisible()Z

    .line 873
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 874
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 876
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v12

    if-nez v12, :cond_b

    .line 878
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 879
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 880
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/glview/TwGLView;

    .line 881
    .local v10, view:Lcom/sec/android/glview/TwGLView;
    if-eqz v10, :cond_1

    .line 885
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v14, v15}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_0

    .line 1147
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .end local v10           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 887
    .restart local v6       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_3

    .line 888
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    neg-float v15, v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FFZ)V

    .line 891
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 892
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 893
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 894
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 897
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-lez v12, :cond_9

    .line 898
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    sub-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 899
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v14, 0x0

    cmpg-float v12, v12, v14

    if-gez v12, :cond_4

    .line 900
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 906
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-lez v12, :cond_a

    .line 907
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    sub-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 908
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v14, 0x0

    cmpg-float v12, v12, v14

    if-gez v12, :cond_5

    .line 909
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1090
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-eqz v12, :cond_26

    .line 1091
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1097
    :cond_7
    :goto_3
    const/4 v2, 0x0

    .line 1098
    .local v2, checked:Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getMatrix()[F

    move-result-object v8

    .line 1099
    .local v8, matrix:[F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1101
    .local v3, clipRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1102
    .local v7, list:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    .line 1103
    .local v9, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_4
    if-ge v5, v9, :cond_28

    .line 1104
    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/glview/TwGLView;

    .line 1106
    .restart local v10       #view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1107
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 1108
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v8, v3}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1109
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 1110
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1112
    if-nez v2, :cond_8

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->isClipped()Z

    move-result v12

    if-nez v12, :cond_8

    .line 1113
    if-nez v5, :cond_27

    .line 1114
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    .line 1115
    const/4 v2, 0x1

    .line 1103
    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 902
    .end local v2           #checked:Z
    .end local v3           #clipRect:Landroid/graphics/Rect;
    .end local v5           #i:I
    .end local v7           #list:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    .end local v8           #matrix:[F
    .end local v9           #size:I
    .end local v10           #view:Lcom/sec/android/glview/TwGLView;
    .restart local v6       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    add-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 903
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-lez v12, :cond_4

    .line 904
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto/16 :goto_1

    .line 911
    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    add-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 912
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-lez v12, :cond_5

    .line 913
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto/16 :goto_2

    .line 915
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-eqz v12, :cond_5

    .line 916
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_18

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpg-float v12, v12, v14

    if-gez v12, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v4

    .line 919
    .local v4, height:F
    :goto_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    div-float/2addr v12, v14

    const/high16 v14, 0x3f80

    cmpl-float v12, v12, v14

    if-lez v12, :cond_d

    const/high16 v1, 0x3f80

    .line 920
    .local v1, alpha:F
    :goto_7
    const/high16 v12, 0x3f80

    mul-float/2addr v12, v1

    const/4 v14, 0x0

    add-float v1, v12, v14

    .line 922
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-lez v12, :cond_13

    .line 925
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 926
    .restart local v6       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 927
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_8

    .line 917
    .end local v1           #alpha:F
    .end local v4           #height:F
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto :goto_6

    .line 919
    .restart local v4       #height:F
    :cond_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    div-float v1, v12, v14

    goto :goto_7

    .line 929
    .restart local v1       #alpha:F
    .restart local v6       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_f

    .line 930
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 933
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 934
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-virtual {v12, v14, v15}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 935
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 938
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-lez v12, :cond_11

    .line 939
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x3f80

    add-float v15, v15, v16

    mul-float/2addr v14, v15

    sub-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 949
    :goto_9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v12, v14

    const/4 v14, 0x0

    cmpg-float v12, v12, v14

    if-gtz v12, :cond_10

    .line 952
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 953
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 954
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 1071
    .end local v1           #alpha:F
    .end local v4           #height:F
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_10
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-nez v12, :cond_5

    .line 1074
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1075
    .restart local v6       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_24

    .line 1076
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_b

    .line 942
    .restart local v1       #alpha:F
    .restart local v4       #height:F
    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    cmpl-float v12, v12, v14

    if-lez v12, :cond_12

    .line 943
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x3f80

    add-float v15, v15, v16

    mul-float/2addr v14, v15

    sub-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto :goto_9

    .line 945
    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const v14, 0x3e99999a

    mul-float/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    sub-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto/16 :goto_9

    .line 956
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_13
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v12, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v14

    cmpg-float v12, v12, v14

    if-gez v12, :cond_10

    .line 959
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 960
    .restart local v6       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 961
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float v15, v4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

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

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_c

    .line 963
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_15

    .line 964
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v4, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    neg-float v15, v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 968
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 969
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    invoke-virtual {v12, v14, v15}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 970
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual {v12, v14, v15}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 971
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 975
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v14, 0x0

    cmpg-float v12, v12, v14

    if-gez v12, :cond_16

    .line 976
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x3f80

    add-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 986
    :goto_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    sub-float v14, v4, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    cmpl-float v12, v12, v14

    if-ltz v12, :cond_10

    .line 989
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sub-float v12, v4, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    sub-float/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 990
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 991
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_a

    .line 979
    :cond_16
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    cmpl-float v12, v12, v14

    if-lez v12, :cond_17

    .line 980
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x3f80

    add-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto :goto_d

    .line 982
    :cond_17
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const v14, 0x3e99999a

    mul-float/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    add-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto/16 :goto_d

    .line 994
    .end local v1           #alpha:F
    .end local v4           #height:F
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_18
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v14, 0x2

    if-ne v12, v14, :cond_10

    .line 995
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpg-float v12, v12, v14

    if-gez v12, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v11

    .line 997
    .local v11, width:F
    :goto_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    const v15, 0x3dcccccd

    mul-float/2addr v14, v15

    div-float/2addr v12, v14

    const/high16 v14, 0x3f80

    cmpl-float v12, v12, v14

    if-lez v12, :cond_1a

    const/high16 v1, 0x3f80

    .line 998
    .restart local v1       #alpha:F
    :goto_f
    const/high16 v12, 0x3f80

    mul-float/2addr v12, v1

    const/4 v14, 0x0

    add-float v1, v12, v14

    .line 1000
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-lez v12, :cond_1f

    .line 1003
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1004
    .restart local v6       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 1005
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_10

    .line 995
    .end local v1           #alpha:F
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .end local v11           #width:F
    :cond_19
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_e

    .line 997
    .restart local v11       #width:F
    :cond_1a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    const v15, 0x3e4ccccd

    mul-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    div-float v1, v12, v14

    goto :goto_f

    .line 1007
    .restart local v1       #alpha:F
    .restart local v6       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_1c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_1c

    .line 1008
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 1011
    :cond_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v15}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v15

    invoke-virtual {v12, v14, v15}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1016
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-lez v12, :cond_1d

    .line 1017
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x3f80

    add-float v15, v15, v16

    mul-float/2addr v14, v15

    sub-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1027
    :goto_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v12, v14

    const/4 v14, 0x0

    cmpg-float v12, v12, v14

    if-gtz v12, :cond_10

    .line 1030
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1031
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1032
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_a

    .line 1020
    :cond_1d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    cmpl-float v12, v12, v14

    if-lez v12, :cond_1e

    .line 1021
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x3f80

    add-float v15, v15, v16

    mul-float/2addr v14, v15

    sub-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto :goto_11

    .line 1023
    :cond_1e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const v14, 0x3e99999a

    mul-float/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    sub-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto :goto_11

    .line 1034
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v12, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaWidth()F

    move-result v14

    cmpg-float v12, v12, v14

    if-gez v12, :cond_10

    .line 1037
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1038
    .restart local v6       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_20

    .line 1039
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float v14, v11, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v14, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_12

    .line 1041
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_21

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_21

    .line 1042
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    sub-float v15, v11, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 1045
    :cond_21
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v15}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v15

    invoke-virtual {v12, v14, v15}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    add-float v15, v15, v16

    sub-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1051
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v14, 0x0

    cmpg-float v12, v12, v14

    if-gez v12, :cond_22

    .line 1052
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x3f80

    add-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1062
    :goto_13
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float v14, v11, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    cmpl-float v12, v12, v14

    if-ltz v12, :cond_10

    .line 1065
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1066
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1067
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_a

    .line 1055
    :cond_22
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    cmpl-float v12, v12, v14

    if-lez v12, :cond_23

    .line 1056
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x3f80

    add-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto :goto_13

    .line 1058
    :cond_23
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const v14, 0x3e99999a

    mul-float/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    add-float/2addr v12, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto/16 :goto_13

    .line 1078
    .end local v1           #alpha:F
    .end local v11           #width:F
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_25

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_25

    .line 1079
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    neg-float v15, v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 1081
    :cond_25
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1085
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_2

    .line 1092
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-eqz v12, :cond_7

    .line 1093
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 1094
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_3

    .line 1116
    .restart local v2       #checked:Z
    .restart local v3       #clipRect:Landroid/graphics/Rect;
    .restart local v5       #i:I
    .restart local v7       #list:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    .restart local v8       #matrix:[F
    .restart local v9       #size:I
    .restart local v10       #view:Lcom/sec/android/glview/TwGLView;
    :cond_27
    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v7, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->isClipped()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1117
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    .line 1118
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 1124
    .end local v10           #view:Lcom/sec/android/glview/TwGLView;
    :cond_28
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_29

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_29

    .line 1125
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1126
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 1127
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v8, v3}, Lcom/sec/android/glview/TwGLNinePatch;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1128
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 1129
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1131
    :cond_29
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_2a

    .line 1132
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1133
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 1134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v8, v3}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v8, v3}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1136
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 1137
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1139
    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_2b

    .line 1140
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1141
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 1142
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v8, v3}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v8, v3}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1144
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 1145
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1147
    :cond_2b
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1148
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 1149
    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .parameter "view"
    .parameter "focusStatus"

    .prologue
    const/4 v0, 0x1

    .line 1373
    if-ne p2, v0, :cond_0

    .line 1374
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    .line 1375
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    .line 1377
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1362
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1368
    const/4 v0, 0x0

    return v0
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 346
    const/4 v0, 0x1

    .line 347
    .local v0, ret:Z
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    .line 348
    return v0
.end method

.method public onReset()V
    .locals 2

    .prologue
    .line 1595
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_0

    .line 1596
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->reset()V

    .line 1597
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_1

    .line 1598
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1600
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_2

    .line 1601
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1603
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_3

    .line 1604
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1606
    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_4

    .line 1607
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1610
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1611
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1612
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    goto :goto_0

    .line 1614
    :cond_5
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "e"

    .prologue
    .line 1191
    invoke-virtual {p0, p2}, Lcom/sec/android/glview/TwGLList;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "e"

    .prologue
    .line 1199
    iget-object v8, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v8

    .line 1200
    :try_start_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1201
    .local v3, et:Landroid/view/MotionEvent;
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0, v7, v9, v10}, Lcom/sec/android/glview/TwGLList;->mapPointReverse([FFF)V

    .line 1202
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    const/4 v9, 0x0

    aget v7, v7, v9

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v3, v7, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1204
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v5

    .line 1206
    .local v5, mBoundary:Z
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v7, :cond_0

    .line 1207
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

    .line 1210
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, v3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 1211
    const/4 v7, 0x1

    :try_start_2
    monitor-exit v8

    .line 1355
    :goto_0
    return v7

    .line 1213
    :catch_0
    move-exception v7

    .line 1217
    :cond_1
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    .line 1218
    const-string v7, "TwGLList"

    const-string v9, "ACTION_DOWN"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    .line 1220
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    .line 1221
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1222
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1223
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 1224
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 1356
    .end local v3           #et:Landroid/view/MotionEvent;
    .end local v5           #mBoundary:Z
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1227
    .restart local v3       #et:Landroid/view/MotionEvent;
    .restart local v5       #mBoundary:Z
    :cond_2
    :try_start_3
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-nez v7, :cond_5

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_5

    .line 1228
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    .line 1229
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_3

    .line 1231
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    .line 1232
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1235
    :cond_3
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v9, 0x2

    if-ne v7, v9, :cond_4

    .line 1236
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    .line 1238
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    .line 1239
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1242
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    .line 1243
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 1245
    :cond_5
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eqz v7, :cond_19

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-nez v7, :cond_19

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_19

    .line 1246
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    if-ne v7, v9, :cond_e

    .line 1247
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    sub-float v1, v7, v9

    .line 1248
    .local v1, delta:F
    move v2, v1

    .line 1250
    .local v2, deltaForContents:F
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_6

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_8

    .line 1252
    :cond_6
    const/4 v2, 0x0

    .line 1263
    :cond_7
    :goto_1
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1264
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1265
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 1266
    .local v6, view:Lcom/sec/android/glview/TwGLView;
    if-nez v5, :cond_a

    .line 1267
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v2, v9}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_2

    .line 1253
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_8
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v1

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_9

    .line 1255
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    sub-float v2, v1, v7

    .line 1256
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto :goto_1

    .line 1257
    :cond_9
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    add-float/2addr v7, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_7

    .line 1259
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v7, v9

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    sub-float v2, v1, v7

    .line 1260
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto :goto_1

    .line 1269
    .restart local v4       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .restart local v6       #view:Lcom/sec/android/glview/TwGLView;
    :cond_a
    const/4 v7, 0x0

    const v9, 0x3e4ccccd

    mul-float/2addr v9, v2

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v9, v10}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_2

    .line 1273
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_b
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_c

    .line 1274
    if-nez v5, :cond_f

    .line 1275
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v7, v9

    mul-float/2addr v7, v2

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    .line 1279
    :goto_3
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    neg-float v10, v10

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FF)V

    .line 1282
    :cond_c
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_d

    .line 1284
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1285
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1286
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1287
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1290
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1291
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1292
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1296
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

    .line 1297
    .local v0, alpha:F
    :goto_4
    const/high16 v7, 0x3f80

    mul-float/2addr v7, v0

    const/4 v9, 0x0

    add-float v0, v7, v9

    .line 1298
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_11

    .line 1299
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1300
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1306
    .end local v0           #alpha:F
    :cond_d
    :goto_5
    if-nez v5, :cond_12

    .line 1307
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1312
    :goto_6
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    .line 1314
    .end local v1           #delta:F
    .end local v2           #deltaForContents:F
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_e
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v9, 0x2

    if-ne v7, v9, :cond_16

    .line 1315
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    sub-float v1, v7, v9

    .line 1316
    .restart local v1       #delta:F
    move v2, v1

    .line 1319
    .restart local v2       #deltaForContents:F
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1320
    .restart local v4       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1321
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 1322
    .restart local v6       #view:Lcom/sec/android/glview/TwGLView;
    if-nez v5, :cond_13

    .line 1323
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v2, v7, v9}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_7

    .line 1277
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

    .line 1296
    :cond_10
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    div-float v0, v7, v9

    goto :goto_4

    .line 1301
    .restart local v0       #alpha:F
    :cond_11
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    cmpg-float v7, v7, v9

    if-gez v7, :cond_d

    .line 1302
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1303
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    goto :goto_5

    .line 1309
    .end local v0           #alpha:F
    :cond_12
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const v9, 0x3e4ccccd

    mul-float/2addr v9, v1

    add-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    goto :goto_6

    .line 1325
    .restart local v6       #view:Lcom/sec/android/glview/TwGLView;
    :cond_13
    const v7, 0x3e4ccccd

    mul-float/2addr v7, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v9, v10}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_7

    .line 1329
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_14
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_15

    .line 1330
    if-nez v5, :cond_17

    .line 1331
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v7, v9

    mul-float/2addr v7, v2

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    .line 1335
    :goto_8
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    neg-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FF)V

    .line 1337
    :cond_15
    if-nez v5, :cond_18

    .line 1338
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1342
    :goto_9
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    .line 1344
    .end local v1           #delta:F
    .end local v2           #deltaForContents:F
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_16
    const/4 v7, 0x1

    monitor-exit v8

    goto/16 :goto_0

    .line 1333
    .restart local v1       #delta:F
    .restart local v2       #deltaForContents:F
    .restart local v4       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_17
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v7, v9

    mul-float/2addr v7, v2

    const v9, 0x3e4ccccd

    mul-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    goto :goto_8

    .line 1340
    :cond_18
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const v9, 0x3e4ccccd

    mul-float/2addr v9, v1

    add-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto :goto_9

    .line 1346
    .end local v1           #delta:F
    .end local v2           #deltaForContents:F
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
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

    .line 1347
    :cond_1a
    const-string v7, "TwGLList"

    const-string v9, "ACTION_UP"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    .line 1349
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 1350
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1351
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    .line 1352
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1353
    const/4 v7, 0x0

    monitor-exit v8

    goto/16 :goto_0

    .line 1355
    :cond_1b
    const/4 v7, 0x0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public removeView(Lcom/sec/android/glview/TwGLView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_1

    .line 803
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 808
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 809
    return-void

    .line 805
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_0
.end method

.method public resetFling()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1643
    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1644
    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1645
    return-void
.end method

.method protected restartScrollBarTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 560
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 561
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 562
    return-void
.end method

.method public scrollToVisible(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    .line 813
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    .line 814
    return-void
.end method

.method public scrollToVisible()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 817
    iget-object v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    if-nez v5, :cond_0

    move v5, v6

    .line 861
    :goto_0
    return v5

    .line 821
    :cond_0
    iget-object v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v0

    .line 822
    .local v0, itemCurrentRect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v2

    .line 825
    .local v2, listCurrentRect:Landroid/graphics/RectF;
    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 826
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    move v5, v7

    .line 827
    goto :goto_0

    .line 829
    :cond_1
    const/4 v4, 0x0

    .line 830
    .local v4, offsetY:F
    const/4 v3, 0x0

    .line 832
    .local v3, offsetX:F
    iget v5, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v5, :cond_4

    .line 833
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v8, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_3

    .line 834
    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v8, v0, Landroid/graphics/RectF;->top:F

    sub-float v4, v5, v8

    .line 835
    iget v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v5, v4

    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 851
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 852
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 853
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/glview/TwGLView;

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    invoke-virtual {v5, v8, v9, v6}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_2

    .line 836
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_3
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_2

    .line 837
    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v5, v8

    .line 838
    iget v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v5, v4

    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    goto :goto_1

    .line 840
    :cond_4
    iget v5, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v5, v7, :cond_2

    .line 841
    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v8, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_5

    .line 842
    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v8, v0, Landroid/graphics/RectF;->left:F

    sub-float v3, v5, v8

    .line 843
    iget v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v5, v3

    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto :goto_1

    .line 844
    :cond_5
    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v8, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_2

    .line 845
    iget v5, v2, Landroid/graphics/RectF;->right:F

    iget v8, v0, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v8

    .line 846
    iget v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v5, v3

    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto :goto_1

    .line 855
    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_6
    iget-object v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v5, :cond_7

    .line 856
    iget-object v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v8, v9

    neg-float v8, v8

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v9, v10

    neg-float v9, v9

    invoke-virtual {v5, v8, v9, v6}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 858
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 859
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 860
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    move v5, v7

    .line 861
    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 621
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    .line 622
    return-void
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V
    .locals 13
    .parameter "adapter"
    .parameter "stackOrientation"

    .prologue
    .line 631
    if-nez p1, :cond_0

    .line 632
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 634
    :cond_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    .line 635
    iput p2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    .line 637
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 638
    .local v10, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    goto :goto_0

    .line 642
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_3

    .line 643
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLList;->setScroll(I)V

    .line 648
    :goto_1
    const/4 v11, 0x0

    .line 649
    .local v11, offset:I
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v8

    .line 650
    .local v8, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v8, :cond_8

    .line 651
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v1, 0x0

    invoke-interface {v0, v9, v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v12

    .line 652
    .local v12, view:Lcom/sec/android/glview/TwGLView;
    if-nez v12, :cond_4

    .line 721
    .end local v12           #view:Lcom/sec/android/glview/TwGLView;
    :cond_2
    :goto_3
    return-void

    .line 645
    .end local v8           #count:I
    .end local v9           #i:I
    .end local v11           #offset:I
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLList;->setScroll(I)V

    goto :goto_1

    .line 655
    .restart local v8       #count:I
    .restart local v9       #i:I
    .restart local v11       #offset:I
    .restart local v12       #view:Lcom/sec/android/glview/TwGLView;
    :cond_4
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_6

    .line 656
    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getScrollHint()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 657
    neg-int v0, v11

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 659
    :cond_5
    const/4 v0, 0x0

    int-to-float v1, v11

    invoke-virtual {v12, v0, v1}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 660
    int-to-float v0, v11

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v11, v0

    .line 668
    :goto_4
    invoke-virtual {v12, p0}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 669
    invoke-virtual {p0, v12}, Lcom/sec/android/glview/TwGLList;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 650
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 662
    :cond_6
    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getScrollHint()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 663
    neg-int v0, v11

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 665
    :cond_7
    int-to-float v0, v11

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 666
    int-to-float v0, v11

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v11, v0

    goto :goto_4

    .line 672
    .end local v12           #view:Lcom/sec/android/glview/TwGLView;
    :cond_8
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_b

    .line 673
    int-to-float v0, v11

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 674
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v0

    int-to-float v1, v11

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 682
    :cond_9
    :goto_5
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_c

    .line 683
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    const/4 v6, 0x1

    const v7, 0x7f020224

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 684
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    const/4 v6, 0x1

    const v7, 0x7f020222

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 685
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v6, 0x1

    const v7, 0x7f020223

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 686
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v6, 0x1

    const v7, 0x7f020223

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    .line 693
    :goto_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 694
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 695
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 696
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 697
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 698
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 699
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 700
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 702
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 704
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_d

    .line 705
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_a

    .line 706
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    .line 714
    :cond_a
    :goto_7
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 715
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 716
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_8

    .line 677
    :cond_b
    int-to-float v0, v11

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 678
    int-to-float v0, v11

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    goto/16 :goto_5

    .line 688
    :cond_c
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020220

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 689
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020221

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 690
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f02021f

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 691
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f02021f

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    goto/16 :goto_6

    .line 708
    :cond_d
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 709
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_a

    .line 710
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    goto/16 :goto_7

    .line 718
    :cond_e
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 719
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

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FF)V

    goto/16 :goto_3
.end method

.method public setOnScrollListener(Lcom/sec/android/glview/TwGLList$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    .line 340
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 10
    .parameter "paddings"

    .prologue
    const/4 v9, 0x0

    .line 356
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 357
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v3

    .line 358
    .local v3, left:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v4

    .line 359
    .local v4, right:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v5

    .line 360
    .local v5, top:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v0

    .line 362
    .local v0, bottom:F
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 363
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 364
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 365
    .local v6, view:Lcom/sec/android/glview/TwGLView;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 367
    .local v1, childPaddings:Landroid/graphics/Rect;
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 368
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v7

    sub-float/2addr v7, v3

    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v7

    cmpl-float v7, v7, v3

    if-ltz v7, :cond_2

    .line 369
    iget v7, p1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v8

    sub-float/2addr v8, v3

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 373
    :goto_1
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v7

    sub-float v7, v4, v7

    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v7

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_3

    .line 374
    iget v7, p1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v8

    sub-float v8, v4, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 378
    :goto_2
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 379
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 381
    :cond_0
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-eqz v7, :cond_1

    .line 382
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v7

    sub-float/2addr v7, v5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v7

    cmpl-float v7, v7, v5

    if-ltz v7, :cond_4

    .line 383
    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v8

    sub-float/2addr v8, v5

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 387
    :goto_3
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v7

    sub-float v7, v0, v7

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v7

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_5

    .line 388
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v8

    sub-float v8, v0, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 392
    :goto_4
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 393
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 395
    :cond_1
    invoke-virtual {v6, v1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 371
    :cond_2
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 376
    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 385
    :cond_4
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 390
    :cond_5
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 397
    .end local v1           #childPaddings:Landroid/graphics/Rect;
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 398
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_7

    .line 399
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    .line 401
    :cond_7
    return-void
.end method

.method public setScroll(I)V
    .locals 0
    .parameter "scroll"

    .prologue
    .line 516
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    .line 517
    return-void
.end method

.method public setScrollBarResource(I)V
    .locals 3
    .parameter "ninepatchId"

    .prologue
    const/4 v2, 0x0

    .line 435
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    .line 436
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const v1, 0xfffff

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setTag(I)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 438
    return-void
.end method

.method public setScrollThreshold(F)V
    .locals 3
    .parameter "scrollThresholdDIP"

    .prologue
    .line 525
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

    .line 527
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    .line 528
    return-void
.end method

.method public setScrolling(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eq v0, p1, :cond_0

    .line 544
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    .line 545
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    if-eqz v0, :cond_0

    .line 546
    if-eqz p1, :cond_2

    .line 547
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$OnScrollListener;->onScrollStart()V

    .line 552
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->resetDrag()V

    .line 554
    :cond_1
    return-void

    .line 549
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
    .line 408
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 410
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 414
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 415
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    .line 417
    :cond_1
    return-void
.end method

.method public showScrollBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 598
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 604
    :cond_2
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 608
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 609
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setAlpha(F)V

    .line 610
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    .line 611
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 612
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    goto :goto_0
.end method
