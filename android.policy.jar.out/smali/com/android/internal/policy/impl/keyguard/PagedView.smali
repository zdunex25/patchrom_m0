.class public abstract Lcom/android/internal/policy/impl/keyguard/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;,
        Lcom/android/internal/policy/impl/keyguard/PagedView$SavedState;,
        Lcom/android/internal/policy/impl/keyguard/PagedView$ScrollInterpolator;,
        Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field static final AUTOMATIC_PAGE_SPACING:I = -0x1

.field private static final DEBUG:Z = false

.field private static final DISABLE_FLING_TO_DELETE:Z = false

.field private static final DISABLE_TOUCH_INTERACTION:Z = false

.field private static final DISABLE_TOUCH_SIDE_PAGES:Z = true

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field protected static final PAGE_SNAP_ANIMATION_DURATION:I = 0x2ee

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field protected static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "WidgetPagedView"

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REORDERING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final sScrollIndicatorFadeInDuration:I = 0x96

.field protected static final sScrollIndicatorFadeOutDuration:I = 0x28a

.field protected static final sScrollIndicatorFlashDuration:I = 0x28a


# instance fields
.field private DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

.field private DRAG_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FRICTION:F

.field private FLING_TO_DELETE_MAX_FLING_DEGREES:F

.field private NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

.field private REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

.field private REORDERING_DROP_REPOSITION_DURATION:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field private REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

.field private REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

.field protected REORDERING_ZOOM_IN_OUT_DURATION:I

.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field private mAltTmpRect:Landroid/graphics/Rect;

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mChildCountOnLastMeasure:I

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field protected mDeferScrollUpdate:Z

.field private mDeferringForDelete:Z

.field private mDeleteDropTarget:Landroid/view/View;

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownEventOnEdge:Z

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mEdgeSwipeRegionSize:I

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mFlingToDeleteThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field private mIsReordering:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field private mOnlyAllowEdgeSwipes:Z

.field protected mOverScrollX:I

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

.field private mPagingTouchSlop:I

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderingStarted:Z

.field private mScrollIndicator:Landroid/view/View;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mShouldShowScrollIndicator:Z

.field private mShouldShowScrollIndicatorImmediately:Z

.field private mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field private mTmpInvMatrix:Landroid/graphics/Matrix;

.field private mTmpPoint:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopAlignPageWhenShrinkingForBouncer:Z

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field protected mZoomInOutAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 266
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 269
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFirstLayout:Z

    .line 109
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    .line 123
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastScreenCenter:I

    .line 136
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 137
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 146
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCellCountX:I

    .line 147
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCellCountY:I

    .line 148
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAllowOverScroll:Z

    .line 150
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    .line 159
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLayoutScale:F

    .line 163
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 170
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContentIsRefreshable:Z

    .line 173
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFadeInAdjacentScreens:Z

    .line 177
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUsePagingTouchSlop:Z

    .line 181
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferScrollUpdate:Z

    .line 183
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    .line 186
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    .line 193
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 194
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 201
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 206
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    .line 207
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 208
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    .line 209
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    .line 210
    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    .line 211
    const-wide/16 v2, 0x96

    iput-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    .line 212
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    .line 216
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    .line 218
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderingStarted:Z

    .line 223
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    .line 228
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 229
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 230
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    .line 233
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    .line 234
    new-array v2, v7, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    .line 235
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    .line 236
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    .line 239
    const/16 v2, 0x15e

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    .line 240
    const v2, 0x3d0f5c29

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FRICTION:F

    .line 242
    const/high16 v2, 0x4282

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    .line 243
    const/16 v2, -0x578

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 245
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    .line 246
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    .line 247
    const/16 v2, 0x15e

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    .line 253
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 1920
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 270
    sget-object v2, Lcom/android/internal/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 272
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setPageSpacing(I)V

    .line 273
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    .line 275
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingRight:I

    .line 277
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 280
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x1050075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    .line 281
    const v2, 0x1110002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 284
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->init()V

    .line 286
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/PagedView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownScrollX:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/PagedView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/PagedView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/PagedView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onPostReorderingAnimationCompleted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/PagedView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/PagedView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/PagedView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/PagedView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/PagedView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    return v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1642
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1644
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1645
    return-void
.end method

.method private createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
    .locals 1
    .parameter "dragView"

    .prologue
    .line 2317
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Landroid/view/View;)V

    return-object v0
.end method

.method private isFlingingToDelete()Landroid/graphics/PointF;
    .locals 8

    .prologue
    .line 2258
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2259
    .local v0, config:Landroid/view/ViewConfiguration;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2261
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 2263
    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2265
    .local v3, vel:Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2266
    .local v2, upVec:Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 2268
    .local v1, theta:F
    float-to-double v4, v1

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 2272
    .end local v1           #theta:F
    .end local v2           #upVec:Landroid/graphics/PointF;
    .end local v3           #vel:Landroid/graphics/PointF;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isHoveringOverDeleteDropTarget(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 2463
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2464
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2465
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2466
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2467
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2469
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2470
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2471
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 2473
    .end local v0           #parent:Landroid/view/View;
    :cond_1
    return v1
.end method

.method private isTouchPointInCurrentPage(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 1031
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1032
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1033
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1035
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 1037
    :cond_0
    return v1
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1026
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private onDropToDelete()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2479
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2481
    .local v3, dragView:Landroid/view/View;
    const/4 v7, 0x0

    .line 2482
    .local v7, toScale:F
    const/4 v6, 0x0

    .line 2485
    .local v6, toAlpha:F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2486
    .local v2, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2487
    .local v4, motionAnim:Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x4000

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2488
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const-string v9, "scaleX"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    const-string v9, "scaleY"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2491
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2493
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2494
    .local v0, alphaAnim:Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2495
    new-array v8, v11, [Landroid/animation/Animator;

    const-string v9, "alpha"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2497
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2499
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v5

    .line 2501
    .local v5, onAnimationEndRunnable:Ljava/lang/Runnable;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2502
    .local v1, anim:Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2503
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2504
    new-instance v8, Lcom/android/internal/policy/impl/keyguard/PagedView$12;

    invoke-direct {v8, p0, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView$12;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2509
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2511
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    .line 2512
    return-void
.end method

.method private onPostReorderingAnimationCompleted()V
    .locals 1

    .prologue
    .line 2121
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2122
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2127
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 1655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1657
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1658
    .local v1, pointerId:I
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1662
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1663
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1664
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 1665
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1666
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1667
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1668
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1671
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 1662
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .parameter "f"

    .prologue
    const/high16 v1, 0x3f80

    .line 1236
    sub-float/2addr p1, v1

    .line 1237
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1652
    :cond_0
    return-void
.end method

.method private resetTouchState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1602
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->releaseVelocityTracker()V

    .line 1603
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->endReordering()V

    .line 1604
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 1605
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1606
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 1607
    return-void
.end method

.method private updateScrollingIndicator()V
    .locals 2

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 2014
    :cond_0
    :goto_0
    return-void

    .line 2005
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2007
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2008
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2009
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 2011
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    if-eqz v0, :cond_0

    .line 2012
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->showScrollingIndicator(Z)V

    goto :goto_0
.end method

.method private updateScrollingIndicatorPosition()V
    .locals 14

    .prologue
    .line 2017
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2040
    :cond_0
    :goto_0
    return-void

    .line 2018
    :cond_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 2019
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v6

    .line 2020
    .local v6, numPages:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v8

    .line 2021
    .local v8, pageWidth:I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2022
    .local v4, lastChildIndex:I
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 2023
    .local v5, maxScrollX:I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    .line 2024
    .local v9, trackWidth:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    .line 2027
    .local v3, indicatorWidth:I
    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 2028
    .local v7, offset:F
    div-int v2, v9, v6

    .line 2029
    .local v2, indicatorSpace:I
    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    .line 2030
    .local v1, indicatorPos:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2031
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_2

    .line 2032
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2033
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    .line 2039
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    int-to-float v11, v1

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 2036
    :cond_3
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    .line 2037
    .local v0, indicatorCenterOffset:I
    add-int/2addr v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1241
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    .line 1245
    .local v2, screenSize:I
    const/high16 v3, 0x4000

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1247
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1263
    :goto_0
    return-void

    .line 1250
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1251
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1254
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1255
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1256
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 1257
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1262
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    goto :goto_0

    .line 1259
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 1260
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 967
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 969
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 970
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 971
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 978
    :cond_1
    :goto_0
    return-void

    .line 973
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 974
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 975
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method animateDragViewToOriginalPosition()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2044
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2045
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2046
    .local v0, anim:Landroid/animation/AnimatorSet;
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2047
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2050
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/PagedView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2056
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2058
    .end local v0           #anim:Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method boundByReorderablePages(Z[I)V
    .locals 0
    .parameter "isReordering"
    .parameter "range"

    .prologue
    .line 830
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1960
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->computeScrollHelper()Z

    .line 580
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 551
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 553
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollTo(II)V

    .line 558
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    .line 574
    :goto_0
    return v0

    .line 560
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    if-eq v2, v4, :cond_4

    .line 561
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 562
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    .line 563
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitched()V

    .line 567
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    if-nez v1, :cond_3

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->pageEndMoving()V

    .line 571
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onPostReorderingAnimationCompleted()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 574
    goto :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1266
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    .line 1268
    .local v2, screenSize:I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1270
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1287
    :goto_0
    return-void

    .line 1271
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1274
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1275
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1278
    :cond_1
    const v3, 0x3e0f5c29

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1279
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1280
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 1281
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1286
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    goto :goto_0

    .line 1283
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 1284
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1164
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1165
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 12
    .parameter "ev"
    .parameter "touchSlopScale"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1173
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1174
    .local v0, pointerIndex:I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_1

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1178
    .local v2, x:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1179
    .local v6, y:F
    float-to-int v10, v2

    float-to-int v11, v6

    invoke-direct {p0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1183
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    if-eqz v10, :cond_0

    .line 1185
    :cond_2
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 1186
    .local v3, xDiff:I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v7, v10

    .line 1188
    .local v7, yDiff:I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchSlop:I

    int-to-float v10, v10

    mul-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1189
    .local v1, touchSlop:I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPagingTouchSlop:I

    if-le v3, v10, :cond_5

    move v5, v9

    .line 1190
    .local v5, xPaged:Z
    :goto_1
    if-le v3, v1, :cond_6

    move v4, v9

    .line 1191
    .local v4, xMoved:Z
    :goto_2
    if-le v7, v1, :cond_3

    move v8, v9

    .line 1193
    .local v8, yMoved:Z
    :cond_3
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-eqz v8, :cond_0

    .line 1194
    :cond_4
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v10, :cond_7

    if-eqz v5, :cond_0

    .line 1196
    :goto_3
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 1197
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    .line 1198
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1199
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1200
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchX:F

    .line 1201
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSmoothingTime:F

    .line 1202
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->pageBeginMoving()V

    goto :goto_0

    .end local v4           #xMoved:Z
    .end local v5           #xPaged:Z
    .end local v8           #yMoved:Z
    :cond_5
    move v5, v8

    .line 1189
    goto :goto_1

    .restart local v5       #xPaged:Z
    :cond_6
    move v4, v8

    .line 1190
    goto :goto_2

    .line 1194
    .restart local v4       #xMoved:Z
    .restart local v8       #yMoved:Z
    :cond_7
    if-eqz v4, :cond_0

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v9

    div-int/lit8 v2, v9, 0x2

    .line 880
    .local v2, halfScreenSize:I
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    add-int v7, v9, v2

    .line 882
    .local v7, screenCenter:I
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastScreenCenter:I

    if-ne v7, v9, :cond_0

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    if-eqz v9, :cond_1

    .line 885
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 886
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/PagedView;->screenScrolled(I)V

    .line 887
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastScreenCenter:I

    .line 891
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v5

    .line 892
    .local v5, pageCount:I
    if-lez v5, :cond_7

    .line 893
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getVisiblePages([I)V

    .line 894
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 895
    .local v4, leftScreen:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 896
    .local v6, rightScreen:I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_7

    const/4 v9, -0x1

    if-eq v6, v9, :cond_7

    .line 897
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 899
    .local v0, drawingTime:J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 900
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 904
    add-int/lit8 v3, v5, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_5

    .line 905
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 906
    .local v8, v:Landroid/view/View;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-ne v8, v9, :cond_3

    .line 904
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 907
    :cond_3
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v9, :cond_4

    if-gt v4, v3, :cond_2

    if-gt v3, v6, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 909
    :cond_4
    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 913
    .end local v8           #v:Landroid/view/View;
    :cond_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eqz v9, :cond_6

    .line 914
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v9, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 917
    :cond_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 918
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 921
    .end local v0           #drawingTime:J
    .end local v3           #i:I
    .end local v4           #leftScreen:I
    .end local v6           #rightScreen:I
    :cond_7
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 950
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 952
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 961
    :goto_0
    return v0

    .line 955
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 956
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 957
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 961
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 1754
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 1755
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1756
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method endReordering()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2177
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderingStarted:Z

    if-nez v1, :cond_1

    .line 2204
    :cond_0
    :goto_0
    return-void

    .line 2178
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderingStarted:Z

    .line 2182
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PagedView$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    .line 2188
    .local v0, onCompleteRunnable:Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    if-nez v1, :cond_0

    .line 2189
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/PagedView$7;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2195
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2198
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(II)V

    .line 2200
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->animateDragViewToOriginalPosition()V

    goto :goto_0
.end method

.method protected flashScrollingIndicator(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1929
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->showScrollingIndicator(Z)V

    .line 1930
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x28a

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1931
    return-void

    .line 1929
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 989
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 990
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 992
    .local v2, v:Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 993
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1003
    :cond_0
    return-void

    .line 996
    :cond_1
    if-eq v2, p0, :cond_0

    .line 999
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1000
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1001
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected getBoundedScrollProgress(ILandroid/view/View;I)F
    .locals 2
    .parameter "screenCenter"
    .parameter "v"
    .parameter "page"

    .prologue
    .line 1212
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 1214
    .local v0, halfScreenSize:I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollX:I

    add-int/2addr v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1215
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1217
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v1

    return v1
.end method

.method protected getChildIndexForRelativeOffset(I)I
    .locals 5
    .parameter "relativeOffset"

    .prologue
    .line 1683
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    .line 1686
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1687
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 1688
    .local v2, left:I
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    add-int v3, v2, v4

    .line 1689
    .local v3, right:I
    if-gt v2, p1, :cond_0

    if-gt p1, v3, :cond_0

    .line 1693
    .end local v1           #i:I
    .end local v2           #left:I
    .end local v3           #right:I
    :goto_1
    return v1

    .line 1686
    .restart local v1       #i:I
    .restart local v2       #left:I
    .restart local v3       #right:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1693
    .end local v2           #left:I
    .end local v3           #right:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected getChildOffset(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 781
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_1

    .line 799
    :cond_0
    :goto_0
    return v2

    .line 783
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsets:[I

    .line 786
    .local v0, childOffsets:[I
    :goto_1
    if-eqz v0, :cond_3

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 787
    aget v2, v0, p1

    goto :goto_0

    .line 783
    .end local v0           #childOffsets:[I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    goto :goto_1

    .line 789
    .restart local v0       #childOffsets:[I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 792
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 793
    .local v2, offset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 794
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 793
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 796
    :cond_4
    if-eqz v0, :cond_0

    .line 797
    aput v2, v0, p1

    goto :goto_0
.end method

.method protected getChildWidth(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 1699
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1700
    .local v0, measuredWidth:I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinimumWidth:I

    .line 1701
    .local v1, minWidth:I
    if-le v1, v0, :cond_0

    .end local v1           #minWidth:I
    :goto_0
    return v1

    .restart local v1       #minWidth:I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method getCurrentPage()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getMaxScrollProgress()F
    .locals 1

    .prologue
    .line 1208
    const/high16 v0, 0x3f80

    return v0
.end method

.method getNextPage()I
    .locals 2

    .prologue
    .line 406
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 1869
    const/4 v2, -0x1

    .line 1870
    .local v2, result:I
    if-eqz p1, :cond_1

    .line 1871
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1872
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    .line 1873
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1874
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1879
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_1
    return v1

    .line 1873
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #vp:Landroid/view/ViewParent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :cond_1
    move v1, v2

    .line 1879
    goto :goto_1
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 1717
    const v7, 0x7fffffff

    .line 1718
    .local v7, minDistanceFromScreenCenter:I
    const/4 v8, -0x1

    .line 1719
    .local v8, minDistanceFromScreenCenterIndex:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1720
    .local v9, screenCenter:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v1

    .line 1721
    .local v1, childCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 1722
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1723
    .local v6, layout:Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1724
    .local v2, childWidth:I
    div-int/lit8 v4, v2, 0x2

    .line 1725
    .local v4, halfChildWidth:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int v0, v10, v4

    .line 1726
    .local v0, childCenter:I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1727
    .local v3, distanceFromScreenCenter:I
    if-ge v3, v7, :cond_0

    .line 1728
    move v7, v3

    .line 1729
    move v8, v5

    .line 1721
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1732
    .end local v0           #childCenter:I
    .end local v2           #childWidth:I
    .end local v3           #distanceFromScreenCenter:I
    .end local v4           #halfChildWidth:I
    .end local v6           #layout:Landroid/view/View;
    :cond_1
    return v8
.end method

.method getPageNearestToPoint(F)I
    .locals 4
    .parameter "x"

    .prologue
    .line 1705
    const/4 v1, 0x0

    .line 1706
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1707
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 1713
    .end local v1           #index:I
    :goto_1
    return v1

    .line 1710
    .restart local v1       #index:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1713
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1
.end method

.method protected getRelativeChildOffset(I)I
    .locals 5
    .parameter "index"

    .prologue
    .line 804
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 815
    :cond_1
    :goto_0
    return v0

    .line 806
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 807
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    goto :goto_0

    .line 809
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 810
    .local v1, padding:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 812
    .local v0, offset:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_1

    .line 813
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 5
    .parameter "child"

    .prologue
    .line 822
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 823
    .local v1, measuredWidth:I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinimumWidth:I

    .line 824
    .local v2, minWidth:I
    if-le v2, v1, :cond_0

    move v0, v2

    .line 825
    .local v0, maxWidth:I
    :goto_0
    int-to-float v3, v0

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .end local v0           #maxWidth:I
    :cond_0
    move v0, v1

    .line 824
    goto :goto_0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 7
    .parameter "screenCenter"
    .parameter "v"
    .parameter "page"

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1223
    .local v1, halfScreenSize:I
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    add-int v3, v4, v5

    .line 1224
    .local v3, totalDistance:I
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1227
    .local v0, delta:I
    int-to-float v4, v0

    int-to-float v5, v3

    const/high16 v6, 0x3f80

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 1228
    .local v2, scrollProgress:F
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMaxScrollProgress()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1229
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMaxScrollProgress()F

    move-result v4

    neg-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1230
    return v2
.end method

.method protected getScrollingIndicator()Landroid/view/View;
    .locals 1

    .prologue
    .line 1913
    const/4 v0, 0x0

    return-object v0
.end method

.method getViewportHeight()I
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportWidth()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .locals 2
    .parameter "range"

    .prologue
    const/4 v0, 0x0

    .line 834
    aput v0, p1, v0

    .line 835
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    .line 869
    return-void
.end method

.method protected hasElasticScrollIndicator()Z
    .locals 1

    .prologue
    .line 2000
    const/4 v0, 0x1

    return v0
.end method

.method protected hideScrollingIndicator(Z)V
    .locals 5
    .parameter "immediately"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1963
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 1993
    :cond_0
    :goto_0
    return-void

    .line 1964
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1966
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 1967
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1969
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 1970
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 1971
    if-eqz p1, :cond_2

    .line 1972
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1973
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1975
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1976
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1977
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/PagedView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1990
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected hitsNextPage(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1012
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 418
    return p1
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 292
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 293
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 294
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/internal/policy/impl/keyguard/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 295
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 298
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchSlop:I

    .line 299
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPagingTouchSlop:I

    .line 300
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaximumVelocity:I

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    .line 304
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 307
    const/high16 v1, 0x43fa

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingThresholdVelocity:I

    .line 308
    const/high16 v1, 0x437a

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinFlingVelocity:I

    .line 309
    const v1, 0x44bb8000

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinSnapVelocity:I

    .line 310
    invoke-virtual {p0, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 311
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 762
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    .line 763
    .local v0, count:I
    if-nez v0, :cond_1

    .line 764
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsets:[I

    .line 765
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    .line 766
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 778
    :cond_0
    return-void

    .line 770
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsets:[I

    .line 771
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    .line 772
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 773
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 774
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    .line 775
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 776
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    return v0
.end method

.method protected isPageMoving()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .locals 3
    .parameter "testTouchState"

    .prologue
    .line 2168
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsReordering:Z

    .line 2169
    .local v0, state:Z
    if-eqz p1, :cond_0

    .line 2170
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 2172
    :cond_0
    return v0

    .line 2170
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 1917
    const/4 v0, 0x0

    return v0
.end method

.method mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 3
    .parameter "v"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 5
    .parameter "v"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    aput p2, v0, v3

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    aput p3, v0, v4

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method protected maxOverScroll()F
    .locals 3

    .prologue
    .line 1296
    const/high16 v0, 0x3f80

    .line 1297
    .local v0, f:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 1298
    const v1, 0x3e0f5c29

    mul-float/2addr v1, v0

    return v1
.end method

.method protected notifyPageSwitched()V
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 471
    :cond_0
    return-void
.end method

.method protected notifyPageSwitching(I)V
    .locals 2
    .parameter "whichPage"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;->onPageSwitching(Landroid/view/View;I)V

    .line 465
    :cond_0
    return-void
.end method

.method public abstract onAddView(Landroid/view/View;I)V
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 752
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    .line 753
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 754
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 759
    return-void
.end method

.method protected onEndReordering()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2130
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2131
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x1040339

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2134
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsReordering:Z

    .line 2137
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getVisiblePages([I)V

    .line 2138
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2140
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v4

    if-le v0, v1, :cond_2

    .line 2141
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2139
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2144
    :cond_3
    return-void
.end method

.method public onFlingToDelete(Landroid/graphics/PointF;)V
    .locals 12
    .parameter "vel"

    .prologue
    .line 2409
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 2416
    .local v4, startTime:J
    new-instance v9, Lcom/android/internal/policy/impl/keyguard/PagedView$10;

    invoke-direct {v9, p0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;J)V

    .line 2437
    .local v9, tInterpolator:Landroid/animation/TimeInterpolator;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2438
    .local v3, from:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2439
    .local v1, dragView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 2440
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 2441
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FRICTION:F

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;-><init>(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    .line 2444
    .local v0, updateCb:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v8

    .line 2447
    .local v8, onAnimationEndRunnable:Ljava/lang/Runnable;
    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2448
    .local v7, mDropAnim:Landroid/animation/ValueAnimator;
    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2449
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v10, v2

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2450
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2451
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2452
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$11;

    invoke-direct {v2, p0, v8}, Lcom/android/internal/policy/impl/keyguard/PagedView$11;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2457
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 2458
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    .line 2459
    return-void

    .line 2450
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1637
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1619
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1620
    const/4 v1, 0x0

    .line 1621
    .local v1, vscroll:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1626
    .local v0, hscroll:F
    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 1627
    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 1628
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollRight()V

    .line 1632
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1623
    .end local v0           #hscroll:F
    .end local v1           #vscroll:F
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1624
    .restart local v1       #vscroll:F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0       #hscroll:F
    goto :goto_1

    .line 1630
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1614
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2562
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 2529
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2530
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2531
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2532
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2533
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2534
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2536
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 2517
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2518
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2519
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2520
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2522
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 2523
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2525
    :cond_1
    return-void

    .line 2518
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1051
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1054
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v10

    if-gtz v10, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 1160
    :cond_0
    :goto_0
    return v8

    .line 1061
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1062
    .local v0, action:I
    const/4 v10, 0x2

    if-ne v0, v10, :cond_2

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    if-eq v10, v8, :cond_0

    .line 1067
    :cond_2
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    .line 1160
    :cond_3
    :goto_1
    :pswitch_0
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    if-nez v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 1073
    :pswitch_1
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    .line 1074
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1085
    :cond_4
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1086
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 1088
    .local v7, y:F
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    .line 1089
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionY:F

    .line 1090
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownScrollX:F

    .line 1091
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1092
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 1093
    invoke-virtual {p0, p0, v5, v7}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v3

    .line 1094
    .local v3, p:[F
    aget v10, v3, v9

    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    .line 1095
    aget v10, v3, v8

    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    .line 1096
    iput v12, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1097
    iput v12, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    .line 1098
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1101
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    add-int v2, v10, v11

    .line 1102
    .local v2, leftEdgeBoundary:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    sub-int v4, v10, v11

    .line 1103
    .local v4, rightEdgeBoundary:I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    int-to-float v11, v2

    cmpg-float v10, v10, v11

    if-lez v10, :cond_5

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    int-to-float v11, v4

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_6

    .line 1104
    :cond_5
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 1112
    :cond_6
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->getFinalX()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->getCurrX()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1113
    .local v6, xDist:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_7

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchSlop:I

    if-ge v6, v10, :cond_8

    :cond_7
    move v1, v8

    .line 1114
    .local v1, finishedScrolling:Z
    :goto_2
    if-eqz v1, :cond_9

    .line 1115
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 1116
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_1

    .end local v1           #finishedScrolling:Z
    :cond_8
    move v1, v9

    .line 1113
    goto :goto_2

    .line 1118
    .restart local v1       #finishedScrolling:Z
    :cond_9
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    float-to-int v10, v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionY:F

    float-to-int v11, v11

    invoke-direct {p0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1119
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    goto/16 :goto_1

    .line 1121
    :cond_a
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    goto/16 :goto_1

    .line 1143
    .end local v1           #finishedScrolling:Z
    .end local v2           #leftEdgeBoundary:I
    .end local v3           #p:[F
    .end local v4           #rightEdgeBoundary:I
    .end local v5           #x:F
    .end local v6           #xDist:I
    .end local v7           #y:F
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->resetTouchState()V

    .line 1145
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    float-to-int v10, v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    float-to-int v11, v11

    invoke-direct {p0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isTouchPointInCurrentPage(II)Z

    move-result v10

    if-nez v10, :cond_3

    goto/16 :goto_0

    .line 1151
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1152
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1067
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 708
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v1

    .line 715
    .local v1, childCount:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v7

    .line 716
    .local v7, offsetX:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetY()I

    move-result v8

    .line 719
    .local v8, offsetY:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 721
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v9

    add-int v3, v7, v9

    .line 722
    .local v3, childLeft:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v1, :cond_3

    .line 723
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 724
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingTop()I

    move-result v9

    add-int v4, v8, v9

    .line 725
    .local v4, childTop:I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_2

    .line 726
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 727
    .local v5, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 730
    .local v2, childHeight:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int v10, v4, v2

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 732
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    .line 722
    .end local v2           #childHeight:I
    .end local v5           #childWidth:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 736
    .end local v0           #child:Landroid/view/View;
    .end local v4           #childTop:I
    :cond_3
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_0

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 737
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 738
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateCurrentPageScroll()V

    .line 739
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 740
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFirstLayout:Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 30
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 588
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v27

    if-nez v27, :cond_1

    .line 589
    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 699
    :goto_0
    return-void

    .line 595
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 596
    .local v18, parent:Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 597
    .local v25, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    .line 598
    .local v26, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 599
    .local v11, heightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 602
    .local v12, heightSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 603
    .local v10, dm:Landroid/util/DisplayMetrics;
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 604
    .local v16, maxSize:I
    const/high16 v27, 0x3fc0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v20, v0

    .line 605
    .local v20, parentWidthSize:I
    move/from16 v19, v16

    .line 606
    .local v19, parentHeightSize:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v22, v0

    .line 607
    .local v22, scaledWidthSize:I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 608
    .local v21, scaledHeightSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 610
    if-eqz v25, :cond_2

    if-nez v11, :cond_3

    .line 611
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    .line 616
    :cond_3
    if-lez v26, :cond_4

    if-gtz v12, :cond_5

    .line 617
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/16 :goto_0

    .line 626
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingTop()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingBottom()I

    move-result v28

    add-int v24, v27, v28

    .line 627
    .local v24, verticalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingRight()I

    move-result v28

    add-int v13, v27, v28

    .line 636
    .local v13, horizontalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v5

    .line 637
    .local v5, childCount:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    if-ge v14, v5, :cond_8

    .line 639
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 640
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 643
    .local v15, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 644
    const/high16 v9, -0x8000

    .line 650
    .local v9, childWidthMode:I
    :goto_2
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 651
    const/high16 v7, -0x8000

    .line 656
    .local v7, childHeightMode:I
    :goto_3
    sub-int v27, v26, v13

    move/from16 v0, v27

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 658
    .local v8, childWidthMeasureSpec:I
    sub-int v27, v12, v24

    move/from16 v0, v27

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 661
    .local v6, childHeightMeasureSpec:I
    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    .line 637
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 646
    .end local v6           #childHeightMeasureSpec:I
    .end local v7           #childHeightMode:I
    .end local v8           #childWidthMeasureSpec:I
    .end local v9           #childWidthMode:I
    :cond_6
    const/high16 v9, 0x4000

    .restart local v9       #childWidthMode:I
    goto :goto_2

    .line 653
    :cond_7
    const/high16 v7, 0x4000

    .restart local v7       #childHeightMode:I
    goto :goto_3

    .line 663
    .end local v4           #child:Landroid/view/View;
    .end local v7           #childHeightMode:I
    .end local v9           #childWidthMode:I
    .end local v15           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setMeasuredDimension(II)V

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 670
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildCountOnLastMeasure:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    move/from16 v27, v0

    if-nez v27, :cond_9

    .line 671
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setCurrentPage(I)V

    .line 673
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildCountOnLastMeasure:I

    .line 675
    if-lez v5, :cond_a

    .line 680
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 685
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v17

    .line 686
    .local v17, offset:I
    sub-int v27, v26, v17

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 688
    .local v23, spacing:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setPageSpacing(I)V

    .line 692
    .end local v17           #offset:I
    .end local v23           #spacing:I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 694
    if-lez v5, :cond_b

    .line 695
    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v27

    add-int/lit8 v28, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    goto/16 :goto_0

    .line 697
    :cond_b
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    .prologue
    .line 497
    return-void
.end method

.method public abstract onRemoveView(Landroid/view/View;Z)V
.end method

.method public abstract onRemoveViewAnimationCompleted()V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 936
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 937
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    .line 941
    .local v0, focusablePage:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 942
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 943
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 945
    :goto_1
    return v2

    .line 939
    .end local v0           #focusablePage:I
    .end local v1           #v:Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .restart local v0       #focusablePage:I
    goto :goto_0

    .line 945
    .restart local v1       #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onStartReordering()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2096
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2097
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x1040338

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2102
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 2103
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsReordering:Z

    .line 2106
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getVisiblePages([I)V

    .line 2107
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2108
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2109
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-le v0, v1, :cond_2

    .line 2110
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2108
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2116
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    .line 2117
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .parameter "ev"

    .prologue
    .line 1308
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v31

    if-gtz v31, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v31

    .line 1593
    :goto_0
    return v31

    .line 1310
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1312
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1314
    .local v4, action:I
    and-int/lit16 v0, v4, 0xff

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    .line 1593
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v31, 0x1

    goto :goto_0

    .line 1320
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->isFinished()Z

    move-result v31

    if-nez v31, :cond_2

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1325
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    .line 1326
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionY:F

    .line 1327
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownScrollX:F

    .line 1328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v18

    .line 1329
    .local v18, p:[F
    const/16 v31, 0x0

    aget v31, v18, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    .line 1330
    const/16 v31, 0x1

    aget v31, v18, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    .line 1331
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1332
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    .line 1333
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1336
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    move/from16 v32, v0

    add-int v16, v31, v32

    .line 1337
    .local v16, leftEdgeBoundary:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMeasuredWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v32

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    move/from16 v32, v0

    sub-int v27, v31, v32

    .line 1338
    .local v27, rightEdgeBoundary:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    move/from16 v31, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-lez v31, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    move/from16 v31, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_4

    .line 1339
    :cond_3
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 1342
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 1343
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->pageBeginMoving()V

    goto/16 :goto_1

    .line 1348
    .end local v16           #leftEdgeBoundary:I
    .end local v18           #p:[F
    .end local v27           #rightEdgeBoundary:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 1350
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v23

    .line 1351
    .local v23, pointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v30

    .line 1352
    .local v30, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    move/from16 v32, v0

    add-float v31, v31, v32

    sub-float v7, v31, v30

    .line 1354
    .local v7, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    move/from16 v31, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v32

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    .line 1359
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f80

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_6

    .line 1360
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchX:F

    move/from16 v31, v0

    add-float v31, v31, v7

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchX:F

    .line 1361
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v31

    move-wide/from16 v0, v31

    long-to-float v0, v0

    move/from16 v31, v0

    const v32, 0x4e6e6b28

    div-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSmoothingTime:F

    .line 1362
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferScrollUpdate:Z

    move/from16 v31, v0

    if-nez v31, :cond_5

    .line 1363
    float-to-int v0, v7

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollBy(II)V

    .line 1368
    :goto_2
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1369
    float-to-int v0, v7

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v31, v7, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_1

    .line 1366
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    goto :goto_2

    .line 1371
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1373
    .end local v7           #deltaX:F
    .end local v23           #pointerIndex:I
    .end local v30           #x:F
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    .line 1375
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1376
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 1380
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v24

    .line 1381
    .local v24, pt:[F
    const/16 v31, 0x0

    aget v31, v24, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    .line 1382
    const/16 v31, 0x1

    aget v31, v24, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 1387
    .local v8, dragViewIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v6, v0

    .line 1389
    .local v6, bufferSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v31

    const/16 v32, 0x0

    aget v31, v31, v32

    int-to-float v0, v6

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v15, v0

    .line 1391
    .local v15, leftBufferEdge:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v31

    const/16 v32, 0x0

    aget v31, v31, v32

    int-to-float v0, v6

    move/from16 v32, v0

    sub-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1395
    .local v26, rightBufferEdge:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v13

    .line 1397
    .local v13, isHoveringOverDelete:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setPageHoveringOverDeleteDropTarget(IZ)V

    .line 1406
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    move/from16 v22, v0

    .line 1407
    .local v22, parentX:F
    const/16 v19, -0x1

    .line 1408
    .local v19, pageIndexToSnapTo:I
    int-to-float v0, v15

    move/from16 v31, v0

    cmpg-float v31, v22, v31

    if-gez v31, :cond_9

    if-lez v8, :cond_9

    .line 1409
    add-int/lit8 v19, v8, -0x1

    .line 1414
    :cond_8
    :goto_3
    move/from16 v20, v19

    .line 1415
    .local v20, pageUnderPointIndex:I
    const/16 v31, -0x1

    move/from16 v0, v20

    move/from16 v1, v31

    if-le v0, v1, :cond_a

    if-nez v13, :cond_a

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v33, v31, v32

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    aput v33, v31, v32

    .line 1418
    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    move/from16 v0, v31

    move/from16 v1, v20

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget v31, v31, v32

    move/from16 v0, v20

    move/from16 v1, v31

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->isFinished()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 1422
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    .line 1423
    new-instance v31, Lcom/android/internal/policy/impl/keyguard/PagedView$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/policy/impl/keyguard/PagedView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;II)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1410
    .end local v20           #pageUnderPointIndex:I
    :cond_9
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v22, v31

    if-lez v31, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    if-ge v8, v0, :cond_8

    .line 1411
    add-int/lit8 v19, v8, 0x1

    goto/16 :goto_3

    .line 1476
    .restart local v20       #pageUnderPointIndex:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1477
    const/16 v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_1

    .line 1480
    .end local v6           #bufferSize:I
    .end local v8           #dragViewIndex:I
    .end local v13           #isHoveringOverDelete:Z
    .end local v15           #leftBufferEdge:I
    .end local v19           #pageIndexToSnapTo:I
    .end local v20           #pageUnderPointIndex:I
    .end local v22           #parentX:F
    .end local v24           #pt:[F
    .end local v26           #rightBufferEdge:I
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1485
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    .line 1486
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1487
    .local v5, activePointerId:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v23

    .line 1488
    .restart local v23       #pointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v30

    .line 1489
    .restart local v30       #x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    .line 1490
    .local v28, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v31, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaximumVelocity:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1491
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v29, v0

    .line 1492
    .local v29, velocityX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    move/from16 v31, v0

    sub-float v31, v30, v31

    move/from16 v0, v31

    float-to-int v7, v0

    .line 1493
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v21

    .line 1494
    .local v21, pageWidth:I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v32, v0

    const v33, 0x3ecccccd

    mul-float v32, v32, v33

    cmpl-float v31, v31, v32

    if-lez v31, :cond_10

    const/4 v14, 0x1

    .line 1497
    .local v14, isSignificantMove:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    move/from16 v33, v0

    add-float v32, v32, v33

    sub-float v32, v32, v30

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v32

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    .line 1499
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    move/from16 v31, v0

    const/high16 v32, 0x41c8

    cmpl-float v31, v31, v32

    if-lez v31, :cond_11

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingThresholdVelocity:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_11

    const/4 v12, 0x1

    .line 1505
    .local v12, isFling:Z
    :goto_5
    const/16 v25, 0x0

    .line 1506
    .local v25, returnToOriginalPage:Z
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v32, v0

    const v33, 0x3ea8f5c3

    mul-float v32, v32, v33

    cmpl-float v31, v31, v32

    if-lez v31, :cond_c

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->signum(F)F

    move-result v31

    int-to-float v0, v7

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->signum(F)F

    move-result v32

    cmpl-float v31, v31, v32

    if-eqz v31, :cond_c

    if-eqz v12, :cond_c

    .line 1508
    const/16 v25, 0x1

    .line 1515
    :cond_c
    if-eqz v14, :cond_d

    if-lez v7, :cond_d

    if-eqz v12, :cond_e

    :cond_d
    if-eqz v12, :cond_13

    if-lez v29, :cond_13

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    if-lez v31, :cond_13

    .line 1517
    if-eqz v25, :cond_12

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 1518
    .local v9, finalPage:I
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPageWithVelocity(II)V

    .line 1576
    .end local v5           #activePointerId:I
    .end local v7           #deltaX:I
    .end local v9           #finalPage:I
    .end local v12           #isFling:Z
    .end local v14           #isSignificantMove:Z
    .end local v21           #pageWidth:I
    .end local v23           #pointerIndex:I
    .end local v25           #returnToOriginalPage:Z
    .end local v28           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v29           #velocityX:I
    .end local v30           #x:F
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1578
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1494
    .restart local v5       #activePointerId:I
    .restart local v7       #deltaX:I
    .restart local v21       #pageWidth:I
    .restart local v23       #pointerIndex:I
    .restart local v28       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v29       #velocityX:I
    .restart local v30       #x:F
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1499
    .restart local v14       #isSignificantMove:Z
    :cond_11
    const/4 v12, 0x0

    goto :goto_5

    .line 1517
    .restart local v12       #isFling:Z
    .restart local v25       #returnToOriginalPage:Z
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    add-int/lit8 v9, v31, -0x1

    goto :goto_6

    .line 1519
    :cond_13
    if-eqz v14, :cond_14

    if-gez v7, :cond_14

    if-eqz v12, :cond_15

    :cond_14
    if-eqz v12, :cond_17

    if-gez v29, :cond_17

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_17

    .line 1522
    if-eqz v25, :cond_16

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 1523
    .restart local v9       #finalPage:I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_7

    .line 1522
    .end local v9           #finalPage:I
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    add-int/lit8 v9, v31, 0x1

    goto :goto_8

    .line 1525
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToDestination()V

    goto :goto_7

    .line 1527
    .end local v5           #activePointerId:I
    .end local v7           #deltaX:I
    .end local v12           #isFling:Z
    .end local v14           #isSignificantMove:Z
    .end local v21           #pageWidth:I
    .end local v23           #pointerIndex:I
    .end local v25           #returnToOriginalPage:Z
    .end local v28           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v29           #velocityX:I
    .end local v30           #x:F
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1a

    .line 1531
    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1532
    .local v17, nextPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    move/from16 v0, v17

    move/from16 v1, v31

    if-eq v0, v1, :cond_19

    .line 1533
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto/16 :goto_7

    .line 1535
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToDestination()V

    goto/16 :goto_7

    .line 1537
    .end local v17           #nextPage:I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1c

    .line 1541
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1542
    .restart local v17       #nextPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    move/from16 v0, v17

    move/from16 v1, v31

    if-eq v0, v1, :cond_1b

    .line 1543
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto/16 :goto_7

    .line 1545
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToDestination()V

    goto/16 :goto_7

    .line 1547
    .end local v17           #nextPage:I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    .line 1549
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1550
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 1554
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v24

    .line 1555
    .restart local v24       #pt:[F
    const/16 v31, 0x0

    aget v31, v24, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    .line 1556
    const/16 v31, 0x1

    aget v31, v24, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    .line 1557
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1558
    const/4 v11, 0x0

    .line 1561
    .local v11, handledFling:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isFlingingToDelete()Landroid/graphics/PointF;

    move-result-object v10

    .line 1562
    .local v10, flingToDeleteVector:Landroid/graphics/PointF;
    if-eqz v10, :cond_1d

    .line 1563
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onFlingToDelete(Landroid/graphics/PointF;)V

    .line 1564
    const/4 v11, 0x1

    .line 1567
    :cond_1d
    if-nez v11, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 1569
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onDropToDelete()V

    goto/16 :goto_7

    .line 1572
    .end local v10           #flingToDeleteVector:Landroid/graphics/PointF;
    .end local v11           #handledFling:Z
    .end local v24           #pt:[F
    :cond_1e
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_7

    .line 1582
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1f

    .line 1583
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToDestination()V

    .line 1585
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1589
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1314
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 1609
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 1290
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->dampedOverScroll(F)V

    .line 1291
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    .line 476
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onPageBeginMoving()V

    .line 478
    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    .line 483
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onPageEndMoving()V

    .line 485
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v0, 0x1

    .line 2540
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2557
    :goto_0
    return v0

    .line 2543
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2557
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2545
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 2546
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollRight()V

    goto :goto_0

    .line 2551
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 2552
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollLeft()V

    goto :goto_0

    .line 2543
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1675
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1676
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexToPage(I)I

    move-result v0

    .line 1677
    .local v0, page:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1678
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 1680
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 925
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexToPage(I)I

    move-result v0

    .line 926
    .local v0, page:I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 927
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 928
    const/4 v1, 0x1

    .line 930
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected screenScrolled(I)V
    .locals 0
    .parameter "screenCenter"

    .prologue
    .line 745
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 515
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollTo(II)V

    .line 516
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1854
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 1858
    :cond_0
    :goto_0
    return-void

    .line 1856
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1862
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 1866
    :cond_0
    :goto_0
    return-void

    .line 1864
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 520
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    .line 522
    if-gez p1, :cond_2

    .line 523
    invoke-super {p0, v3, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 524
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_0

    .line 525
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->overScroll(F)V

    .line 537
    :cond_0
    :goto_0
    int-to-float v1, p1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchX:F

    .line 538
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSmoothingTime:F

    .line 541
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 542
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 543
    .local v0, p:[F
    aget v1, v0, v3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 544
    aget v1, v0, v4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 545
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 547
    .end local v0           #p:[F
    :cond_1
    return-void

    .line 527
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    if-le p1, v1, :cond_3

    .line 528
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    invoke-super {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 529
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_0

    .line 530
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->overScroll(F)V

    goto :goto_0

    .line 533
    :cond_3
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 534
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method setCurrentPage(I)V
    .locals 2
    .parameter "currentPage"

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitching(I)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 455
    :goto_0
    return-void

    .line 449
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 450
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 451
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateCurrentPageScroll()V

    .line 452
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicator()V

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitched()V

    .line 454
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    .line 390
    return-void
.end method

.method setDeleteDropTarget(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    .line 315
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 344
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->requestLayout()V

    .line 346
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 507
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v0

    .line 508
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 509
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    :cond_0
    return-void
.end method

.method public setOnlyAllowEdgeSwipes(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 459
    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .locals 0
    .parameter "viewIndex"
    .parameter "isHovering"

    .prologue
    .line 2476
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .parameter "pageSpacing"

    .prologue
    .line 702
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    .line 703
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 704
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;)V
    .locals 3
    .parameter "pageSwitchListener"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 382
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 4
    .parameter "scaleX"

    .prologue
    const/4 v3, 0x1

    .line 350
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 351
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 353
    .local v0, p:[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 354
    aget v1, v0, v3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 357
    .end local v0           #p:[F
    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 2
    .parameter "child"

    .prologue
    .line 872
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    return v0
.end method

.method protected showScrollingIndicator(Z)V
    .locals 5
    .parameter "immediately"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1934
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 1935
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 1936
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 1954
    :cond_0
    :goto_0
    return-void

    .line 1937
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1939
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 1940
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 1941
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1943
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 1944
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1945
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 1946
    if-eqz p1, :cond_2

    .line 1947
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1949
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1950
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1951
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x2ee

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(II)V

    .line 1737
    return-void
.end method

.method protected snapToPage(I)V
    .locals 1
    .parameter "whichPage"

    .prologue
    .line 1797
    const/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(II)V

    .line 1798
    return-void
.end method

.method protected snapToPage(II)V
    .locals 1
    .parameter "whichPage"
    .parameter "duration"

    .prologue
    .line 1804
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(IIZ)V

    .line 1805
    return-void
.end method

.method protected snapToPage(III)V
    .locals 1
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    .line 1819
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(IIIZ)V

    .line 1820
    return-void
.end method

.method protected snapToPage(IIIZ)V
    .locals 7
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1822
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    .line 1823
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitching(I)V

    .line 1824
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1825
    .local v6, focusedChild:Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 1827
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1830
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->pageBeginMoving()V

    .line 1831
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->awakenScrollBars(I)Z

    .line 1832
    if-eqz p4, :cond_4

    .line 1833
    const/4 p3, 0x0

    .line 1838
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1839
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1841
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitched()V

    .line 1844
    if-eqz p4, :cond_3

    .line 1845
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->computeScroll()V

    .line 1848
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 1849
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    .line 1850
    return-void

    .line 1834
    :cond_4
    if-nez p3, :cond_1

    .line 1835
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    goto :goto_0
.end method

.method protected snapToPage(IIZ)V
    .locals 5
    .parameter "whichPage"
    .parameter "duration"
    .parameter "immediate"

    .prologue
    .line 1807
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1812
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1813
    .local v1, newX:I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    .line 1814
    .local v2, sX:I
    sub-int v0, v1, v2

    .line 1815
    .local v0, delta:I
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(IIIZ)V

    .line 1816
    return-void
.end method

.method protected snapToPageImmediately(I)V
    .locals 2
    .parameter "whichPage"

    .prologue
    .line 1800
    const/16 v0, 0x2ee

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(IIZ)V

    .line 1801
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 9
    .parameter "whichPage"
    .parameter "velocity"

    .prologue
    const/high16 v8, 0x3f80

    .line 1760
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1761
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 1766
    .local v4, halfScreenSize:I
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v7

    sub-int v5, v6, v7

    .line 1767
    .local v5, newX:I
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 1768
    .local v0, delta:I
    const/4 v3, 0x0

    .line 1770
    .local v3, duration:I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_0

    .line 1773
    const/16 v6, 0x2ee

    invoke-virtual {p0, p1, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(II)V

    .line 1794
    :goto_0
    return-void

    .line 1781
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1782
    .local v2, distanceRatio:F
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1785
    .local v1, distance:F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1786
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1791
    const/high16 v6, 0x447a

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 1793
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public startReordering()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2147
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 2148
    .local v0, dragViewIndex:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aput v2, v3, v2

    .line 2149
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v1

    .line 2150
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2151
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderingStarted:Z

    .line 2154
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v2

    if-gt v3, v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v1

    if-gt v0, v3, :cond_1

    .line 2156
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->zoomOut()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2158
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2160
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onStartReordering()V

    .line 2164
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method protected updateCurrentPageScroll()V
    .locals 5

    .prologue
    .line 427
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v1

    .line 428
    .local v1, offset:I
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 429
    .local v2, relOffset:I
    sub-int v0, v1, v2

    .line 430
    .local v0, newX:I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollTo(II)V

    .line 431
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 432
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 433
    return-void
.end method

.method updateDragViewTranslationDuringDrag()V
    .locals 4

    .prologue
    .line 335
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownScrollX:F

    sub-float v0, v2, v3

    .line 336
    .local v0, x:F
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionY:F

    sub-float v1, v2, v3

    .line 337
    .local v1, y:F
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 338
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 341
    return-void
.end method

.method protected zoomIn(Ljava/lang/Runnable;)Z
    .locals 7
    .parameter "onCompleteRunnable"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v6, 0x3f80

    .line 2208
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2209
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2211
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_3

    .line 2212
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2213
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2214
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "scaleY"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$8;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2244
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    move v0, v1

    .line 2251
    :cond_2
    :goto_0
    return v0

    .line 2247
    :cond_3
    if-eqz p1, :cond_2

    .line 2248
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected zoomOut()Z
    .locals 7

    .prologue
    const/high16 v3, 0x3f80

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2062
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2063
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2066
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 2067
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2068
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2069
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v0, [F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "scaleY"

    new-array v5, v0, [F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2072
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2089
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2092
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
