.class public Lcom/android/gallery3d/data/BitmapPool;
.super Ljava/lang/Object;
.source "BitmapPool.java"


# instance fields
.field private final mHeight:I

.field private final mOneSize:Z

.field private final mPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mPoolLimit:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "poolLimit"

    .prologue
    const/4 v0, -0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Lcom/android/gallery3d/data/BitmapPool;->mWidth:I

    .line 48
    iput v0, p0, Lcom/android/gallery3d/data/BitmapPool;->mHeight:I

    .line 49
    iput p1, p0, Lcom/android/gallery3d/data/BitmapPool;->mPoolLimit:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/BitmapPool;->mOneSize:Z

    .line 52
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "poolLimit"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/android/gallery3d/data/BitmapPool;->mWidth:I

    .line 39
    iput p2, p0, Lcom/android/gallery3d/data/BitmapPool;->mHeight:I

    .line 40
    iput p3, p0, Lcom/android/gallery3d/data/BitmapPool;->mPoolLimit:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/data/BitmapPool;->mOneSize:Z

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/gallery3d/data/BitmapPool;->mOneSize:Z

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 57
    iget-object v1, p0, Lcom/android/gallery3d/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 58
    .local v0, size:I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 56
    .end local v0           #size:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getBitmap(II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/gallery3d/data/BitmapPool;->mOneSize:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 64
    iget-object v2, p0, Lcom/android/gallery3d/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 65
    iget-object v2, p0, Lcom/android/gallery3d/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 66
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/android/gallery3d/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_2
    monitor-exit p0

    return-object v2

    .line 63
    .end local v1           #i:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 64
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 70
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 63
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isOneSize()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/gallery3d/data/BitmapPool;->mOneSize:Z

    return v0
.end method

.method public recycle(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/data/BitmapPool;->mOneSize:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/data/BitmapPool;->mWidth:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/data/BitmapPool;->mHeight:I

    if-eq v0, v1, :cond_2

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 83
    :cond_2
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/data/BitmapPool;->mPoolLimit:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
