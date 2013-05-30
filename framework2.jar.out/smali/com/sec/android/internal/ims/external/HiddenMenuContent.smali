.class public Lcom/sec/android/internal/ims/external/HiddenMenuContent;
.super Landroid/content/ContentProvider;
.source "HiddenMenuContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "HiddenMenuContent.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final TABLE_NAME:Ljava/lang/String; = "HiddenMenu"

.field private static final TAG:Ljava/lang/String; = "MyContentProvider"

.field private static dbHelper:Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;

.field private static isKTT:Z

.field private static isLGT:Z

.field private static isSKT:Z

.field private static sqlDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    sput-boolean v0, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->isSKT:Z

    .line 72
    sput-boolean v0, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->isLGT:Z

    .line 73
    sput-boolean v0, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->isKTT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 77
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput-boolean p0, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->isSKT:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->isLGT:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput-boolean p0, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->isLGT:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput-boolean p0, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->isKTT:Z

    return p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, x:I
    sget-object v1, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "HiddenMenu"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 259
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v6, 0x0

    .line 273
    const/4 v2, 0x0

    .line 277
    .local v2, rowUri:Landroid/net/Uri;
    if-eqz p2, :cond_0

    .line 278
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 291
    .local v3, values1:Landroid/content/ContentValues;
    :goto_0
    sget-object v4, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "HiddenMenu"

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 292
    .local v0, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 294
    sget-object v4, Lcom/sec/android/internal/ims/external/MenuDetails$User;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 296
    return-object v2

    .line 280
    .end local v0           #rowId:J
    .end local v3           #values1:Landroid/content/ContentValues;
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .restart local v3       #values1:Landroid/content/ContentValues;
    goto :goto_0

    .line 298
    .restart local v0       #rowId:J
    :cond_1
    new-instance v4, Landroid/database/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert row into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 306
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->dbHelper:Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;

    .line 307
    sget-object v0, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->dbHelper:Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 309
    sget-object v0, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->dbHelper:Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v4, 0x0

    .line 317
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 318
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->dbHelper:Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 319
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "HiddenMenu"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, p5

    .line 320
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 321
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 322
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v4, 0x0

    .line 332
    if-eqz p2, :cond_0

    .line 333
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 337
    .local v1, values1:Landroid/content/ContentValues;
    :goto_0
    sget-object v2, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "HiddenMenu"

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 338
    .local v0, result:I
    if-lez v0, :cond_1

    .line 340
    return v0

    .line 335
    .end local v0           #result:I
    .end local v1           #values1:Landroid/content/ContentValues;
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .restart local v1       #values1:Landroid/content/ContentValues;
    goto :goto_0

    .line 343
    .restart local v0       #result:I
    :cond_1
    new-instance v2, Landroid/database/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update row into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
