.class public Lcom/android/internal/widget/SPenGestureView;
.super Landroid/widget/FrameLayout;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SPenGestureView$SPenHandler;,
        Lcom/android/internal/widget/SPenGestureView$PointerState;
    }
.end annotation


# static fields
.field private static final CONTROL_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.action.CONTROL_SPEN_GESTURE_VIEW"

.field private static final DEBUG:Z = false

.field private static final ENABLE_GUIDE_TIME:J = 0x1f4L

.field private static final EXTRA_ENABLE_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.extra.enable_spengestureview"

.field private static final GESTURE_EFFECT_BACK:S = 0x1s

.field private static final GESTURE_EFFECT_MENU:S = 0x0s

.field private static final GESTURE_EFFECT_QUICKCOMMAND:S = 0x2s

.field private static final GUIDANCE_CENTER:S = 0x0s

.field private static final GUIDANCE_HORIZON:S = 0x1s

.field private static final GUIDANCE_ITEM_HEIGHT:F = 86.0f

.field private static final GUIDANCE_ITEM_WIDTH:F = 86.0f

.field private static final GUIDANCE_VERTICAL:S = 0x2s

.field private static final KEY_IS_LOCKSCREEN_SHOWING:Ljava/lang/String; = "is_lockscreen_showing"

.field private static final KEY_IS_SECURE_ENABLED:Ljava/lang/String; = "is_secure_enabled"

.field private static final MSG_BOOT_COMPLETED:I = 0x12d

.field private static final MSG_DISABLE_GUIDE:S = 0x1s

.field private static final MSG_ENABLE_GUIDE:S = 0x0s

.field private static final PEN_GESTURE_LINE_LIMIT:I = 0x64

.field private static final PEN_GESTURE_SPLIT_SCREEN_RATIO:I = 0x4

.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE:Ljava/lang/String; = "%s/%s/%s"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE_FOR_ANIMATION:Ljava/lang/String; = "%s/Tmp%s"

.field public static final SINGLE_SCREEN_CAPTURE_OFF:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

.field public static final SINGLE_SCREEN_CAPTURE_ON:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

.field private static final TAG:Ljava/lang/String; = "SPenGesture"

.field private static final mIsEnableForGestureGuideFeature:Z


# instance fields
.field private final BROADCAST_NONE:I

.field private final BROADCAST_VIDEOPLAYER_PAUSE:I

.field private final BROADCAST_VIDEOPLAYER_PLAY:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

.field private final ESTIMATE_CROPIMAGE_MARGIN:I

.field private final ESTIMATE_END_CIRCLE_RADIUS:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

.field private final ESTIMATE_INVALID_VALUE:I

.field private final ESTIMATE_MARGIN_CLOSED_CURVE:I

.field private final ESTIMATE_START_CIRCLE_RADIUS:I

.field private final ESTIMATE_STROKE_WIDTH:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

.field private final GESTURE_RECOGNITION_MIN_DISTANCE:I

.field private mActivePointerId:I

.field private mBootCompleted:Z

.field private mBrType:I

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private final mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

.field private final mCirclePaintWhite:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCropBitmap:Landroid/graphics/Bitmap;

.field private mCropBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCropHandler:Landroid/os/Handler;

.field private mCropImageHeight:I

.field private mCropImageWidth:I

.field private mCropTempBitmap:Landroid/graphics/Bitmap;

.field private mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mCurrentDisplayHeight:I

.field private mCurrentDisplayWidth:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentMotionEvent:Landroid/view/MotionEvent;

.field private mDirectionHandler:Landroid/os/Handler;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayHeightForMatrix:I

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayRoateChanged:Z

.field private mDisplayRoateDegress:I

.field private mDisplayWidthForMatrix:I

.field private mDoubleTapIntent:Landroid/content/Intent;

.field private mEnableCheckClosedCurve:Z

.field private mEndPointX:F

.field private mEndPointY:F

.field private mExistOldCoords:Z

.field private mFirstIntersectionPointLast:I

.field private mFirstIntersectionPointPrev:I

.field private mFirstIntersectionPointX:I

.field private mFirstIntersectionPointY:I

.field private mFirstStartPointX:I

.field private mFirstStartPointY:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureEffectImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureEffectImgView:Landroid/widget/ImageView;

.field mGesturePad:Ljava/lang/Runnable;

.field private mGesturePadBlockTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGesturePadIntent:Landroid/content/Intent;

.field private mGuideLayout:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGuideLayoutDrawable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mHeaderBottom:I

.field private mHeightMovingSlop:I

.field private mImageFilePath:Ljava/lang/String;

.field private mImageFilePathForAnimation:Ljava/lang/String;

.field private mImageUri:Landroid/net/Uri;

.field private mImageUriForAnimation:Landroid/net/Uri;

.field mInstrumentation:Landroid/app/Instrumentation;

.field private mIsClosedCurve:Z

.field private mIsEnableDoubleTapOnLockscreen:Z

.field private mIsEnableGestureGuide:Z

.field private mIsEnableHelperBySetting:Z

.field private mIsFirstPointer:Z

.field private mIsGuideShowing:Z

.field private mIsKeyguardOn:Z

.field private mIsLastPointer:Z

.field private mIsLiveGlanceView:Z

.field private mIsLiveScreencapture:Z

.field private mIsPhone:Z

.field private mIsShowingGestureEffect:Z

.field private mIsStartingSuggestionService:Z

.field private mIsUsablePath:Z

.field private mIsUsableSecondPath:Z

.field private mIsVisibleGestureGuide:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressIntent:Landroid/content/Intent;

.field private mMatrixForCropping:[[I

.field private mMatrixForCroppingHorizontal:[[I

.field private mMaxCoordX:I

.field private mMaxCoordXForIntent:I

.field private mMaxCoordY:I

.field private mMaxCoordYForIntent:I

.field private mMaxNumPointers:I

.field private mMinCoordX:I

.field private mMinCoordXForIntent:I

.field private mMinCoordY:I

.field private mMinCoordYForIntent:I

.field private mNewCoordsX:F

.field private mNewCoordsY:F

.field private mNumColsedCurves:I

.field private mNumberOfAddTrace:I

.field private mOldCoordsX:F

.field private mOldCoordsY:F

.field private mOutofVerticalThresholdToUp:Z

.field private mPathOfCurve:Landroid/graphics/Path;

.field private mPathOfCurveForDrawing:Landroid/graphics/Path;

.field private final mPathPaintWhite:Landroid/graphics/Paint;

.field mPenDoubleTap:Ljava/lang/Runnable;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/SPenGestureView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCoordY:I

.field private mSPenGestureCropDispatchThread:Ljava/lang/Thread;

.field private mSPenGestureEventDispatchThread:Ljava/lang/Thread;

.field mSPenGestureViewReceiver:Landroid/content/BroadcastReceiver;

.field private mSPenHandler:Landroid/os/Handler;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field mScreenCaptureOn:Z

.field private mSecondIntersectionPointLast:I

.field private mSecondIntersectionPointPrev:I

.field private mSecondIntersectionPointX:I

.field private mSecondIntersectionPointY:I

.field private mSecondPathOfCurve:Landroid/graphics/Path;

.field private mStartPointX:F

.field private mStartPointXForCircle:F

.field private mStartPointY:F

.field private mStartPointYForCircle:F

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private mWidthMovingSlop:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17
    .parameter "context"

    .prologue
    .line 384
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 137
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsVisibleGestureGuide:Z

    .line 138
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableHelperBySetting:Z

    .line 139
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsGuideShowing:Z

    .line 140
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayout:Ljava/util/ArrayList;

    .line 141
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayoutDrawable:Ljava/util/ArrayList;

    .line 142
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 151
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    .line 152
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mBootCompleted:Z

    .line 161
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 165
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsPhone:Z

    .line 168
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 172
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    .line 173
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    .line 177
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mScreenCaptureOn:Z

    .line 181
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsKeyguardOn:Z

    .line 183
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableGestureGuide:Z

    .line 184
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 185
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveGlanceView:Z

    .line 186
    new-instance v12, Ljava/util/ArrayList;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "com.sec.android.gesturepad"

    aput-object v15, v13, v14

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    .line 191
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_STROKE_WIDTH:I

    .line 192
    const/16 v12, 0x320

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

    .line 193
    const/16 v12, 0x500

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

    .line 194
    const/16 v12, 0x12c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

    .line 195
    const/16 v12, 0x12c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

    .line 198
    const/16 v12, 0x8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_START_CIRCLE_RADIUS:I

    .line 199
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_END_CIRCLE_RADIUS:I

    .line 200
    const/16 v12, 0x14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_MARGIN_CLOSED_CURVE:I

    .line 201
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_INVALID_VALUE:I

    .line 202
    const/16 v12, 0xa

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_CROPIMAGE_MARGIN:I

    .line 209
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->BROADCAST_NONE:I

    .line 210
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->BROADCAST_VIDEOPLAYER_PAUSE:I

    .line 211
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->BROADCAST_VIDEOPLAYER_PLAY:I

    .line 214
    const/16 v12, 0x32

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->GESTURE_RECOGNITION_MIN_DISTANCE:I

    .line 215
    const/16 v12, 0x320

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->GESTURE_RECOGNITION_MAX_DISTANCE:I

    .line 216
    const/16 v12, 0x4b0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

    .line 261
    new-instance v12, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v12}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 262
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    .line 263
    new-instance v12, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v12}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 298
    const/4 v12, 0x0

    check-cast v12, [[I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    .line 299
    const/4 v12, 0x0

    check-cast v12, [[I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    .line 325
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    .line 326
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 327
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 337
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 338
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mImageUri:Landroid/net/Uri;

    .line 339
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    .line 343
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mBrType:I

    .line 345
    new-instance v12, Lcom/android/internal/widget/SPenGestureView$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/widget/SPenGestureView$1;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 357
    new-instance v12, Lcom/android/internal/widget/SPenGestureView$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/widget/SPenGestureView$2;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureViewReceiver:Landroid/content/BroadcastReceiver;

    .line 626
    new-instance v12, Lcom/android/internal/widget/SPenGestureView$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/widget/SPenGestureView$4;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    .line 678
    new-instance v12, Lcom/android/internal/widget/SPenGestureView$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/widget/SPenGestureView$5;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 708
    new-instance v12, Lcom/android/internal/widget/SPenGestureView$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/widget/SPenGestureView$6;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    .line 385
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mHandler:Landroid/os/Handler;

    .line 386
    new-instance v12, Lcom/android/internal/widget/SPenGestureView$SPenHandler;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/android/internal/widget/SPenGestureView$SPenHandler;-><init>(Lcom/android/internal/widget/SPenGestureView;Lcom/android/internal/widget/SPenGestureView$1;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mSPenHandler:Landroid/os/Handler;

    .line 388
    new-instance v12, Landroid/app/Instrumentation;

    invoke-direct {v12}, Landroid/app/Instrumentation;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    .line 391
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 392
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    const-string v12, "keyguard"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 396
    const-string v12, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 397
    new-instance v12, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 399
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 400
    .local v10, size:Landroid/graphics/Point;
    const-string v12, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    .line 402
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v12, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 404
    const-string v12, "window"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v11

    .line 406
    .local v11, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v11}, Landroid/view/IWindowManager;->hasSystemNavBar()Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsPhone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_1
    iget v12, v10, Landroid/graphics/Point;->x:I

    iget v13, v10, Landroid/graphics/Point;->y:I

    if-le v12, v13, :cond_2

    .line 413
    iget v12, v10, Landroid/graphics/Point;->x:I

    div-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mWidthMovingSlop:I

    .line 414
    iget v12, v10, Landroid/graphics/Point;->y:I

    div-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mHeightMovingSlop:I

    .line 421
    :goto_2
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    .line 422
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    const-string v13, "com.sec.spen.flashannotatesvc"

    const-string v14, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    .line 425
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    const-string v13, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.diotek.mini_penmemo"

    const-string v15, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 428
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    .line 429
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    const-string v13, "com.sec.android.gesturepad"

    const-string v14, "com.sec.android.gesturepad.GesturePadActivity"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    const/high16 v13, 0x1400

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 432
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableGestureGuide:Z

    .line 433
    new-instance v3, Landroid/content/IntentFilter;

    const-string v12, "android.intent.action.CONTROL_SPEN_GESTURE_VIEW"

    invoke-direct {v3, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 434
    .local v3, controlSPenFilter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureViewReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 436
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 437
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 438
    .local v2, captureFilter:Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v2, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    const-string v12, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v2, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 443
    .end local v2           #captureFilter:Landroid/content/IntentFilter;
    :cond_0
    new-instance v12, Landroid/view/GestureDetector;

    new-instance v13, Lcom/android/internal/widget/SPenGestureView$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/widget/SPenGestureView$3;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 503
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    .line 504
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mCropHandler:Landroid/os/Handler;

    .line 505
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDirectionHandler:Landroid/os/Handler;

    .line 506
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/SPenGestureView;->setFocusableInTouchMode(Z)V

    .line 507
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mVC:Landroid/view/ViewConfiguration;

    .line 509
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 510
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mWindowManager:Landroid/view/WindowManager;

    .line 511
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    .line 512
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SPenGestureView;->setDisplayDegrees()Z

    .line 514
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display;->getWidth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    .line 515
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display;->getHeight()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    .line 516
    const-string v12, "SPenGesture"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mCurrentDisplayWidth: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mCurrentDisplayHeight: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display;->getWidth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I

    .line 519
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display;->getHeight()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I

    .line 521
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I

    new-array v12, v12, [[I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    .line 522
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I

    if-ge v7, v12, :cond_4

    .line 523
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I

    new-array v13, v13, [I

    aput-object v13, v12, v7

    .line 524
    const/4 v8, 0x0

    .local v8, j:I
    :goto_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I

    if-ge v8, v12, :cond_3

    .line 525
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    aget-object v12, v12, v7

    const/4 v13, -0x1

    aput v13, v12, v8

    .line 524
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 406
    .end local v3           #controlSPenFilter:Landroid/content/IntentFilter;
    .end local v7           #i:I
    .end local v8           #j:I
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 407
    :catch_0
    move-exception v5

    .line 408
    .local v5, ex:Landroid/os/RemoteException;
    const-string v12, "SPenGesture"

    const-string v13, "RemoteException"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsPhone:Z

    goto/16 :goto_1

    .line 417
    .end local v5           #ex:Landroid/os/RemoteException;
    :cond_2
    iget v12, v10, Landroid/graphics/Point;->y:I

    div-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mWidthMovingSlop:I

    .line 418
    iget v12, v10, Landroid/graphics/Point;->x:I

    div-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mHeightMovingSlop:I

    goto/16 :goto_2

    .line 522
    .restart local v3       #controlSPenFilter:Landroid/content/IntentFilter;
    .restart local v7       #i:I
    .restart local v8       #j:I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 529
    .end local v8           #j:I
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I

    new-array v12, v12, [[I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    .line 530
    const/4 v7, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I

    if-ge v7, v12, :cond_6

    .line 531
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I

    new-array v13, v13, [I

    aput-object v13, v12, v7

    .line 532
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I

    if-ge v8, v12, :cond_5

    .line 533
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    aget-object v12, v12, v7

    const/4 v13, -0x1

    aput v13, v12, v8

    .line 532
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 530
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 537
    .end local v8           #j:I
    :cond_6
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mNumberOfAddTrace:I

    .line 538
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mExistOldCoords:Z

    .line 539
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsLastPointer:Z

    .line 540
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsFirstPointer:Z

    .line 541
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 542
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 543
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    .line 544
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    .line 545
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z

    .line 546
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsX:F

    .line 547
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsY:F

    .line 548
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mNewCoordsX:F

    .line 549
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mNewCoordsY:F

    .line 550
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointX:I

    .line 551
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointY:I

    .line 552
    const/high16 v12, -0x4080

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    .line 553
    const/high16 v12, -0x4080

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    .line 554
    const/high16 v12, -0x4080

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    .line 555
    const/high16 v12, -0x4080

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    .line 556
    const/high16 v12, -0x4080

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F

    .line 557
    const/high16 v12, -0x4080

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F

    .line 558
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I

    .line 559
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I

    .line 560
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I

    .line 561
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I

    .line 562
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordXForIntent:I

    .line 563
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordXForIntent:I

    .line 564
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordYForIntent:I

    .line 565
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordYForIntent:I

    .line 566
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    .line 567
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 568
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 569
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 570
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 571
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I

    .line 572
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I

    .line 573
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I

    .line 574
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I

    .line 575
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    .line 576
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    .line 577
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    .line 578
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 579
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 581
    new-instance v4, Landroid/graphics/DashPathEffect;

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    const/4 v13, 0x0

    invoke-direct {v4, v12, v13}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 582
    .local v4, dashPath:Landroid/graphics/DashPathEffect;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    .line 583
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 584
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/16 v13, 0xff

    const/16 v14, 0xff

    const/16 v15, 0xff

    const/16 v16, 0xff

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 585
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v13, 0x4000

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 587
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 588
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    const/high16 v16, -0x100

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 597
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    .line 598
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 599
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/16 v13, 0xff

    const/16 v14, 0xff

    const/16 v15, 0xff

    const/16 v16, 0xff

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 600
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v13, 0x4040

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 602
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    const/high16 v16, -0x100

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 611
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    .line 612
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 613
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/16 v13, 0xff

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 615
    new-instance v9, Lcom/android/internal/widget/SPenGestureView$PointerState;

    invoke-direct {v9}, Lcom/android/internal/widget/SPenGestureView$PointerState;-><init>()V

    .line 616
    .local v9, ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SPenGestureView;->mActivePointerId:I

    .line 620
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z

    .line 622
    return-void

    .line 581
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method private GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x4000

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2022
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 2023
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2025
    const/4 v7, 0x2

    new-array v2, v7, [F

    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    aput v7, v2, v6

    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    aput v7, v2, v5

    .line 2026
    .local v2, dims:[F
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/widget/SPenGestureView;->getDegreesForRotation(I)F

    move-result v1

    .line 2027
    .local v1, degrees:F
    cmpl-float v7, v1, v10

    if-lez v7, :cond_3

    move v3, v5

    .line 2029
    .local v3, requiresRotation:Z
    :goto_0
    if-eqz v3, :cond_0

    .line 2030
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 2031
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2032
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2033
    aget v7, v2, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v6

    .line 2034
    aget v7, v2, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v5

    .line 2037
    :cond_0
    aget v7, v2, v6

    float-to-int v7, v7

    aget v8, v2, v5

    float-to-int v8, v8

    invoke-static {v7, v8}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2040
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    .line 2041
    aget v7, v2, v6

    float-to-int v7, v7

    aget v8, v2, v5

    float-to-int v8, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2045
    :cond_1
    if-eqz v3, :cond_2

    .line 2046
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2048
    .local v4, ss:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2049
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2050
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2051
    aget v6, v2, v6

    neg-float v6, v6

    div-float/2addr v6, v11

    aget v5, v2, v5

    neg-float v5, v5

    div-float/2addr v5, v11

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2052
    iget-object v5, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v10, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2053
    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2054
    iput-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2056
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v4           #ss:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v5

    .end local v3           #requiresRotation:Z
    :cond_3
    move v3, v6

    .line 2027
    goto/16 :goto_0
.end method

.method private LoadGestureHelperResources()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 769
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayout:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 770
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayout:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SPenGestureView;->removeView(Landroid/view/View;)V

    .line 769
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayout:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 775
    invoke-virtual {p0}, Lcom/android/internal/widget/SPenGestureView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 776
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1090045

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 777
    .local v3, v:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayout:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 779
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/widget/SPenGestureView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    const v4, 0x1090046

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 782
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayout:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 784
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/widget/SPenGestureView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    const v4, 0x1090047

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 787
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayout:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 789
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/widget/SPenGestureView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    return-void
.end method

.method private SaveImage()Z
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1921
    const-string v9, "SPenGesture"

    const-string v10, "SaveImage"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1924
    .local v4, mImageTime:J
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1925
    .local v1, imageDate:Ljava/lang/String;
    sget-object v9, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1926
    .local v2, imageDir:Ljava/lang/String;
    const-string v9, "Screenshot_%s.png"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v1, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1927
    .local v3, mImageFileName:Ljava/lang/String;
    const-string v9, "%s/%s/%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v13

    const-string v11, "Screenshots"

    aput-object v11, v10, v12

    aput-object v3, v10, v14

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    .line 1929
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1930
    .local v7, values:Landroid/content/ContentValues;
    const-string v9, "_data"

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    const-string v9, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1932
    const-string v9, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1933
    const-string v9, "date_modified"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1934
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mImageUri:Landroid/net/Uri;

    .line 1937
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 1938
    .local v6, outStream:Ljava/io/OutputStream;
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1939
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 1940
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1948
    .end local v6           #outStream:Ljava/io/OutputStream;
    :goto_0
    const-string v9, "%s/Tmp%s"

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v2, v10, v13

    aput-object v3, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    .line 1950
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1951
    .local v8, valuesForAnimation:Landroid/content/ContentValues;
    const-string v9, "_data"

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    .line 1955
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 1956
    .restart local v6       #outStream:Ljava/io/OutputStream;
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1958
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 1959
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1964
    .end local v6           #outStream:Ljava/io/OutputStream;
    :goto_1
    return v12

    .line 1942
    .end local v8           #valuesForAnimation:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1943
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1961
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v8       #valuesForAnimation:Landroid/content/ContentValues;
    :catch_1
    move-exception v0

    .line 1962
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableGestureGuide:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableGestureGuide:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SPenGestureView;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveScreencapture:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsKeyguardOn:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveGlanceView:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/widget/SPenGestureView;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/internal/widget/SPenGestureView;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SPenGestureView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SPenGestureView;->enableGuide(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/widget/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/widget/SPenGestureView;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SPenGestureView;->isTopActivity(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCropImageWidth:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mCropImageWidth:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCropImageHeight:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mCropImageHeight:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/internal/widget/SPenGestureView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F

    return v0
.end method

.method static synthetic access$4802(Lcom/android/internal/widget/SPenGestureView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F

    return p1
.end method

.method static synthetic access$4900(Lcom/android/internal/widget/SPenGestureView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F

    return v0
.end method

.method static synthetic access$4902(Lcom/android/internal/widget/SPenGestureView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mHeightMovingSlop:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I

    return v0
.end method

.method static synthetic access$5502(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I

    return p1
.end method

.method static synthetic access$5600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordXForIntent:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordXForIntent:I

    return p1
.end method

.method static synthetic access$5800(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordXForIntent:I

    return v0
.end method

.method static synthetic access$5802(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordXForIntent:I

    return p1
.end method

.method static synthetic access$5900(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordYForIntent:I

    return v0
.end method

.method static synthetic access$5902(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordYForIntent:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/SPenGestureView;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/SPenGestureView;->startEffectForGesture(IZ)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordYForIntent:I

    return v0
.end method

.method static synthetic access$6002(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordYForIntent:I

    return p1
.end method

.method static synthetic access$6100(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I

    return v0
.end method

.method static synthetic access$6200(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I

    return v0
.end method

.method static synthetic access$6300(Lcom/android/internal/widget/SPenGestureView;)[[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/internal/widget/SPenGestureView;)[[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    return-object v0
.end method

.method static synthetic access$6502(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    return p1
.end method

.method static synthetic access$6602(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    return p1
.end method

.method static synthetic access$6702(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    return p1
.end method

.method static synthetic access$6802(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    return p1
.end method

.method static synthetic access$6900(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->SaveImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/internal/widget/SPenGestureView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/internal/widget/SPenGestureView;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/internal/widget/SPenGestureView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/internal/widget/SPenGestureView;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    return v0
.end method

.method static synthetic access$7402(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/internal/widget/SPenGestureView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCropHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/internal/widget/SPenGestureView;)Landroid/view/Display;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->isLockScreenShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8000(Lcom/android/internal/widget/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/internal/widget/SPenGestureView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SPenGestureView;->injectionKeyEvent(I)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z

    return v0
.end method

.method static synthetic access$8202(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/widget/SPenGestureView;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SPenGestureView;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkClosedCurve(III)V
    .locals 7
    .parameter "resultCoordsX"
    .parameter "resultCoordsY"
    .parameter "markNumber"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1207
    const/4 v2, -0x1

    .line 1210
    .local v2, markNumberFromMatrix:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    .line 1211
    add-int v3, p2, v1

    if-ltz v3, :cond_0

    if-ltz p1, :cond_0

    add-int v3, p2, v1

    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v3, v4, :cond_0

    .line 1213
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v3, :cond_7

    .line 1214
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    add-int v4, p2, v1

    aget-object v3, v3, v4

    aget v2, v3, p1

    .line 1222
    :cond_0
    :goto_1
    if-eq v2, v5, :cond_9

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_9

    .line 1224
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_2

    .line 1225
    iput-boolean v6, p0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1229
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_8

    .line 1230
    :cond_1
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1231
    iput p3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1232
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1233
    iput p3, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1239
    :goto_2
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    .line 1279
    :cond_2
    :goto_3
    const/16 v0, 0xc

    .line 1280
    .local v0, circleRadius:I
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0x18

    if-gt v3, p1, :cond_3

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0x18

    if-lt v3, p1, :cond_3

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0x18

    if-gt v3, p2, :cond_3

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0x18

    if-ge v3, p2, :cond_4

    .line 1282
    :cond_3
    iput-boolean v6, p0, Lcom/android/internal/widget/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 1285
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/widget/SPenGestureView;->mEnableCheckClosedCurve:Z

    if-ne v3, v6, :cond_6

    .line 1286
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0xc

    if-gt v3, p1, :cond_6

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0xc

    if-lt v3, p1, :cond_6

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0xc

    if-gt v3, p2, :cond_6

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0xc

    if-lt v3, p2, :cond_6

    .line 1288
    iput-boolean v6, p0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1290
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_5

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_f

    .line 1291
    :cond_5
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1292
    iput p3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1298
    :goto_4
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    .line 1303
    :cond_6
    return-void

    .line 1216
    .end local v0           #circleRadius:I
    :cond_7
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    add-int v4, p2, v1

    aget-object v3, v3, v4

    aget v2, v3, p1

    goto :goto_1

    .line 1236
    :cond_8
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1237
    iput p3, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_2

    .line 1246
    :cond_9
    sub-int v3, p2, v1

    if-ltz v3, :cond_a

    if-ltz p1, :cond_a

    sub-int v3, p2, v1

    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_a

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_a

    .line 1248
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v3, :cond_c

    .line 1249
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    sub-int v4, p2, v1

    aget-object v3, v3, v4

    aget v2, v3, p1

    .line 1254
    :cond_a
    :goto_5
    if-eq v2, v5, :cond_e

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_e

    .line 1256
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_2

    .line 1257
    iput-boolean v6, p0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1261
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_b

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_d

    .line 1262
    :cond_b
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1263
    iput p3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1264
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1265
    iput p3, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1271
    :goto_6
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    goto/16 :goto_3

    .line 1251
    :cond_c
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    sub-int v4, p2, v1

    aget-object v3, v3, v4

    aget v2, v3, p1

    goto :goto_5

    .line 1268
    :cond_d
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1269
    iput p3, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_6

    .line 1210
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1295
    .restart local v0       #circleRadius:I
    :cond_f
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1296
    iput p3, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_4
.end method

.method private checkDirectionGesture()Z
    .locals 31

    .prologue
    .line 2076
    const-string v25, "SPenGesture"

    const-string v26, "checkDirectionGesture"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    const/4 v5, 0x0

    .line 2078
    .local v5, distance:I
    const/16 v21, 0x0

    .line 2079
    .local v21, vertexX:I
    const/16 v22, 0x0

    .line 2080
    .local v22, vertexY:I
    const/4 v6, 0x0

    .line 2081
    .local v6, distanceMax:I
    const/4 v7, 0x0

    .line 2082
    .local v7, distanceStartAndEnd:I
    const/4 v12, 0x0

    .line 2083
    .local v12, minX:I
    const/4 v13, 0x0

    .line 2084
    .local v13, minY:I
    const/4 v10, 0x0

    .line 2085
    .local v10, maxX:I
    const/4 v11, 0x0

    .line 2086
    .local v11, maxY:I
    const/16 v16, 0x0

    .line 2087
    .local v16, result1:F
    const/16 v17, 0x0

    .line 2088
    .local v17, result2:F
    const/16 v18, 0x0

    .line 2089
    .local v18, slope:F
    const/4 v9, 0x0

    .line 2092
    .local v9, interceptY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v3, v0

    .line 2093
    .local v3, Xdistance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v4, v0

    .line 2097
    .local v4, Ydistance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v7, v0

    .line 2099
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-nez v25, :cond_2

    .line 2100
    :cond_0
    const/16 v18, 0x0

    .line 2105
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    mul-float v26, v26, v18

    sub-float v9, v25, v26

    .line 2109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 2110
    .local v19, totalPointerCount:I
    const/4 v14, 0x0

    .local v14, p:I
    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_4

    .line 2111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/SPenGestureView$PointerState;

    .line 2112
    .local v15, ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2600(Lcom/android/internal/widget/SPenGestureView$PointerState;)I

    move-result v20

    .line 2113
    .local v20, traceCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 2114
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2700(Lcom/android/internal/widget/SPenGestureView$PointerState;)[F

    move-result-object v25

    aget v23, v25, v8

    .line 2115
    .local v23, x:F
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2800(Lcom/android/internal/widget/SPenGestureView$PointerState;)[F

    move-result-object v25

    aget v24, v25, v8

    .line 2118
    .local v24, y:F
    mul-float v25, v18, v23

    const/high16 v26, -0x4080

    mul-float v26, v26, v24

    add-float v25, v25, v26

    add-float v25, v25, v9

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 2119
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    const-wide/high16 v27, -0x4010

    const-wide/high16 v29, 0x4000

    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    add-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v17, v0

    .line 2121
    div-float v25, v16, v17

    move/from16 v0, v25

    float-to-int v5, v0

    .line 2123
    if-ge v6, v5, :cond_1

    .line 2124
    move v6, v5

    .line 2125
    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 2126
    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2113
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2103
    .end local v8           #i:I
    .end local v14           #p:I
    .end local v15           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    .end local v19           #totalPointerCount:I
    .end local v20           #traceCount:I
    .end local v23           #x:F
    .end local v24           #y:F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    div-float v18, v25, v26

    goto/16 :goto_0

    .line 2110
    .restart local v8       #i:I
    .restart local v14       #p:I
    .restart local v15       #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    .restart local v19       #totalPointerCount:I
    .restart local v20       #traceCount:I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 2133
    .end local v8           #i:I
    .end local v15           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    .end local v20           #traceCount:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_6

    .line 2134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v10, v0

    .line 2135
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v12, v0

    .line 2141
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_7

    .line 2142
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v11, v0

    .line 2143
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v13, v0

    .line 2150
    :goto_4
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v6, v0, :cond_5

    const/16 v25, 0x320

    move/from16 v0, v25

    if-ge v6, v0, :cond_5

    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v7, v0, :cond_5

    const/16 v25, 0x4b0

    move/from16 v0, v25

    if-ge v7, v0, :cond_5

    .line 2152
    const/high16 v25, 0x3f80

    cmpg-float v25, v18, v25

    if-gtz v25, :cond_c

    const/high16 v25, -0x4080

    cmpl-float v25, v18, v25

    if-ltz v25, :cond_c

    .line 2153
    move/from16 v0, v21

    if-gt v10, v0, :cond_8

    .line 2221
    :cond_5
    const/16 v25, 0x0

    :goto_5
    return v25

    .line 2138
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v10, v0

    .line 2139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v12, v0

    goto :goto_3

    .line 2146
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v11, v0

    .line 2147
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v13, v0

    goto :goto_4

    .line 2157
    :cond_8
    move/from16 v0, v21

    if-le v12, v0, :cond_a

    .line 2160
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_9

    .line 2162
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2163
    :cond_9
    const/16 v25, 0x1

    goto :goto_5

    .line 2166
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_5

    .line 2169
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_b

    .line 2171
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2172
    :cond_b
    const/16 v25, 0x1

    goto :goto_5

    .line 2181
    :cond_c
    move/from16 v0, v22

    if-le v11, v0, :cond_5

    .line 2185
    move/from16 v0, v22

    if-le v13, v0, :cond_e

    .line 2188
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_d

    .line 2190
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2191
    :cond_d
    const/16 v25, 0x1

    goto/16 :goto_5

    .line 2194
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_5

    .line 2197
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_f

    .line 2199
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2200
    :cond_f
    const/16 v25, 0x1

    goto/16 :goto_5
.end method

.method private checkDownGesture()V
    .locals 19

    .prologue
    .line 2229
    const/4 v6, 0x0

    .line 2230
    .local v6, distanceY:I
    const/4 v5, 0x0

    .line 2231
    .local v5, distanceX:I
    const/4 v15, 0x0

    .line 2232
    .local v15, vertexX:I
    const/16 v16, 0x0

    .line 2233
    .local v16, vertexY:I
    const/4 v3, 0x0

    .line 2234
    .local v3, distanceMax:I
    const/4 v4, 0x0

    .line 2235
    .local v4, distanceStartAndEnd:I
    const/4 v10, 0x0

    .line 2236
    .local v10, minX:I
    const/4 v11, 0x0

    .line 2237
    .local v11, minY:I
    const/4 v8, 0x0

    .line 2238
    .local v8, maxX:I
    const/4 v9, 0x0

    .line 2239
    .local v9, maxY:I
    const/4 v12, 0x0

    .line 2240
    .local v12, result1:F
    const/4 v13, 0x0

    .line 2241
    .local v13, result2:F
    const/4 v14, 0x0

    .line 2242
    .local v14, slope:F
    const/4 v7, 0x0

    .line 2250
    .local v7, interceptY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x4420

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44a0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x4420

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44a0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    .line 2253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v6, v0

    .line 2254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    .line 2257
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-le v6, v0, :cond_0

    .line 2258
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x4396

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x4396

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1

    .line 2262
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2274
    :cond_0
    :goto_0
    return-void

    .line 2264
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43fa

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x4448

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43fa

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x4448

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    .line 2270
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/SPenGestureView;->startEffectForGesture(IZ)V

    goto :goto_0
.end method

.method private enableGuide(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter "ev"

    .prologue
    .line 886
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v9

    int-to-float v5, v9

    .line 887
    .local v5, fWindowWidth:F
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v9

    int-to-float v4, v9

    .line 888
    .local v4, fWindowHeight:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 889
    .local v0, fEventX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 891
    .local v1, fEventY:F
    const/4 v8, 0x0

    .line 893
    .local v8, nSelected:S
    iget-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableGestureGuide:Z

    if-nez v9, :cond_1

    .line 894
    const-string v9, "SPenGesture"

    const-string v10, "enableGuide - mIsEnableGestureGuide is false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_0
    return-void

    .line 898
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsVisibleGestureGuide:Z

    .line 900
    const/high16 v9, 0x42ac

    cmpg-float v9, v0, v9

    if-gez v9, :cond_5

    .line 901
    const/4 v8, 0x2

    .line 902
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayout:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayoutDrawable:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 915
    :cond_2
    :goto_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayout:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 916
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayout:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 917
    .local v7, layout:Landroid/view/View;
    if-ne v6, v8, :cond_a

    .line 918
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsGuideShowing:Z

    .line 920
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_0

    .line 923
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float v2, v0, v9

    .line 924
    .local v2, fItemX:F
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float v3, v1, v9

    .line 926
    .local v3, fItemY:F
    const/4 v9, 0x0

    cmpg-float v9, v2, v9

    if-gez v9, :cond_8

    .line 927
    const/4 v2, 0x0

    .line 932
    :cond_3
    :goto_2
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_9

    .line 933
    const/4 v3, 0x0

    .line 938
    :cond_4
    :goto_3
    invoke-virtual {v7, v2}, Landroid/view/View;->setX(F)V

    .line 939
    invoke-virtual {v7, v3}, Landroid/view/View;->setY(F)V

    .line 940
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 915
    .end local v2           #fItemX:F
    .end local v3           #fItemY:F
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 903
    .end local v6           #i:I
    .end local v7           #layout:Landroid/view/View;
    :cond_5
    const/high16 v9, 0x42ac

    sub-float v9, v5, v9

    cmpl-float v9, v0, v9

    if-lez v9, :cond_6

    .line 904
    const/4 v8, 0x2

    .line 905
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayout:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayoutDrawable:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 906
    :cond_6
    const/high16 v9, 0x42ac

    cmpg-float v9, v1, v9

    if-gez v9, :cond_7

    .line 907
    const/4 v8, 0x1

    .line 908
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayout:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayoutDrawable:Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 909
    :cond_7
    const/high16 v9, 0x42ac

    sub-float v9, v4, v9

    cmpl-float v9, v1, v9

    if-lez v9, :cond_2

    .line 910
    const/4 v8, 0x1

    .line 911
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayout:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mGuideLayoutDrawable:Ljava/util/ArrayList;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 928
    .restart local v2       #fItemX:F
    .restart local v3       #fItemY:F
    .restart local v6       #i:I
    .restart local v7       #layout:Landroid/view/View;
    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v5, v9

    cmpl-float v9, v2, v9

    if-lez v9, :cond_3

    .line 929
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float v2, v5, v9

    goto/16 :goto_2

    .line 934
    :cond_9
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v4, v9

    cmpl-float v9, v3, v9

    if-lez v9, :cond_4

    .line 935
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float v3, v4, v9

    goto/16 :goto_3

    .line 942
    .end local v2           #fItemX:F
    .end local v3           #fItemY:F
    :cond_a
    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .parameter "value"

    .prologue
    .line 2062
    packed-switch p1, :pswitch_data_0

    .line 2070
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2064
    :pswitch_0
    const/high16 v0, 0x4387

    goto :goto_0

    .line 2066
    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    .line 2068
    :pswitch_2
    const/high16 v0, 0x42b4

    goto :goto_0

    .line 2062
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTopActivityComponentName()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 733
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 734
    .local v1, am:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 735
    .local v0, Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 737
    .local v2, topActivity:Landroid/content/ComponentName;
    return-object v2
.end method

.method private injectionKeyEvent(I)V
    .locals 2
    .parameter "key"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 957
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/widget/SPenGestureView$7;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/SPenGestureView$7;-><init>(Lcom/android/internal/widget/SPenGestureView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 974
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 975
    return-void
.end method

.method private isAvailableCapacity()Z
    .locals 15

    .prologue
    .line 1970
    const-string v13, "SPenGesture"

    const-string v14, "isAvailableCapacity"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 1973
    .local v7, extStoragePath:Ljava/io/File;
    if-eqz v7, :cond_1

    .line 1976
    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1983
    .local v8, stat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v4, v13

    .line 1984
    .local v4, blockSize:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v9, v13

    .line 1985
    .local v9, totalBlocks:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v0, v13

    .line 1989
    .local v0, availableBlocks:J
    mul-long v11, v9, v4

    .line 1990
    .local v11, totalSpace:J
    mul-long v2, v0, v4

    .line 1998
    .local v2, availableSpace:J
    const-wide/16 v13, 0x2800

    cmp-long v13, v2, v13

    if-gez v13, :cond_0

    .line 2000
    const v13, 0x1040180

    invoke-direct {p0, v13}, Lcom/android/internal/widget/SPenGestureView;->showToast(I)V

    .line 2001
    const/4 v13, 0x0

    .line 2007
    .end local v0           #availableBlocks:J
    .end local v2           #availableSpace:J
    .end local v4           #blockSize:J
    .end local v8           #stat:Landroid/os/StatFs;
    .end local v9           #totalBlocks:J
    .end local v11           #totalSpace:J
    :goto_0
    return v13

    .line 1977
    :catch_0
    move-exception v6

    .line 1980
    .local v6, e:Ljava/lang/IllegalArgumentException;
    const/4 v13, 0x0

    goto :goto_0

    .line 2003
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #availableBlocks:J
    .restart local v2       #availableSpace:J
    .restart local v4       #blockSize:J
    .restart local v8       #stat:Landroid/os/StatFs;
    .restart local v9       #totalBlocks:J
    .restart local v11       #totalSpace:J
    :cond_0
    const/4 v13, 0x1

    goto :goto_0

    .line 2007
    .end local v0           #availableBlocks:J
    .end local v2           #availableSpace:J
    .end local v4           #blockSize:J
    .end local v8           #stat:Landroid/os/StatFs;
    .end local v9           #totalBlocks:J
    .end local v11           #totalSpace:J
    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method private isLockScreenShowing()Z
    .locals 3

    .prologue
    .line 2379
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    .line 2381
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2386
    :goto_0
    return v1

    .line 2382
    :catch_0
    move-exception v0

    .line 2383
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SPenGesture"

    const-string v2, "Failed check isLockScreenShowing : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2386
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSecureUnlockEnabled()Z
    .locals 3

    .prologue
    .line 2368
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_0

    .line 2370
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2375
    :goto_0
    return v1

    .line 2371
    :catch_0
    move-exception v0

    .line 2372
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SPenGesture"

    const-string v2, "Failed check isSecureUnlockEnabled : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2375
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTopActivity(Ljava/lang/String;)Z
    .locals 4
    .parameter "componentName"

    .prologue
    .line 743
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 744
    .local v0, topComponentName:Landroid/content/ComponentName;
    const-string v1, "SPenGesture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TopActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isTopActivity(Ljava/util/ArrayList;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 751
    .local p1, findList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 752
    .local v1, topComponentName:Landroid/content/ComponentName;
    const-string v2, "SPenGesture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TopActivity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 755
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 756
    const/4 v2, 0x1

    .line 758
    :goto_1
    return v2

    .line 754
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private markMatrixForCropping(FFFFI)V
    .locals 14
    .parameter "oldCoordsX"
    .parameter "oldCoordsY"
    .parameter "newCoordsX"
    .parameter "newCoordsY"
    .parameter "markNumber"

    .prologue
    .line 1049
    const/4 v8, 0x0

    .line 1050
    .local v8, startCoordsX:F
    const/4 v9, 0x0

    .line 1051
    .local v9, startCoordsY:F
    const/4 v1, 0x0

    .line 1052
    .local v1, endCoordsX:F
    const/4 v2, 0x0

    .line 1053
    .local v2, endCoordsY:F
    const/4 v5, 0x0

    .line 1054
    .local v5, resultCoordsX:F
    const/4 v6, 0x0

    .line 1055
    .local v6, resultCoordsY:F
    const/4 v7, 0x0

    .line 1056
    .local v7, slope:F
    const/4 v4, 0x0

    .line 1058
    .local v4, interceptY:F
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointX:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 1059
    :cond_0
    float-to-int v10, p1

    iput v10, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointX:I

    .line 1060
    move/from16 v0, p2

    float-to-int v10, v0

    iput v10, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointY:I

    .line 1066
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 1067
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1070
    :cond_1
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    add-float v11, p3, p1

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v12, p4, p2

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0, v11, v12}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1072
    cmpl-float v10, p1, p3

    if-nez v10, :cond_2

    cmpl-float v10, p2, p4

    if-eqz v10, :cond_17

    .line 1074
    :cond_2
    move v8, p1

    .line 1075
    move/from16 v9, p2

    .line 1076
    move/from16 v1, p3

    .line 1077
    move/from16 v2, p4

    .line 1079
    sub-float v10, v8, v1

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_5

    .line 1080
    sub-float v10, v2, v9

    sub-float v11, v1, v8

    div-float v7, v10, v11

    .line 1085
    :goto_0
    mul-float v10, v8, v7

    sub-float v4, v9, v10

    .line 1087
    cmpg-float v10, p1, p3

    if-gtz v10, :cond_f

    .line 1088
    :goto_1
    cmpg-float v10, v8, v1

    if-gtz v10, :cond_17

    .line 1089
    move v5, v8

    .line 1090
    mul-float v10, v8, v7

    add-float v6, v10, v4

    .line 1092
    float-to-int v10, v5

    float-to-int v11, v6

    move/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/android/internal/widget/SPenGestureView;->checkClosedCurve(III)V

    .line 1107
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 1108
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    .line 1111
    :cond_3
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    .line 1112
    const/4 v3, 0x1

    .local v3, i:I
    :goto_2
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_7

    .line 1113
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    if-ltz v10, :cond_4

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_4

    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_4

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_4

    .line 1115
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v10, :cond_6

    .line 1116
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, -0x1

    aput p5, v10, v11

    .line 1112
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1083
    .end local v3           #i:I
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 1118
    .restart local v3       #i:I
    :cond_6
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, -0x1

    aput p5, v10, v11

    goto :goto_3

    .line 1122
    .end local v3           #i:I
    :cond_7
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, -0x4080

    cmpg-float v10, v10, v11

    if-gez v10, :cond_a

    .line 1123
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_4
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_a

    .line 1124
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    if-ltz v10, :cond_8

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_8

    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_8

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_8

    .line 1126
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v10, :cond_9

    .line 1127
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, -0x1

    aput p5, v10, v11

    .line 1123
    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1129
    :cond_9
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, -0x1

    aput p5, v10, v11

    goto :goto_5

    .line 1134
    .end local v3           #i:I
    :cond_a
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    .line 1135
    float-to-int v10, v6

    if-ltz v10, :cond_b

    float-to-int v10, v5

    if-ltz v10, :cond_b

    float-to-int v10, v6

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_b

    float-to-int v10, v5

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_b

    .line 1137
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v10, :cond_c

    .line 1138
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    float-to-int v11, v6

    aget-object v10, v10, v11

    float-to-int v11, v5

    aput p5, v10, v11

    .line 1088
    :cond_b
    :goto_6
    const/high16 v10, 0x3f80

    add-float/2addr v8, v10

    goto/16 :goto_1

    .line 1140
    :cond_c
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    float-to-int v11, v6

    aget-object v10, v10, v11

    float-to-int v11, v5

    aput p5, v10, v11

    goto :goto_6

    .line 1191
    :cond_d
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    .line 1192
    float-to-int v10, v6

    if-ltz v10, :cond_e

    float-to-int v10, v5

    if-ltz v10, :cond_e

    float-to-int v10, v6

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_e

    float-to-int v10, v5

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_e

    .line 1194
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v10, :cond_16

    .line 1195
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    float-to-int v11, v6

    aget-object v10, v10, v11

    float-to-int v11, v5

    aput p5, v10, v11

    .line 1145
    :cond_e
    :goto_7
    const/high16 v10, 0x3f80

    sub-float/2addr v8, v10

    :cond_f
    cmpl-float v10, v8, v1

    if-ltz v10, :cond_17

    .line 1146
    move v5, v8

    .line 1147
    mul-float v10, v8, v7

    add-float v6, v10, v4

    .line 1149
    float-to-int v10, v5

    float-to-int v11, v6

    move/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/android/internal/widget/SPenGestureView;->checkClosedCurve(III)V

    .line 1164
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_10

    .line 1165
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    .line 1168
    :cond_10
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-lez v10, :cond_13

    .line 1169
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_8
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_13

    .line 1170
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    if-ltz v10, :cond_11

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_11

    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_11

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_11

    .line 1172
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v10, :cond_12

    .line 1173
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, 0x1

    aput p5, v10, v11

    .line 1169
    :cond_11
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1175
    :cond_12
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, 0x1

    aput p5, v10, v11

    goto :goto_9

    .line 1179
    .end local v3           #i:I
    :cond_13
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, -0x4080

    cmpg-float v10, v10, v11

    if-gez v10, :cond_d

    .line 1180
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_a
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_d

    .line 1181
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    if-ltz v10, :cond_14

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_14

    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_14

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_14

    .line 1183
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v10, :cond_15

    .line 1184
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, 0x1

    aput p5, v10, v11

    .line 1180
    :cond_14
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1186
    :cond_15
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, 0x1

    aput p5, v10, v11

    goto :goto_b

    .line 1197
    .end local v3           #i:I
    :cond_16
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    float-to-int v11, v6

    aget-object v10, v10, v11

    float-to-int v11, v5

    aput p5, v10, v11

    goto/16 :goto_7

    .line 1202
    :cond_17
    return-void
.end method

.method private setAboutStartingSuggestionService()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2345
    iget-boolean v4, p0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    if-ne v4, v6, :cond_0

    .line 2346
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2347
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/16 v4, 0x1e

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 2349
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2350
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2352
    .local v3, runningServiceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.SuggestionService.SuggestionAppService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2354
    iput-boolean v6, p0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    .line 2362
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #runningServiceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    return-void

    .line 2358
    .restart local v0       #activityManager:Landroid/app/ActivityManager;
    .restart local v1       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v2       #iterator:Ljava/util/Iterator;
    .restart local v3       #runningServiceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    goto :goto_0
.end method

.method private setDisplayDegrees()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2313
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    .line 2314
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    .line 2315
    const-string v3, "SPenGesture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentDisplayWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentDisplayHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/widget/SPenGestureView;->getDegreesForRotation(I)F

    move-result v0

    .line 2318
    .local v0, degress:F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x4334

    cmpl-float v3, v0, v3

    if-nez v3, :cond_2

    .line 2320
    :cond_0
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-ne v3, v1, :cond_1

    .line 2321
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    .line 2337
    :goto_0
    return v1

    .line 2325
    :cond_1
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    move v1, v2

    .line 2326
    goto :goto_0

    .line 2331
    :cond_2
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v3, :cond_3

    .line 2332
    iput v1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    goto :goto_0

    .line 2336
    :cond_3
    iput v1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    move v1, v2

    .line 2337
    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2015
    return-void
.end method

.method private startEffectForGesture(IZ)V
    .locals 6
    .parameter "key"
    .parameter "isDownGesture"

    .prologue
    const/high16 v5, 0x4110

    const/4 v4, 0x0

    const/high16 v3, 0x4000

    .line 2393
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->isLockScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2526
    :cond_0
    :goto_0
    return-void

    .line 2397
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SPenGestureView;->setVisibility(I)V

    .line 2398
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2399
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2400
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2401
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2403
    if-eqz p2, :cond_2

    .line 2404
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2405
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4204

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 2407
    packed-switch p1, :pswitch_data_0

    .line 2422
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2423
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/SPenGestureView$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/internal/widget/SPenGestureView$9;-><init>(Lcom/android/internal/widget/SPenGestureView;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2520
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 2523
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2524
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2409
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_1

    .line 2412
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_1

    .line 2418
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2419
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 2420
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_1

    .line 2407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addSPenEvent(Landroid/view/MotionEvent;ZZ)V
    .locals 27
    .parameter "event"
    .parameter "isKeyguardOn"
    .parameter "isLiveGlanceView"

    .prologue
    .line 1310
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/SPenGestureView;->mIsKeyguardOn:Z

    .line 1311
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsKeyguardOn:Z

    if-nez v2, :cond_2c

    .line 1312
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mBrType:I

    .line 1313
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveGlanceView:Z

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 1317
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1318
    .local v8, action:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1320
    .local v22, totalPointerSize:I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    const/16 v2, 0x9

    if-eq v8, v2, :cond_18

    const/4 v2, 0x7

    if-eq v8, v2, :cond_18

    const/16 v2, 0xa

    if-eq v8, v2, :cond_18

    .line 1323
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1324
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1325
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z

    .line 1326
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->resetVariable(I)V

    .line 1327
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SPenGestureView;->postInvalidate()V

    .line 1328
    monitor-exit v26

    .line 1789
    .end local v8           #action:I
    .end local v22           #totalPointerSize:I
    :cond_0
    :goto_0
    return-void

    .line 1331
    .restart local v8       #action:I
    .restart local v22       #totalPointerSize:I
    :cond_1
    if-eqz v8, :cond_2

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_a

    .line 1336
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SPenGestureView;->setAboutStartingSuggestionService()V

    .line 1338
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1340
    monitor-exit v26

    goto :goto_0

    .line 1744
    .end local v8           #action:I
    .end local v22           #totalPointerSize:I
    :catchall_0
    move-exception v2

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1344
    .restart local v8       #action:I
    .restart local v22       #totalPointerSize:I
    :cond_3
    const v2, 0xff00

    and-int/2addr v2, v8

    shr-int/lit8 v16, v2, 0x8

    .line 1346
    .local v16, index:I
    if-nez v8, :cond_5

    .line 1347
    const/16 v19, 0x0

    .local v19, p:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 1348
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/SPenGestureView$PointerState;

    .line 1349
    .local v20, ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureView$PointerState;->clearTrace()V

    .line 1350
    const/4 v2, 0x0

    move-object/from16 v0, v20

    #setter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2302(Lcom/android/internal/widget/SPenGestureView$PointerState;Z)Z

    .line 1347
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1352
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mCurDown:Z

    .line 1353
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mCurNumPointers:I

    .line 1354
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mMaxNumPointers:I

    .line 1358
    .end local v19           #p:I
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mCurNumPointers:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mCurNumPointers:I

    .line 1359
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mMaxNumPointers:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mCurNumPointers:I

    if-ge v2, v3, :cond_6

    .line 1360
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mCurNumPointers:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mMaxNumPointers:I

    .line 1363
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1364
    .local v15, id:I
    :goto_2
    move/from16 v0, v22

    if-gt v0, v15, :cond_7

    .line 1365
    new-instance v20, Lcom/android/internal/widget/SPenGestureView$PointerState;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureView$PointerState;-><init>()V

    .line 1366
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    add-int/lit8 v22, v22, 0x1

    .line 1368
    goto :goto_2

    .line 1370
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mActivePointerId:I

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SPenGestureView$PointerState;

    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2300(Lcom/android/internal/widget/SPenGestureView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1372
    :cond_8
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/widget/SPenGestureView;->mActivePointerId:I

    .line 1375
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/SPenGestureView$PointerState;

    .line 1376
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    const/4 v2, 0x1

    move-object/from16 v0, v20

    #setter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2302(Lcom/android/internal/widget/SPenGestureView$PointerState;Z)Z

    .line 1377
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsLastPointer:Z

    .line 1381
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mBrType:I

    .line 1385
    .end local v15           #id:I
    .end local v16           #index:I
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 1387
    monitor-exit v26

    goto/16 :goto_0

    .line 1390
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 1395
    .local v11, eventPointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v13

    .line 1397
    .local v13, histroySize:I
    const/4 v12, 0x0

    .local v12, historyPos:I
    :goto_3
    if-ge v12, v13, :cond_12

    .line 1398
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    if-ge v14, v11, :cond_11

    .line 1399
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1400
    .restart local v15       #id:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mCurDown:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SPenGestureView$PointerState;

    move-object/from16 v20, v2

    .line 1401
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :goto_5
    if-eqz v20, :cond_10

    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2400(Lcom/android/internal/widget/SPenGestureView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1402
    .local v9, coords:Landroid/view/MotionEvent$PointerCoords;
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12, v9}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 1404
    if-eqz v20, :cond_e

    .line 1405
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/SPenGestureView$PointerState;->addTrace(FF)V

    .line 1406
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d

    .line 1407
    :cond_c
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    .line 1408
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    .line 1409
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F

    .line 1410
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F

    .line 1411
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    .line 1412
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    .line 1413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1418
    :cond_d
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    .line 1419
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    .line 1398
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 1400
    .end local v9           #coords:Landroid/view/MotionEvent$PointerCoords;
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_f
    const/16 v20, 0x0

    goto :goto_5

    .line 1401
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto :goto_6

    .line 1397
    .end local v15           #id:I
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 1423
    .end local v14           #i:I
    :cond_12
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_7
    if-ge v14, v11, :cond_18

    .line 1424
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1425
    .restart local v15       #id:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mCurDown:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SPenGestureView$PointerState;

    move-object/from16 v20, v2

    .line 1426
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :goto_8
    if-eqz v20, :cond_17

    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2400(Lcom/android/internal/widget/SPenGestureView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1427
    .restart local v9       #coords:Landroid/view/MotionEvent$PointerCoords;
    :goto_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v9}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1429
    if-eqz v20, :cond_15

    .line 1430
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/SPenGestureView$PointerState;->addTrace(FF)V

    .line 1431
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_14

    .line 1432
    :cond_13
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    .line 1433
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    .line 1434
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F

    .line 1435
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F

    .line 1436
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    .line 1437
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    .line 1438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1442
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    iget v6, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    iget v7, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1444
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    .line 1445
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    .line 1446
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    move-object/from16 v0, v20

    #setter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mToolType:I
    invoke-static {v0, v2}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2502(Lcom/android/internal/widget/SPenGestureView$PointerState;I)I

    .line 1423
    :cond_15
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    .line 1425
    .end local v9           #coords:Landroid/view/MotionEvent$PointerCoords;
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_8

    .line 1426
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_17
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_9

    .line 1451
    .end local v11           #eventPointerCount:I
    .end local v12           #historyPos:I
    .end local v13           #histroySize:I
    .end local v14           #i:I
    .end local v15           #id:I
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z

    if-eqz v2, :cond_19

    .line 1454
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1455
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z

    .line 1456
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->resetVariable(I)V

    .line 1460
    :cond_19
    const/4 v2, 0x1

    if-eq v8, v2, :cond_1a

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_23

    .line 1463
    :cond_1a
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : release"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 1467
    .local v21, totalPointerCount:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveScreencapture:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2a

    .line 1468
    const/16 v19, 0x0

    .restart local v19       #p:I
    :goto_a
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1d

    .line 1469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/SPenGestureView$PointerState;

    .line 1470
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2600(Lcom/android/internal/widget/SPenGestureView$PointerState;)I

    move-result v23

    .line 1471
    .local v23, traceCount:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_b
    move/from16 v0, v23

    if-ge v14, v0, :cond_1c

    .line 1472
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2700(Lcom/android/internal/widget/SPenGestureView$PointerState;)[F

    move-result-object v2

    aget v24, v2, v14

    .line 1473
    .local v24, x:F
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2800(Lcom/android/internal/widget/SPenGestureView$PointerState;)[F

    move-result-object v2

    aget v25, v2, v14

    .line 1475
    .local v25, y:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mExistOldCoords:Z

    if-nez v2, :cond_1b

    .line 1476
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsX:F

    .line 1477
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsY:F

    .line 1478
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mExistOldCoords:Z

    .line 1471
    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 1481
    :cond_1b
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mNewCoordsX:F

    .line 1482
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mNewCoordsY:F

    .line 1483
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/SPenGestureView;->mNewCoordsX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/SPenGestureView;->mNewCoordsY:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/widget/SPenGestureView;->mNumberOfAddTrace:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/SPenGestureView;->markMatrixForCropping(FFFFI)V

    .line 1484
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mNumberOfAddTrace:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mNumberOfAddTrace:I

    .line 1485
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsX:F

    .line 1486
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsY:F

    goto :goto_c

    .line 1468
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_1c
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 1491
    .end local v14           #i:I
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    .end local v23           #traceCount:I
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    .line 1493
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    .line 1501
    :cond_1e
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z

    if-nez v2, :cond_1f

    .line 1503
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1504
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1505
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1506
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1507
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1508
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1509
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1510
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1511
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1512
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F

    .line 1513
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F

    .line 1514
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    .line 1515
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    .line 1516
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1519
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    if-nez v2, :cond_22

    .line 1521
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SPenGestureView;->checkDirectionGesture()Z

    move-result v2

    if-nez v2, :cond_21

    .line 1522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/widget/SPenGestureView;->getDegreesForRotation(I)F

    move-result v10

    .line 1523
    .local v10, degress:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsPhone:Z

    if-eqz v2, :cond_21

    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-eqz v2, :cond_20

    const/high16 v2, 0x4334

    cmpl-float v2, v10, v2

    if-nez v2, :cond_21

    .line 1524
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SPenGestureView;->checkDownGesture()V

    .line 1528
    .end local v10           #degress:F
    :cond_21
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mBrType:I

    .line 1538
    .end local v19           #p:I
    :cond_22
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->resetVariable(I)V

    .line 1541
    .end local v21           #totalPointerCount:I
    :cond_23
    const/4 v2, 0x3

    if-ne v8, v2, :cond_24

    .line 1542
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : action_calcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->resetVariable(I)V

    .line 1546
    :cond_24
    const/16 v2, 0xa

    if-ne v8, v2, :cond_25

    .line 1547
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : action is MotionEvent.ACTION_HOVER_EXIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->resetVariable(I)V

    .line 1551
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SPenGestureView;->postInvalidate()V

    .line 1553
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    .line 1554
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : mIsClosedCurve is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SPenGestureView;->isAvailableCapacity()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 1559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1563
    :cond_26
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/widget/SPenGestureView$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/widget/SPenGestureView$8;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 1721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1742
    :goto_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1744
    :cond_27
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1747
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mBrType:I

    packed-switch v2, :pswitch_data_0

    .line 1773
    .end local v8           #action:I
    .end local v22           #totalPointerSize:I
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    if-nez v2, :cond_0

    .line 1774
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1775
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_0
    goto/16 :goto_0

    .line 1782
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1495
    .restart local v8       #action:I
    .restart local v19       #p:I
    .restart local v21       #totalPointerCount:I
    .restart local v22       #totalPointerSize:I
    :cond_29
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 1497
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    .line 1498
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z

    goto/16 :goto_d

    .line 1535
    .end local v19           #p:I
    :cond_2a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveScreencapture:Z

    goto/16 :goto_e

    .line 1724
    .end local v21           #totalPointerCount:I
    :cond_2b
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1725
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1726
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1727
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1728
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1729
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1730
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1731
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1732
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F

    .line 1733
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F

    .line 1734
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    .line 1735
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1736
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    .line 1737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_f

    .line 1751
    :pswitch_2
    new-instance v17, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PAUSE"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1752
    .local v17, intentForVideoPause:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 1757
    .end local v17           #intentForVideoPause:Landroid/content/Intent;
    :pswitch_3
    new-instance v18, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PLAY"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1758
    .local v18, intentForVideoPlay:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 1763
    .end local v8           #action:I
    .end local v18           #intentForVideoPlay:Landroid/content/Intent;
    .end local v22           #totalPointerSize:I
    :cond_2c
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/SPenGestureView;->mIsLiveGlanceView:Z

    .line 1764
    const-string v2, "SPenGesture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSPenEvent : isKeyguardOn is true,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveGlanceView:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1747
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1775
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public disableGestureGuide()V
    .locals 0

    .prologue
    .line 845
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2280
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2283
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->setDisplayDegrees()Z

    move-result v1

    .line 2285
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SPenGestureView$PointerState;

    .line 2286
    .local v0, ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2600(Lcom/android/internal/widget/SPenGestureView$PointerState;)I

    move-result v2

    if-le v2, v4, :cond_1

    .line 2287
    if-ne v1, v4, :cond_0

    .line 2288
    iput-boolean v4, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z

    .line 2307
    :goto_0
    return-void

    .line 2292
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z

    goto :goto_0

    .line 2297
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z

    goto :goto_0
.end method

.method public isShowingGestureEffect()Z
    .locals 1

    .prologue
    .line 2531
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z

    return v0
.end method

.method public makePathForClosedCurve(IIZ)Z
    .locals 21
    .parameter "intersectionPointPrev"
    .parameter "intersectionPointLast"
    .parameter "isFirstCurve"

    .prologue
    .line 1794
    const/4 v4, 0x0

    .line 1795
    .local v4, existOldCoords:Z
    const/4 v9, 0x0

    .line 1796
    .local v9, oldCoordsX:F
    const/4 v10, 0x0

    .line 1797
    .local v10, oldCoordsY:F
    const/4 v6, 0x0

    .line 1798
    .local v6, newCoordsX:F
    const/4 v7, 0x0

    .line 1799
    .local v7, newCoordsY:F
    const/4 v8, 0x0

    .line 1804
    .local v8, numberOfAddTrace:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1806
    .local v13, totalPointerCount:I
    const/4 v11, 0x0

    .local v11, p:I
    :goto_0
    if-ge v11, v13, :cond_5

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/SPenGestureView$PointerState;

    .line 1808
    .local v12, ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v12}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2600(Lcom/android/internal/widget/SPenGestureView$PointerState;)I

    move-result v14

    .line 1809
    .local v14, traceCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v14, :cond_4

    .line 1810
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static {v12}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2700(Lcom/android/internal/widget/SPenGestureView$PointerState;)[F

    move-result-object v17

    aget v15, v17, v5

    .line 1811
    .local v15, x:F
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static {v12}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2800(Lcom/android/internal/widget/SPenGestureView$PointerState;)[F

    move-result-object v17

    aget v16, v17, v5

    .line 1813
    .local v16, y:F
    move/from16 v0, p1

    if-gt v0, v8, :cond_0

    add-int/lit8 v17, p2, 0x1

    move/from16 v0, v17

    if-lt v0, v8, :cond_0

    .line 1814
    if-nez v4, :cond_2

    .line 1815
    move v9, v15

    .line 1816
    move/from16 v10, v16

    .line 1817
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    .line 1819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1820
    float-to-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1821
    float-to-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1829
    :goto_2
    const/4 v4, 0x1

    .line 1847
    :cond_0
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 1809
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1824
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    .line 1825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1826
    float-to-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1827
    float-to-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I

    goto :goto_2

    .line 1832
    :cond_2
    move v6, v15

    .line 1833
    move/from16 v7, v16

    .line 1834
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v6, v9

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    add-float v19, v7, v10

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1843
    :goto_4
    move v9, v15

    .line 1844
    move/from16 v10, v16

    goto :goto_3

    .line 1838
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v6, v9

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    add-float v19, v7, v10

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_4

    .line 1806
    .end local v15           #x:F
    .end local v16           #y:F
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1851
    .end local v5           #i:I
    .end local v12           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    .end local v14           #traceCount:I
    :cond_5
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1852
    .local v3, boundsOfPath:Landroid/graphics/RectF;
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1860
    :goto_5
    iget v0, v3, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x4220

    cmpg-float v17, v17, v18

    if-gez v17, :cond_7

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x4220

    cmpg-float v17, v17, v18

    if-gez v17, :cond_7

    .line 1862
    const/16 v17, 0x0

    .line 1865
    :goto_6
    return v17

    .line 1856
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto :goto_5

    .line 1865
    :cond_7
    const/16 v17, 0x1

    goto :goto_6
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 805
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SPenGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SPenGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SPenGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SPenGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SPenGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SPenGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    .line 813
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SPenGestureView;->addView(Landroid/view/View;)V

    .line 816
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, -0x4080

    .line 1033
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    .line 1034
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    iget v1, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    const/high16 v2, 0x4100

    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1041
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    .line 1042
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    iget v1, p0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    const/high16 v2, 0x4080

    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1044
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 982
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 983
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/SPenGestureView;->mHeaderBottom:I

    .line 984
    return-void
.end method

.method public resetVariable(I)V
    .locals 9
    .parameter "totalPointerSize"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/high16 v6, -0x4080

    const/4 v5, 0x0

    .line 1873
    const/4 v2, 0x0

    .local v2, p:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 1874
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/SPenGestureView$PointerState;

    .line 1875
    .local v3, ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    invoke-virtual {v3}, Lcom/android/internal/widget/SPenGestureView$PointerState;->clearTrace()V

    .line 1876
    #setter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v3, v5}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2302(Lcom/android/internal/widget/SPenGestureView$PointerState;Z)Z

    .line 1873
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1879
    .end local v3           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/widget/SPenGestureView;->mCurDown:Z

    .line 1880
    iput v5, p0, Lcom/android/internal/widget/SPenGestureView;->mCurNumPointers:I

    .line 1881
    iput v5, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxNumPointers:I

    .line 1882
    iput-boolean v5, p0, Lcom/android/internal/widget/SPenGestureView;->mExistOldCoords:Z

    .line 1883
    iput-boolean v5, p0, Lcom/android/internal/widget/SPenGestureView;->mIsLastPointer:Z

    .line 1884
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/widget/SPenGestureView;->mIsFirstPointer:Z

    .line 1885
    iput-boolean v5, p0, Lcom/android/internal/widget/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 1886
    iput v8, p0, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsX:F

    .line 1887
    iput v8, p0, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsY:F

    .line 1888
    iput v8, p0, Lcom/android/internal/widget/SPenGestureView;->mNewCoordsX:F

    .line 1889
    iput v8, p0, Lcom/android/internal/widget/SPenGestureView;->mNewCoordsY:F

    .line 1891
    iput v6, p0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    .line 1892
    iput v6, p0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    .line 1893
    iput v5, p0, Lcom/android/internal/widget/SPenGestureView;->mNumberOfAddTrace:I

    .line 1894
    iput v7, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointX:I

    .line 1895
    iput v7, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointY:I

    .line 1896
    iput v7, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    .line 1898
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 1900
    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_4

    .line 1901
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I

    if-ge v0, v4, :cond_2

    .line 1902
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I

    if-ge v1, v4, :cond_1

    .line 1903
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    aget-object v4, v4, v0

    aput v7, v4, v1

    .line 1902
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1901
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1906
    .end local v1           #j:I
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I

    if-ge v0, v4, :cond_4

    .line 1907
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_4
    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I

    if-ge v1, v4, :cond_3

    .line 1908
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    aget-object v4, v4, v0

    aput v7, v4, v1

    .line 1907
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1906
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1913
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_4
    iput v6, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    .line 1914
    iput v6, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    .line 1915
    return-void
.end method

.method public sendMotionEventForGestureGuide(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 850
    const/4 v0, 0x1

    .line 852
    .local v0, hideAllLayout:Z
    iget-boolean v1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableHelperBySetting:Z

    if-eqz v1, :cond_0

    .line 853
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 877
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 878
    invoke-virtual {p0}, Lcom/android/internal/widget/SPenGestureView;->disableGestureGuide()V

    .line 880
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 855
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 856
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 857
    const/4 v0, 0x0

    .line 859
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsGuideShowing:Z

    if-nez v1, :cond_0

    .line 860
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->setAboutStartingSuggestionService()V

    .line 862
    iget-boolean v1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    if-eqz v1, :cond_2

    .line 863
    const/4 v0, 0x1

    goto :goto_0

    .line 865
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableGestureGuide:Z

    if-eqz v1, :cond_0

    .line 866
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 853
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public setDoubleTapStateBySettingMenu(Z)V
    .locals 0
    .parameter "isEnable"

    .prologue
    .line 673
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 674
    return-void
.end method

.method public setGuideLayoutState(Z)V
    .locals 1
    .parameter "canBeShow"

    .prologue
    .line 822
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableHelperBySetting:Z

    .line 824
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableHelperBySetting:Z

    if-nez v0, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/android/internal/widget/SPenGestureView;->disableGestureGuide()V

    .line 827
    :cond_0
    return-void
.end method

.method public setPhoneWindowMangerFlag(Z)V
    .locals 1
    .parameter "isInvisible"

    .prologue
    .line 2537
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z

    if-nez v0, :cond_0

    .line 2538
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 2540
    :cond_0
    return-void
.end method
