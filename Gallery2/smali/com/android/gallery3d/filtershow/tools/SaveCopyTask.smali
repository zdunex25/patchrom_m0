.class public Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;
.super Landroid/os/AsyncTask;
.source "SaveCopyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;,
        Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/gallery3d/filtershow/presets/ImagePreset;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field private static final COPY_EXIF_ATTRIBUTES:[Ljava/lang/String;


# instance fields
.field private final callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

.field private final context:Landroid/content/Context;

.field private final destinationFile:Ljava/io/File;

.field private final saveFileName:Ljava/lang/String;

.field private final sourceUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 153
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ExposureTime"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Flash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FocalLength"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPSAltitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ISOSpeedRatings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Make"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "WhiteBalance"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->COPY_EXIF_ATTRIBUTES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;)V
    .locals 4
    .parameter "context"
    .parameter "sourceUri"
    .parameter "destination"
    .parameter "callback"

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    .line 110
    iput-object p4, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

    .line 112
    if-nez p3, :cond_0

    .line 113
    invoke-static {p1, p2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    .line 118
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->saveFileName:Ljava/lang/String;

    .line 120
    return-void

    .line 115
    :cond_0
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    goto :goto_0
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 77
    if-eqz p0, :cond_0

    .line 79
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private copyExif(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9
    .parameter "sourceUri"
    .parameter "destPath"

    .prologue
    const/4 v3, 0x0

    .line 195
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->copyExif(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v3

    .line 204
    .local v2, PROJECTION:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 206
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 208
    .local v8, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-static {v8, p2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->copyExif(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v8           #path:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 214
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "SaveCopyTask"

    const-string v1, "Failed to copy exif"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static copyExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "sourcePath"
    .parameter "destPath"

    .prologue
    .line 176
    :try_start_0
    new-instance v6, Landroid/media/ExifInterface;

    invoke-direct {v6, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 177
    .local v6, source:Landroid/media/ExifInterface;
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, dest:Landroid/media/ExifInterface;
    const/4 v5, 0x0

    .line 179
    .local v5, needsSave:Z
    sget-object v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->COPY_EXIF_ATTRIBUTES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 180
    .local v7, tag:Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 181
    .local v8, value:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 182
    const/4 v5, 0x1

    .line 183
    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    .end local v7           #tag:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 187
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dest:Landroid/media/ExifInterface;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #needsSave:Z
    .end local v6           #source:Landroid/media/ExifInterface;
    :cond_2
    :goto_1
    return-void

    .line 189
    :catch_0
    move-exception v2

    .line 190
    .local v2, ex:Ljava/io/IOException;
    const-string v9, "SaveCopyTask"

    const-string v10, "Failed to copy exif metadata"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .parameter "context"
    .parameter "sourceUri"

    .prologue
    .line 123
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 124
    .local v0, saveDirectory:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #saveDirectory:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "EditedOnlinePhotos"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    .restart local v0       #saveDirectory:Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 130
    :cond_2
    return-object v0
.end method

.method public static getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 6
    .parameter "context"
    .parameter "sourceUri"

    .prologue
    .line 134
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 135
    .local v1, saveDirectory:Ljava/io/File;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, filename:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".JPG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 4
    .parameter "context"
    .parameter "sourceUri"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 279
    new-array v0, v1, [Ljava/io/File;

    .line 280
    .local v0, dir:[Ljava/io/File;
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_data"

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$1;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$1;-><init>([Ljava/io/File;)V

    invoke-static {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V

    .line 290
    aget-object v1, v0, v3

    return-object v1
.end method

.method public static insertContent(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .parameter "context"
    .parameter "sourceUri"
    .parameter "file"
    .parameter "saveFileName"

    .prologue
    const/4 v8, 0x0

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 299
    .local v0, now:J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 300
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "title"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v4, "_display_name"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v4, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 304
    const-string v4, "date_modified"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 305
    const-string v4, "date_added"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 306
    const-string v4, "orientation"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const-string v4, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v4, "_size"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 310
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "datetaken"

    aput-object v4, v2, v8

    const/4 v4, 0x1

    const-string v5, "latitude"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "longitude"

    aput-object v5, v2, v4

    .line 314
    .local v2, projection:[Ljava/lang/String;
    new-instance v4, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$2;

    invoke-direct {v4, v3}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$2;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p0, p1, v2, v4}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method private loadMutableBitmap()Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 144
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 146
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 147
    .local v1, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v3

    .line 149
    .local v3, orientation:I
    invoke-static {v0, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    return-object v0
.end method

.method private static querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V
    .locals 7
    .parameter "context"
    .parameter "sourceUri"
    .parameter "projection"
    .parameter "callback"

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 262
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 264
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 266
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-interface {p3, v6}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    if-eqz v6, :cond_1

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_1
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v1

    .line 272
    if-eqz v6, :cond_1

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/Object;)V
    .locals 6
    .parameter "bitmap"
    .parameter "destination"
    .parameter "xmp"

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 64
    .local v1, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1           #os:Ljava/io/OutputStream;
    .local v2, os:Ljava/io/OutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5f

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 71
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    :goto_0
    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/gallery3d/util/XmpUtilHelper;->writeXMPMeta(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 74
    :cond_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string v3, "SaveCopyTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in writing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    throw v3

    .end local v1           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_2

    .line 66
    .end local v1           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/net/Uri;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 224
    aget-object v7, p1, v8

    if-nez v7, :cond_0

    move-object v4, v6

    .line 248
    :goto_0
    return-object v4

    .line 228
    :cond_0
    aget-object v3, p1, v8

    .line 231
    .local v3, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->loadMutableBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 234
    .local v5, xmp:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 235
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->isPanoramaSafe()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 236
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 237
    invoke-static {v2}, Lcom/android/gallery3d/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v5

    .line 239
    .end local v5           #xmp:Ljava/lang/Object;
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    invoke-static {v0, v7, v5}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/Object;)V

    .line 240
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->copyExif(Landroid/net/Uri;Ljava/lang/String;)V

    .line 242
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->saveFileName:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->insertContent(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 243
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 247
    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v7, "SaveCopyTask"

    const-string v8, "Failed to save image!"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    .line 248
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    check-cast p1, [Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->doInBackground([Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;->onComplete(Landroid/net/Uri;)V

    .line 257
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
