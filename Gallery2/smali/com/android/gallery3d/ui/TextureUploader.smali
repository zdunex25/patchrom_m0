.class public Lcom/android/gallery3d/ui/TextureUploader;
.super Ljava/lang/Object;
.source "TextureUploader.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# instance fields
.field private final mBgTextures:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/gallery3d/ui/UploadedTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mFgTextures:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/gallery3d/ui/UploadedTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

.field private volatile mIsQueued:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 2
    .parameter "root"

    .prologue
    const/16 v1, 0x40

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    .line 29
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/TextureUploader;->mIsQueued:Z

    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/ui/TextureUploader;->mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

    .line 36
    return-void
.end method

.method private queueSelfIfNeed()V
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/TextureUploader;->mIsQueued:Z

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/TextureUploader;->mIsQueued:Z

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/TextureUploader;->mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v0, p0}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    goto :goto_0
.end method

.method private upload(Lcom/android/gallery3d/ui/GLCanvas;Ljava/util/ArrayDeque;IZ)I
    .locals 3
    .parameter "canvas"
    .parameter
    .parameter "uploadQuota"
    .parameter "isBackground"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/ui/GLCanvas;",
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/gallery3d/ui/UploadedTexture;",
            ">;IZ)I"
        }
    .end annotation

    .prologue
    .local p2, deque:Ljava/util/ArrayDeque;,"Ljava/util/ArrayDeque<Lcom/android/gallery3d/ui/UploadedTexture;>;"
    const/4 v2, 0x0

    .line 70
    :goto_0
    if-lez p3, :cond_0

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p0

    .line 90
    :cond_0
    return p3

    .line 74
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/UploadedTexture;

    .line 75
    .local v0, t:Lcom/android/gallery3d/ui/UploadedTexture;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/UploadedTexture;->setIsUploading(Z)V

    .line 76
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture;->isContentValid()Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit p0

    goto :goto_0

    .line 81
    .end local v0           #t:Lcom/android/gallery3d/ui/UploadedTexture;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 80
    .restart local v0       #t:Lcom/android/gallery3d/ui/UploadedTexture;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 81
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    if-eqz p4, :cond_3

    invoke-virtual {v0, p1, v2, v2}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 88
    :cond_3
    add-int/lit8 p3, p3, -0x1

    .line 89
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addBgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/UploadedTexture;->isContentValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/ui/UploadedTexture;->setIsUploading(Z)V

    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TextureUploader;->queueSelfIfNeed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addFgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/UploadedTexture;->isContentValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/ui/UploadedTexture;->setIsUploading(Z)V

    .line 65
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TextureUploader;->queueSelfIfNeed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 39
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/ui/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/UploadedTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/UploadedTexture;->setIsUploading(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 42
    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/ui/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/UploadedTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/UploadedTexture;->setIsUploading(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 45
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public onGLIdle(Lcom/android/gallery3d/ui/GLCanvas;Z)Z
    .locals 4
    .parameter "canvas"
    .parameter "renderRequested"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 95
    const/4 v0, 0x1

    .line 96
    .local v0, uploadQuota:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/android/gallery3d/ui/TextureUploader;->upload(Lcom/android/gallery3d/ui/GLCanvas;Ljava/util/ArrayDeque;IZ)I

    move-result v0

    .line 97
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/TextureUploader;->mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLRoot;->requestRender()V

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/gallery3d/ui/TextureUploader;->upload(Lcom/android/gallery3d/ui/GLCanvas;Ljava/util/ArrayDeque;IZ)I

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/ui/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/TextureUploader;->mIsQueued:Z

    .line 101
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/TextureUploader;->mIsQueued:Z

    monitor-exit p0

    return v1

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
