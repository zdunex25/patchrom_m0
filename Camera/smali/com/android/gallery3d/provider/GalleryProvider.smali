.class public Lcom/android/gallery3d/provider/GalleryProvider;
.super Landroid/content/ContentProvider;
.source "GalleryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/provider/GalleryProvider$MtpPipeDataWriter;,
        Lcom/android/gallery3d/provider/GalleryProvider$PipeDataWriter;
    }
.end annotation


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field private static final SUPPORTED_PICASA_COLUMNS:[Ljava/lang/String;

.field private static sBaseUri:Landroid/net/Uri;


# instance fields
.field private mDataManager:Lcom/android/gallery3d/data/DataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const-string v0, "content://com.android.gallery3d.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/provider/GalleryProvider;->BASE_URI:Landroid/net/Uri;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_account"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "picasa_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/provider/GalleryProvider;->SUPPORTED_PICASA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 258
    return-void
.end method

.method public static getUriFor(Landroid/content/Context;Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;
    .locals 3
    .parameter "context"
    .parameter "path"

    .prologue
    .line 76
    sget-object v0, Lcom/android/gallery3d/provider/GalleryProvider;->sBaseUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/provider/GalleryProvider;->sBaseUri:Landroid/net/Uri;

    .line 79
    :cond_0
    sget-object v0, Lcom/android/gallery3d/provider/GalleryProvider;->sBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static openPipeHelper(Ljava/lang/Object;Lcom/android/gallery3d/provider/GalleryProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/gallery3d/provider/GalleryProvider$PipeDataWriter",
            "<TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 239
    .local p0, args:Ljava/lang/Object;,"TT;"
    .local p1, func:Lcom/android/gallery3d/provider/GalleryProvider$PipeDataWriter;,"Lcom/android/gallery3d/provider/GalleryProvider$PipeDataWriter<TT;>;"
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 240
    .local v1, pipe:[Landroid/os/ParcelFileDescriptor;
    new-instance v2, Lcom/android/gallery3d/provider/GalleryProvider$1;

    invoke-direct {v2, p1, v1, p0}, Lcom/android/gallery3d/provider/GalleryProvider$1;-><init>(Lcom/android/gallery3d/provider/GalleryProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V

    .line 251
    .local v2, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/AsyncTaskUtil;->executeInParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 252
    const/4 v3, 0x0

    aget-object v3, v1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 253
    .end local v1           #pipe:[Landroid/os/ParcelFileDescriptor;
    .end local v2           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "failure making pipe"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private queryMtpItem(Lcom/android/gallery3d/data/MtpImage;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "image"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 142
    array-length v5, p2

    new-array v1, v5, [Ljava/lang/Object;

    .line 143
    .local v1, columnValues:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    array-length v4, p2

    .local v4, n:I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 144
    aget-object v0, p2, v3

    .line 145
    .local v0, column:Ljava/lang/String;
    const-string v5, "_display_name"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MtpImage;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 143
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :cond_0
    const-string v5, "_size"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MtpImage;->getSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_1

    .line 149
    :cond_1
    const-string v5, "mime_type"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MtpImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_1

    .line 151
    :cond_2
    const-string v5, "datetaken"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 152
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MtpImage;->getDateInMs()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_1

    .line 154
    :cond_3
    const-string v5, "GalleryProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported column: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 157
    .end local v0           #column:Ljava/lang/String;
    :cond_4
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 158
    .local v2, cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 159
    return-object v2
.end method

.method private queryPicasaItem(Lcom/android/gallery3d/data/MediaObject;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "image"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 164
    if-nez p2, :cond_0

    sget-object p2, Lcom/android/gallery3d/provider/GalleryProvider;->SUPPORTED_PICASA_COLUMNS:[Ljava/lang/String;

    .line 165
    :cond_0
    array-length v10, p2

    new-array v1, v10, [Ljava/lang/Object;

    .line 166
    .local v1, columnValues:[Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getLatitude(Lcom/android/gallery3d/data/MediaObject;)D

    move-result-wide v5

    .line 167
    .local v5, latitude:D
    invoke-static {p1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getLongitude(Lcom/android/gallery3d/data/MediaObject;)D

    move-result-wide v7

    .line 168
    .local v7, longitude:D
    invoke-static {v5, v6, v7, v8}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v4

    .line 170
    .local v4, isValidLatlong:Z
    const/4 v3, 0x0

    .local v3, i:I
    array-length v9, p2

    .local v9, n:I
    :goto_0
    if-ge v3, v9, :cond_c

    .line 171
    aget-object v0, p2, v3

    .line 172
    .local v0, column:Ljava/lang/String;
    const-string v10, "user_account"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getUserAccount(Landroid/content/Context;Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v3

    .line 170
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    :cond_1
    const-string v10, "picasa_id"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 175
    invoke-static {p1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaId(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v1, v3

    goto :goto_1

    .line 176
    :cond_2
    const-string v10, "_display_name"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 177
    invoke-static {p1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getImageTitle(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v3

    goto :goto_1

    .line 178
    :cond_3
    const-string v10, "_size"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 179
    invoke-static {p1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getImageSize(Lcom/android/gallery3d/data/MediaObject;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v3

    goto :goto_1

    .line 180
    :cond_4
    const-string v10, "mime_type"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 181
    invoke-static {p1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getContentType(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v3

    goto :goto_1

    .line 182
    :cond_5
    const-string v10, "datetaken"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 183
    invoke-static {p1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getDateTaken(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v1, v3

    goto :goto_1

    .line 184
    :cond_6
    const-string v10, "latitude"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 185
    if-eqz v4, :cond_7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    :goto_2
    aput-object v10, v1, v3

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    .line 186
    :cond_8
    const-string v10, "longitude"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 187
    if-eqz v4, :cond_9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    :goto_3
    aput-object v10, v1, v3

    goto :goto_1

    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 188
    :cond_a
    const-string v10, "orientation"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 189
    invoke-static {p1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getRotation(Lcom/android/gallery3d/data/MediaObject;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v3

    goto/16 :goto_1

    .line 191
    :cond_b
    const-string v10, "GalleryProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unsupported column: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 194
    .end local v0           #column:Ljava/lang/String;
    :cond_c
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 195
    .local v2, cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 196
    return-object v2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "uri"

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 94
    .local v2, token:J
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 95
    .local v1, path:Lcom/android/gallery3d/data/Path;
    iget-object v4, p0, Lcom/android/gallery3d/provider/GalleryProvider;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    .line 96
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 98
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .line 96
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 98
    .end local v0           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v1           #path:Lcom/android/gallery3d/data/Path;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 110
    .local v0, app:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/provider/GalleryProvider;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 111
    const/4 v1, 0x1

    return v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 204
    .local v2, token:J
    :try_start_0
    const-string v4, "w"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v5, "cannot open file for write"

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 207
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 208
    .local v1, path:Lcom/android/gallery3d/data/Path;
    iget-object v4, p0, Lcom/android/gallery3d/provider/GalleryProvider;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 209
    .local v0, object:Lcom/android/gallery3d/data/MediaObject;
    if-nez v0, :cond_1

    .line 210
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 212
    :cond_1
    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, p2}, Lcom/android/gallery3d/picasasource/PicasaSource;->openFile(Landroid/content/Context;Lcom/android/gallery3d/data/MediaObject;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0           #object:Lcom/android/gallery3d/data/MediaObject;
    :goto_0
    return-object v4

    .line 214
    .restart local v0       #object:Lcom/android/gallery3d/data/MediaObject;
    :cond_2
    :try_start_2
    instance-of v4, v0, Lcom/android/gallery3d/data/MtpImage;

    if-eqz v4, :cond_3

    .line 215
    const/4 v4, 0x0

    new-instance v5, Lcom/android/gallery3d/provider/GalleryProvider$MtpPipeDataWriter;

    check-cast v0, Lcom/android/gallery3d/data/MtpImage;

    .end local v0           #object:Lcom/android/gallery3d/data/MediaObject;
    const/4 v6, 0x0

    invoke-direct {v5, p0, v0, v6}, Lcom/android/gallery3d/provider/GalleryProvider$MtpPipeDataWriter;-><init>(Lcom/android/gallery3d/provider/GalleryProvider;Lcom/android/gallery3d/data/MtpImage;Lcom/android/gallery3d/provider/GalleryProvider$1;)V

    invoke-static {v4, v5}, Lcom/android/gallery3d/provider/GalleryProvider;->openPipeHelper(Ljava/lang/Object;Lcom/android/gallery3d/provider/GalleryProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 218
    .restart local v0       #object:Lcom/android/gallery3d/data/MediaObject;
    :cond_3
    :try_start_3
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unspported type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 118
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 120
    .local v10, token:J
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v9

    .line 121
    .local v9, path:Lcom/android/gallery3d/data/Path;
    iget-object v1, p0, Lcom/android/gallery3d/provider/GalleryProvider;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v1, v9}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    .line 122
    .local v2, object:Lcom/android/gallery3d/data/MediaObject;
    if-nez v2, :cond_0

    .line 123
    const-string v1, "GalleryProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    const/4 v1, 0x0

    .line 136
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v1

    .line 126
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 127
    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/provider/GalleryProvider;->queryPicasaItem(Lcom/android/gallery3d/data/MediaObject;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 136
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 129
    :cond_1
    :try_start_2
    instance-of v1, v2, Lcom/android/gallery3d/data/MtpImage;

    if-eqz v1, :cond_2

    .line 130
    move-object v0, v2

    check-cast v0, Lcom/android/gallery3d/data/MtpImage;

    move-object v4, v0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/gallery3d/provider/GalleryProvider;->queryMtpItem(Lcom/android/gallery3d/data/MtpImage;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 136
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 133
    :cond_2
    const/4 v1, 0x0

    .line 136
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2           #object:Lcom/android/gallery3d/data/MediaObject;
    .end local v9           #path:Lcom/android/gallery3d/data/Path;
    :catchall_0
    move-exception v1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
