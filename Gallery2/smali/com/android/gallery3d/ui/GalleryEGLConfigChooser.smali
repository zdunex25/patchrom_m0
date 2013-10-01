.class Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;
.super Ljava/lang/Object;
.source "GalleryEGLConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static final ATTR_ID:[I

.field private static final ATTR_NAME:[Ljava/lang/String;


# instance fields
.field private final mConfigSpec565:[I

.field private final mConfigSpec888:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 111
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;->ATTR_ID:[I

    .line 122
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "R"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "S"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CAVEAT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;->ATTR_NAME:[Ljava/lang/String;

    return-void

    .line 111
    :array_0
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x26t 0x30t 0x0t 0x0t
        0x28t 0x30t 0x0t 0x0t
        0x27t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;->mConfigSpec565:[I

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;->mConfigSpec888:[I

    return-void

    .line 36
    :array_0
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    .line 44
    :array_1
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9
    .parameter "egl"
    .parameter "display"
    .parameter "configs"

    .prologue
    const/16 v8, 0x3026

    const/4 v7, 0x0

    .line 77
    const/4 v3, 0x0

    .line 78
    .local v3, result:Ljavax/microedition/khronos/egl/EGLConfig;
    const v1, 0x7fffffff

    .line 79
    .local v1, minStencil:I
    const/4 v5, 0x1

    new-array v4, v5, [I

    .line 84
    .local v4, value:[I
    const/4 v0, 0x0

    .local v0, i:I
    array-length v2, p3

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 85
    sget-boolean v5, Lcom/android/gallery3d/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-nez v5, :cond_1

    .line 86
    aget-object v5, p3, v0

    const/16 v6, 0x3024

    invoke-interface {p1, p2, v5, v6, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    aget v5, v4, v7

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 84
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    aget-object v5, p3, v0

    invoke-interface {p1, p2, v5, v8, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    aget v5, v4, v7

    if-eqz v5, :cond_0

    .line 95
    aget v5, v4, v7

    if-ge v5, v1, :cond_0

    .line 96
    aget v1, v4, v7

    .line 97
    aget-object v3, p3, v0

    goto :goto_1

    .line 100
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eglGetConfigAttrib error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 104
    :cond_3
    if-nez v3, :cond_4

    aget-object v3, p3, v7

    .line 105
    :cond_4
    invoke-interface {p1, p2, v3, v8, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 107
    invoke-direct {p0, p1, p2, v3}, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;->logConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 108
    return-object v3
.end method

.method private logConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6
    .parameter "egl"
    .parameter "display"
    .parameter "config"

    .prologue
    .line 127
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 128
    .local v2, value:[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    sget-object v3, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;->ATTR_ID:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 130
    sget-object v3, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;->ATTR_ID:[I

    aget v3, v3, v0

    invoke-interface {p1, p2, p3, v3, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;->ATTR_NAME:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    const-string v3, "GalleryEGLConfigChooser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Config chosen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v4, 0x0

    .line 54
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 55
    .local v5, numConfig:[I
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;->mConfigSpec888:[I

    .line 57
    .local v2, mConfigSpec:[I
    :goto_0
    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    .end local v2           #mConfigSpec:[I
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;->mConfigSpec565:[I

    goto :goto_0

    .line 61
    .restart local v2       #mConfigSpec:[I
    :cond_1
    aget v0, v5, v4

    if-gtz v0, :cond_2

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    aget v0, v5, v4

    new-array v3, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 66
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v4, v3

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 71
    :cond_3
    invoke-direct {p0, p1, p2, v3}, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method
