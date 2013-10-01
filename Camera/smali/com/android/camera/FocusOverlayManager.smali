.class public Lcom/android/camera/FocusOverlayManager;
.super Ljava/lang/Object;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusOverlayManager$MainHandler;,
        Lcom/android/camera/FocusOverlayManager$Listener;
    }
.end annotation


# instance fields
.field private mAeAwbLock:Z

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusMode:Ljava/lang/String;

.field private mFocusTime:I

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field mListener:Lcom/android/camera/FocusOverlayManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPieRenderer:Lcom/android/camera/ui/PieRenderer;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;)V
    .locals 1
    .parameter "preferences"
    .parameter "defaultFocusModes"
    .parameter "parameters"
    .parameter "listener"
    .parameter "mirror"
    .parameter "looper"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 128
    new-instance v0, Lcom/android/camera/FocusOverlayManager$MainHandler;

    invoke-direct {v0, p0, p6}, Lcom/android/camera/FocusOverlayManager$MainHandler;-><init>(Lcom/android/camera/FocusOverlayManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    .line 130
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 131
    iput-object p2, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 132
    invoke-virtual {p0, p3}, Lcom/android/camera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 133
    iput-object p4, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    .line 134
    invoke-virtual {p0, p5}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FocusOverlayManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    return-void
.end method

.method private autoFocus()V
    .locals 2

    .prologue
    .line 407
    const-string v0, "CAM_FocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->autoFocus()V

    .line 409
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 412
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 414
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    return-void
.end method

.method private calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 524
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 525
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 526
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v3

    .line 527
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    .line 529
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 530
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 531
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 532
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 418
    const-string v0, "CAM_FocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 424
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 425
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 426
    :cond_0
    iput v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 427
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 428
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 432
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iput v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 434
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    :cond_0
    return-void
.end method

.method private initializeFocusAreas(IIIIII)V
    .locals 9
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    .line 323
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_0
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/FocusOverlayManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 329
    return-void
.end method

.method private initializeMeteringAreas(IIIIII)V
    .locals 9
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    .line 336
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_0
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/FocusOverlayManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 344
    return-void
.end method

.method private lockAeAwbIfNeeded()V
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 193
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 195
    :cond_0
    return-void
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMatrix()V
    .locals 5

    .prologue
    .line 178
    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 179
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 180
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mMirror:Z

    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mDisplayOrientation:I

    iget v3, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 185
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 186
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    .line 188
    .end local v0           #matrix:Landroid/graphics/Matrix;
    :cond_0
    return-void

    .line 186
    .restart local v0       #matrix:Landroid/graphics/Matrix;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unlockAeAwbIfNeeded()V
    .locals 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 200
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 202
    :cond_0
    return-void
.end method


# virtual methods
.method public doSnap()V
    .locals 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 242
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    goto :goto_0

    .line 243
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 247
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_0

    .line 248
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 439
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 472
    :goto_0
    return-object v3

    .line 440
    :cond_0
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 442
    .local v2, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->noFocusModeChangeForTouch()Z

    move-result v3

    if-nez v3, :cond_3

    .line 445
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 462
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 465
    const-string v3, "auto"

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 467
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 472
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 448
    :cond_3
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_focusmode_key"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 452
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 453
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 454
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 455
    .local v1, mode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 456
    iput-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 453
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 469
    .end local v0           #i:I
    .end local v1           #mode:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method getFocusState()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 539
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 543
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(ZZ)V
    .locals 4
    .parameter "focused"
    .parameter "shutterButtonPressed"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 263
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 267
    if-eqz p1, :cond_1

    .line 268
    iput v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 272
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 273
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    .line 297
    :cond_0
    :goto_1
    return-void

    .line 270
    :cond_1
    iput v3, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_0

    .line 274
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 278
    if-eqz p1, :cond_4

    .line 279
    iput v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 283
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 286
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusTime:I

    if-eqz v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 289
    :cond_3
    if-eqz p2, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->lockAeAwbIfNeeded()V

    goto :goto_1

    .line 281
    :cond_4
    iput v3, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_2

    .line 293
    :cond_5
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onAutoFocusMoving(Z)V
    .locals 2
    .parameter "moving"

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->clear()V

    goto :goto_0

    .line 309
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    .line 311
    if-eqz p1, :cond_3

    .line 312
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showStart()V

    goto :goto_0

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->showSuccess(Z)V

    goto :goto_0
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 404
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 393
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 398
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 399
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 400
    return-void
.end method

.method public onShutterDown()V
    .locals 3

    .prologue
    .line 205
    iget-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x0

    .line 208
    .local v0, autoFocusCalled:Z
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 211
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->autoFocus()V

    .line 212
    const/4 v0, 0x1

    .line 216
    :cond_2
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->lockAeAwbIfNeeded()V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 232
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->unlockAeAwbIfNeeded()V

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    .line 347
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 352
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->getSize()I

    move-result v1

    .line 356
    .local v1, focusWidth:I
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->getSize()I

    move-result v2

    .line 357
    .local v2, focusHeight:I
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget v5, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    .line 360
    .local v5, previewWidth:I
    iget v6, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    .line 362
    .local v6, previewHeight:I
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_4

    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 363
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusOverlayManager;->initializeFocusAreas(IIIIII)V

    .line 367
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_5

    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 368
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusOverlayManager;->initializeMeteringAreas(IIIIII)V

    .line 373
    :cond_5
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PieRenderer;->setFocus(II)V

    .line 376
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->stopFaceDetection()V

    .line 379
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 380
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_6

    .line 381
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->autoFocus()V

    goto :goto_0

    .line 383
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 384
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusTime:I

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusTime:I

    int-to-long v3, v3

    invoke-virtual {v0, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 552
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    return-void
.end method

.method public resetTouchFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 513
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->clear()V

    .line 518
    iput-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    .line 519
    iput-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 555
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 556
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "displayOrientation"

    .prologue
    .line 169
    iput p1, p0, Lcom/android/camera/FocusOverlayManager;->mDisplayOrientation:I

    .line 170
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->setMatrix()V

    .line 171
    return-void
.end method

.method public setFaceView(Lcom/android/camera/ui/FaceView;)V
    .locals 0
    .parameter "faceView"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 175
    return-void
.end method

.method public setFocusRenderer(Lcom/android/camera/ui/PieRenderer;)V
    .locals 1
    .parameter "renderer"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 139
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    .line 140
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocusTime(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 259
    iput p1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusTime:I

    .line 260
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mMirror:Z

    .line 165
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->setMatrix()V

    .line 166
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 149
    invoke-static {p1}, Lcom/android/camera/Util;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    .line 150
    invoke-static {p1}, Lcom/android/camera/Util;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringAreaSupported:Z

    .line 151
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setPreviewSize(II)V
    .locals 1
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 156
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 157
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    .line 158
    iput p2, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    .line 159
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->setMatrix()V

    .line 161
    :cond_1
    return-void
.end method

.method public updateFocusUI()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 484
    iget-boolean v4, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v4, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v4}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 487
    .local v0, faceExists:Z
    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 489
    .local v1, focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :goto_2
    iget v4, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v4, :cond_5

    .line 490
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_4

    .line 491
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    goto :goto_0

    .end local v0           #faceExists:Z
    .end local v1           #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_2
    move v0, v3

    .line 486
    goto :goto_1

    .line 487
    .restart local v0       #faceExists:Z
    :cond_3
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    goto :goto_2

    .line 496
    .restart local v1       #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_4
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 498
    :cond_5
    iget v4, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-eq v4, v2, :cond_6

    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    .line 499
    :cond_6
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 501
    :cond_7
    const-string v2, "continuous-picture"

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 503
    invoke-interface {v1, v3}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    goto :goto_0

    .line 504
    :cond_8
    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    .line 505
    invoke-interface {v1, v3}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    goto :goto_0

    .line 506
    :cond_9
    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    .line 507
    invoke-interface {v1, v3}, Lcom/android/camera/ui/FocusIndicator;->showFail(Z)V

    goto :goto_0
.end method
