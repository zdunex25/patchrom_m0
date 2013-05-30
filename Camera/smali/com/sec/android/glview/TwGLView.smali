.class public abstract Lcom/sec/android/glview/TwGLView;
.super Ljava/lang/Object;
.source "TwGLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;,
        Lcom/sec/android/glview/TwGLView$OnClickListener;,
        Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;,
        Lcom/sec/android/glview/TwGLView$OnFocusListener;,
        Lcom/sec/android/glview/TwGLView$OnKeyListener;,
        Lcom/sec/android/glview/TwGLView$OnTouchListener;,
        Lcom/sec/android/glview/TwGLView$OnDragListener;
    }
.end annotation


# static fields
.field public static final CLICKABLE:I = 0x4000

.field public static final DISABLED:I = 0x20

.field private static final DRAG_HOLD_TIME_ABSOLUTE:I = 0x0

.field private static final DRAG_HOLD_TIME_HIGH:I = 0x12c

.field private static final DRAG_HOLD_TIME_NORMAL:I = 0x1f4

.field public static final DRAG_SENSITIVITY_ABSOLUTE:I = 0x0

.field public static final DRAG_SENSITIVITY_HIGH:I = 0x1

.field public static final DRAG_SENSITIVITY_NORMAL:I = 0x2

.field public static final FOCUSABLE:I = 0x1

.field private static final FOCUSABLE_MASK:I = 0x1

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field public static final GONE:I = 0x8

.field public static final H_ALIGN_CENTER:I = 0x2

.field public static final H_ALIGN_LEFT:I = 0x1

.field public static final H_ALIGN_NONE:I = 0x0

.field public static final H_ALIGN_RIGHT:I = 0x3

.field public static final INVISIBLE:I = 0x4

.field public static final NOT_FOCUSABLE:I = 0x0

.field private static final NO_ID:I = -0x1

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0x2

.field public static final ORIENTATION_270:I = 0x3

.field public static final ORIENTATION_90:I = 0x1

.field public static final VISIBLE:I = 0x0

.field public static final V_ALIGN_BOTTOM:I = 0x3

.field public static final V_ALIGN_MIDDLE:I = 0x2

.field public static final V_ALIGN_NONE:I = 0x0

.field public static final V_ALIGN_TOP:I = 0x1


# instance fields
.field private glCoordinate:[F

.field private glTransformedCoordinate:[F

.field private isNinePatchBackground:Z

.field protected mAlpha:F

.field protected mAlphaChanged:Z

.field private mAnimGLMatrix:[F

.field private mAnimMatrix:[F

.field private mAnimation:Landroid/view/animation/Animation;

.field private mAnimationFinished:Z

.field private mAnimationPending:Z

.field private mAnimationStarted:Z

.field private mAnimationStartedEvent:Z

.field private mAnimationTimeSet:Z

.field protected mAsyncLoad:Z

.field private mBackground:Lcom/sec/android/glview/TwGLView;

.field private mBackgroundResId:I

.field protected mBaseLeft:F

.field protected mBaseTop:F

.field private mBound:Landroid/graphics/RectF;

.field private mBypassTouch:Z

.field private mCenterPivot:Z

.field private mClipRect:Landroid/graphics/Rect;

.field private mClipping:Z

.field private mCombinedMatrix:[F

.field private mContinuousDrawMode:Z

.field private mDefaultOrientation:I

.field private mDragSensitivity:I

.field private mDragVibration:Z

.field private mDraggable:Z

.field protected mDragging:Z

.field protected mDrawFirstTime:Z

.field private mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

.field private mFocused:Z

.field private final mGLContext:Lcom/sec/android/glview/TwGLContext;

.field private mHideAfterAnimation:Z

.field private mHoverFocused:Z

.field private mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

.field protected mInScreen:Z

.field private mInternalFocus:Z

.field protected mIsClipped:Z

.field private mLastOrientation:I

.field protected mLayoutUpdated:Z

.field private mLeft:F

.field private mLeftBottom:[F

.field private mLeftTop:[F

.field private mLeftTopCoordinates:[Landroid/graphics/RectF;

.field public mLoaded:Z

.field private mLoading:Z

.field protected mManualClip:Z

.field private mMatrix:[F

.field private mNextFocusDownId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field private mOldClipRect:Landroid/graphics/Rect;

.field protected mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

.field protected mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

.field protected mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

.field protected mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

.field protected mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

.field private mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

.field protected mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

.field private mOrientation:I

.field protected mOriginalLeft:F

.field protected mOriginalTop:F

.field protected mPaddings:Landroid/graphics/Rect;

.field public mParent:Lcom/sec/android/glview/TwGLView;

.field protected mParentClipRect:Landroid/graphics/Rect;

.field private mParentHAlign:I

.field private mParentVAlign:I

.field protected mPositionChanged:Z

.field private mPreviousDragX:F

.field private mPreviousDragY:F

.field private mRightBottom:[F

.field private mRightTop:[F

.field private mRotatable:Z

.field private mRotateAnimation:Z

.field private mRotateAnimationDuration:I

.field private mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mRotationMatrix:[F

.field private mScaleMatrix:[F

.field private mScaleX:F

.field private mScaleY:F

.field protected mSizeGiven:Z

.field protected mSizeSpecified:Z

.field public mSubTitle:Ljava/lang/String;

.field private mTempMatrix:[F

.field private mTempOrientation:I

.field protected mThis:Lcom/sec/android/glview/TwGLView;

.field public mTitle:Ljava/lang/String;

.field private mToggleButton:Z

.field private mTop:F

.field private mTransformation:Landroid/view/animation/Transformation;

.field protected mTransformedScreenCoordinate:[F

.field private mTranslateX:F

.field private mTranslateY:F

.field private mTranslationMatrix:[F

.field protected mViewFlags:I

.field private mViewId:I

.field private mViewTag:I

.field private mVisibility:I

.field private setDragging:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    const/4 v6, 0x2

    const/16 v2, 0x10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 689
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 76
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 79
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 82
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 85
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 88
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 91
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 94
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 97
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 100
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 102
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 120
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 130
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 132
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 167
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 170
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    .line 173
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    .line 176
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    .line 179
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 182
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    .line 185
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 188
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    .line 191
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    .line 194
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    .line 197
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    .line 200
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 203
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 206
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 209
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 212
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 215
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 218
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    .line 233
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 236
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 239
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 242
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 245
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    .line 248
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    .line 250
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 252
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    .line 279
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 282
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 285
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 287
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 297
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 299
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 309
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 312
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z

    .line 315
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 318
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 324
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 327
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    .line 330
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    .line 333
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    .line 336
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    .line 339
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 342
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 344
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 346
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 351
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 354
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 366
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 369
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 372
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 375
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 377
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 379
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    .line 382
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 389
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 391
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 393
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 395
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 397
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 399
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 403
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 405
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 409
    new-instance v1, Lcom/sec/android/glview/TwGLView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$1;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    .line 450
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 517
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 545
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 564
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 570
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 602
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 628
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 690
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    .line 691
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iput p2, v1, Landroid/graphics/RectF;->left:F

    .line 692
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iput p3, v1, Landroid/graphics/RectF;->top:F

    .line 694
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 695
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 697
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 698
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 700
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 701
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetTransformMatrix()V

    .line 703
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 704
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 706
    invoke-virtual {p0, v3, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 707
    invoke-virtual {p0, v5, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 708
    invoke-virtual {p0, v6, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 709
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 711
    iput-object p0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    .line 713
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 714
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x2

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 730
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 76
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 79
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 82
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 85
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 88
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 91
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 94
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 97
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 100
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 102
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 120
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 130
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 132
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 167
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 170
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    .line 173
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    .line 176
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    .line 179
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 182
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    .line 185
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 188
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    .line 191
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    .line 194
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    .line 197
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    .line 200
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 203
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 206
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 209
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 212
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 215
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 218
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    .line 233
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 236
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 239
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 242
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 245
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    .line 248
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    .line 250
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 252
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    .line 279
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 282
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 285
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 287
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 297
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 299
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 309
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 312
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z

    .line 315
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 318
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 324
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 327
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    .line 330
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    .line 333
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    .line 336
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    .line 339
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 342
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 344
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 346
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 351
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 354
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 366
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 369
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 372
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 375
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 377
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 379
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    .line 382
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 389
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 391
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 393
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 395
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 397
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 399
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 403
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 405
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 409
    new-instance v1, Lcom/sec/android/glview/TwGLView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$1;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    .line 450
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 517
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 545
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 564
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 570
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 602
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 628
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 731
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p2, p4

    add-float v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    .line 733
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 734
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetTransformMatrix()V

    .line 736
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 737
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 739
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 740
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 742
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 743
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 745
    invoke-virtual {p0, v4, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 746
    invoke-virtual {p0, v5, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 747
    invoke-virtual {p0, v6, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 748
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 750
    iput-object p0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    .line 751
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 752
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/glview/TwGLView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/glview/TwGLView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private declared-synchronized combineMatrices()V
    .locals 6

    .prologue
    .line 2126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2127
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2131
    :goto_0
    monitor-exit p0

    return-void

    .line 2126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2128
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1574
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1575
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 1576
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 1577
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 1581
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onLayoutUpdated()V

    .line 1583
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1584
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onLayoutUpdated()V

    .line 1586
    :cond_2
    return-void
.end method


# virtual methods
.method public addView(ILcom/sec/android/glview/TwGLView;)V
    .locals 0
    .parameter "position"
    .parameter "view"

    .prologue
    .line 3066
    return-void
.end method

.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 3063
    return-void
.end method

.method public final bringToFront()V
    .locals 1

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 1694
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 1696
    :cond_0
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 1619
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 1620
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 1621
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 1623
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 1624
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 1625
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1627
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_1

    .line 1628
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 1629
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 1631
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_2

    .line 1632
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 1633
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 1635
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 1637
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v1, :cond_3

    .line 1638
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 1647
    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v1, :cond_5

    .line 1648
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    .line 1649
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1648
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1650
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1652
    .end local v0           #i:I
    :cond_5
    monitor-exit p0

    return-void

    .line 1619
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected final clearClip(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 2593
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v1

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 2594
    return-void
.end method

.method protected final declared-synchronized clip(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 5
    .parameter "gl"

    .prologue
    .line 2567
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    if-nez v0, :cond_0

    .line 2568
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2584
    :goto_0
    monitor-exit p0

    return-void

    .line 2574
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 1432
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 1433
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 1444
    :cond_0
    :goto_0
    return v0

    .line 1436
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 1440
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    if-eqz v1, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected dispatchDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 3055
    return-void
.end method

.method public final declared-synchronized draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V
    .locals 11
    .parameter "gl"
    .parameter "parentMatrix"
    .parameter "parentClipRect"

    .prologue
    const/4 v2, 0x4

    .line 1962
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v8, v0

    .line 1964
    .local v8, gl11:Ljavax/microedition/khronos/opengles/GL11;
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    if-nez v1, :cond_1

    .line 1965
    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1966
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2106
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1973
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    if-eq v1, v2, :cond_0

    .line 1977
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    if-eqz v1, :cond_2

    .line 1978
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1981
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    if-eqz v1, :cond_3

    .line 1982
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1984
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getAlpha()F

    move-result v7

    .line 1985
    .local v7, alpha:F
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x4604

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 1986
    invoke-interface {p1, v7, v7, v7, v7}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 1988
    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 1990
    .local v5, currentMatrix:[F
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_8

    .line 1991
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    if-nez v1, :cond_6

    .line 1992
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1993
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long v9, v1, v3

    .line 1994
    .local v9, timeMillis:J
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    if-eqz v1, :cond_4

    .line 1995
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1962
    .end local v5           #currentMatrix:[F
    .end local v7           #alpha:F
    .end local v8           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    .end local v9           #timeMillis:J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1999
    .restart local v5       #currentMatrix:[F
    .restart local v7       #alpha:F
    .restart local v8       #gl11:Ljavax/microedition/khronos/opengles/GL11;
    .restart local v9       #timeMillis:J
    :cond_4
    :try_start_2
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    if-eqz v1, :cond_9

    .line 2000
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 2001
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 2002
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 2003
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v9, v10}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 2012
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v9, v10, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2013
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2016
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v6, 0x2

    aget v4, v4, v6

    invoke-static {v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    aput v3, v1, v2

    .line 2017
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v6, 0x5

    aget v4, v4, v6

    invoke-static {v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    aput v3, v1, v2

    .line 2019
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    invoke-static {v1}, Lcom/sec/android/glview/TwGLUtil;->toGLMatrix([F)[F

    .line 2020
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .end local v5           #currentMatrix:[F
    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2022
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v7

    .line 2023
    iput v7, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 2026
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x4604

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 2027
    invoke-interface {p1, v7, v7, v7, v7}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 2029
    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 2048
    .end local v9           #timeMillis:J
    .restart local v5       #currentMatrix:[F
    :cond_6
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    if-eqz v1, :cond_7

    .line 2049
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 2050
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2051
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .end local v5           #currentMatrix:[F
    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2052
    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 2058
    .restart local v5       #currentMatrix:[F
    :cond_7
    :goto_2
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    if-eqz v1, :cond_8

    .line 2059
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 2060
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    if-eqz v1, :cond_8

    .line 2061
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/glview/TwGLView$3;

    invoke-direct {v2, p0}, Lcom/sec/android/glview/TwGLView$3;-><init>(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2069
    :cond_8
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    if-eqz v1, :cond_f

    .line 2070
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2071
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V

    .line 2072
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenGeometry()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2073
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    if-eqz v1, :cond_d

    .line 2074
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 2075
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onOutOfScreen()V

    goto/16 :goto_0

    .line 2004
    .restart local v9       #timeMillis:J
    :cond_9
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    if-eqz v1, :cond_5

    .line 2005
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 2006
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 2007
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v9, v10}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 2009
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    goto/16 :goto_1

    .line 2031
    :cond_a
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    if-eqz v1, :cond_b

    .line 2032
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/glview/TwGLView$2;

    invoke-direct {v2, p0}, Lcom/sec/android/glview/TwGLView$2;-><init>(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2039
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 2041
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_6

    .line 2042
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2054
    .end local v9           #timeMillis:J
    :cond_c
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    goto :goto_2

    .line 2079
    :cond_d
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    if-nez v1, :cond_e

    .line 2080
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2081
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 2089
    :cond_e
    :goto_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 2092
    :cond_f
    const/4 v1, 0x0

    invoke-interface {p1, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 2093
    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLView;->dispatchDraw(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 2095
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_10

    .line 2096
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 2098
    :cond_10
    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLView;->onDraw(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 2099
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 2100
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_11

    .line 2101
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatch;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 2103
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_0

    .line 2104
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatch;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 2082
    :cond_12
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, p3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2083
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    goto :goto_3

    .line 2085
    :cond_13
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2086
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public dumpViewHierarchy(I)V
    .locals 5
    .parameter "level"

    .prologue
    .line 3137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3138
    .local v1, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 3139
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3141
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 3142
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Clip(Manual:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    :goto_1
    return-void

    .line 3144
    :cond_1
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;
    .locals 8
    .parameter "focusedView"
    .parameter "direction"

    .prologue
    .line 2810
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p1, :cond_2

    .line 2811
    :cond_0
    const/4 v4, 0x0

    .line 2856
    :cond_1
    :goto_0
    return-object v4

    .line 2814
    :cond_2
    const/4 v4, 0x0

    .line 2817
    .local v4, resultView:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v3

    .line 2818
    .local v3, left:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v5

    .line 2819
    .local v5, top:F
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v0

    .line 2820
    .local v0, focusedViewLeft:F
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v1

    .line 2821
    .local v1, focusedViewTop:F
    sub-float v7, v0, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 2822
    .local v2, horizontalOffset:F
    sub-float v7, v1, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 2824
    .local v6, verticalOffset:F
    sparse-switch p2, :sswitch_data_0

    .line 2854
    const/4 v4, 0x0

    goto :goto_0

    .line 2826
    :sswitch_0
    cmpl-float v7, v0, v3

    if-lez v7, :cond_1

    .line 2827
    cmpl-float v7, v2, v6

    if-lez v7, :cond_1

    .line 2828
    move-object v4, p0

    goto :goto_0

    .line 2833
    :sswitch_1
    cmpg-float v7, v0, v3

    if-gez v7, :cond_1

    .line 2834
    cmpl-float v7, v2, v6

    if-lez v7, :cond_1

    .line 2835
    move-object v4, p0

    goto :goto_0

    .line 2840
    :sswitch_2
    cmpl-float v7, v1, v5

    if-lez v7, :cond_1

    .line 2841
    cmpg-float v7, v2, v6

    if-gez v7, :cond_1

    .line 2842
    move-object v4, p0

    goto :goto_0

    .line 2847
    :sswitch_3
    cmpg-float v7, v1, v5

    if-gez v7, :cond_1

    .line 2848
    cmpg-float v7, v2, v6

    if-gez v7, :cond_1

    .line 2849
    move-object v4, p0

    goto :goto_0

    .line 2824
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 2871
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 2881
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2874
    .restart local p0
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    if-eqz v1, :cond_2

    move-object p0, v0

    .line 2875
    goto :goto_0

    .line 2878
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 2881
    goto :goto_0
.end method

.method public findViewById(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "id"

    .prologue
    .line 2789
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    if-ne v0, p1, :cond_0

    .line 2792
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "tag"

    .prologue
    .line 2803
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    if-ne v0, p1, :cond_0

    .line 2806
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final getAlpha()F
    .locals 2

    .prologue
    .line 846
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 847
    const v0, 0x3e4ccccd

    .line 852
    :goto_0
    return v0

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 850
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0

    .line 852
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    goto :goto_0
.end method

.method public getArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1398
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final getBottom()F
    .locals 2

    .prologue
    .line 1296
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1297
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    .line 1302
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public getBypassTouch()Z
    .locals 1

    .prologue
    .line 1854
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    return v0
.end method

.method public final getCenterPivot()Z
    .locals 1

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    return v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1898
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V

    .line 1900
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getClipRectArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1904
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getContentArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1374
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaLeft()F

    move-result v0

    .line 1375
    .local v0, left:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaTop()F

    move-result v1

    .line 1376
    .local v1, top:F
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v4

    add-float/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public getContentAreaHeight()F
    .locals 2

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaLeft()F
    .locals 2

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaTop()F
    .locals 2

    .prologue
    .line 1370
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaWidth()F
    .locals 2

    .prologue
    .line 1385
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getContext()Lcom/sec/android/glview/TwGLContext;
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    return-object v0
.end method

.method public getCurrentArea()Landroid/graphics/RectF;
    .locals 8

    .prologue
    .line 1407
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v7

    add-float v4, v6, v7

    .line 1408
    .local v4, offsetX:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v7

    add-float v5, v6, v7

    .line 1409
    .local v5, offsetY:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v6

    add-float v1, v6, v4

    .line 1410
    .local v1, currentLeft:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v6

    add-float v3, v6, v5

    .line 1411
    .local v3, currentTop:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    add-float v2, v1, v6

    .line 1412
    .local v2, currentRight:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float v0, v3, v6

    .line 1414
    .local v0, currentBottom:F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v6
.end method

.method public getCurrentBottom()F
    .locals 2

    .prologue
    .line 1362
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentContentArea()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 1418
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentArea()Landroid/graphics/RectF;

    move-result-object v0

    .line 1419
    .local v0, current:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getCurrentLeft()F
    .locals 2

    .prologue
    .line 1335
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentRight()F
    .locals 2

    .prologue
    .line 1344
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentTop()F
    .locals 2

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getDraggable()Z
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    return v0
.end method

.method public final getHeight()F
    .locals 2

    .prologue
    .line 1323
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1324
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1326
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 1088
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    return v0
.end method

.method public getInternalFocus()Z
    .locals 2

    .prologue
    .line 2889
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 2890
    .local v0, result:Z
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 2891
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getInternalFocus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2893
    :cond_0
    return v0
.end method

.method public getInternalFocusParent()Lcom/sec/android/glview/TwGLView;
    .locals 1

    .prologue
    .line 2897
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    if-eqz v0, :cond_0

    .line 2902
    .end local p0
    :goto_0
    return-object p0

    .line 2899
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 2900
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getInternalFocusParent()Lcom/sec/android/glview/TwGLView;

    move-result-object p0

    goto :goto_0

    .line 2902
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getLayoutX()F
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public getLayoutY()F
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public final getLeft()F
    .locals 2

    .prologue
    .line 1234
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1237
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    .line 1242
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 1243
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1245
    :goto_1
    return v0

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1240
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    goto :goto_0

    .line 1245
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    goto :goto_1
.end method

.method public final getLeftTop(I)[F
    .locals 7
    .parameter "orientation"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 1014
    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1015
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1017
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    if-eqz v2, :cond_3

    .line 1018
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float v0, v2, v4

    .line 1019
    .local v0, centerX:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float v1, v2, v4

    .line 1021
    .local v1, centerY:F
    packed-switch p1, :pswitch_data_0

    .line 1049
    .end local v0           #centerX:F
    .end local v1           #centerY:F
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    return-object v2

    .line 1023
    .restart local v0       #centerX:F
    .restart local v1       #centerY:F
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    aput v3, v2, v5

    .line 1024
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    aput v3, v2, v6

    goto :goto_0

    .line 1027
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    aput v3, v2, v5

    .line 1028
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v1, v3

    aput v3, v2, v6

    goto :goto_0

    .line 1031
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v5

    .line 1032
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v6

    goto :goto_0

    .line 1035
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    aput v3, v2, v5

    .line 1036
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    aput v3, v2, v6

    goto :goto_0

    .line 1043
    .end local v0           #centerX:F
    .end local v1           #centerY:F
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v2, :cond_2

    .line 1044
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v2, v5

    .line 1045
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v2, v6

    goto :goto_0

    .line 1021
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    return v0
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 1948
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    return v0
.end method

.method protected getMatrix()[F
    .locals 1

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    return-object v0
.end method

.method public getMoveLayoutX()F
    .locals 2

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    .line 1483
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public getMoveLayoutY()F
    .locals 2

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    .line 1490
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getNextFocusDownId()I
    .locals 1

    .prologue
    .line 1120
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    return v0
.end method

.method public final getNextFocusLeftId()I
    .locals 1

    .prologue
    .line 1108
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    return v0
.end method

.method public final getNextFocusRightId()I
    .locals 1

    .prologue
    .line 1112
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    return v0
.end method

.method public final getNextFocusUpId()I
    .locals 1

    .prologue
    .line 1116
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    return v0
.end method

.method public getOnClickListener()Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method public getOnFocusListener()Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method public getOnTouchListener()Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method public final getOrientation()I
    .locals 2

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1187
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    .line 1190
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    goto :goto_0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getParentHAlign()I
    .locals 1

    .prologue
    .line 974
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    return v0
.end method

.method public final getParentVAlign()I
    .locals 1

    .prologue
    .line 983
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    return v0
.end method

.method public final getRight()F
    .locals 2

    .prologue
    .line 1281
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1282
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    .line 1287
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method public final getRotatable()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    return v0
.end method

.method public final getRotateAnimation()Z
    .locals 1

    .prologue
    .line 927
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    return v0
.end method

.method public getScrollHint()Z
    .locals 1

    .prologue
    .line 3035
    const/4 v0, 0x0

    return v0
.end method

.method public final getSizeGiven()Z
    .locals 1

    .prologue
    .line 1203
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    return v0
.end method

.method protected final getSizeSpecified()Z
    .locals 1

    .prologue
    .line 1199
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    return v0
.end method

.method public final getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()I
    .locals 1

    .prologue
    .line 1084
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getToggleButton()Z
    .locals 1

    .prologue
    .line 3153
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    return v0
.end method

.method public final getTop()F
    .locals 2

    .prologue
    .line 1260
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    .line 1261
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1263
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    .line 1268
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 1269
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    .line 1271
    :goto_1
    return v0

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1266
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    goto :goto_0

    .line 1271
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    goto :goto_1
.end method

.method public final getTranslateX()F
    .locals 2

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 2273
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    .line 2275
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    goto :goto_0
.end method

.method public final getTranslateY()F
    .locals 2

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 2285
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    .line 2287
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    goto :goto_0
.end method

.method public final getVisibility()I
    .locals 1

    .prologue
    .line 1663
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    return v0
.end method

.method public final getWidth()F
    .locals 2

    .prologue
    .line 1311
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1312
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public abstract initSize()V
.end method

.method public isAnimationFinished()Z
    .locals 1

    .prologue
    .line 1755
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    return v0
.end method

.method public final isClickable()Z
    .locals 2

    .prologue
    .line 2916
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClipped()Z
    .locals 1

    .prologue
    .line 3085
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 2725
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    return v0
.end method

.method public final isFocusable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2912
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocused()Z
    .locals 1

    .prologue
    .line 2907
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    return v0
.end method

.method public isInScreen()Z
    .locals 1

    .prologue
    .line 3081
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    return v0
.end method

.method public final isVisible()I
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1668
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 1670
    :goto_0
    return v0

    .line 1668
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 1670
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    goto :goto_0
.end method

.method public keyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2690
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v0, :cond_0

    .line 2691
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2692
    const/4 v0, 0x1

    .line 2694
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public keyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2698
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v0, :cond_0

    .line 2699
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2700
    const/4 v0, 0x1

    .line 2702
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final declared-synchronized load(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 3
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1915
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    if-eqz v2, :cond_2

    .line 1916
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1917
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 1918
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1937
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    .line 1921
    goto :goto_0

    .line 1924
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    if-nez v2, :cond_0

    .line 1927
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1928
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 1929
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 1931
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_3

    .line 1932
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 1937
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    goto :goto_0

    .line 1934
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 1935
    goto :goto_0

    .line 1915
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final mapPoint([FFF)V
    .locals 7
    .parameter "transformedScreenCoordinate"
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    const/4 v3, 0x3

    const/high16 v2, 0x3f80

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 2458
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    aput p2, v0, v1

    .line 2459
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    aput p3, v0, v6

    .line 2460
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    aput v2, v0, v3

    .line 2461
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    aput v2, v0, v3

    .line 2462
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 2464
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    aget v0, v0, v1

    aput v0, p1, v1

    .line 2465
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    aget v0, v0, v6

    aput v0, p1, v6

    .line 2467
    return-void
.end method

.method protected final mapPointReverse([FFF)V
    .locals 11
    .parameter "transformedScreenCoordinate"
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    .line 2393
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v10, v2, 0x4

    .line 2394
    .local v10, orientation:I
    if-nez v10, :cond_0

    .line 2395
    const/4 v2, 0x0

    aput p2, p1, v2

    .line 2396
    const/4 v2, 0x1

    aput p3, p1, v2

    .line 2436
    :goto_0
    return-void

    .line 2400
    :cond_0
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 2404
    .local v0, coordinateTransformMatrix:[F
    invoke-virtual {p0, v10}, Lcom/sec/android/glview/TwGLView;->getLeftTop(I)[F

    move-result-object v9

    .line 2405
    .local v9, leftTop:[F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v2, :cond_1

    .line 2406
    const/4 v2, 0x0

    aget v3, v9, v2

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    .line 2407
    const/4 v2, 0x1

    aget v3, v9, v2

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    .line 2410
    :cond_1
    const/4 v2, 0x4

    new-array v7, v2, [F

    .line 2411
    .local v7, glLeftTopCoordinate:[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f80

    aput v3, v7, v2

    .line 2412
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-static {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2414
    const/4 v2, 0x4

    new-array v8, v2, [F

    .line 2415
    .local v8, glRotatedLeftTopCoordinate:[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f80

    aput v3, v8, v2

    .line 2416
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    invoke-static {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2418
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2419
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v7, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2420
    const/4 v1, 0x0

    mul-int/lit8 v2, v10, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2421
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v8, v3

    neg-float v3, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    neg-float v4, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2426
    const/4 v2, 0x4

    new-array v5, v2, [F

    .line 2427
    .local v5, glCoordinate:[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f80

    aput v3, v5, v2

    .line 2428
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, v5, p2, p3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2430
    const/4 v2, 0x4

    new-array v1, v2, [F

    .line 2431
    .local v1, glTransformedCoordinate:[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    .line 2432
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 2434
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {v2, p1, v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getScreenCoordinateFromGLCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    goto/16 :goto_0
.end method

.method public final declared-synchronized moveBaseLayout(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1523
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1524
    .local v1, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1526
    .local v0, height:F
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 1527
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 1529
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1530
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1531
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1532
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1534
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1535
    monitor-exit p0

    return-void

    .line 1523
    .end local v0           #height:F
    .end local v1           #width:F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized moveBaseLayoutAbsolute(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1538
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    .line 1539
    .local v3, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1540
    .local v0, height:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    .line 1541
    .local v1, moveX:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v2

    .line 1543
    .local v2, moveY:F
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 1544
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 1546
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 1547
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 1548
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 1549
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 1551
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1552
    monitor-exit p0

    return-void

    .line 1538
    .end local v0           #height:F
    .end local v1           #moveX:F
    .end local v2           #moveY:F
    .end local v3           #width:F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public final declared-synchronized moveBaseLayoutAbsolute(FFZ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "update"

    .prologue
    .line 1555
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    .line 1556
    .local v3, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1557
    .local v0, height:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    .line 1558
    .local v1, moveX:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v2

    .line 1560
    .local v2, moveY:F
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 1561
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 1563
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 1564
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 1565
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 1566
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 1568
    if-eqz p3, :cond_0

    .line 1569
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1571
    :cond_0
    monitor-exit p0

    return-void

    .line 1555
    .end local v0           #height:F
    .end local v1           #moveX:F
    .end local v2           #moveY:F
    .end local v3           #width:F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public final declared-synchronized moveLayout(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1502
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1503
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1504
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1505
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1507
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1508
    monitor-exit p0

    return-void

    .line 1502
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized moveLayoutAbsolute(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1511
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1512
    .local v1, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1514
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1515
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1516
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1517
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1519
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1520
    monitor-exit p0

    return-void

    .line 1511
    .end local v0           #height:F
    .end local v1           #width:F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected onAlphaUpdated()V
    .locals 1

    .prologue
    .line 3046
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 3047
    return-void
.end method

.method protected abstract onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
.end method

.method public onFocusStatusChanged(I)V
    .locals 9
    .parameter "focusStatus"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2991
    if-ne p1, v7, :cond_2

    .line 2992
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 2993
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_0

    .line 2999
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getFocusResourceId()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 3001
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLNinePatch;->setBypassTouch(Z)V

    .line 3002
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setClipping(Z)V

    .line 3003
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 3008
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    if-eqz v0, :cond_1

    .line 3009
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/glview/TwGLView$OnFocusListener;->onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z

    .line 3011
    :cond_1
    return-void

    .line 3006
    :cond_2
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    goto :goto_0
.end method

.method public onHoverStatusChanged(I)V
    .locals 9
    .parameter "hoverStatus"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3014
    if-nez p1, :cond_1

    .line 3015
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 3016
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_0

    .line 3017
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getHoverResourceId()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 3019
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setBypassTouch(Z)V

    .line 3020
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLNinePatch;->setClipping(Z)V

    .line 3021
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 3026
    :cond_0
    :goto_0
    return-void

    .line 3024
    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    goto :goto_0
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2717
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2721
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 3042
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 3043
    return-void
.end method

.method protected abstract onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
.end method

.method protected onOrientationChanged(I)V
    .locals 10
    .parameter "orientation"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v9, 0x4000

    .line 2743
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    if-eqz v1, :cond_0

    .line 2744
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 2745
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    if-ne v1, p1, :cond_1

    .line 2779
    :cond_0
    :goto_0
    return-void

    .line 2749
    :cond_1
    move v8, p1

    .line 2750
    .local v8, tempOrientation:I
    if-nez v8, :cond_5

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    if-ne v1, v2, :cond_5

    .line 2751
    const/4 v8, 0x4

    .line 2756
    :cond_2
    :goto_1
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    sub-int/2addr v1, v8

    mul-int/lit8 v7, v1, 0x5a

    .line 2757
    .local v7, degree:I
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 2759
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2760
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    if-nez v1, :cond_6

    .line 2761
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    if-eqz v1, :cond_3

    .line 2762
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 2763
    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_4

    .line 2764
    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 2766
    :cond_4
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2767
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_0

    .line 2752
    .end local v7           #degree:I
    :cond_5
    if-ne v8, v2, :cond_2

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    if-nez v1, :cond_2

    .line 2753
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    goto :goto_1

    .line 2769
    .restart local v7       #degree:I
    :cond_6
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v9

    add-float/2addr v6, v5

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 2770
    .local v0, anim:Landroid/view/animation/RotateAnimation;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 2771
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 2772
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_7

    .line 2773
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2774
    :cond_7
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2775
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto/16 :goto_0
.end method

.method protected onOutOfScreen()V
    .locals 1

    .prologue
    .line 3077
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 3078
    return-void
.end method

.method protected abstract onReset()V
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 2713
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized refreshClipRect()V
    .locals 7

    .prologue
    .line 2504
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 2558
    :goto_0
    monitor-exit p0

    return-void

    .line 2508
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    .line 2509
    .local v1, left:I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    .line 2510
    .local v3, top:I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 2511
    .local v2, right:I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 2513
    .local v0, bottom:I
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    int-to-float v5, v1

    int-to-float v6, v3

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->mapPoint([FFF)V

    .line 2514
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    int-to-float v5, v1

    int-to-float v6, v0

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->mapPoint([FFF)V

    .line 2515
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->mapPoint([FFF)V

    .line 2516
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    int-to-float v5, v2

    int-to-float v6, v0

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->mapPoint([FFF)V

    .line 2518
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 2519
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 2520
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 2521
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    .line 2523
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    packed-switch v4, :pswitch_data_0

    .line 2547
    :goto_1
    if-gt v1, v2, :cond_1

    if-le v3, v0, :cond_2

    .line 2548
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    .line 2549
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    .line 2550
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 2551
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 2554
    :cond_2
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_3

    .line 2555
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    .line 2557
    :cond_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2504
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v2           #right:I
    .end local v3           #top:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2525
    .restart local v0       #bottom:I
    .restart local v1       #left:I
    .restart local v2       #right:I
    .restart local v3       #top:I
    :pswitch_0
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 2526
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 2527
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 2528
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    .line 2529
    goto :goto_1

    .line 2531
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 2532
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 2533
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 2534
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    .line 2535
    goto :goto_1

    .line 2537
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 2538
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 2539
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 2540
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    float-to-int v0, v4

    .line 2541
    goto/16 :goto_1

    .line 2523
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public removeView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 3074
    return-void
.end method

.method public final requestFocus()Z
    .locals 1

    .prologue
    .line 2928
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 2932
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILcom/sec/android/glview/TwGLView;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedView"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 2936
    if-nez p2, :cond_0

    .line 2937
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_5

    .line 2938
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLContext;->onFocusChanged(Lcom/sec/android/glview/TwGLView;)V

    move v1, v2

    .line 2987
    :goto_0
    return v1

    .line 2942
    :cond_0
    const/4 v0, 0x0

    .line 2945
    .local v0, nextViewToFocus:Lcom/sec/android/glview/TwGLView;
    sparse-switch p1, :sswitch_data_0

    .line 2970
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 2971
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    if-eqz v1, :cond_2

    move v1, v2

    .line 2972
    goto :goto_0

    .line 2947
    :sswitch_0
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    if-eq v1, v3, :cond_1

    .line 2948
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_1

    .line 2952
    :sswitch_1
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    if-eq v1, v3, :cond_1

    .line 2953
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_1

    .line 2957
    :sswitch_2
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    if-eq v1, v3, :cond_1

    .line 2958
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_1

    .line 2962
    :sswitch_3
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    if-eq v1, v3, :cond_1

    .line 2963
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_1

    .line 2974
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getInternalFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2975
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getInternalFocusParent()Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1, p2, p1}, Lcom/sec/android/glview/TwGLContext;->findNextFocusFromView(Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 2981
    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    .line 2982
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLContext;->onFocusChanged(Lcom/sec/android/glview/TwGLView;)V

    move v1, v2

    .line 2983
    goto :goto_0

    .line 2977
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p2, p1}, Lcom/sec/android/glview/TwGLContext;->findNextFocusFromView(Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_2

    .line 2987
    .end local v0           #nextViewToFocus:Lcom/sec/android/glview/TwGLView;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 2945
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 3092
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 3093
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 3094
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 3095
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 3097
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 3098
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->reset()V

    .line 3100
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 3101
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->reset()V

    .line 3103
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3104
    monitor-exit p0

    return-void

    .line 3092
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetBaseLayout()V
    .locals 4

    .prologue
    .line 1604
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1605
    .local v1, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1607
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1608
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1609
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1610
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1612
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1613
    monitor-exit p0

    return-void

    .line 1604
    .end local v0           #height:F
    .end local v1           #width:F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized resetClipRect()V
    .locals 1

    .prologue
    .line 2493
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 2494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    .line 2495
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2496
    monitor-exit p0

    return-void

    .line 2493
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected resetDrag()V
    .locals 2

    .prologue
    .line 2732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 2733
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2734
    return-void
.end method

.method public final declared-synchronized resetLayout()V
    .locals 4

    .prologue
    .line 1592
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1593
    .local v1, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1595
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1596
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1597
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1598
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1600
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1601
    monitor-exit p0

    return-void

    .line 1592
    .end local v0           #height:F
    .end local v1           #width:F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized resetScale()V
    .locals 2

    .prologue
    .line 2137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2139
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2141
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 2142
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2143
    monitor-exit p0

    return-void

    .line 2137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetTransformMatrix()V
    .locals 2

    .prologue
    .line 2112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2119
    :goto_0
    monitor-exit p0

    return-void

    .line 2115
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2116
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2117
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2118
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetTranslate()V
    .locals 2

    .prologue
    .line 2174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2176
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2178
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2179
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 2181
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2182
    monitor-exit p0

    return-void

    .line 2174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized rotateDegree(I)V
    .locals 7
    .parameter "degree"

    .prologue
    const/high16 v4, 0x4000

    .line 2366
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2380
    :goto_0
    monitor-exit p0

    return-void

    .line 2369
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2371
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 2373
    .local v6, currentPivot:[F
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2375
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2376
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2377
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2379
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2366
    .end local v6           #currentPivot:[F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized scale(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v5, 0x4000

    .line 2154
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    aput v3, v1, v2

    .line 2155
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    aput v3, v1, v2

    .line 2157
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 2158
    .local v0, currentPivot:[F
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2160
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2161
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-static {v1, v2, p1, p2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 2162
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    neg-float v3, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2164
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 2165
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 2167
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2168
    monitor-exit p0

    return-void

    .line 2154
    .end local v0           #currentPivot:[F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 834
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 835
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 836
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->updateAlpha()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    :cond_0
    monitor-exit p0

    return-void

    .line 834
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1718
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1719
    monitor-exit p0

    return-void

    .line 1718
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAnimation(Landroid/view/animation/Animation;Z)V
    .locals 1
    .parameter "animation"
    .parameter "hideAfterAnimation"

    .prologue
    .line 1730
    monitor-enter p0

    :try_start_0
    iput-boolean p2, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 1731
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1732
    monitor-exit p0

    return-void

    .line 1730
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAsyncLoad(Z)V
    .locals 0
    .parameter "async"

    .prologue
    .line 820
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 821
    return-void
.end method

.method public declared-synchronized setBackground(I)Z
    .locals 7
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 1775
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    .line 1786
    :goto_0
    monitor-exit p0

    return v0

    .line 1778
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1779
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 1780
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1782
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 1783
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1784
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1786
    const/4 v0, 0x1

    goto :goto_0

    .line 1775
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBackgroundAlpha(I)Z
    .locals 2
    .parameter "alpha"

    .prologue
    .line 1842
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1843
    const/4 v0, 0x0

    .line 1846
    :goto_0
    monitor-exit p0

    return v0

    .line 1845
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1846
    const/4 v0, 0x1

    goto :goto_0

    .line 1842
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBypassTouch(Z)V
    .locals 1
    .parameter "bypass"

    .prologue
    .line 1850
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1851
    monitor-exit p0

    return-void

    .line 1850
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCenterPivot(Z)V
    .locals 1
    .parameter "centerPivot"

    .prologue
    .line 899
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    monitor-exit p0

    return-void

    .line 899
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setClickable(Z)V
    .locals 2
    .parameter "clickable"

    .prologue
    .line 2924
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit16 v1, v0, -0x4001

    if-eqz p1, :cond_0

    const/16 v0, 0x4000

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    .line 2925
    return-void

    .line 2924
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setClipRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "clipRect"

    .prologue
    .line 2483
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2484
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V

    .line 2486
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    .line 2487
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2488
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2490
    monitor-exit p0

    return-void

    .line 2483
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setClipping(Z)V
    .locals 1
    .parameter "clipping"

    .prologue
    .line 2476
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 2477
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    if-eqz v0, :cond_0

    .line 2478
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2480
    :cond_0
    monitor-exit p0

    return-void

    .line 2476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setContinuousDrawMode(Z)V
    .locals 1
    .parameter "continuousDrawMode"

    .prologue
    .line 1765
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1766
    monitor-exit p0

    return-void

    .line 1765
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setDefaultOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 2297
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 2298
    rsub-int/lit8 v0, p1, 0x4

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 2299
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2300
    monitor-exit p0

    return-void

    .line 2297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDim(Z)V
    .locals 1
    .parameter "dimmed"

    .prologue
    .line 1705
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1706
    const/16 v0, 0x20

    :try_start_0
    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1709
    :goto_0
    monitor-exit p0

    return-void

    .line 1708
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1705
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDragSensitivity(I)V
    .locals 1
    .parameter "sensitivity"

    .prologue
    .line 459
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 465
    :cond_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 466
    return-void
.end method

.method public setDragVibration(Z)V
    .locals 0
    .parameter "vibration"

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 434
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .parameter "draggable"

    .prologue
    .line 812
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 813
    return-void
.end method

.method public setFocusable(Z)V
    .locals 2
    .parameter "focusable"

    .prologue
    .line 2920
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    .line 2921
    return-void

    .line 2920
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInternalFocus(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2885
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 2886
    return-void
.end method

.method public final setLeftTop(IFF)V
    .locals 1
    .parameter "orientation"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 997
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 998
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    .line 1001
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 1002
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 1004
    :cond_2
    return-void
.end method

.method public final setLeftTop(I[F)V
    .locals 2
    .parameter "orientation"
    .parameter "leftTops"

    .prologue
    .line 1061
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1062
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1065
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1066
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1136
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 1137
    return-void
.end method

.method public setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1164
    if-eqz p1, :cond_0

    .line 1165
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 1166
    const/4 v0, 0x1

    .line 1168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusLeftId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1124
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 1125
    return-void
.end method

.method public setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1140
    if-eqz p1, :cond_0

    .line 1141
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 1142
    const/4 v0, 0x1

    .line 1144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusRightId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1128
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 1129
    return-void
.end method

.method public setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1148
    if-eqz p1, :cond_0

    .line 1149
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 1150
    const/4 v0, 0x1

    .line 1152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusUpId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1132
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 1133
    return-void
.end method

.method public setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1156
    if-eqz p1, :cond_0

    .line 1157
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 1158
    const/4 v0, 0x1

    .line 1160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setNinePatchBackground(I)Z
    .locals 8
    .parameter "resId"

    .prologue
    const/4 v7, 0x1

    .line 1796
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 1797
    const/4 v0, 0x0

    .line 1808
    :goto_0
    monitor-exit p0

    return v0

    .line 1799
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1800
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 1801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1803
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 1804
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1805
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z

    .line 1807
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v7

    .line 1808
    goto :goto_0

    .line 1796
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNinePatchBackground(II)Z
    .locals 9
    .parameter "resId"
    .parameter "alpha"

    .prologue
    const/4 v8, 0x1

    .line 1820
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 1821
    const/4 v0, 0x0

    .line 1832
    :goto_0
    monitor-exit p0

    return v0

    .line 1823
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1824
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 1825
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1827
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 1828
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    int-to-float v7, p2

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1829
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1830
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z

    .line 1831
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v8

    .line 1832
    goto :goto_0

    .line 1820
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 792
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 793
    return-void
.end method

.method public setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 637
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 638
    return-void
.end method

.method public setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 802
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 803
    return-void
.end method

.method public setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 778
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 779
    return-void
.end method

.method public setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 774
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 775
    return-void
.end method

.method public setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 676
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    .line 677
    return-void
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 761
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 762
    return-void
.end method

.method public final declared-synchronized setOrientation(I)V
    .locals 9
    .parameter "orientation"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 2309
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2311
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2314
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 2357
    :goto_0
    monitor-exit p0

    return-void

    .line 2318
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 2319
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 2321
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2323
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 2324
    .local v6, currentPivot:[F
    const/4 v0, 0x2

    new-array v8, v0, [F

    .line 2326
    .local v8, rotationPivot:[F
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->getLeftTop(I)[F

    move-result-object v7

    .line 2328
    .local v7, leftTop:[F
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    if-eqz v0, :cond_3

    .line 2329
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    aput v1, v7, v0

    .line 2330
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    aput v1, v7, v0

    .line 2332
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2334
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2335
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2336
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2351
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2353
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    if-eqz v0, :cond_2

    .line 2354
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;->onOrientationChanged(I)V

    .line 2356
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_0

    .line 2338
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_4

    .line 2339
    const/4 v0, 0x0

    aget v1, v7, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    .line 2340
    const/4 v0, 0x1

    aget v1, v7, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    .line 2343
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2344
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2346
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2347
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2348
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "paddings"

    .prologue
    .line 1864
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 1865
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1868
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 1869
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1871
    :cond_1
    monitor-exit p0

    return-void

    .line 1864
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setParentHAlign(I)V
    .locals 0
    .parameter "halign"

    .prologue
    .line 955
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 956
    return-void
.end method

.method public final setParentVAlign(I)V
    .locals 0
    .parameter "valign"

    .prologue
    .line 965
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 966
    return-void
.end method

.method public declared-synchronized setRotatable(Z)V
    .locals 1
    .parameter "rotatable"

    .prologue
    .line 889
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    monitor-exit p0

    return-void

    .line 889
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRotateAnimation(Z)V
    .locals 1
    .parameter "rotateAnimation"

    .prologue
    .line 918
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    monitor-exit p0

    return-void

    .line 918
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRotateAnimationDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 936
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    monitor-exit p0

    return-void

    .line 936
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRotateAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "interpolator"

    .prologue
    .line 931
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 932
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    :cond_0
    monitor-exit p0

    return-void

    .line 931
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSize(FF)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1456
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1457
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 1461
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1462
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z

    if-eqz v0, :cond_3

    .line 1463
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1468
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 1469
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1472
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1473
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1476
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1477
    monitor-exit p0

    return-void

    .line 1465
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mSubTitle:Ljava/lang/String;

    .line 1097
    return-void
.end method

.method public final setTag(I)V
    .locals 0
    .parameter "viewId"

    .prologue
    .line 1075
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    .line 1076
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    .line 1093
    return-void
.end method

.method public setToggleButton()V
    .locals 1

    .prologue
    .line 3149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 3150
    return-void
.end method

.method public final declared-synchronized setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 1680
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 1681
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1682
    monitor-exit p0

    return-void

    .line 1680
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setVisibility(IZ)V
    .locals 2
    .parameter "visibility"
    .parameter "update"

    .prologue
    .line 1685
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 1686
    if-eqz p2, :cond_0

    .line 1687
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1689
    :cond_0
    monitor-exit p0

    return-void

    .line 1685
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startAnimation()V
    .locals 2

    .prologue
    .line 1738
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1752
    :goto_0
    monitor-exit p0

    return-void

    .line 1741
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    if-eqz v0, :cond_1

    .line 1742
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 1744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 1749
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 1751
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1738
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1746
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 1747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public touchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "e"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 2605
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    packed-switch v0, :pswitch_data_0

    .line 2614
    const/16 v6, 0x1f4

    .line 2617
    .local v6, dragHoldTime:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 2618
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    .line 2619
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_0

    .line 2620
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 2621
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    if-nez v0, :cond_2

    .line 2622
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2627
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    .line 2628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    .line 2678
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-eqz v0, :cond_e

    .line 2679
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v7

    .line 2686
    :goto_3
    return v0

    .line 2607
    .end local v6           #dragHoldTime:I
    :pswitch_0
    const/4 v6, 0x0

    .line 2608
    .restart local v6       #dragHoldTime:I
    goto :goto_0

    .line 2610
    .end local v6           #dragHoldTime:I
    :pswitch_1
    const/16 v6, 0x12c

    .line 2611
    .restart local v6       #dragHoldTime:I
    goto :goto_0

    .line 2624
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2629
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 2630
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_1

    .line 2631
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-eqz v0, :cond_7

    .line 2632
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 2633
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_4

    .line 2634
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 2636
    :cond_4
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2637
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    move v0, v7

    .line 2638
    goto :goto_3

    .line 2640
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_6

    .line 2641
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    sub-float v4, v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    sub-float v5, v1, v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V

    .line 2643
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    .line 2644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    .line 2645
    if-eqz v6, :cond_1

    move v0, v7

    .line 2646
    goto :goto_3

    .line 2647
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2648
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    goto/16 :goto_2

    .line 2651
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_c

    .line 2652
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_b

    .line 2653
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-eqz v0, :cond_a

    .line 2654
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_9

    .line 2655
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 2657
    :cond_9
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2662
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    goto/16 :goto_2

    .line 2664
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2665
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_2

    .line 2667
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 2668
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_1

    .line 2669
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-eqz v0, :cond_d

    .line 2670
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_d

    .line 2671
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 2674
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    goto/16 :goto_2

    .line 2683
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2684
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2686
    :cond_f
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_3

    .line 2605
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized translate(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    .line 2237
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2242
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2244
    cmpl-float v0, p1, v5

    if-nez v0, :cond_0

    cmpl-float v0, p2, v5

    if-eqz v0, :cond_1

    .line 2245
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V

    .line 2247
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2248
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2249
    monitor-exit p0

    return-void

    .line 2237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized translate(FFZ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "update"

    .prologue
    const/4 v5, 0x0

    .line 2252
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2257
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2259
    cmpl-float v0, p1, v5

    if-nez v0, :cond_0

    cmpl-float v0, p2, v5

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    .line 2260
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V

    .line 2262
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2263
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2264
    monitor-exit p0

    return-void

    .line 2252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized translateAbsolute(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2187
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2190
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2195
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2197
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 2198
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V

    .line 2200
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2201
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2202
    monitor-exit p0

    return-void

    .line 2186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized translateAbsolute(FFZ)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "update"

    .prologue
    .line 2205
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 2226
    :goto_0
    monitor-exit p0

    return-void

    .line 2210
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2211
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2214
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2219
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2221
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p3, :cond_2

    .line 2222
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V

    .line 2224
    :cond_2
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2225
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAlpha()V
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 876
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 877
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 880
    :cond_0
    return-void
.end method
