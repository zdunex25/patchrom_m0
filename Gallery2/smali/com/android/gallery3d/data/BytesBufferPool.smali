.class public Lcom/android/gallery3d/data/BytesBufferPool;
.super Ljava/lang/Object;
.source "BytesBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/BytesBufferPool$1;,
        Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    }
.end annotation


# instance fields
.field private final mBufferSize:I

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPoolSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "poolSize"
    .parameter "bufferSize"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    .line 70
    iput p1, p0, Lcom/android/gallery3d/data/BytesBufferPool;->mPoolSize:I

    .line 71
    iput p2, p0, Lcom/android/gallery3d/data/BytesBufferPool;->mBufferSize:I

    .line 72
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    .locals 4

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 76
    .local v0, n:I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    iget v2, p0, Lcom/android/gallery3d/data/BytesBufferPool;->mBufferSize:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;-><init>(ILcom/android/gallery3d/data/BytesBufferPool$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    .end local v0           #n:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V
    .locals 2
    .parameter "buffer"

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/gallery3d/data/BytesBufferPool;->mBufferSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/data/BytesBufferPool;->mPoolSize:I

    if-ge v0, v1, :cond_0

    .line 82
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    .line 83
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
