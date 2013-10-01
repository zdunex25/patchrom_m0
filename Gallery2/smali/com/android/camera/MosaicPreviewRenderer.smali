.class public Lcom/android/camera/MosaicPreviewRenderer;
.super Ljava/lang/Object;
.source "MosaicPreviewRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;
    }
.end annotation


# static fields
.field private static final CONFIG_SPEC:[I


# instance fields
.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglHandler:Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mEglThread:Landroid/os/HandlerThread;

.field private mEglThreadBlockVar:Landroid/os/ConditionVariable;

.field private mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private mHeight:I

.field private mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mIsLandscape:Z

.field private mMosaicOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mTransformMatrix:[F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 237
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/MosaicPreviewRenderer;->CONFIG_SPEC:[I

    return-void

    :array_0
    .array-data 0x4
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;IIZ)V
    .locals 2
    .parameter "tex"
    .parameter "w"
    .parameter "h"
    .parameter "isLandscape"

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mIsLandscape:Z

    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mTransformMatrix:[F

    .line 49
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    .line 190
    iput-object p1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mMosaicOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 191
    iput p2, p0, Lcom/android/camera/MosaicPreviewRenderer;->mWidth:I

    .line 192
    iput p3, p0, Lcom/android/camera/MosaicPreviewRenderer;->mHeight:I

    .line 193
    iput-boolean p4, p0, Lcom/android/camera/MosaicPreviewRenderer;->mIsLandscape:Z

    .line 195
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PanoramaRealtimeRenderer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    .line 196
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 197
    new-instance v0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;

    iget-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;-><init>(Lcom/android/camera/MosaicPreviewRenderer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglHandler:Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;

    .line 202
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglHandler:Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->sendMessageSync(I)V

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mMosaicOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/MosaicPreviewRenderer;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/opengles/GL10;)Ljavax/microedition/khronos/opengles/GL10;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/MosaicPreviewRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mWidth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/MosaicPreviewRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mHeight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/MosaicPreviewRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/MosaicPreviewRenderer;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mTransformMatrix:[F

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/MosaicPreviewRenderer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/camera/MosaicPreviewRenderer;->draw()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p1
.end method

.method static synthetic access$800(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/android/camera/MosaicPreviewRenderer;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p1
.end method

.method private static chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v4, 0x0

    .line 246
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 247
    .local v5, numConfig:[I
    sget-object v2, Lcom/android/camera/MosaicPreviewRenderer;->CONFIG_SPEC:[I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    aget v10, v5, v4

    .line 252
    .local v10, numConfigs:I
    if-gtz v10, :cond_1

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    new-array v9, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 257
    .local v9, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v8, Lcom/android/camera/MosaicPreviewRenderer;->CONFIG_SPEC:[I

    move-object v6, p0

    move-object v7, p1

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_2
    aget-object v0, v9, v4

    return-object v0
.end method

.method private draw()V
    .locals 0

    .prologue
    .line 226
    invoke-static {}, Lcom/android/camera/MosaicRenderer;->step()V

    .line 227
    return-void
.end method


# virtual methods
.method public alignFrameSync()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglHandler:Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->sendMessageSync(I)V

    .line 219
    return-void
.end method

.method public getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglHandler:Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->sendEmptyMessage(I)Z

    .line 207
    return-void
.end method

.method public showPreviewFrame()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglHandler:Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->sendEmptyMessage(I)Z

    .line 215
    return-void
.end method

.method public showPreviewFrameSync()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer;->mEglHandler:Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->sendMessageSync(I)V

    .line 211
    return-void
.end method
