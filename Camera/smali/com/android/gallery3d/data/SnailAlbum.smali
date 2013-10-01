.class public Lcom/android/gallery3d/data/SnailAlbum;
.super Lcom/android/gallery3d/data/SingleItemAlbum;
.source "SnailAlbum.java"


# instance fields
.field private mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/SnailItem;)V
    .locals 2
    .parameter "path"
    .parameter "item"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/data/SingleItemAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaItem;)V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/gallery3d/data/SnailAlbum;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    return-void
.end method


# virtual methods
.method public notifyChange()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/data/SnailAlbum;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/android/gallery3d/data/SnailAlbum;->notifyContentChanged()V

    .line 43
    return-void
.end method

.method public reload()J
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/data/SnailAlbum;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/android/gallery3d/data/SnailAlbum;->getItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/SnailItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/SnailItem;->updateVersion()V

    .line 35
    invoke-static {}, Lcom/android/gallery3d/data/SnailAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/SnailAlbum;->mDataVersion:J

    .line 37
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/SnailAlbum;->mDataVersion:J

    return-wide v0
.end method
