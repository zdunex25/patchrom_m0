.class public Lcom/android/gallery3d/data/TimeClustering;
.super Lcom/android/gallery3d/data/Clustering;
.source "TimeClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/TimeClustering$DateComparator;
    }
.end annotation


# static fields
.field private static CLUSTER_SPLIT_MULTIPLIER:I

.field private static final sDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClusterSplitTime:J

.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Cluster;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrCluster:Lcom/android/gallery3d/data/Cluster;

.field private mLargeClusterSplitTime:J

.field private mMaxClusterSize:I

.field private mMinClusterSize:I

.field private mNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x3

    sput v0, Lcom/android/gallery3d/data/TimeClustering;->CLUSTER_SPLIT_MULTIPLIER:I

    .line 83
    new-instance v0, Lcom/android/gallery3d/data/TimeClustering$DateComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/TimeClustering$DateComparator;-><init>(Lcom/android/gallery3d/data/TimeClustering$1;)V

    sput-object v0, Lcom/android/gallery3d/data/TimeClustering;->sDateComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/gallery3d/data/Clustering;-><init>()V

    .line 75
    const-wide/32 v0, 0x3763b0

    iput-wide v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    .line 77
    iget-wide v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mLargeClusterSplitTime:J

    .line 79
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mMinClusterSize:I

    .line 80
    const/16 v0, 0x23

    iput v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    .line 94
    iput-object p1, p0, Lcom/android/gallery3d/data/TimeClustering;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Lcom/android/gallery3d/data/Cluster;

    invoke-direct {v0}, Lcom/android/gallery3d/data/Cluster;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    .line 97
    return-void
.end method

.method private compute(Lcom/android/gallery3d/data/SmallItem;)V
    .locals 9
    .parameter "currentItem"

    .prologue
    .line 193
    if-eqz p1, :cond_7

    .line 194
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 195
    .local v2, numClusters:I
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Cluster;->size()I

    move-result v3

    .line 196
    .local v3, numCurrClusterItems:I
    const/4 v0, 0x0

    .line 197
    .local v0, geographicallySeparateItem:Z
    const/4 v1, 0x0

    .line 201
    .local v1, itemAddedToCurrentCluster:Z
    if-nez v3, :cond_1

    .line 202
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/data/Cluster;->addItem(Lcom/android/gallery3d/data/SmallItem;)V

    .line 246
    .end local v0           #geographicallySeparateItem:Z
    .end local v1           #itemAddedToCurrentCluster:Z
    .end local v2           #numClusters:I
    .end local v3           #numCurrClusterItems:I
    :cond_0
    :goto_0
    return-void

    .line 204
    .restart local v0       #geographicallySeparateItem:Z
    .restart local v1       #itemAddedToCurrentCluster:Z
    .restart local v2       #numClusters:I
    .restart local v3       #numCurrClusterItems:I
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Cluster;->getLastItem()Lcom/android/gallery3d/data/SmallItem;

    move-result-object v4

    .line 205
    .local v4, prevItem:Lcom/android/gallery3d/data/SmallItem;
    invoke-static {v4, p1}, Lcom/android/gallery3d/data/TimeClustering;->isGeographicallySeparated(Lcom/android/gallery3d/data/SmallItem;Lcom/android/gallery3d/data/SmallItem;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 206
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const/4 v0, 0x1

    .line 221
    :goto_1
    if-nez v1, :cond_0

    .line 222
    new-instance v5, Lcom/android/gallery3d/data/Cluster;

    invoke-direct {v5}, Lcom/android/gallery3d/data/Cluster;-><init>()V

    iput-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    .line 223
    if-eqz v0, :cond_2

    .line 224
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/gallery3d/data/Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    .line 226
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/data/Cluster;->addItem(Lcom/android/gallery3d/data/SmallItem;)V

    goto :goto_0

    .line 208
    :cond_3
    iget v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    if-le v3, v5, :cond_4

    .line 209
    invoke-direct {p0}, Lcom/android/gallery3d/data/TimeClustering;->splitAndAddCurrentCluster()V

    goto :goto_1

    .line 210
    :cond_4
    invoke-static {v4, p1}, Lcom/android/gallery3d/data/TimeClustering;->timeDistance(Lcom/android/gallery3d/data/SmallItem;Lcom/android/gallery3d/data/SmallItem;)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_5

    .line 211
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/data/Cluster;->addItem(Lcom/android/gallery3d/data/SmallItem;)V

    .line 212
    const/4 v1, 0x1

    goto :goto_1

    .line 213
    :cond_5
    if-lez v2, :cond_6

    iget v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mMinClusterSize:I

    if-ge v3, v5, :cond_6

    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    iget-boolean v5, v5, Lcom/android/gallery3d/data/Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    if-nez v5, :cond_6

    .line 215
    invoke-direct {p0}, Lcom/android/gallery3d/data/TimeClustering;->mergeAndAddCurrentCluster()V

    goto :goto_1

    .line 217
    :cond_6
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    .end local v0           #geographicallySeparateItem:Z
    .end local v1           #itemAddedToCurrentCluster:Z
    .end local v2           #numClusters:I
    .end local v3           #numCurrClusterItems:I
    .end local v4           #prevItem:Lcom/android/gallery3d/data/SmallItem;
    :cond_7
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Cluster;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 231
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 232
    .restart local v2       #numClusters:I
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Cluster;->size()I

    move-result v3

    .line 235
    .restart local v3       #numCurrClusterItems:I
    iget v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    if-le v3, v5, :cond_8

    .line 236
    invoke-direct {p0}, Lcom/android/gallery3d/data/TimeClustering;->splitAndAddCurrentCluster()V

    .line 243
    :goto_2
    new-instance v5, Lcom/android/gallery3d/data/Cluster;

    invoke-direct {v5}, Lcom/android/gallery3d/data/Cluster;-><init>()V

    iput-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    goto :goto_0

    .line 237
    :cond_8
    if-lez v2, :cond_9

    iget v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mMinClusterSize:I

    if-ge v3, v5, :cond_9

    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    iget-boolean v5, v5, Lcom/android/gallery3d/data/Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    if-nez v5, :cond_9

    .line 239
    invoke-direct {p0}, Lcom/android/gallery3d/data/TimeClustering;->mergeAndAddCurrentCluster()V

    goto :goto_2

    .line 241
    :cond_9
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private getPartitionIndexForCurrentCluster()I
    .locals 26

    .prologue
    .line 269
    const/4 v14, -0x1

    .line 270
    .local v14, partitionIndex:I
    const/high16 v10, 0x4000

    .line 271
    .local v10, largestChange:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery3d/data/Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 272
    .local v3, currClusterItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/SmallItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery3d/data/Cluster;->size()I

    move-result v13

    .line 273
    .local v13, numCurrClusterItems:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/gallery3d/data/TimeClustering;->mMinClusterSize:I

    .line 276
    .local v11, minClusterSize:I
    add-int/lit8 v22, v11, 0x1

    move/from16 v0, v22

    if-le v13, v0, :cond_3

    .line 277
    move v9, v11

    .local v9, i:I
    :goto_0
    sub-int v22, v13, v11

    move/from16 v0, v22

    if-ge v9, v0, :cond_3

    .line 278
    add-int/lit8 v22, v9, -0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/gallery3d/data/SmallItem;

    .line 279
    .local v15, prevItem:Lcom/android/gallery3d/data/SmallItem;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/SmallItem;

    .line 280
    .local v4, currItem:Lcom/android/gallery3d/data/SmallItem;
    add-int/lit8 v22, v9, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/data/SmallItem;

    .line 282
    .local v12, nextItem:Lcom/android/gallery3d/data/SmallItem;
    iget-wide v0, v12, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    move-wide/from16 v18, v0

    .line 283
    .local v18, timeNext:J
    iget-wide v0, v4, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    move-wide/from16 v16, v0

    .line 284
    .local v16, timeCurr:J
    iget-wide v0, v15, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    move-wide/from16 v20, v0

    .line 286
    .local v20, timePrev:J
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-eqz v22, :cond_0

    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-eqz v22, :cond_0

    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-nez v22, :cond_1

    .line 277
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 288
    :cond_1
    sub-long v22, v18, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 289
    .local v5, diff1:J
    sub-long v22, v16, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 291
    .local v7, diff2:J
    long-to-float v0, v5

    move/from16 v22, v0

    long-to-float v0, v7

    move/from16 v23, v0

    const v24, 0x3c23d70a

    add-float v23, v23, v24

    div-float v22, v22, v23

    long-to-float v0, v7

    move/from16 v23, v0

    long-to-float v0, v5

    move/from16 v24, v0

    const v25, 0x3c23d70a

    add-float v24, v24, v25

    div-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 292
    .local v2, change:F
    cmpl-float v22, v2, v10

    if-lez v22, :cond_0

    .line 293
    invoke-static {v4, v15}, Lcom/android/gallery3d/data/TimeClustering;->timeDistance(Lcom/android/gallery3d/data/SmallItem;Lcom/android/gallery3d/data/SmallItem;)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/TimeClustering;->mLargeClusterSplitTime:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_2

    .line 294
    move v14, v9

    .line 295
    move v10, v2

    goto :goto_1

    .line 296
    :cond_2
    invoke-static {v12, v4}, Lcom/android/gallery3d/data/TimeClustering;->timeDistance(Lcom/android/gallery3d/data/SmallItem;Lcom/android/gallery3d/data/SmallItem;)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/TimeClustering;->mLargeClusterSplitTime:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_0

    .line 297
    add-int/lit8 v14, v9, 0x1

    .line 298
    move v10, v2

    goto :goto_1

    .line 303
    .end local v2           #change:F
    .end local v4           #currItem:Lcom/android/gallery3d/data/SmallItem;
    .end local v5           #diff1:J
    .end local v7           #diff2:J
    .end local v9           #i:I
    .end local v12           #nextItem:Lcom/android/gallery3d/data/SmallItem;
    .end local v15           #prevItem:Lcom/android/gallery3d/data/SmallItem;
    .end local v16           #timeCurr:J
    .end local v18           #timeNext:J
    .end local v20           #timePrev:J
    :cond_3
    return v14
.end method

.method private static isGeographicallySeparated(Lcom/android/gallery3d/data/SmallItem;Lcom/android/gallery3d/data/SmallItem;)Z
    .locals 11
    .parameter "itemA"
    .parameter "itemB"

    .prologue
    const/4 v10, 0x0

    .line 323
    iget-wide v0, p0, Lcom/android/gallery3d/data/SmallItem;->lat:D

    iget-wide v2, p0, Lcom/android/gallery3d/data/SmallItem;->lng:D

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/gallery3d/data/SmallItem;->lat:D

    iget-wide v2, p1, Lcom/android/gallery3d/data/SmallItem;->lng:D

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v10

    .line 333
    :goto_0
    return v0

    .line 328
    :cond_1
    iget-wide v0, p0, Lcom/android/gallery3d/data/SmallItem;->lat:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/data/SmallItem;->lng:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/gallery3d/data/SmallItem;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    iget-wide v6, p1, Lcom/android/gallery3d/data/SmallItem;->lng:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/android/gallery3d/util/GalleryUtils;->fastDistanceMeters(DDDD)D

    move-result-wide v8

    .line 333
    .local v8, distance:D
    invoke-static {v8, v9}, Lcom/android/gallery3d/util/GalleryUtils;->toMile(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v10

    goto :goto_0
.end method

.method private mergeAndAddCurrentCluster()V
    .locals 7

    .prologue
    .line 307
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 308
    .local v2, numClusters:I
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Cluster;

    .line 309
    .local v4, prevCluster:Lcom/android/gallery3d/data/Cluster;
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 310
    .local v0, currClusterItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/SmallItem;>;"
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Cluster;->size()I

    move-result v3

    .line 311
    .local v3, numCurrClusterItems:I
    invoke-virtual {v4}, Lcom/android/gallery3d/data/Cluster;->size()I

    move-result v5

    iget v6, p0, Lcom/android/gallery3d/data/TimeClustering;->mMinClusterSize:I

    if-ge v5, v6, :cond_1

    .line 312
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 313
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/SmallItem;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/Cluster;->addItem(Lcom/android/gallery3d/data/SmallItem;)V

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 319
    .end local v1           #i:I
    :goto_1
    return-void

    .line 317
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setTimeRange(JI)V
    .locals 7
    .parameter "timeRange"
    .parameter "numItems"

    .prologue
    .line 178
    if-eqz p3, :cond_0

    .line 179
    div-int/lit8 v6, p3, 0x9

    .line 182
    .local v6, meanItemsPerCluster:I
    div-int/lit8 v0, v6, 0x2

    iput v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mMinClusterSize:I

    .line 183
    mul-int/lit8 v0, v6, 0x2

    iput v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    .line 184
    int-to-long v0, p3

    div-long v0, p1, v0

    sget v2, Lcom/android/gallery3d/data/TimeClustering;->CLUSTER_SPLIT_MULTIPLIER:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    .line 186
    .end local v6           #meanItemsPerCluster:I
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0x6ddd00

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/common/Utils;->clamp(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    .line 187
    iget-wide v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mLargeClusterSplitTime:J

    .line 188
    iget v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mMinClusterSize:I

    const/16 v1, 0x8

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mMinClusterSize:I

    .line 189
    iget v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    const/16 v1, 0x14

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    .line 190
    return-void
.end method

.method private splitAndAddCurrentCluster()V
    .locals 7

    .prologue
    .line 249
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 250
    .local v0, currClusterItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/SmallItem;>;"
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Cluster;->size()I

    move-result v2

    .line 251
    .local v2, numCurrClusterItems:I
    invoke-direct {p0}, Lcom/android/gallery3d/data/TimeClustering;->getPartitionIndexForCurrentCluster()I

    move-result v4

    .line 252
    .local v4, secondPartitionStartIndex:I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 253
    new-instance v3, Lcom/android/gallery3d/data/Cluster;

    invoke-direct {v3}, Lcom/android/gallery3d/data/Cluster;-><init>()V

    .line 254
    .local v3, partitionedCluster:Lcom/android/gallery3d/data/Cluster;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 255
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/SmallItem;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/Cluster;->addItem(Lcom/android/gallery3d/data/SmallItem;)V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v3, Lcom/android/gallery3d/data/Cluster;

    .end local v3           #partitionedCluster:Lcom/android/gallery3d/data/Cluster;
    invoke-direct {v3}, Lcom/android/gallery3d/data/Cluster;-><init>()V

    .line 259
    .restart local v3       #partitionedCluster:Lcom/android/gallery3d/data/Cluster;
    move v1, v4

    :goto_1
    if-ge v1, v2, :cond_1

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/SmallItem;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/Cluster;->addItem(Lcom/android/gallery3d/data/SmallItem;)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v1           #j:I
    .end local v3           #partitionedCluster:Lcom/android/gallery3d/data/Cluster;
    :goto_2
    return-void

    .line 264
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static timeDistance(Lcom/android/gallery3d/data/SmallItem;Lcom/android/gallery3d/data/SmallItem;)J
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 338
    iget-wide v0, p0, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-wide v2, p1, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v4, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 165
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/SmallItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 167
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/SmallItem;

    iget-object v4, v4, Lcom/android/gallery3d/data/SmallItem;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-object v3
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 17
    .parameter "baseSet"

    .prologue
    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v13

    .line 102
    .local v13, total:I
    new-array v1, v13, [Lcom/android/gallery3d/data/SmallItem;

    .line 103
    .local v1, buf:[Lcom/android/gallery3d/data/SmallItem;
    const/4 v14, 0x2

    new-array v4, v14, [D

    .line 105
    .local v4, latLng:[D
    new-instance v14, Lcom/android/gallery3d/data/TimeClustering$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13, v4, v1}, Lcom/android/gallery3d/data/TimeClustering$1;-><init>(Lcom/android/gallery3d/data/TimeClustering;I[D[Lcom/android/gallery3d/data/SmallItem;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/SmallItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v13, :cond_1

    .line 121
    aget-object v14, v1, v2

    if-eqz v14, :cond_0

    .line 122
    aget-object v14, v1, v2

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_1
    sget-object v14, Lcom/android/gallery3d/data/TimeClustering;->sDateComparator:Ljava/util/Comparator;

    invoke-static {v3, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 128
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 129
    .local v10, n:I
    const-wide/16 v8, 0x0

    .line 130
    .local v8, minTime:J
    const-wide/16 v6, 0x0

    .line 131
    .local v6, maxTime:J
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v10, :cond_4

    .line 132
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/gallery3d/data/SmallItem;

    iget-wide v11, v14, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    .line 133
    .local v11, t:J
    const-wide/16 v14, 0x0

    cmp-long v14, v11, v14

    if-nez v14, :cond_2

    .line 131
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    :cond_2
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_3

    .line 135
    move-wide v6, v11

    move-wide v8, v11

    goto :goto_2

    .line 137
    :cond_3
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 138
    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_2

    .line 142
    .end local v11           #t:J
    :cond_4
    sub-long v14, v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v10}, Lcom/android/gallery3d/data/TimeClustering;->setTimeRange(JI)V

    .line 144
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v10, :cond_5

    .line 145
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/gallery3d/data/SmallItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/gallery3d/data/TimeClustering;->compute(Lcom/android/gallery3d/data/SmallItem;)V

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 148
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/gallery3d/data/TimeClustering;->compute(Lcom/android/gallery3d/data/SmallItem;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 151
    .local v5, m:I
    new-array v14, v5, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/gallery3d/data/TimeClustering;->mNames:[Ljava/lang/String;

    .line 152
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_6

    .line 153
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/data/TimeClustering;->mNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/gallery3d/data/Cluster;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/TimeClustering;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/gallery3d/data/Cluster;->generateCaption(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v2

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 155
    :cond_6
    return-void
.end method
