.class public Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;
.super Ljava/lang/Object;
.source "DirectPresetCache.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    }
.end annotation


# instance fields
.field private final mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final mCache:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheSize:I

.field private mGlobalAge:J

.field private mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field private final mNotifyObserversRunnable:Ljava/lang/Runnable;

.field private final mObservers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;I)V
    .locals 3
    .parameter "loader"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mObservers:Ljava/util/Vector;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mCache:Ljava/util/Vector;

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mCacheSize:I

    .line 33
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mGlobalAge:J

    .line 35
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 67
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$1;-><init>(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mNotifyObserversRunnable:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 54
    iput p2, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mCacheSize:I

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mObservers:Ljava/util/Vector;

    return-object v0
.end method

.method private getCachedPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    .locals 3
    .parameter "preset"

    .prologue
    .line 86
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;

    .line 88
    .local v0, cache:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    #getter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$100(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 92
    .end local v0           #cache:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    :goto_1
    return-object v0

    .line 86
    .restart local v0       #cache:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v0           #cache:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getOldestCachedPreset()Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    .locals 7

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, found:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 119
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;

    .line 120
    .local v0, cache:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    #getter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$200(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_1
    if-nez v1, :cond_2

    .line 124
    move-object v1, v0

    goto :goto_1

    .line 126
    :cond_2
    #getter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mAge:J
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$400(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)J

    move-result-wide v3

    #getter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mAge:J
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$400(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 127
    move-object v1, v0

    goto :goto_1

    .line 131
    .end local v0           #cache:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    :cond_3
    return-object v1
.end method


# virtual methods
.method public addObserver(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    return-void
.end method

.method protected compute(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)V
    .locals 5
    .parameter "cache"

    .prologue
    .line 149
    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v1}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$302(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 150
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v1}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$302(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 151
    #getter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$300(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 152
    .local v0, scaleFactor:F
    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 153
    #getter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$100(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setIsHighQuality(Z)V

    .line 155
    :cond_0
    #getter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$100(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setScaleFactor(F)V

    .line 156
    #getter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$100(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    #getter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$300(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v1}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$302(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 157
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mGlobalAge:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mGlobalAge:J

    #setter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mAge:J
    invoke-static {p1, v1, v2}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$402(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;J)J

    .line 158
    return-void
.end method

.method protected didCompute(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)V
    .locals 1
    .parameter "cache"

    .prologue
    .line 144
    const/4 v0, 0x0

    #setter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z
    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$202(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;Z)Z

    .line 145
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->notifyObservers()V

    .line 146
    return-void
.end method

.method public get(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "preset"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->getCachedPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;

    move-result-object v0

    .line 99
    .local v0, cache:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    if-eqz v0, :cond_0

    #getter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$200(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    #getter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$300(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyObservers()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mNotifyObserversRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public prepare(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 3
    .parameter "preset"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->getCachedPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;

    move-result-object v0

    .line 164
    .local v0, cache:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    if-eqz v0, :cond_0

    #getter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$300(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    #getter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$200(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 165
    :cond_0
    if-nez v0, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mCacheSize:I

    if-ge v1, v2, :cond_3

    .line 167
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;

    .end local v0           #cache:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;-><init>(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;)V

    .line 168
    .restart local v0       #cache:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 174
    #setter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$102(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->willCompute(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)V

    .line 179
    :cond_2
    return-void

    .line 170
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->getOldestCachedPreset()Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;

    move-result-object v0

    goto :goto_0
.end method

.method public reset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 2
    .parameter "preset"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->getCachedPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;

    move-result-object v0

    .line 110
    .local v0, cache:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    if-eqz v0, :cond_0

    #getter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$200(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$302(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->willCompute(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setOriginalBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->notifyObservers()V

    .line 61
    return-void
.end method

.method protected willCompute(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)V
    .locals 1
    .parameter "cache"

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x1

    #setter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z
    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->access$202(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;Z)Z

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->compute(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->didCompute(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)V

    goto :goto_0
.end method
