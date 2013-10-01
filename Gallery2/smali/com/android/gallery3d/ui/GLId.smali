.class public Lcom/android/gallery3d/ui/GLId;
.super Ljava/lang/Object;
.source "GLId.java"


# static fields
.field static sNextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput v0, Lcom/android/gallery3d/ui/GLId;->sNextId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 2
    .parameter "gl"
    .parameter "n"
    .parameter "buffers"
    .parameter "offset"

    .prologue
    .line 43
    const-class v0, Lcom/android/gallery3d/ui/GLId;

    monitor-enter v0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    return-void

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 2
    .parameter "gl"
    .parameter "n"
    .parameter "textures"
    .parameter "offset"

    .prologue
    .line 39
    const-class v0, Lcom/android/gallery3d/ui/GLId;

    monitor-enter v0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v0

    return-void

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized glGenBuffers(I[II)V
    .locals 5
    .parameter "n"
    .parameter "buffers"
    .parameter "offset"

    .prologue
    .line 33
    const-class v2, Lcom/android/gallery3d/ui/GLId;

    monitor-enter v2

    move v0, p0

    .end local p0
    .local v0, n:I
    :goto_0
    add-int/lit8 p0, v0, -0x1

    .end local v0           #n:I
    .restart local p0
    if-lez v0, :cond_0

    .line 34
    add-int v1, p2, p0

    :try_start_0
    sget v3, Lcom/android/gallery3d/ui/GLId;->sNextId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/android/gallery3d/ui/GLId;->sNextId:I

    aput v3, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p0

    .end local p0
    .restart local v0       #n:I
    goto :goto_0

    .line 36
    .end local v0           #n:I
    .restart local p0
    :cond_0
    monitor-exit v2

    return-void

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized glGenTextures(I[II)V
    .locals 5
    .parameter "n"
    .parameter "textures"
    .parameter "offset"

    .prologue
    .line 27
    const-class v2, Lcom/android/gallery3d/ui/GLId;

    monitor-enter v2

    move v0, p0

    .end local p0
    .local v0, n:I
    :goto_0
    add-int/lit8 p0, v0, -0x1

    .end local v0           #n:I
    .restart local p0
    if-lez v0, :cond_0

    .line 28
    add-int v1, p2, p0

    :try_start_0
    sget v3, Lcom/android/gallery3d/ui/GLId;->sNextId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/android/gallery3d/ui/GLId;->sNextId:I

    aput v3, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p0

    .end local p0
    .restart local v0       #n:I
    goto :goto_0

    .line 30
    .end local v0           #n:I
    .restart local p0
    :cond_0
    monitor-exit v2

    return-void

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
