.class public Lcom/android/camera/CameraScreenNail;
.super Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;
.source "CameraScreenNail.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;,
        Lcom/android/camera/CameraScreenNail$Listener;
    }
.end annotation


# instance fields
.field private mAlpha:F

.field private mAnimState:I

.field private mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field private mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

.field private mEnableAspectRatioClamping:Z

.field private mFirstFrameArrived:Z

.field private mFullScreen:Z

.field private mListener:Lcom/android/camera/CameraScreenNail$Listener;

.field private mLock:Ljava/lang/Object;

.field private mOnFrameDrawnListener:Ljava/lang/Runnable;

.field private mOneTimeFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

.field private mRenderHeight:I

.field private mRenderWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field private mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

.field private final mTextureTransformMatrix:[F

.field private mUncroppedRenderHeight:I

.field private mUncroppedRenderWidth:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraScreenNail$Listener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 95
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;-><init>()V

    .line 57
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    .line 60
    new-instance v0, Lcom/android/camera/CaptureAnimManager;

    invoke-direct {v0}, Lcom/android/camera/CaptureAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    .line 61
    new-instance v0, Lcom/android/camera/SwitchAnimManager;

    invoke-direct {v0}, Lcom/android/camera/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    .line 62
    iput v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    .line 77
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mScaleX:F

    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mScaleY:F

    .line 79
    iput-boolean v2, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 80
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAlpha:F

    .line 96
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    .line 97
    return-void
.end method

.method private callbackIfNeeded()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    invoke-interface {v0, p0}, Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;->onFrameDrawn(Lcom/android/camera/CameraScreenNail;)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    .line 275
    :cond_0
    return-void
.end method

.method private copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 362
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v5

    .line 363
    .local v5, width:I
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v6

    .line 364
    .local v6, height:I
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 367
    const/4 v0, 0x0

    int-to-float v1, v6

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 368
    const/high16 v0, -0x4080

    invoke-interface {p1, v2, v0, v2}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 369
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 370
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraScreenNail;->updateTransformMatrix([F)V

    .line 371
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    move-object v0, p1

    move v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;[FIIII)V

    .line 373
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endRenderTarget()V

    .line 374
    return-void
.end method

.method private getTextureHeight()I
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getHeight()I

    move-result v0

    return v0
.end method

.method private getTextureWidth()I
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getWidth()I

    move-result v0

    return v0
.end method

.method private setPreviewLayoutSize(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 161
    const-string v0, "CAM_ScreenNail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preview layout size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput p1, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    .line 163
    iput p2, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    .line 164
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->updateRenderSize()V

    .line 165
    return-void
.end method

.method private updateRenderSize()V
    .locals 6

    .prologue
    .line 168
    iget-boolean v3, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-nez v3, :cond_0

    .line 169
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mScaleY:F

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mScaleX:F

    .line 170
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderWidth:I

    .line 171
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderHeight:I

    .line 172
    const-string v3, "CAM_ScreenNail"

    const-string v4, "aspect ratio clamping disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v3

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 183
    .local v0, aspectRatio:F
    :goto_1
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    if-le v3, v4, :cond_2

    .line 184
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v2, v3

    .line 186
    .local v2, scaledTextureWidth:F
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v1, v3

    .line 194
    .local v1, scaledTextureHeight:F
    :goto_2
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mScaleX:F

    .line 195
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mScaleY:F

    .line 196
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderWidth:I

    .line 197
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderHeight:I

    .line 198
    const-string v3, "CAM_ScreenNail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aspect ratio clamping enabled, surfaceTexture scale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/CameraScreenNail;->mScaleX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/CameraScreenNail;->mScaleY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    .end local v0           #aspectRatio:F
    .end local v1           #scaledTextureHeight:F
    .end local v2           #scaledTextureWidth:F
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .restart local v0       #aspectRatio:F
    goto :goto_1

    .line 189
    :cond_2
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v2, v3

    .line 191
    .restart local v2       #scaledTextureWidth:F
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v1, v3

    .restart local v1       #scaledTextureHeight:F
    goto :goto_2
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 5

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 205
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->acquireSurfaceTexture()V

    .line 206
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 207
    monitor-exit v1

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateCapture(I)V
    .locals 2
    .parameter "displayRotation"

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/CaptureAnimManager;->setOrientation(I)V

    .line 239
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateFlashAndSlide()V

    .line 240
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 241
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 242
    monitor-exit v1

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateFlash(I)V
    .locals 2
    .parameter "displayRotation"

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/CaptureAnimManager;->setOrientation(I)V

    .line 248
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateFlash()V

    .line 249
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 250
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 251
    monitor-exit v1

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSlide()V
    .locals 4

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 261
    const-string v0, "CAM_ScreenNail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot animateSlide outside of animateCapture! Animation state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    monitor-exit v1

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateSlide()V

    .line 266
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 267
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSwitchCamera()V
    .locals 3

    .prologue
    .line 226
    const-string v0, "CAM_ScreenNail"

    const-string v1, "animateSwitchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 231
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 233
    :cond_0
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public copyTexture()V
    .locals 2

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 221
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 222
    monitor-exit v1

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 286
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 287
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 16
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 291
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 292
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 293
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v14

    .line 294
    .local v14, surfaceTexture:Landroid/graphics/SurfaceTexture;
    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v4, :cond_2

    :cond_1
    monitor-exit v15

    .line 359
    :goto_0
    return-void

    .line 295
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    if-eqz v4, :cond_3

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 297
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    .line 299
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getAlpha()F

    move-result v13

    .line 300
    .local v13, oldAlpha:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAlpha:F

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 302
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    packed-switch v4, :pswitch_data_0

    .line 334
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    .line 336
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 337
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CameraScreenNail;->mFullScreen:Z

    if-nez v4, :cond_6

    .line 339
    const/4 v12, 0x0

    .line 347
    .local v12, drawn:Z
    :goto_2
    if-eqz v12, :cond_8

    .line 348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 356
    .end local v12           #drawn:Z
    :cond_5
    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 357
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->callbackIfNeeded()V

    .line 358
    monitor-exit v15

    goto :goto_0

    .end local v13           #oldAlpha:F
    .end local v14           #surfaceTexture:Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v4

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 304
    .restart local v13       #oldAlpha:F
    .restart local v14       #surfaceTexture:Landroid/graphics/SurfaceTexture;
    :pswitch_1
    :try_start_1
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_1

    .line 307
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Lcom/android/camera/SwitchAnimManager;->setReviewDrawingSize(II)V

    .line 309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->onPreviewTextureCopied()V

    .line 310
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 318
    :pswitch_3
    invoke-virtual {v14}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Lcom/android/camera/SwitchAnimManager;->drawDarkPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    goto :goto_1

    .line 323
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v4}, Lcom/android/camera/SwitchAnimManager;->startAnimation()V

    .line 324
    const/4 v4, 0x7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    goto :goto_1

    .line 327
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->onCaptureTextureCopied()V

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/camera/CaptureAnimManager;->startAnimation(IIII)V

    .line 330
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    goto/16 :goto_1

    .line 341
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/camera/CaptureAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v12

    .restart local v12       #drawn:Z
    goto/16 :goto_2

    .line 344
    .end local v12           #drawn:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/camera/SwitchAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v12

    .restart local v12       #drawn:Z
    goto/16 :goto_2

    .line 352
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 353
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public enableAspectRatioClamping()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 157
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->updateRenderSize()V

    .line 158
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAlpha:F

    monitor-exit v1

    return v0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getUncroppedRenderHeight()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderHeight:I

    return v0
.end method

.method public getUncroppedRenderWidth()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v0

    goto :goto_0
.end method

.method public noDraw()V
    .locals 2

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 380
    monitor-exit v1

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surfaceTexture"

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 394
    monitor-exit v1

    .line 406
    :goto_0
    return-void

    .line 396
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 397
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-eqz v0, :cond_2

    .line 398
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 399
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 405
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 387
    monitor-exit v1

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->releaseSurfaceTexture()V

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 215
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_0
    iput p1, p0, Lcom/android/camera/CameraScreenNail;->mAlpha:F

    .line 441
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 442
    monitor-exit v1

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFullScreen(Z)V
    .locals 2
    .parameter "full"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/CameraScreenNail;->mFullScreen:Z

    .line 102
    monitor-exit v1

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnFrameDrawnOneShot(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "run"

    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    .line 429
    monitor-exit v1

    .line 430
    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOneTimeOnFrameDrawnListener(Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 421
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 422
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    .line 423
    monitor-exit v1

    .line 424
    return-void

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/SwitchAnimManager;->setPreviewFrameLayoutSize(II)V

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraScreenNail;->setPreviewLayoutSize(II)V

    .line 416
    monitor-exit v1

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setSize(II)V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 141
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    if-nez v0, :cond_0

    .line 142
    iput p1, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    .line 143
    iput p2, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->updateRenderSize()V

    .line 146
    return-void
.end method

.method protected updateTransformMatrix([F)V
    .locals 6
    .parameter "matrix"

    .prologue
    const/high16 v0, 0x3f00

    const/4 v5, 0x0

    const/high16 v4, -0x4100

    const/4 v3, 0x0

    .line 279
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 280
    invoke-static {p1, v3, v0, v0, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 281
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mScaleX:F

    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mScaleY:F

    const/high16 v2, 0x3f80

    invoke-static {p1, v3, v0, v1, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 282
    invoke-static {p1, v3, v4, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 283
    return-void
.end method
