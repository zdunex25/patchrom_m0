.class Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;
.super Landroid/os/Handler;
.source "MosaicPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MosaicPreviewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EGLHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MosaicPreviewRenderer;


# direct methods
.method public constructor <init>(Lcom/android/camera/MosaicPreviewRenderer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    .line 70
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    return-void
.end method

.method private doAlignFrame()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$100(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 99
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$100(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mTransformMatrix:[F
    invoke-static {v1}, Lcom/android/camera/MosaicPreviewRenderer;->access$200(Lcom/android/camera/MosaicPreviewRenderer;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 101
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/MosaicRenderer;->setWarping(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mTransformMatrix:[F
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$200(Lcom/android/camera/MosaicPreviewRenderer;)[F

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/MosaicRenderer;->preprocess([F)V

    .line 105
    invoke-static {}, Lcom/android/camera/MosaicRenderer;->transferGPUtoCPU()V

    .line 106
    invoke-static {}, Lcom/android/camera/MosaicRenderer;->updateMatrix()V

    .line 107
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #calls: Lcom/android/camera/MosaicPreviewRenderer;->draw()V
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$300(Lcom/android/camera/MosaicPreviewRenderer;)V

    .line 108
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$600(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/android/camera/MosaicPreviewRenderer;->access$400(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$500(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 109
    return-void
.end method

.method private doInitGL()V
    .locals 8

    .prologue
    .line 125
    iget-object v3, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    #setter for: Lcom/android/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3, v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$602(Lcom/android/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;

    .line 126
    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    iget-object v3, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/android/camera/MosaicPreviewRenderer;->access$600(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    #setter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v2, v3}, Lcom/android/camera/MosaicPreviewRenderer;->access$402(Lcom/android/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 127
    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$400(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 128
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglGetDisplay failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 131
    .local v1, version:[I
    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$600(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v3}, Lcom/android/camera/MosaicPreviewRenderer;->access$400(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglInitialize failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_1
    const-string v2, "MosaicPreviewRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EGL version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 137
    .local v0, attribList:[I
    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    iget-object v3, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/android/camera/MosaicPreviewRenderer;->access$600(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lcom/android/camera/MosaicPreviewRenderer;->access$400(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    #calls: Lcom/android/camera/MosaicPreviewRenderer;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v3, v4}, Lcom/android/camera/MosaicPreviewRenderer;->access$800(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    #setter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v2, v3}, Lcom/android/camera/MosaicPreviewRenderer;->access$702(Lcom/android/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    .line 138
    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    iget-object v3, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/android/camera/MosaicPreviewRenderer;->access$600(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lcom/android/camera/MosaicPreviewRenderer;->access$400(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v5}, Lcom/android/camera/MosaicPreviewRenderer;->access$700(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v5

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    #setter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2, v3}, Lcom/android/camera/MosaicPreviewRenderer;->access$902(Lcom/android/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 141
    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$900(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$900(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_3

    .line 142
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to createContext"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_3
    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    iget-object v3, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/android/camera/MosaicPreviewRenderer;->access$600(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lcom/android/camera/MosaicPreviewRenderer;->access$400(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v5}, Lcom/android/camera/MosaicPreviewRenderer;->access$700(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mMosaicOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v6}, Lcom/android/camera/MosaicPreviewRenderer;->access$1000(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    #setter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2, v3}, Lcom/android/camera/MosaicPreviewRenderer;->access$502(Lcom/android/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 146
    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$500(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$500(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_5

    .line 147
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to createWindowSurface"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_5
    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$600(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v3}, Lcom/android/camera/MosaicPreviewRenderer;->access$400(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v4}, Lcom/android/camera/MosaicPreviewRenderer;->access$500(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v5}, Lcom/android/camera/MosaicPreviewRenderer;->access$500(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v6}, Lcom/android/camera/MosaicPreviewRenderer;->access$900(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 151
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to eglMakeCurrent"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_6
    iget-object v3, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$900(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    #setter for: Lcom/android/camera/MosaicPreviewRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;
    invoke-static {v3, v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$1102(Lcom/android/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/opengles/GL10;)Ljavax/microedition/khronos/opengles/GL10;

    .line 156
    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    new-instance v3, Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/android/camera/MosaicRenderer;->init()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    #setter for: Lcom/android/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v2, v3}, Lcom/android/camera/MosaicPreviewRenderer;->access$102(Lcom/android/camera/MosaicPreviewRenderer;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 157
    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mWidth:I
    invoke-static {v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$1200(Lcom/android/camera/MosaicPreviewRenderer;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mHeight:I
    invoke-static {v3}, Lcom/android/camera/MosaicPreviewRenderer;->access$1300(Lcom/android/camera/MosaicPreviewRenderer;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mIsLandscape:Z
    invoke-static {v4}, Lcom/android/camera/MosaicPreviewRenderer;->access$1400(Lcom/android/camera/MosaicPreviewRenderer;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/MosaicRenderer;->reset(IIZ)V

    .line 158
    return-void

    .line 136
    :array_0
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private doRelease()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$600(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/android/camera/MosaicPreviewRenderer;->access$400(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$500(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 162
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$600(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/android/camera/MosaicPreviewRenderer;->access$400(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$900(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 163
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$600(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/android/camera/MosaicPreviewRenderer;->access$400(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 165
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$600(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/android/camera/MosaicPreviewRenderer;->access$400(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 166
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #setter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v0, v5}, Lcom/android/camera/MosaicPreviewRenderer;->access$502(Lcom/android/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 167
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #setter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v0, v5}, Lcom/android/camera/MosaicPreviewRenderer;->access$902(Lcom/android/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 168
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #setter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v0, v5}, Lcom/android/camera/MosaicPreviewRenderer;->access$402(Lcom/android/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 169
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$100(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 170
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$1500(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 171
    return-void
.end method

.method private doShowPreviewFrame()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$100(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 113
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$100(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mTransformMatrix:[F
    invoke-static {v1}, Lcom/android/camera/MosaicPreviewRenderer;->access$200(Lcom/android/camera/MosaicPreviewRenderer;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 115
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/MosaicRenderer;->setWarping(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mTransformMatrix:[F
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$200(Lcom/android/camera/MosaicPreviewRenderer;)[F

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/MosaicRenderer;->preprocess([F)V

    .line 118
    invoke-static {}, Lcom/android/camera/MosaicRenderer;->updateMatrix()V

    .line 119
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #calls: Lcom/android/camera/MosaicPreviewRenderer;->draw()V
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$300(Lcom/android/camera/MosaicPreviewRenderer;)V

    .line 120
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$600(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/android/camera/MosaicPreviewRenderer;->access$400(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/android/camera/MosaicPreviewRenderer;->access$500(Lcom/android/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 121
    return-void
.end method

.method private releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "st"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 175
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_RELEASE_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 178
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 77
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->doInitGL()V

    .line 78
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$000(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->doShowPreviewFrame()V

    .line 82
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$000(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->doShowPreviewFrame()V

    goto :goto_0

    .line 88
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->doAlignFrame()V

    .line 89
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$000(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 92
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->doRelease()V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public sendMessageSync(I)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$000(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->sendEmptyMessage(I)Z

    .line 184
    iget-object v0, p0, Lcom/android/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/camera/MosaicPreviewRenderer;

    #getter for: Lcom/android/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/MosaicPreviewRenderer;->access$000(Lcom/android/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 185
    return-void
.end method
