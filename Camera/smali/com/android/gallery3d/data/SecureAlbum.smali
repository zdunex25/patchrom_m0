.class public Lcom/android/gallery3d/data/SecureAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "SecureAlbum.java"

# interfaces
.implements Lcom/android/gallery3d/app/StitchingChangeListener;


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final mWatchUris:[Landroid/net/Uri;


# instance fields
.field private mAllItemTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAllItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mExistingItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxImageId:I

.field private mMaxVideoId:I

.field private mMinImageId:I

.field private mMinVideoId:I

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

.field private mShowUnlockItem:Z

.field private mUnlockItem:Lcom/android/gallery3d/data/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/gallery3d/data/SecureAlbum;->PROJECTION:[Ljava/lang/String;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/data/SecureAlbum;->mWatchUris:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 4
    .parameter "path"
    .parameter "application"
    .parameter "unlock"

    .prologue
    const v3, 0x7fffffff

    const/high16 v2, -0x8000

    .line 57
    invoke-static {}, Lcom/android/gallery3d/data/SecureAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 37
    iput v3, p0, Lcom/android/gallery3d/data/SecureAlbum;->mMinImageId:I

    .line 38
    iput v2, p0, Lcom/android/gallery3d/data/SecureAlbum;->mMaxImageId:I

    .line 39
    iput v3, p0, Lcom/android/gallery3d/data/SecureAlbum;->mMinVideoId:I

    .line 40
    iput v2, p0, Lcom/android/gallery3d/data/SecureAlbum;->mMaxVideoId:I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/SecureAlbum;->mAllItemTypes:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    .line 58
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/SecureAlbum;->mContext:Landroid/content/Context;

    .line 59
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/SecureAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 60
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/android/gallery3d/data/SecureAlbum;->mWatchUris:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/SecureAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 61
    iput-object p3, p0, Lcom/android/gallery3d/data/SecureAlbum;->mUnlockItem:Lcom/android/gallery3d/data/MediaItem;

    .line 62
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/SecureAlbum;->isCameraBucketEmpty(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/SecureAlbum;->isCameraBucketEmpty(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/data/SecureAlbum;->mShowUnlockItem:Z

    .line 64
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraBucketEmpty(Landroid/net/Uri;)Z
    .locals 9
    .parameter "baseUri"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 152
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 154
    .local v1, uri:Landroid/net/Uri;
    new-array v4, v7, [Ljava/lang/String;

    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 155
    .local v4, selection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/data/SecureAlbum;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/gallery3d/data/SecureAlbum;->PROJECTION:[Ljava/lang/String;

    const-string v3, "bucket_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 157
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 161
    :goto_0
    return v7

    .line 159
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    .line 161
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v7, v0

    goto :goto_0

    :cond_1
    move v0, v8

    .line 159
    goto :goto_1

    .line 161
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private queryExistingIds(Landroid/net/Uri;II)Ljava/util/ArrayList;
    .locals 8
    .parameter "uri"
    .parameter "minId"
    .parameter "maxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 134
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v7, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v0, 0x7fffffff

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x8000

    if-ne p3, v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-object v7

    .line 137
    :cond_1
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 138
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/data/SecureAlbum;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/gallery3d/data/SecureAlbum;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id BETWEEN ? AND ?"

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 140
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 142
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 146
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private updateExistingItems()V
    .locals 9

    .prologue
    .line 166
    iget-object v6, p0, Lcom/android/gallery3d/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 186
    :cond_0
    return-void

    .line 169
    :cond_1
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v7, p0, Lcom/android/gallery3d/data/SecureAlbum;->mMinImageId:I

    iget v8, p0, Lcom/android/gallery3d/data/SecureAlbum;->mMaxImageId:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/gallery3d/data/SecureAlbum;->queryExistingIds(Landroid/net/Uri;II)Ljava/util/ArrayList;

    move-result-object v2

    .line 171
    .local v2, imageIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v7, p0, Lcom/android/gallery3d/data/SecureAlbum;->mMinVideoId:I

    iget v8, p0, Lcom/android/gallery3d/data/SecureAlbum;->mMaxVideoId:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/gallery3d/data/SecureAlbum;->queryExistingIds(Landroid/net/Uri;II)Ljava/util/ArrayList;

    move-result-object v5

    .line 175
    .local v5, videoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/gallery3d/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 176
    iget-object v6, p0, Lcom/android/gallery3d/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 177
    iget-object v6, p0, Lcom/android/gallery3d/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Path;

    .line 178
    .local v4, path:Lcom/android/gallery3d/data/Path;
    iget-object v6, p0, Lcom/android/gallery3d/data/SecureAlbum;->mAllItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 179
    .local v3, isVideo:Z
    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 180
    .local v1, id:I
    if-eqz v3, :cond_3

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/gallery3d/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 183
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/gallery3d/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public addMediaItem(ZI)V
    .locals 4
    .parameter "isVideo"
    .parameter "id"

    .prologue
    .line 68
    if-eqz p1, :cond_1

    .line 69
    sget-object v1, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .line 70
    .local v1, pathBase:Lcom/android/gallery3d/data/Path;
    iget v2, p0, Lcom/android/gallery3d/data/SecureAlbum;->mMinVideoId:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/SecureAlbum;->mMinVideoId:I

    .line 71
    iget v2, p0, Lcom/android/gallery3d/data/SecureAlbum;->mMaxVideoId:I

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/SecureAlbum;->mMaxVideoId:I

    .line 77
    :goto_0
    invoke-virtual {v1, p2}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 78
    .local v0, path:Lcom/android/gallery3d/data/Path;
    iget-object v2, p0, Lcom/android/gallery3d/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/gallery3d/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v2, p0, Lcom/android/gallery3d/data/SecureAlbum;->mAllItemTypes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v2, p0, Lcom/android/gallery3d/data/SecureAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/ChangeNotifier;->fakeChange()V

    .line 83
    :cond_0
    return-void

    .line 73
    .end local v0           #path:Lcom/android/gallery3d/data/Path;
    .end local v1           #pathBase:Lcom/android/gallery3d/data/Path;
    :cond_1
    sget-object v1, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .line 74
    .restart local v1       #pathBase:Lcom/android/gallery3d/data/Path;
    iget v2, p0, Lcom/android/gallery3d/data/SecureAlbum;->mMinImageId:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/SecureAlbum;->mMinImageId:I

    .line 75
    iget v2, p0, Lcom/android/gallery3d/data/SecureAlbum;->mMaxImageId:I

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/SecureAlbum;->mMaxImageId:I

    goto :goto_0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 9
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v7, p0, Lcom/android/gallery3d/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 89
    .local v3, existingCount:I
    add-int/lit8 v7, v3, 0x1

    if-lt p1, v7, :cond_1

    .line 90
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 111
    :cond_0
    :goto_0
    return-object v5

    .line 94
    :cond_1
    add-int v7, p1, p2

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 95
    .local v2, end:I
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/gallery3d/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .local v6, subset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    sub-int v7, v2, p1

    new-array v0, v7, [Lcom/android/gallery3d/data/MediaItem;

    .line 99
    .local v0, buf:[Lcom/android/gallery3d/data/MediaItem;
    new-instance v1, Lcom/android/gallery3d/data/SecureAlbum$1;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/data/SecureAlbum$1;-><init>(Lcom/android/gallery3d/data/SecureAlbum;[Lcom/android/gallery3d/data/MediaItem;)V

    .line 105
    .local v1, consumer:Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
    iget-object v7, p0, Lcom/android/gallery3d/data/SecureAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v1, v8}, Lcom/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 106
    new-instance v5, Ljava/util/ArrayList;

    sub-int v7, v2, p1

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_2

    .line 108
    aget-object v7, v0, v4

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 110
    :cond_2
    iget-boolean v7, p0, Lcom/android/gallery3d/data/SecureAlbum;->mShowUnlockItem:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/data/SecureAlbum;->mUnlockItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getMediaItemCount()I
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-boolean v0, p0, Lcom/android/gallery3d/data/SecureAlbum;->mShowUnlockItem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "secure"

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/data/SecureAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Lcom/android/gallery3d/data/SecureAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/SecureAlbum;->mDataVersion:J

    .line 128
    invoke-direct {p0}, Lcom/android/gallery3d/data/SecureAlbum;->updateExistingItems()V

    .line 130
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/SecureAlbum;->mDataVersion:J

    return-wide v0
.end method
