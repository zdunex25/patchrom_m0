.class public abstract Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/gallery3d/ui/ScreenNail;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field protected mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field private mHasTexture:Z

.field private mHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTransform:[F

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 41
    return-void
.end method

.method private static releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "st"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 64
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_RELEASE_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 67
    :cond_0
    return-void
.end method

.method private static setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .parameter "st"
    .parameter "width"
    .parameter "height"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_DEFALT_BUFFER_SIZE:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    const v1, 0x8d65

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ExtTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/ExtTexture;->setSize(II)V

    .line 46
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 49
    monitor-enter p0

    .line 50
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 51
    monitor-exit p0

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 9
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 123
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 113
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 114
    div-int/lit8 v0, p4, 0x2

    add-int v7, p2, v0

    .line 115
    .local v7, cx:I
    div-int/lit8 v0, p5, 0x2

    add-int v8, p3, v0

    .line 116
    .local v8, cy:I
    int-to-float v0, v7

    int-to-float v1, v8

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 117
    const/high16 v0, 0x3f80

    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 118
    neg-int v0, v7

    int-to-float v0, v0

    neg-int v1, v8

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 120
    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;[FIIII)V

    .line 121
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 122
    monitor-exit p0

    goto :goto_0

    .end local v7           #cx:I
    .end local v8           #cy:I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    monitor-enter p0

    .line 75
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ExtTexture;->recycle()V

    .line 78
    iput-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 80
    iput-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 81
    return-void

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    .line 85
    iput p2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    .line 86
    return-void
.end method

.method protected updateTransformMatrix([F)V
    .locals 0
    .parameter "matrix"

    .prologue
    .line 130
    return-void
.end method
