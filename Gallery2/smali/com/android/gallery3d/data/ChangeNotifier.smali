.class public Lcom/android/gallery3d/data/ChangeNotifier;
.super Ljava/lang/Object;
.source "ChangeNotifier.java"


# instance fields
.field private mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "set"
    .parameter "uri"
    .parameter "application"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/data/ChangeNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 33
    invoke-interface {p3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/android/gallery3d/data/DataManager;->registerChangeNotifier(Landroid/net/Uri;Lcom/android/gallery3d/data/ChangeNotifier;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "set"
    .parameter "uris"
    .parameter "application"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    iput-object p1, p0, Lcom/android/gallery3d/data/ChangeNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 38
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 39
    invoke-interface {p3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-virtual {v1, v2, p0}, Lcom/android/gallery3d/data/DataManager;->registerChangeNotifier(Landroid/net/Uri;Lcom/android/gallery3d/data/ChangeNotifier;)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public fakeChange()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/ChangeNotifier;->onChange(Z)V

    .line 50
    return-void
.end method

.method public isDirty()Z
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method protected onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/data/ChangeNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 56
    :cond_0
    return-void
.end method
