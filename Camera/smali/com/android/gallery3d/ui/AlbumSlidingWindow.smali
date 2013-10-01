.class public Lcom/android/gallery3d/ui/AlbumSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;,
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;,
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;,
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

.field private final mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

.field private mSize:I

.field private final mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

.field private final mThreadPool:Lcom/android/gallery3d/util/JobLimiter;

.field private final mTileUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/AlbumDataLoader;I)V
    .locals 3
    .parameter "activity"
    .parameter "source"
    .parameter "cacheSize"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 68
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 70
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 71
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 75
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 76
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 92
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/app/AlbumDataLoader;->setDataListener(Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;)V

    .line 93
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

    .line 94
    new-array v0, p3, [Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 95
    invoke-virtual {p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    .line 97
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$1;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$1;-><init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 105
    new-instance v0, Lcom/android/gallery3d/util/JobLimiter;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/JobLimiter;-><init>(Lcom/android/gallery3d/util/ThreadPool;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/JobLimiter;

    .line 106
    new-instance v0, Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/TiledTexture$Uploader;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    .line 107
    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/util/JobLimiter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/JobLimiter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/TiledTexture$Uploader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$606(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    return-object v0
.end method

.method private cancelNonactiveImages()V
    .locals 5

    .prologue
    .line 239
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 241
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 242
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    .line 243
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method private cancelSlotImage(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 248
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 250
    .local v0, item:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->cancelLoad()V

    goto :goto_0
.end method

.method private freeSlotContent(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 255
    .local v0, data:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    array-length v3, v0

    rem-int v2, p1, v3

    .line 256
    .local v2, index:I
    aget-object v1, v0, v2

    .line 257
    .local v1, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 258
    :cond_0
    iget-object v3, v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TiledTexture;->recycle()V

    .line 259
    :cond_1
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 260
    return-void
.end method

.method private prepareSlotContent(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 263
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;-><init>()V

    .line 264
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 265
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    iput-object v1, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    .line 266
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    .line 269
    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_1
    iput-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    .line 270
    if-nez v1, :cond_2

    const/4 v2, 0x0

    :goto_2
    iput v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    .line 271
    new-instance v2, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v2, p0, p1, v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;ILcom/android/gallery3d/data/MediaItem;)V

    #setter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 272
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v3, v3

    rem-int v3, p1, v3

    aput-object v0, v2, v3

    .line 273
    return-void

    .line 266
    :cond_0
    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    goto :goto_1

    .line 270
    :cond_2
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    goto :goto_2
.end method

.method private requestNonactiveImages()V
    .locals 5

    .prologue
    .line 216
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 218
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 219
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    .line 220
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_0
    return-void
.end method

.method private requestSlotImage(I)Z
    .locals 4
    .parameter "slotIndex"

    .prologue
    const/4 v1, 0x0

    .line 226
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v1

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v3, v3

    rem-int v3, p1, v3

    aget-object v0, v2, v3

    .line 228
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_0

    .line 231
    new-instance v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;-><init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)V

    #setter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mPanoSupportListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$002(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;

    .line 232
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mPanoSupportListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/MediaItem;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 234
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 235
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->isRequestInProgress()Z

    move-result v1

    goto :goto_0
.end method

.method private setContentWindow(II)V
    .locals 3
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 126
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_0

    .line 161
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v2, :cond_1

    .line 129
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 130
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 131
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    goto :goto_0

    .line 135
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_2

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_4

    .line 136
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 137
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    .line 140
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_8

    .line 141
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 144
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_5

    .line 145
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 147
    :cond_5
    move v0, p2

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .restart local v1       #n:I
    :goto_4
    if-ge v0, v1, :cond_6

    .line 148
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 150
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    .line 151
    move v0, p1

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_7

    .line 152
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 154
    :cond_7
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_8

    .line 155
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 159
    :cond_8
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 160
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    goto :goto_0
.end method

.method private updateAllImageRequests()V
    .locals 3

    .prologue
    .line 276
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 277
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 278
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 277
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v2, :cond_2

    .line 281
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    .line 285
    :goto_1
    return-void

    .line 283
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->cancelNonactiveImages()V

    goto :goto_1
.end method

.method private updateTextureUploadQueue()V
    .locals 7

    .prologue
    .line 190
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v4, :cond_1

    .line 208
    :cond_0
    return-void

    .line 191
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TiledTexture$Uploader;->clear()V

    .line 194
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .local v1, i:I
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 195
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v5, v5

    rem-int v5, v1, v5

    aget-object v0, v4, v5

    .line 196
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v4, :cond_2

    .line 197
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/TiledTexture$Uploader;->addTexture(Lcom/android/gallery3d/ui/TiledTexture;)V

    .line 194
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_3
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 204
    .local v3, range:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 205
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    .line 206
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private uploadBgTextureInSlot(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 181
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 183
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/TiledTexture$Uploader;->addTexture(Lcom/android/gallery3d/ui/TiledTexture;)V

    .line 187
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const-string v0, "invalid slot: %s outsides (%s, %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 343
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 344
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 345
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 346
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    .line 351
    :cond_0
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 333
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_2

    .line 334
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    .line 335
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;->onSizeChanged(I)V

    .line 336
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 337
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 339
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 363
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 364
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TiledTexture$Uploader;->clear()V

    .line 365
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->freeResources()V

    .line 366
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 367
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 354
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 355
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->prepareResources()V

    .line 356
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 357
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 360
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 8
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v7, 0x0

    .line 164
    if-gt p1, p2, :cond_0

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v4, v4

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le p2, v3, :cond_1

    .line 165
    :cond_0
    const-string v3, "%s, %s, %s, %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 169
    .local v2, data:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 170
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 172
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v7, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 174
    .local v1, contentStart:I
    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 175
    .local v0, contentEnd:I
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setContentWindow(II)V

    .line 176
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateTextureUploadQueue()V

    .line 177
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 178
    :cond_2
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    .line 111
    return-void
.end method
