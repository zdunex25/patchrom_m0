.class public abstract Lcom/android/gallery3d/data/MediaItem;
.super Lcom/android/gallery3d/data/MediaObject;
.source "MediaItem.java"


# static fields
.field private static final sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

.field private static sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

.field private static sMicrothumbnailTargetSize:I

.field private static final sThumbPool:Lcom/android/gallery3d/data/BitmapPool;

.field private static sThumbnailTargetSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 44
    const/16 v0, 0xc8

    sput v0, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    .line 46
    new-instance v0, Lcom/android/gallery3d/data/BytesBufferPool;

    const v1, 0x32000

    invoke-direct {v0, v2, v1}, Lcom/android/gallery3d/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

    .line 49
    const/16 v0, 0x280

    sput v0, Lcom/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    .line 50
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/data/BitmapPool;

    invoke-direct {v0, v2}, Lcom/android/gallery3d/data/BitmapPool;-><init>(I)V

    :goto_0
    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 0
    .parameter "path"
    .parameter "version"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/MediaObject;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 63
    return-void
.end method

.method public static getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

    return-object v0
.end method

.method public static getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->initializeMicroThumbPool()V

    .line 133
    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method

.method public static getTargetSize(I)I
    .locals 2
    .parameter "type"

    .prologue
    .line 118
    packed-switch p0, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should only request thumb/microthumb from cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_0
    sget v0, Lcom/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    .line 122
    :goto_0
    return v0

    :pswitch_1
    sget v0, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getThumbPool()Lcom/android/gallery3d/data/BitmapPool;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method

.method private static initializeMicroThumbPool()V
    .locals 4

    .prologue
    .line 145
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/data/BitmapPool;

    sget v1, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    sget v2, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/data/BitmapPool;-><init>(III)V

    :goto_0
    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    .line 149
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setThumbnailSizes(II)V
    .locals 1
    .parameter "size"
    .parameter "microSize"

    .prologue
    .line 152
    sput p0, Lcom/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    .line 153
    sget v0, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    if-eq v0, p1, :cond_0

    .line 154
    sput p1, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    .line 155
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->initializeMicroThumbPool()V

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public getDateInMs()J
    .locals 2

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFaces()[Lcom/android/gallery3d/data/Face;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, ""

    return-object v0
.end method

.method public getFullImageRotation()I
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    const-wide/16 v1, 0x0

    .line 74
    const/4 v0, 0x0

    aput-wide v1, p1, v0

    .line 75
    const/4 v0, 0x1

    aput-wide v1, p1, v0

    .line 76
    return-void
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 97
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method public abstract requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end method
