.class public Lcom/android/gallery3d/ui/SynchronizedHandler;
.super Landroid/os/Handler;
.source "SynchronizedHandler.java"


# instance fields
.field private final mRoot:Lcom/android/gallery3d/ui/GLRoot;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRoot;

    iput-object v0, p0, Lcom/android/gallery3d/ui/SynchronizedHandler;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    .line 30
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/SynchronizedHandler;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 36
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/SynchronizedHandler;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 40
    return-void

    .line 38
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SynchronizedHandler;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method
