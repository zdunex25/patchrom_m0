.class public Lcom/android/gallery3d/common/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/common/FileCache$DatabaseHelper;,
        Lcom/android/gallery3d/common/FileCache$FileEntry;
    }
.end annotation


# static fields
.field private static final FREESPACE_ORDER_BY:Ljava/lang/String;

.field private static final FREESPACE_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_SIZE_SUM:[Ljava/lang/String;

.field private static final TABLE_NAME:Ljava/lang/String;


# instance fields
.field private mDbHelper:Lcom/android/gallery3d/common/FileCache$DatabaseHelper;

.field private mRootDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    sget-object v0, Lcom/android/gallery3d/common/FileCache$FileEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/common/FileCache;->TABLE_NAME:Ljava/lang/String;

    .line 44
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "sum(%s)"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "size"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/common/FileCache;->PROJECTION_SIZE_SUM:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "filename"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "content_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/common/FileCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    .line 49
    const-string v0, "%s ASC"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "last_access"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/common/FileCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/common/FileCache;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/common/FileCache;->mRootDir:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/common/FileCache;->mDbHelper:Lcom/android/gallery3d/common/FileCache$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/FileCache$DatabaseHelper;->close()V

    .line 98
    return-void
.end method
