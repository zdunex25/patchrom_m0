.class public Lcom/android/gallery3d/common/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/common/LruCache$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mLruMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final mWeakMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/android/gallery3d/common/LruCache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .parameter "capacity"

    .prologue
    .line 37
    .local p0, this:Lcom/android/gallery3d/common/LruCache;,"Lcom/android/gallery3d/common/LruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/common/LruCache;->mWeakMap:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/common/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    .line 38
    new-instance v0, Lcom/android/gallery3d/common/LruCache$1;

    const/16 v2, 0x10

    const/high16 v3, 0x3f40

    const/4 v4, 0x1

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/common/LruCache$1;-><init>(Lcom/android/gallery3d/common/LruCache;IFZI)V

    iput-object v0, p0, Lcom/android/gallery3d/common/LruCache;->mLruMap:Ljava/util/HashMap;

    .line 44
    return-void
.end method

.method private cleanUpWeakMap()V
    .locals 3

    .prologue
    .line 57
    .local p0, this:Lcom/android/gallery3d/common/LruCache;,"Lcom/android/gallery3d/common/LruCache<TK;TV;>;"
    iget-object v1, p0, Lcom/android/gallery3d/common/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/common/LruCache$Entry;

    .line 58
    .local v0, entry:Lcom/android/gallery3d/common/LruCache$Entry;,"Lcom/android/gallery3d/common/LruCache$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/gallery3d/common/LruCache;->mWeakMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/gallery3d/common/LruCache$Entry;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lcom/android/gallery3d/common/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .end local v0           #entry:Lcom/android/gallery3d/common/LruCache$Entry;,"Lcom/android/gallery3d/common/LruCache$Entry<TK;TV;>;"
    check-cast v0, Lcom/android/gallery3d/common/LruCache$Entry;

    .restart local v0       #entry:Lcom/android/gallery3d/common/LruCache$Entry;,"Lcom/android/gallery3d/common/LruCache$Entry<TK;TV;>;"
    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/android/gallery3d/common/LruCache;,"Lcom/android/gallery3d/common/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/common/LruCache;->cleanUpWeakMap()V

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/common/LruCache;->mWeakMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/android/gallery3d/common/LruCache;,"Lcom/android/gallery3d/common/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/common/LruCache;->cleanUpWeakMap()V

    .line 79
    iget-object v2, p0, Lcom/android/gallery3d/common/LruCache;->mLruMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 80
    .local v1, value:Ljava/lang/Object;,"TV;"
    if-eqz v1, :cond_0

    .line 82
    .end local v1           #value:Ljava/lang/Object;,"TV;"
    :goto_0
    monitor-exit p0

    return-object v1

    .line 81
    .restart local v1       #value:Ljava/lang/Object;,"TV;"
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/gallery3d/common/LruCache;->mWeakMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/common/LruCache$Entry;

    .line 82
    .local v0, entry:Lcom/android/gallery3d/common/LruCache$Entry;,"Lcom/android/gallery3d/common/LruCache$Entry<TK;TV;>;"
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/common/LruCache$Entry;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 78
    .end local v0           #entry:Lcom/android/gallery3d/common/LruCache$Entry;,"Lcom/android/gallery3d/common/LruCache$Entry<TK;TV;>;"
    .end local v1           #value:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/android/gallery3d/common/LruCache;,"Lcom/android/gallery3d/common/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/common/LruCache;->cleanUpWeakMap()V

    .line 71
    iget-object v1, p0, Lcom/android/gallery3d/common/LruCache;->mLruMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/android/gallery3d/common/LruCache;->mWeakMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/gallery3d/common/LruCache$Entry;

    iget-object v3, p0, Lcom/android/gallery3d/common/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, p2, v3}, Lcom/android/gallery3d/common/LruCache$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/common/LruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .local v0, entry:Lcom/android/gallery3d/common/LruCache$Entry;,"Lcom/android/gallery3d/common/LruCache$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/gallery3d/common/LruCache$Entry;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 70
    .end local v0           #entry:Lcom/android/gallery3d/common/LruCache$Entry;,"Lcom/android/gallery3d/common/LruCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
