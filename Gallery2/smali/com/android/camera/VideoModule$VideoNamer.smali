.class Lcom/android/camera/VideoModule$VideoNamer;
.super Ljava/lang/Thread;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoNamer"
.end annotation


# instance fields
.field private mRequestPending:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mStop:Z

.field private mUri:Landroid/net/Uri;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2775
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2776
    invoke-virtual {p0}, Lcom/android/camera/VideoModule$VideoNamer;->start()V

    .line 2777
    return-void
.end method

.method private cleanOldUri()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2838
    iget-object v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 2841
    :goto_0
    return-void

    .line 2839
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoModule$VideoNamer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2840
    iput-object v2, p0, Lcom/android/camera/VideoModule$VideoNamer;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private generateUri()V
    .locals 3

    .prologue
    .line 2832
    const-string v1, "content://media/external/video/media"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2833
    .local v0, videoTable:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/camera/VideoModule$VideoNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/VideoModule$VideoNamer;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule$VideoNamer;->mUri:Landroid/net/Uri;

    .line 2834
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 2826
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mStop:Z

    .line 2827
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2828
    monitor-exit p0

    return-void

    .line 2826
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 2791
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/VideoModule$VideoNamer;->mRequestPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2793
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2794
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2798
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mUri:Landroid/net/Uri;

    .line 2799
    .local v0, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoModule$VideoNamer;->mUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2800
    monitor-exit p0

    return-object v0

    .line 2791
    .end local v0           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized prepareUri(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "resolver"
    .parameter "values"

    .prologue
    .line 2782
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mRequestPending:Z

    .line 2783
    iput-object p1, p0, Lcom/android/camera/VideoModule$VideoNamer;->mResolver:Landroid/content/ContentResolver;

    .line 2784
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mValues:Landroid/content/ContentValues;

    .line 2785
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2786
    monitor-exit p0

    return-void

    .line 2782
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 1

    .prologue
    .line 2807
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mStop:Z

    if-eqz v0, :cond_0

    .line 2821
    invoke-direct {p0}, Lcom/android/camera/VideoModule$VideoNamer;->cleanOldUri()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2822
    monitor-exit p0

    return-void

    .line 2808
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mRequestPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 2810
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2811
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2816
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule$VideoNamer;->cleanOldUri()V

    .line 2817
    invoke-direct {p0}, Lcom/android/camera/VideoModule$VideoNamer;->generateUri()V

    .line 2818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mRequestPending:Z

    .line 2819
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2807
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
