.class public Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;
.super Landroid/content/ContentProvider;
.source "SharedImageProvider.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static mImageReadyCond:Landroid/os/ConditionVariable;


# instance fields
.field private final mMimeStreamType:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "content://com.android.gallery3d.filtershow.provider.SharedImageProvider/image"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    sput-object v0, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->mImageReadyCond:Landroid/os/ConditionVariable;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->mMimeStreamType:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "arg0"
    .parameter "mimeTypeFilter"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->mMimeStreamType:[Ljava/lang/String;

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 55
    const-string v0, "image/jpeg"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 65
    const-string v0, "prepare"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "prepare"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    sget-object v0, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->mImageReadyCond:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 72
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_1
    sget-object v0, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->mImageReadyCond:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, uriPath:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 128
    const/4 v3, 0x0

    .line 135
    :goto_0
    return-object v3

    .line 131
    :cond_0
    sget-object v3, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->mImageReadyCond:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    .line 132
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, path:Ljava/io/File;
    const/4 v0, 0x0

    .line 134
    .local v0, imode:I
    const/high16 v3, 0x1000

    or-int/2addr v0, v3

    .line 135
    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, uriPath:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 120
    :goto_0
    return-object v1

    .line 91
    :cond_0
    if-nez p2, :cond_1

    .line 92
    const/4 v5, 0x4

    new-array p2, v5, [Ljava/lang/String;

    .end local p2
    const-string v5, "_id"

    aput-object v5, p2, v7

    const/4 v5, 0x1

    const-string v6, "_data"

    aput-object v6, p2, v5

    const/4 v5, 0x2

    const-string v6, "_display_name"

    aput-object v6, p2, v5

    const/4 v5, 0x3

    const-string v6, "_size"

    aput-object v6, p2, v5

    .line 101
    .restart local p2
    :cond_1
    sget-object v5, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->mImageReadyCond:Landroid/os/ConditionVariable;

    invoke-virtual {v5}, Landroid/os/ConditionVariable;->block()V

    .line 103
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v3, path:Ljava/io/File;
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 106
    .local v1, cursor:Landroid/database/MatrixCursor;
    array-length v5, p2

    new-array v0, v5, [Ljava/lang/Object;

    .line 107
    .local v0, columns:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, p2

    if-ge v2, v5, :cond_6

    .line 108
    aget-object v5, p2, v2

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 109
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    .line 107
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    :cond_3
    aget-object v5, p2, v2

    const-string v6, "_data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 111
    aput-object p1, v0, v2

    goto :goto_2

    .line 112
    :cond_4
    aget-object v5, p2, v2

    const-string v6, "_display_name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    goto :goto_2

    .line 114
    :cond_5
    aget-object v5, p2, v2

    const-string v6, "_size"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v2

    goto :goto_2

    .line 118
    :cond_6
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method
