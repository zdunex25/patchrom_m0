.class public Lcom/android/camera/CameraActivity;
.super Lcom/android/camera/ActivityBase;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/ui/CameraSwitcher$CameraSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraActivity$MyOrientationEventListener;
    }
.end annotation


# static fields
.field private static final DRAW_IDS:[I


# instance fields
.field private mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

.field private mControlsBackground:Landroid/view/View;

.field mCurrentModule:Lcom/android/camera/CameraModule;

.field private mCurrentModuleIndex:I

.field private mDown:Landroid/view/MotionEvent;

.field private mDrawables:[Landroid/graphics/drawable/Drawable;

.field private mFadeInCameraScreenNail:Ljava/lang/Runnable;

.field private mFrame:Landroid/widget/FrameLayout;

.field private mLastRawOrientation:I

.field private mOnFrameDrawn:Ljava/lang/Runnable;

.field private mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

.field private mShutter:Lcom/android/camera/ShutterButton;

.field private mShutterSwitcher:Landroid/view/View;

.field private mSwitcher:Lcom/android/camera/ui/CameraSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/CameraActivity;->DRAW_IDS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xd8t 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xd9t 0x0t 0x2t 0x7ft
        0xdet 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/CameraActivity;->mLastRawOrientation:I

    .line 184
    new-instance v0, Lcom/android/camera/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$2;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mOnFrameDrawn:Ljava/lang/Runnable;

    .line 192
    new-instance v0, Lcom/android/camera/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$3;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mFadeInCameraScreenNail:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/CameraActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/camera/CameraActivity;->mLastRawOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->doChangeCamera(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/CameraActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFadeInCameraScreenNail:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/CameraActivity;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/CameraActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private canReuseScreenNail()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 428
    iget v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeModule(Lcom/android/camera/CameraModule;)V
    .locals 1
    .parameter "module"

    .prologue
    .line 216
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onPauseBeforeSuper()V

    .line 217
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onPauseAfterSuper()V

    .line 218
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 219
    return-void
.end method

.method private doChangeCamera(I)V
    .locals 3
    .parameter "i"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->canReuseScreenNail()Z

    move-result v0

    .line 161
    .local v0, canReuse:Z
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->keep()V

    .line 162
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v1}, Lcom/android/camera/CameraActivity;->closeModule(Lcom/android/camera/CameraModule;)V

    .line 163
    iput p1, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    .line 164
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/CameraActivity;->openModule(Lcom/android/camera/CameraModule;Z)V

    .line 179
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget v2, p0, Lcom/android/camera/CameraActivity;->mLastRawOrientation:I

    invoke-interface {v1, v2}, Lcom/android/camera/CameraModule;->onOrientationChanged(I)V

    .line 180
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraScreenNail;->setAlpha(F)V

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mOnFrameDrawn:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraScreenNail;->setOnFrameDrawnOneShot(Ljava/lang/Runnable;)V

    .line 182
    return-void

    .line 166
    :pswitch_0
    new-instance v1, Lcom/android/camera/VideoModule;

    invoke-direct {v1}, Lcom/android/camera/VideoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_0

    .line 169
    :pswitch_1
    new-instance v1, Lcom/android/camera/PhotoModule;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_0

    .line 172
    :pswitch_2
    new-instance v1, Lcom/android/camera/PanoramaModule;

    invoke-direct {v1}, Lcom/android/camera/PanoramaModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_0

    .line 175
    :pswitch_3
    invoke-static {}, Lcom/android/gallery3d/util/LightCycleHelper;->createPanoramaModule()Lcom/android/camera/CameraModule;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private openModule(Lcom/android/camera/CameraModule;Z)V
    .locals 3
    .parameter "module"
    .parameter "canReuse"

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->canReuseScreenNail()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, p0, v2, v0}, Lcom/android/camera/CameraModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V

    .line 210
    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    .line 211
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onResumeBeforeSuper()V

    .line 212
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onResumeAfterSuper()V

    .line 213
    return-void

    :cond_0
    move v0, v1

    .line 209
    goto :goto_0
.end method


# virtual methods
.method public cancelActivityTouchHandling()V
    .locals 2

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDown:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDown:Landroid/view/MotionEvent;

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 368
    .local v0, cancel:Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 369
    invoke-super {p0, v0}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 371
    .end local v0           #cancel:Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mDown:Landroid/view/MotionEvent;

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSwitcher;->isInsidePopup(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/CameraSwitcher;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 381
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mShutterSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutoFocusTime()J
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mAutoFocusTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    return-object v0
.end method

.method public getCaptureStartTime()J
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getJpegCallbackFinishTime()J
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getPictureDisplayedToJpegCallbackTime()J
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getShutterButton()Lcom/android/camera/ShutterButton;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mShutter:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method public getShutterLag()J
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mShutterLag:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getShutterToPictureDisplayedTime()J
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public hideSwitcher()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSwitcher;->closePopup()V

    .line 241
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSwitcher;->setVisibility(I)V

    .line 242
    return-void
.end method

.method public hideUI()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mControlsBackground:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 228
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mShutter:Lcom/android/camera/ShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 229
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    .line 94
    const v4, 0x7f10000d

    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/CameraActivity;->mControlsBackground:Landroid/view/View;

    .line 95
    const v4, 0x7f10000c

    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/CameraActivity;->mShutterSwitcher:Landroid/view/View;

    .line 96
    const v4, 0x7f10000e

    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ShutterButton;

    iput-object v4, p0, Lcom/android/camera/CameraActivity;->mShutter:Lcom/android/camera/ShutterButton;

    .line 97
    const v4, 0x7f10000f

    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/CameraSwitcher;

    iput-object v4, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    .line 98
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    sget-object v5, Lcom/android/camera/CameraActivity;->DRAW_IDS:[I

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/CameraSwitcher;->setDrawIds([I)V

    .line 99
    invoke-static {p0}, Lcom/android/gallery3d/util/LightCycleHelper;->hasLightCycleCapture(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/camera/CameraActivity;->DRAW_IDS:[I

    array-length v4, v4

    :goto_0
    new-array v0, v4, [I

    .line 101
    .local v0, drawids:[I
    const/4 v2, 0x0

    .line 102
    .local v2, ix:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 103
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    invoke-static {p0}, Lcom/android/gallery3d/util/LightCycleHelper;->hasLightCycleCapture(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 102
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    .end local v0           #drawids:[I
    .end local v1           #i:I
    .end local v2           #ix:I
    :cond_0
    sget-object v4, Lcom/android/camera/CameraActivity;->DRAW_IDS:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 106
    .restart local v0       #drawids:[I
    .restart local v1       #i:I
    .restart local v2       #ix:I
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2           #ix:I
    .local v3, ix:I
    sget-object v4, Lcom/android/camera/CameraActivity;->DRAW_IDS:[I

    aget v4, v4, v1

    aput v4, v0, v2

    move v2, v3

    .end local v3           #ix:I
    .restart local v2       #ix:I
    goto :goto_2

    .line 108
    :cond_2
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    invoke-virtual {v4, v0}, Lcom/android/camera/ui/CameraSwitcher;->setDrawIds([I)V

    .line 109
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    invoke-virtual {v4, p0}, Lcom/android/camera/ui/CameraSwitcher;->setSwitchListener(Lcom/android/camera/ui/CameraSwitcher$CameraSwitchListener;)V

    .line 110
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    iget v5, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/CameraSwitcher;->setCurrentIndex(I)V

    .line 111
    return-void
.end method

.method protected installIntentFilter()V
    .locals 1

    .prologue
    .line 320
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->installIntentFilter()V

    .line 321
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->installIntentFilter()V

    .line 322
    return-void
.end method

.method public isInCameraApp()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    return v0
.end method

.method public isPanoramaActivity()Z
    .locals 2

    .prologue
    .line 434
    iget v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/VideoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule;->isRecording()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x2

    .line 328
    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/gallery3d/app/PhotoPage;

    if-nez v0, :cond_0

    .line 330
    const/4 p2, 0x0

    .line 332
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 334
    if-ne p2, v1, :cond_1

    .line 335
    const/4 p2, 0x0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/CameraModule;->onActivityResult(IILandroid/content/Intent;)V

    .line 338
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    .line 351
    :cond_0
    return-void
.end method

.method public onCameraSelected(I)V
    .locals 6
    .parameter "i"

    .prologue
    const/4 v5, 0x1

    .line 134
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    if-eq p1, v1, :cond_0

    .line 136
    iput-boolean v5, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    .line 137
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    .line 138
    .local v0, screenNail:Lcom/android/camera/CameraScreenNail;
    if-eqz v0, :cond_3

    .line 139
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 142
    :cond_2
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getAlpha()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x0

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    .line 144
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/camera/CameraActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/CameraActivity$1;-><init>(Lcom/android/camera/CameraActivity;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 151
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 153
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->doChangeCamera(I)V

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onCaptureTextureCopied()V

    .line 408
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    const v3, 0x7f10000a

    invoke-virtual {p0, v3}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 260
    .local v0, appRoot:Landroid/view/ViewGroup;
    const v3, 0x7f10000c

    invoke-virtual {p0, v3}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 261
    .local v1, cameraControlsView:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 265
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040008

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 266
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->init()V

    .line 268
    iget-boolean v3, p0, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v3, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 273
    :goto_0
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v3, p1}, Lcom/android/camera/CameraModule;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 274
    return-void

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->hideUI()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    .line 72
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v1, 0x7f040007

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->setContentView(I)V

    .line 74
    const v1, 0x7f10000b

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    .line 75
    sget-object v1, Lcom/android/camera/CameraActivity;->DRAW_IDS:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 76
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/camera/CameraActivity;->DRAW_IDS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraActivity;->DRAW_IDS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->init()V

    .line 80
    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    :cond_1
    new-instance v1, Lcom/android/camera/VideoModule;

    invoke-direct {v1}, Lcom/android/camera/VideoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 83
    iput v4, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    .line 88
    :goto_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-interface {v1, p0, v2, v4}, Lcom/android/camera/CameraModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V

    .line 89
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    iget v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraSwitcher;->setCurrentIndex(I)V

    .line 90
    new-instance v1, Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    invoke-direct {v1, p0, p0}, Lcom/android/camera/CameraActivity$MyOrientationEventListener;-><init>(Lcom/android/camera/CameraActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    .line 91
    return-void

    .line 85
    :cond_2
    new-instance v1, Lcom/android/camera/PhotoModule;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    goto :goto_1
.end method

.method protected onFullScreenChanged(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 296
    if-eqz p1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 301
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onFullScreenChanged(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->onFullScreenChanged(Z)V

    .line 303
    return-void

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->hideUI()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/CameraModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/CameraModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->clearActivityResult()V

    .line 316
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    .line 279
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->disable()V

    .line 280
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onPauseBeforeSuper()V

    .line 281
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 282
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onPauseAfterSuper()V

    .line 283
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onPreviewTextureCopied()V

    .line 403
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    .line 288
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->enable()V

    .line 289
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onResumeBeforeSuper()V

    .line 290
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 291
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onResumeAfterSuper()V

    .line 292
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onShowSwitcherPopup()V

    .line 206
    return-void
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/CameraModule;->onSingleTapUp(Landroid/view/View;II)V

    .line 344
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    .line 308
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onStop()V

    .line 309
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->clearTasks()V

    .line 310
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 412
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 413
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onUserInteraction()V

    .line 414
    return-void
.end method

.method public showSwitcher()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->needsSwitcher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSwitcher:Lcom/android/camera/ui/CameraSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSwitcher;->setVisibility(I)V

    .line 248
    :cond_0
    return-void
.end method

.method public showUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mControlsBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 234
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mShutter:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mShutter:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestLayout()V

    .line 237
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 388
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/camera/ProxyLauncher;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 390
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 391
    invoke-super {p0, v0, p2}, Lcom/android/camera/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 392
    return-void
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public updateCameraAppView()V
    .locals 1

    .prologue
    .line 423
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->updateCameraAppView()V

    .line 424
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->updateCameraAppView()V

    .line 425
    return-void
.end method

.method protected updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->updateStorageHintOnResume()Z

    move-result v0

    return v0
.end method
