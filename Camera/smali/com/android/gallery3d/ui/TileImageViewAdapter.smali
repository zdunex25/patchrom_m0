.class public Lcom/android/gallery3d/ui/TileImageViewAdapter;
.super Ljava/lang/Object;
.source "TileImageViewAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/ui/TileImageView$Model;


# instance fields
.field protected mImageHeight:I

.field protected mImageWidth:I

.field protected mLevelCount:I

.field protected mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field protected mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private calculateLevelCount()I
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->ceilLog2(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getTileWithoutReusingBitmap(IIIII)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "tileSize"
    .parameter "borderSize"

    .prologue
    .line 145
    shl-int v0, p5, p1

    .line 146
    .local v0, b:I
    shl-int v8, p4, p1

    .line 147
    .local v8, t:I
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, p2, v0

    sub-int v11, p3, v0

    add-int v12, p2, v8

    add-int/2addr v12, v0

    add-int v13, p3, v8

    add-int/2addr v13, v0

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 152
    .local v9, wantRegion:Landroid/graphics/Rect;
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 154
    .local v5, regionDecoder:Landroid/graphics/BitmapRegionDecoder;
    if-nez v5, :cond_1

    const/4 v1, 0x0

    monitor-exit p0

    .line 182
    :cond_0
    :goto_0
    return-object v1

    .line 155
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    iget v13, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    invoke-direct {v4, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 156
    .local v4, overlapRegion:Landroid/graphics/Rect;
    invoke-virtual {v4, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 157
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 160
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 161
    const/4 v10, 0x1

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 162
    const/4 v10, 0x1

    shl-int/2addr v10, p1

    iput v10, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 163
    const/4 v1, 0x0

    .line 166
    .local v1, bitmap:Landroid/graphics/Bitmap;
    monitor-enter v5

    .line 167
    :try_start_1
    invoke-virtual {v5, v4, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 168
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    if-nez v1, :cond_2

    .line 171
    const-string v10, "TileImageViewAdapter"

    const-string v11, "fail in decoding region"

    invoke-static {v10, v11}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_2
    invoke-virtual {v9, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 176
    mul-int/lit8 v10, p5, 0x2

    add-int v7, p4, v10

    .line 177
    .local v7, s:I
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 178
    .local v6, result:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 179
    .local v2, canvas:Landroid/graphics/Canvas;
    iget v10, v4, Landroid/graphics/Rect;->left:I

    iget v11, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    shr-int/2addr v10, p1

    int-to-float v10, v10

    iget v11, v4, Landroid/graphics/Rect;->top:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    shr-int/2addr v11, p1

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v2, v1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v1, v6

    .line 182
    goto :goto_0

    .line 157
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #overlapRegion:Landroid/graphics/Rect;
    .end local v5           #regionDecoder:Landroid/graphics/BitmapRegionDecoder;
    .end local v6           #result:Landroid/graphics/Bitmap;
    .end local v7           #s:I
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 168
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #overlapRegion:Landroid/graphics/Rect;
    .restart local v5       #regionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    return v0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public getTile(IIIIILcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "tileSize"
    .parameter "borderSize"
    .parameter "pool"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 89
    sget-boolean v9, Lcom/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

    if-nez v9, :cond_1

    .line 90
    invoke-direct/range {p0 .. p5}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getTileWithoutReusingBitmap(IIIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 140
    :cond_0
    :goto_0
    return-object v2

    .line 93
    :cond_1
    shl-int v1, p5, p1

    .line 94
    .local v1, b:I
    shl-int v7, p4, p1

    .line 96
    .local v7, t:I
    new-instance v8, Landroid/graphics/Rect;

    sub-int v9, p2, v1

    sub-int v10, p3, v1

    add-int v11, p2, v7

    add-int/2addr v11, v1

    add-int v12, p3, v7

    add-int/2addr v12, v1

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 99
    .local v8, wantRegion:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 101
    .local v5, regionDecoder:Landroid/graphics/BitmapRegionDecoder;
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 103
    if-nez v5, :cond_2

    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 107
    :cond_2
    :try_start_1
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    iget v13, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v3, 0x1

    .line 109
    .local v3, needClear:Z
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    if-nez p6, :cond_7

    const/4 v2, 0x0

    .line 112
    .local v2, bitmap:Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v2, :cond_8

    .line 113
    if-eqz v3, :cond_3

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 119
    :cond_3
    :goto_3
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 120
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 121
    const/4 v9, 0x1

    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 122
    const/4 v9, 0x1

    shl-int/2addr v9, p1

    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 123
    iput-object v2, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 127
    :try_start_2
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 128
    :try_start_3
    invoke-virtual {v5, v8, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 129
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    iget-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v9, v2, :cond_5

    iget-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_5

    .line 132
    if-eqz p6, :cond_4

    iget-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 133
    :cond_4
    const/4 v9, 0x0

    iput-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 137
    :cond_5
    if-nez v2, :cond_0

    .line 138
    const-string v9, "TileImageViewAdapter"

    const-string v10, "fail in decoding region"

    invoke-static {v9, v10}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #needClear:Z
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 111
    .restart local v3       #needClear:Z
    :cond_7
    invoke-virtual/range {p6 .. p6}, Lcom/android/gallery3d/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 115
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    :cond_8
    mul-int/lit8 v9, p5, 0x2

    add-int v6, p4, v9

    .line 116
    .local v6, s:I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    .line 129
    .end local v6           #s:I
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 131
    :catchall_2
    move-exception v9

    iget-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v10, v2, :cond_a

    iget-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_a

    .line 132
    if-eqz p6, :cond_9

    iget-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 133
    :cond_9
    const/4 v10, 0x0

    iput-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_a
    throw v9
.end method

.method public declared-synchronized setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 64
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 65
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 66
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V
    .locals 1
    .parameter "screenNail"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 56
    iput p2, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 57
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
