.class Lcom/android/camera/PhotoModule$ImageNamer;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageNamer"
.end annotation


# instance fields
.field private mDateTaken:J

.field private mHeight:I

.field private mRequestPending:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mStop:Z

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1269
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1270
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule$ImageNamer;->start()V

    .line 1271
    return-void
.end method

.method private cleanOldUri()V
    .locals 3

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1350
    :goto_0
    return-void

    .line 1348
    :cond_0
    invoke-static {}, Lcom/android/camera/Storage;->getStorage()Lcom/android/camera/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private generateUri()V
    .locals 7

    .prologue
    .line 1340
    iget-wide v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mDateTaken:J

    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mTitle:Ljava/lang/String;

    .line 1341
    invoke-static {}, Lcom/android/camera/Storage;->getStorage()Lcom/android/camera/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mTitle:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mDateTaken:J

    iget v5, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mWidth:I

    iget v6, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mHeight:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/Storage;->newImage(Landroid/content/ContentResolver;Ljava/lang/String;JII)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    .line 1342
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$6300()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 1334
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mStop:Z

    .line 1335
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1336
    monitor-exit p0

    return-void

    .line 1334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1308
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1292
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mRequestPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1294
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1295
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1301
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    .line 1302
    .local v0, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1303
    monitor-exit p0

    return-object v0

    .line 1292
    .end local v0           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized prepareUri(Landroid/content/ContentResolver;JIII)V
    .locals 2
    .parameter "resolver"
    .parameter "dateTaken"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 1276
    monitor-enter p0

    :try_start_0
    rem-int/lit16 v1, p6, 0xb4

    if-eqz v1, :cond_0

    .line 1277
    move v0, p4

    .line 1278
    .local v0, tmp:I
    move p4, p5

    .line 1279
    move p5, v0

    .line 1281
    .end local v0           #tmp:I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mRequestPending:Z

    .line 1282
    iput-object p1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    .line 1283
    iput-wide p2, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mDateTaken:J

    .line 1284
    iput p4, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mWidth:I

    .line 1285
    iput p5, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mHeight:I

    .line 1286
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    monitor-exit p0

    return-void

    .line 1276
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized run()V
    .locals 1

    .prologue
    .line 1315
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mStop:Z

    if-eqz v0, :cond_0

    .line 1329
    invoke-direct {p0}, Lcom/android/camera/PhotoModule$ImageNamer;->cleanOldUri()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    monitor-exit p0

    return-void

    .line 1316
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mRequestPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 1318
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1319
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1324
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule$ImageNamer;->cleanOldUri()V

    .line 1325
    invoke-direct {p0}, Lcom/android/camera/PhotoModule$ImageNamer;->generateUri()V

    .line 1326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mRequestPending:Z

    .line 1327
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
