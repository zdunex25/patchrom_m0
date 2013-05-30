.class public Lcom/android/internal/policy/impl/sec/CircleUnlockView;
.super Landroid/widget/FrameLayout;
.source "CircleUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleUnlockView$SineEaseInOut;,
        Lcom/android/internal/policy/impl/sec/CircleUnlockView$QuintEaseInOut;,
        Lcom/android/internal/policy/impl/sec/CircleUnlockView$QuintEaseOut;,
        Lcom/android/internal/policy/impl/sec/CircleUnlockView$CubicEaseInOut;
    }
.end annotation


# static fields
.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final MAX_AWAKE_TIME:I = 0x7530

.field public static final MISSED_EVENT:I = 0x0

.field public static final NORMAL_EVENT:I = -0x1


# instance fields
.field private final ARR0W_FADE_IN_OFFSET:I

.field private final ARR0W_FADE_OUT_OFFSET:I

.field private final ARROW_FADE_IN_DURATION:I

.field private final ARROW_FADE_OUT_DURATION:I

.field private final CIRCLE_CENTER_DOWN_DURATION:I

.field private final CIRCLE_CENTER_UP_DURATION:I

.field private final CIRCLE_LOOP_DURATION:I

.field private final CIRCLE_MAX_ALPHA:I

.field private final CIRCLE_OUT_DURATION:I

.field private final FIRST_MOVE_DURATION:I

.field private final INIT_ANGLE_CIRCLE_1:I

.field private final INIT_ANGLE_CIRCLE_2:I

.field private final INIT_ANGLE_CIRCLE_3:I

.field private final LOOP_HANDLER_WHAT:I

.field private MISSED_UNLOCK_RELEASE_MARGIN:I

.field private final SHORT_TAP_FIRST_DURATION:I

.field private final SHORT_TAP_FIRST_STARTOFF:I

.field private final SHORT_TAP_SECOND_DURATION:I

.field private final SHORT_TAP_SECOND_STARTOFF:I

.field protected TAG:Ljava/lang/String;

.field protected final UNLOCK_DRAG_THRESHOLD:D

.field protected final UNLOCK_RELEASE_THRESHOLD:D

.field private arrow:Landroid/widget/ImageView;

.field private arrowContainer:Landroid/widget/LinearLayout;

.field private arrowFadeIn:Landroid/view/animation/AlphaAnimation;

.field private arrowFadeOut:Landroid/view/animation/AlphaAnimation;

.field private arrowFadeSet:Landroid/view/animation/AnimationSet;

.field private circleAlphaIn1:Landroid/animation/ObjectAnimator;

.field private circleAlphaIn2:Landroid/animation/ObjectAnimator;

.field private circleAlphaIn3:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut1:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut2:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut3:Landroid/animation/ObjectAnimator;

.field private circleSet1:Landroid/animation/AnimatorSet;

.field private circleSet2:Landroid/animation/AnimatorSet;

.field private circleSet3:Landroid/animation/AnimatorSet;

.field private circleUpSet:Landroid/animation/AnimatorSet;

.field private circle_1:Landroid/widget/ImageView;

.field private circle_2:Landroid/widget/ImageView;

.field private circle_3:Landroid/widget/ImageView;

.field private firstMoveSet:Landroid/animation/AnimatorSet;

.field private isIgnoreTouch:Z

.field protected lpFrame:Landroid/widget/FrameLayout$LayoutParams;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleCenter:Landroid/widget/ImageView;

.field private mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

.field private mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

.field private mCircleInPress:Landroid/widget/ImageView;

.field protected mCircleMain:Landroid/widget/FrameLayout;

.field protected mCircleRoot:Landroid/widget/RelativeLayout;

.field private final mContext:Landroid/content/Context;

.field private mDistanceRatio:D

.field private mDownFirst:Z

.field private mHandlerForRepeat:Landroid/os/Handler;

.field private mIsFirst:Z

.field private mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

.field private mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

.field private mResumedTimeMillis:J

.field private mStartLocation:I

.field mWindowHeight:I

.field mWindowWidth:I

.field protected mX:F

.field protected mY:F

.field private originalCircleX:F

.field private originalCircleY:F

.field private radian:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "callback"

    .prologue
    const/16 v9, 0x12c

    const/16 v8, 0x10b

    const-wide v4, 0x3fe19999a0000000L

    const/16 v7, 0x320

    const/4 v6, 0x0

    .line 135
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v2, "CircleLockScreen"

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    .line 50
    const/16 v2, 0xff

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->CIRCLE_MAX_ALPHA:I

    .line 52
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTMODevice()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCanadaFeature()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-wide v2, v4

    :goto_0
    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    .line 53
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTMODevice()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCanadaFeature()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_1
    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    .line 60
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->ARROW_FADE_IN_DURATION:I

    .line 61
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->ARROW_FADE_OUT_DURATION:I

    .line 62
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->ARR0W_FADE_IN_OFFSET:I

    .line 63
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->ARR0W_FADE_OUT_OFFSET:I

    .line 65
    const/16 v2, 0x52

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->INIT_ANGLE_CIRCLE_1:I

    .line 66
    const/16 v2, 0x139

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->INIT_ANGLE_CIRCLE_2:I

    .line 67
    const/16 v2, 0x41

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->INIT_ANGLE_CIRCLE_3:I

    .line 69
    iput v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->CIRCLE_CENTER_DOWN_DURATION:I

    .line 70
    iput v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->CIRCLE_CENTER_UP_DURATION:I

    .line 72
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->SHORT_TAP_FIRST_DURATION:I

    .line 73
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->SHORT_TAP_FIRST_STARTOFF:I

    .line 74
    iput v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->SHORT_TAP_SECOND_DURATION:I

    .line 75
    const/16 v2, 0x258

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->SHORT_TAP_SECOND_STARTOFF:I

    .line 77
    const/16 v2, 0x514

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->CIRCLE_LOOP_DURATION:I

    .line 78
    iput v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->CIRCLE_OUT_DURATION:I

    .line 79
    const/16 v2, 0x258

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->FIRST_MOVE_DURATION:I

    .line 80
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->LOOP_HANDLER_WHAT:I

    .line 117
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    .line 118
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    .line 119
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->isIgnoreTouch:Z

    .line 124
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mResumedTimeMillis:J

    .line 129
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mStartLocation:I

    .line 132
    const/16 v2, 0x28

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->MISSED_UNLOCK_RELEASE_MARGIN:I

    .line 136
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setLayout()V

    .line 140
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setHandler()V

    .line 141
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setAnimation()V

    .line 143
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 144
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 145
    .local v1, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 146
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mWindowWidth:I

    .line 147
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mWindowHeight:I

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mResumedTimeMillis:J

    .line 150
    return-void

    .line 52
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v1           #mWindowManager:Landroid/view/WindowManager;
    :cond_2
    const-wide v2, 0x3fe99999a0000000L

    goto/16 :goto_0

    .line 53
    :cond_3
    const-wide v4, 0x3ff4ccccc0000000L

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->startCircleAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private addToCircleMain()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    return-void
.end method

.method private createArrow()V
    .locals 2

    .prologue
    .line 197
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    const v1, 0x1080483

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 201
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    return-void
.end method

.method private createArrowAnimation()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const-wide/16 v3, 0x320

    .line 282
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 286
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 290
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView$2;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 309
    return-void
.end method

.method private createCircleAnimation()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x12c

    const-wide/16 v9, 0xc8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 247
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 257
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 268
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 272
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    return-void

    .line 240
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 243
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 250
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 253
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 261
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 264
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createCircleCenter()V
    .locals 2

    .prologue
    .line 192
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    const v1, 0x1080486

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    return-void
.end method

.method private createCircleCenterAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x10b

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 230
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 234
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 237
    return-void
.end method

.method private createInnerCircle()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    const v1, 0x1080484

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    return-void
.end method

.method private createThreeCircles()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const v1, 0x108040c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const v1, 0x108040d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const v1, 0x108040e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 189
    return-void
.end method

.method private getUnlockscreenLockImageIdAt(D)I
    .locals 4
    .parameter "value"

    .prologue
    .line 664
    const/16 v2, 0x1c

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 675
    .local v1, unlockscreen_lock_drawables:[I
    const-wide v2, 0x3fb999999999999aL

    cmpg-double v2, p1, v2

    if-gez v2, :cond_0

    .line 676
    const/4 v0, 0x0

    .line 682
    .local v0, index:I
    :goto_0
    aget v2, v1, v0

    return v2

    .line 677
    .end local v0           #index:I
    :cond_0
    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_1

    .line 678
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #index:I
    goto :goto_0

    .line 680
    .end local v0           #index:I
    :cond_1
    array-length v2, v1

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int v2, v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #index:I
    goto :goto_0

    .line 664
    nop

    :array_0
    .array-data 0x4
        0x86t 0x4t 0x8t 0x1t
        0x87t 0x4t 0x8t 0x1t
        0x88t 0x4t 0x8t 0x1t
        0x89t 0x4t 0x8t 0x1t
        0x8at 0x4t 0x8t 0x1t
        0x8bt 0x4t 0x8t 0x1t
        0x8ct 0x4t 0x8t 0x1t
        0x8dt 0x4t 0x8t 0x1t
        0x8et 0x4t 0x8t 0x1t
        0x8ft 0x4t 0x8t 0x1t
        0x90t 0x4t 0x8t 0x1t
        0x91t 0x4t 0x8t 0x1t
        0x92t 0x4t 0x8t 0x1t
        0x93t 0x4t 0x8t 0x1t
        0x94t 0x4t 0x8t 0x1t
        0x95t 0x4t 0x8t 0x1t
        0x96t 0x4t 0x8t 0x1t
        0x97t 0x4t 0x8t 0x1t
        0x98t 0x4t 0x8t 0x1t
        0x99t 0x4t 0x8t 0x1t
        0x9at 0x4t 0x8t 0x1t
        0x9bt 0x4t 0x8t 0x1t
        0x9ct 0x4t 0x8t 0x1t
        0x9dt 0x4t 0x8t 0x1t
        0x9et 0x4t 0x8t 0x1t
        0x9ft 0x4t 0x8t 0x1t
        0xa0t 0x4t 0x8t 0x1t
        0xa1t 0x4t 0x8t 0x1t
    .end array-data
.end method

.method private pokeWakelockWithTimeCheck()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x7530

    const-wide/16 v7, 0x4e20

    .line 627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 628
    .local v2, now:J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mResumedTimeMillis:J

    sub-long v0, v2, v4

    .line 629
    .local v0, diff:J
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck time diffence = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    cmp-long v4, v0, v7

    if-gtz v4, :cond_0

    .line 632
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v5, 0x2710

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 633
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    const-string v5, "pokeWakelockWithTimeCheck mCallback.pokeWakelock(AWAKE_INTERVAL_DEFAULT_MS)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :goto_0
    return-void

    .line 634
    :cond_0
    cmp-long v4, v0, v7

    if-lez v4, :cond_1

    cmp-long v4, v0, v9

    if-gez v4, :cond_1

    .line 635
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    long-to-int v5, v0

    rsub-int v5, v5, 0x7530

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 636
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck mCallback.pokeWakelock("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v9, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 639
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    const-string v5, "pokeWakelockWithTimeCheck do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAnimation()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createCircleCenterAnimation()V

    .line 225
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createCircleAnimation()V

    .line 226
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createArrowAnimation()V

    .line 227
    return-void
.end method

.method private setHandler()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mHandlerForRepeat:Landroid/os/Handler;

    .line 221
    return-void
.end method

.method private setInnerCircle(Landroid/view/View;D)V
    .locals 3
    .parameter "v"
    .parameter "value"

    .prologue
    .line 336
    const-wide v1, 0x406fe00000000000L

    mul-double/2addr v1, p2

    double-to-int v0, v1

    .line 337
    .local v0, alpha:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 338
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 339
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 340
    return-void

    .line 337
    :cond_0
    rsub-int v0, v0, 0xff

    goto :goto_0
.end method

.method private startCircleAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 686
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 687
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 688
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 689
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 690
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 691
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 693
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 694
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 695
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 697
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mHandlerForRepeat:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 699
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 782
    return-void
.end method

.method public clearCircleAnimation()V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 703
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 704
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 705
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 706
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 707
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 709
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 710
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 711
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 712
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 714
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mHandlerForRepeat:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 716
    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 38
    .parameter "view"
    .parameter "event"

    .prologue
    .line 359
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->isIgnoreTouch:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 361
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->isIgnoreTouch:Z

    .line 363
    :cond_0
    const/16 v30, 0x0

    .line 620
    :goto_0
    return v30

    .line 369
    :cond_1
    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    .line 370
    .local v26, touchedEventX:F
    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    .line 373
    .local v27, touchedEventY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    if-nez v30, :cond_2

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Occured Divided by zero Exception caused by mCircleMain-Null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/16 v30, 0x0

    goto :goto_0

    .line 378
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v30

    if-nez v30, :cond_3

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Occured Divided by zero Exception caused by mCircleMain.getHeight() == 0"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/16 v30, 0x0

    goto :goto_0

    .line 382
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v30

    if-nez v30, :cond_4

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Occured Divided by zero Exception caused by mCircleMain.getWidth() == 0"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/16 v30, 0x0

    goto :goto_0

    .line 388
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v30

    packed-switch v30, :pswitch_data_0

    .line 620
    :cond_5
    :goto_1
    :pswitch_0
    const/16 v30, 0x1

    goto :goto_0

    .line 392
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0xff

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0xff

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 395
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    .line 396
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchDown(Landroid/view/View;)V

    .line 404
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->pokeWakelockWithTimeCheck()V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 413
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mX:F

    .line 414
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mY:F

    .line 416
    if-eqz p1, :cond_7

    .line 417
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleX:F

    move/from16 v30, v0

    sub-float v30, v30, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v28, v0

    .line 420
    .local v28, xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleY:F

    move/from16 v30, v0

    sub-float v30, v30, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v29, v0

    .line 431
    .local v29, yOffset:I
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setCenterImage(Landroid/view/View;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 436
    .local v16, lp:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v31

    sub-int v30, v30, v31

    sub-int v20, v30, v28

    .line 438
    .local v20, rightMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v31

    sub-int v30, v30, v31

    sub-int v8, v30, v29

    .line 440
    .local v8, bottomMargin:I
    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 441
    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 442
    move/from16 v0, v29

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 443
    move-object/from16 v0, v16

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 447
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->startCircleAnimation()V

    goto/16 :goto_1

    .line 424
    .end local v8           #bottomMargin:I
    .end local v16           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v20           #rightMargin:I
    .end local v28           #xOffset:I
    .end local v29           #yOffset:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleX:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v28, v0

    .line 426
    .restart local v28       #xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleY:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v29, v0

    .restart local v29       #yOffset:I
    goto/16 :goto_2

    .line 453
    .end local v28           #xOffset:I
    .end local v29           #yOffset:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_8

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchMove(Landroid/view/View;)V

    .line 458
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->pokeWakelockWithTimeCheck()V

    .line 462
    const/4 v10, 0x0

    .line 463
    .local v10, diffX:I
    const/4 v11, 0x0

    .line 464
    .local v11, diffY:I
    if-eqz p1, :cond_a

    .line 467
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    div-int/lit8 v17, v30, 0x2

    .line 468
    .local v17, mCircleCenterX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v30

    div-int/lit8 v18, v30, 0x2

    .line 469
    .local v18, mCircleCenterY:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v30, v26, v30

    move/from16 v0, v30

    float-to-int v10, v0

    .line 470
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v30, v27, v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v31

    mul-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v31

    div-int v11, v30, v31

    .line 480
    .end local v17           #mCircleCenterX:I
    .end local v18           #mCircleCenterY:I
    :goto_3
    int-to-double v0, v10

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4000

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    int-to-double v0, v11

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4000

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    add-double v14, v30, v32

    .line 481
    .local v14, distance_square:D
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 482
    .local v12, distance:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v19

    .line 485
    .local v19, min:I
    :goto_4
    div-int/lit8 v30, v19, 0x2

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v24, v0

    .line 486
    .local v24, threshold:D
    div-double v30, v12, v24

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    .line 491
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setCenterImage(Landroid/view/View;D)V

    .line 492
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setInnerCircle(Landroid/view/View;D)V

    .line 494
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3fc999999999999aL

    cmpg-double v30, v30, v32

    if-gez v30, :cond_c

    .line 495
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    .line 543
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    move-wide/from16 v32, v0

    cmpl-double v30, v30, v32

    if-ltz v30, :cond_5

    .line 544
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5

    .line 545
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    .line 546
    if-nez p1, :cond_12

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_1

    .line 475
    .end local v12           #distance:D
    .end local v14           #distance_square:D
    .end local v19           #min:I
    .end local v24           #threshold:D
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mX:F

    move/from16 v30, v0

    sub-float v30, v26, v30

    move/from16 v0, v30

    float-to-int v10, v0

    .line 476
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mY:F

    move/from16 v30, v0

    sub-float v30, v27, v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v31

    mul-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v31

    div-int v11, v30, v31

    goto/16 :goto_3

    .line 482
    .restart local v12       #distance:D
    .restart local v14       #distance_square:D
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v19

    goto/16 :goto_4

    .line 497
    .restart local v19       #min:I
    .restart local v24       #threshold:D
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3fc999999999999aL

    cmpl-double v30, v30, v32

    if-lez v30, :cond_11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    move-wide/from16 v32, v0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_11

    .line 499
    int-to-double v4, v10

    .line 500
    .local v4, absX:D
    mul-int/lit8 v30, v11, -0x1

    move/from16 v0, v30

    int-to-double v6, v0

    .line 501
    .local v6, absY:D
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->radian:D

    .line 502
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->radian:D

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x400921fb54442d18L

    div-double v30, v30, v32

    const-wide v32, 0x4066800000000000L

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x42b4

    add-float v9, v30, v31

    .line 503
    .local v9, degree:F
    const/high16 v30, 0x42a4

    sub-float v21, v9, v30

    .line 504
    .local v21, targetDegree1:F
    const v30, 0x439c8000

    sub-float v22, v9, v30

    .line 505
    .local v22, targetDegree2:F
    const/high16 v30, 0x4282

    sub-float v23, v9, v30

    .line 507
    .local v23, targetDegree3:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    move/from16 v30, v0

    if-eqz v30, :cond_10

    .line 508
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->clearCircleAnimation()V

    .line 512
    const/16 v30, 0x0

    cmpg-float v30, v21, v30

    if-gez v30, :cond_d

    .line 513
    const/high16 v30, 0x43b4

    add-float v21, v21, v30

    .line 514
    :cond_d
    const/16 v30, 0x0

    cmpg-float v30, v22, v30

    if-gez v30, :cond_e

    .line 515
    const/high16 v30, 0x43b4

    add-float v22, v22, v30

    .line 516
    :cond_e
    const/16 v30, 0x0

    cmpg-float v30, v23, v30

    if-gez v30, :cond_f

    .line 517
    const/high16 v30, 0x43b4

    add-float v23, v23, v30

    .line 519
    :cond_f
    new-instance v30, Landroid/animation/AnimatorSet;

    invoke-direct/range {v30 .. v30}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    const/16 v31, 0x6

    move/from16 v0, v31

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const v37, 0x3e99999a

    aput v37, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "rotation"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v21, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/high16 v37, 0x3f00

    aput v37, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "rotation"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v22, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const v37, 0x3f333333

    aput v37, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "rotation"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v23, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-virtual/range {v30 .. v31}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    const-wide/16 v31, 0x258

    invoke-virtual/range {v30 .. v32}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/internal/policy/impl/sec/CircleUnlockView$CubicEaseInOut;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockView$CubicEaseInOut;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V

    invoke-virtual/range {v30 .. v31}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/animation/AnimatorSet;->start()V

    .line 533
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    if-eqz v30, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v30

    if-nez v30, :cond_9

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_5

    .line 539
    .end local v4           #absX:D
    .end local v6           #absY:D
    .end local v9           #degree:F
    .end local v21           #targetDegree1:F
    .end local v22           #targetDegree2:F
    .end local v23           #targetDegree3:F
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    move-wide/from16 v32, v0

    cmpl-double v30, v30, v32

    if-ltz v30, :cond_9

    .line 540
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    goto/16 :goto_5

    .line 552
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto/16 :goto_1

    .line 561
    .end local v10           #diffX:I
    .end local v11           #diffY:I
    .end local v12           #distance:D
    .end local v14           #distance_square:D
    .end local v19           #min:I
    .end local v24           #threshold:D
    :pswitch_3
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->isIgnoreTouch:Z

    .line 567
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->clearCircleAnimation()V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/animation/AnimatorSet;->start()V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_13

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchUp(Landroid/view/View;)V

    .line 581
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v32, v0

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    move-wide/from16 v32, v0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_16

    .line 583
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    move/from16 v30, v0

    if-eqz v30, :cond_14

    .line 584
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    .line 585
    if-nez p1, :cond_15

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 616
    :cond_14
    :goto_6
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mStartLocation:I

    goto/16 :goto_1

    .line 591
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_14

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto :goto_6

    .line 596
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mStartLocation:I

    move/from16 v30, v0

    if-nez v30, :cond_18

    .line 597
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->MISSED_UNLOCK_RELEASE_MARGIN:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpg-float v30, v26, v30

    if-gez v30, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mWindowWidth:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->MISSED_UNLOCK_RELEASE_MARGIN:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v30, v26, v30

    if-lez v30, :cond_14

    .line 598
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    move/from16 v30, v0

    if-eqz v30, :cond_14

    .line 599
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    .line 600
    if-nez p1, :cond_17

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_6

    .line 606
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_14

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto :goto_6

    .line 613
    :cond_18
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    move-wide/from16 v32, v0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_14

    goto/16 :goto_6

    .line 388
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleX:F

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleY:F

    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 788
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 794
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mResumedTimeMillis:J

    .line 795
    return-void
.end method

.method public setCenterImage(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 648
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setCenterImage(Landroid/view/View;D)V

    .line 649
    return-void
.end method

.method protected setCenterImage(Landroid/view/View;D)V
    .locals 3
    .parameter "v"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 652
    if-nez p1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->getUnlockscreenLockImageIdAt(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 661
    :goto_0
    return-void

    .line 657
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 658
    invoke-virtual {p1, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 659
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 660
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setLayout()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 153
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    .line 154
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    .line 157
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->addView(Landroid/view/View;II)V

    .line 162
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 164
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 165
    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    .line 167
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createInnerCircle()V

    .line 168
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createThreeCircles()V

    .line 169
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createCircleCenter()V

    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createArrow()V

    .line 171
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->addToCircleMain()V

    .line 172
    return-void
.end method

.method public setOnCircleTouchListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;)V
    .locals 0
    .parameter "onCircleTouchListener"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    .line 333
    return-void
.end method

.method public setOnCircleUnlockListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;)V
    .locals 0
    .parameter "onCircleUnlockListener"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    .line 321
    return-void
.end method

.method public setStartLocation(I)V
    .locals 0
    .parameter "startLocation"

    .prologue
    .line 798
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mStartLocation:I

    .line 799
    return-void
.end method
