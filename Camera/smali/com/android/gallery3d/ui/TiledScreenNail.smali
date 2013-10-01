.class public Lcom/android/gallery3d/ui/TiledScreenNail;
.super Ljava/lang/Object;
.source "TiledScreenNail.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScreenNail;


# static fields
.field private static mDrawPlaceholder:Z

.field private static mPlaceholderColor:I

.field private static sMaxSide:I


# instance fields
.field private mAnimationStartTime:J

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mTexture:Lcom/android/gallery3d/ui/TiledTexture;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x280

    sput v0, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    .line 67
    const v0, -0xddddde

    sput v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/TiledScreenNail;->setSize(II)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 57
    iput-object p1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 58
    new-instance v0, Lcom/android/gallery3d/ui/TiledTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/TiledTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    .line 59
    return-void
.end method

.method public static disableDrawPlaceholder()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    .line 150
    return-void
.end method

.method public static enableDrawPlaceholder()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    .line 154
    return-void
.end method

.method private getRatio()F
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 205
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x4334

    div-float v0, v1, v2

    .line 206
    .local v0, r:F
    sub-float v1, v5, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method private static recycleBitmap(Lcom/android/gallery3d/data/BitmapPool;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "pool"
    .parameter "bitmap"

    .prologue
    .line 85
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static setMaxSide(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 218
    sput p0, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    .line 219
    return-void
.end method

.method public static setPlaceholderColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 71
    sput p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    .line 72
    return-void
.end method

.method private setSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 75
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 76
    :cond_0
    sget p1, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    .line 77
    sget v1, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 p2, v1, 0x4

    .line 79
    :cond_1
    const/high16 v1, 0x3f80

    sget v2, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    int-to-float v2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 80
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 81
    int-to-float v1, p2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 82
    return-void
.end method


# virtual methods
.method public combine(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 4
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 92
    if-nez p1, :cond_0

    .line 115
    .end local p0
    :goto_0
    return-object p0

    .line 96
    .restart local p0
    :cond_0
    instance-of v1, p1, Lcom/android/gallery3d/ui/TiledScreenNail;

    if-nez v1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TiledScreenNail;->recycle()V

    move-object p0, p1

    .line 98
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 103
    check-cast v0, Lcom/android/gallery3d/ui/TiledScreenNail;

    .line 104
    .local v0, newer:Lcom/android/gallery3d/ui/TiledScreenNail;
    iget v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    iput v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 105
    iget v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    iput v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 106
    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v1, :cond_3

    .line 107
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/TiledScreenNail;->recycleBitmap(Lcom/android/gallery3d/data/BitmapPool;Landroid/graphics/Bitmap;)V

    .line 108
    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TiledTexture;->recycle()V

    .line 109
    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 110
    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    iput-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    .line 111
    iput-object v3, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 112
    iput-object v3, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    .line 114
    :cond_3
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TiledScreenNail;->recycle()V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 8
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const-wide/16 v4, -0x2

    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 159
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 160
    iput-wide v4, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 162
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    if-eqz v0, :cond_2

    .line 163
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    sget v5, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 178
    :cond_2
    :goto_0
    return-void

    .line 168
    :cond_3
    iget-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 169
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 172
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    sget v2, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    invoke-direct {p0}, Lcom/android/gallery3d/ui/TiledScreenNail;->getRatio()F

    move-result v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/gallery3d/ui/TiledTexture;->drawMixed(Lcom/android/gallery3d/ui/GLCanvas;IFIIII)V

    goto :goto_0

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/TiledTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    sget v5, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/ui/TiledTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    return v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/TiledTexture;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    return v0
.end method

.method public isAnimating()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 195
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TiledTexture;->isReady()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 201
    :cond_1
    :goto_0
    return v0

    .line 196
    :cond_2
    iget-wide v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 197
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xb4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 198
    const-wide/16 v1, -0x3

    iput-wide v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    goto :goto_0

    :cond_3
    move v0, v1

    .line 201
    goto :goto_0
.end method

.method public noDraw()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TiledTexture;->recycle()V

    .line 142
    iput-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    .line 144
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/TiledScreenNail;->recycleBitmap(Lcom/android/gallery3d/data/BitmapPool;Landroid/graphics/Bitmap;)V

    .line 145
    iput-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 146
    return-void
.end method

.method public updatePlaceholderSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/TiledScreenNail;->setSize(II)V

    goto :goto_0
.end method
