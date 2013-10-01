.class Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;
.super Ljava/lang/Object;
.source "LocalMergeAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalMergeAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchCache"
.end annotation


# instance fields
.field private mBaseSet:Lcom/android/gallery3d/data/MediaSet;

.field private mCacheRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStartPos:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 0
    .parameter "baseSet"

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    .line 223
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 4
    .parameter "index"

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, needLoading:Z
    const/4 v0, 0x0

    .line 232
    .local v0, cache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    add-int/lit8 v2, v2, 0x40

    if-lt p1, v2, :cond_4

    .line 234
    :cond_0
    const/4 v1, 0x1

    .line 242
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 243
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 244
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    .line 245
    iput p1, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    .line 248
    :cond_2
    iget v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v2, :cond_3

    iget v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-lt p1, v2, :cond_5

    .line 249
    :cond_3
    const/4 v2, 0x0

    .line 252
    :goto_1
    return-object v2

    .line 236
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 237
    .restart local v0       #cache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    if-nez v0, :cond_1

    .line 238
    const/4 v1, 0x1

    goto :goto_0

    .line 252
    :cond_5
    iget v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    goto :goto_1
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    .line 227
    return-void
.end method
