.class Lcom/android/gallery3d/data/Cluster;
.super Ljava/lang/Object;
.source "TimeClustering.java"


# instance fields
.field public mGeographicallySeparatedFromPrevCluster:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    .line 359
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/gallery3d/data/SmallItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    return-void
.end method

.method public generateCaption(Landroid/content/Context;)Ljava/lang/String;
    .locals 24
    .parameter "context"

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 380
    .local v19, n:I
    const-wide/16 v3, 0x0

    .line 381
    .local v3, minTimestamp:J
    const-wide/16 v5, 0x0

    .line 383
    .local v5, maxTimestamp:J
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/SmallItem;

    iget-wide v0, v2, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    move-wide/from16 v20, v0

    .line 385
    .local v20, t:J
    const-wide/16 v10, 0x0

    cmp-long v2, v20, v10

    if-nez v2, :cond_0

    .line 383
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 386
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v2, v3, v10

    if-nez v2, :cond_1

    .line 387
    move-wide/from16 v5, v20

    move-wide/from16 v3, v20

    goto :goto_1

    .line 389
    :cond_1
    move-wide/from16 v0, v20

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 390
    move-wide/from16 v0, v20

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    goto :goto_1

    .line 393
    .end local v20           #t:J
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v2, v3, v10

    if-nez v2, :cond_4

    const-string v13, ""

    .line 437
    :cond_3
    :goto_2
    return-object v13

    .line 396
    :cond_4
    const-string v2, "MMddyy"

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 398
    .local v18, minDay:Ljava/lang/String;
    const-string v2, "MMddyy"

    invoke-static {v2, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 401
    .local v17, maxDay:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 404
    const/high16 v7, 0x8

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v13

    .line 410
    .local v13, caption:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 411
    const v7, 0x10010

    .line 414
    .local v7, flags:I
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    .line 416
    .local v14, dateRangeWithOptionalYear:Ljava/lang/String;
    const v2, 0x10014

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v15

    .line 418
    .local v15, dateRangeWithYear:Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 423
    add-long v10, v3, v5

    const-wide/16 v22, 0x2

    div-long v8, v10, v22

    .line 424
    .local v8, midTimestamp:J
    const v12, 0x10011

    move-object/from16 v7, p1

    move-wide v10, v8

    invoke-static/range {v7 .. v12}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v7           #flags:I
    move-result-object v13

    goto :goto_2

    .line 431
    .end local v8           #midTimestamp:J
    .end local v13           #caption:Ljava/lang/String;
    .end local v14           #dateRangeWithOptionalYear:Ljava/lang/String;
    .end local v15           #dateRangeWithYear:Ljava/lang/String;
    :cond_5
    const v7, 0x10030

    .restart local v7       #flags:I
    move-object/from16 v2, p1

    .line 433
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #caption:Ljava/lang/String;
    goto :goto_2
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastItem()Lcom/android/gallery3d/data/SmallItem;
    .locals 3

    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 371
    .local v0, n:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/SmallItem;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
