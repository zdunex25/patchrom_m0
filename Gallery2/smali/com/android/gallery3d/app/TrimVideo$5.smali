.class Lcom/android/gallery3d/app/TrimVideo$5;
.super Ljava/lang/Object;
.source "TrimVideo.java"

# interfaces
.implements Lcom/android/gallery3d/app/TrimVideo$ContentResolverQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/TrimVideo;->insertContent(Ljava/io/File;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/TrimVideo;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/TrimVideo;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/gallery3d/app/TrimVideo$5;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    iput-object p2, p0, Lcom/android/gallery3d/app/TrimVideo$5;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCursorResult(Landroid/database/Cursor;)V
    .locals 11
    .parameter "cursor"

    .prologue
    const-wide/16 v9, 0x0

    .line 368
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 369
    .local v4, timeTaken:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 370
    iget-object v6, p0, Lcom/android/gallery3d/app/TrimVideo$5;->val$values:Landroid/content/ContentValues;

    const-string v7, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 372
    :cond_0
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 373
    .local v0, latitude:D
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 376
    .local v2, longitude:D
    cmpl-double v6, v0, v9

    if-nez v6, :cond_1

    cmpl-double v6, v2, v9

    if-eqz v6, :cond_2

    .line 377
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/TrimVideo$5;->val$values:Landroid/content/ContentValues;

    const-string v7, "latitude"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 378
    iget-object v6, p0, Lcom/android/gallery3d/app/TrimVideo$5;->val$values:Landroid/content/ContentValues;

    const-string v7, "longitude"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 380
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/app/TrimVideo$5;->val$values:Landroid/content/ContentValues;

    const-string v7, "resolution"

    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method
