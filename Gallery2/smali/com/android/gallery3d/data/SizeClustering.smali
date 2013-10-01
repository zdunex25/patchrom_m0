.class public Lcom/android/gallery3d/data/SizeClustering;
.super Lcom/android/gallery3d/data/Clustering;
.source "SizeClustering.java"


# static fields
.field private static final SIZE_LEVELS:[J


# instance fields
.field private mClusters:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMinSizes:[J

.field private mNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/data/SizeClustering;->SIZE_LEVELS:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x6t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x80t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/gallery3d/data/Clustering;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/gallery3d/data/SizeClustering;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000()[J
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/gallery3d/data/SizeClustering;->SIZE_LEVELS:[J

    return-object v0
.end method

.method private getSizeString(I)Ljava/lang/String;
    .locals 5
    .parameter "index"

    .prologue
    const-wide/32 v3, 0x40000000

    .line 115
    sget-object v2, Lcom/android/gallery3d/data/SizeClustering;->SIZE_LEVELS:[J

    aget-wide v0, v2, p1

    .line 116
    .local v0, bytes:J
    cmp-long v2, v0, v3

    if-ltz v2, :cond_0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v3, 0x100000

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 1
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
    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/data/SizeClustering;->mClusters:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/data/SizeClustering;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMinSize(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/data/SizeClustering;->mMinSizes:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/data/SizeClustering;->mClusters:[Ljava/util/ArrayList;

    array-length v0, v0

    return v0
.end method

.method public run(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 13
    .parameter "baseSet"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 56
    sget-object v7, Lcom/android/gallery3d/data/SizeClustering;->SIZE_LEVELS:[J

    array-length v7, v7

    new-array v1, v7, [Ljava/util/ArrayList;

    .line 57
    .local v1, group:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v7, Lcom/android/gallery3d/data/SizeClustering$1;

    invoke-direct {v7, p0, v1}, Lcom/android/gallery3d/data/SizeClustering$1;-><init>(Lcom/android/gallery3d/data/SizeClustering;[Ljava/util/ArrayList;)V

    invoke-virtual {p1, v7}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, v1

    if-ge v2, v7, :cond_1

    .line 80
    aget-object v7, v1, v2

    if-eqz v7, :cond_0

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 79
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_1
    new-array v7, v0, [Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/gallery3d/data/SizeClustering;->mClusters:[Ljava/util/ArrayList;

    .line 86
    new-array v7, v0, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/gallery3d/data/SizeClustering;->mNames:[Ljava/lang/String;

    .line 87
    new-array v7, v0, [J

    iput-object v7, p0, Lcom/android/gallery3d/data/SizeClustering;->mMinSizes:[J

    .line 89
    iget-object v7, p0, Lcom/android/gallery3d/data/SizeClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 90
    .local v6, res:Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 93
    .local v3, k:I
    array-length v7, v1

    add-int/lit8 v2, v7, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 94
    aget-object v7, v1, v2

    if-nez v7, :cond_2

    .line 93
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 96
    :cond_2
    iget-object v7, p0, Lcom/android/gallery3d/data/SizeClustering;->mClusters:[Ljava/util/ArrayList;

    aget-object v8, v1, v2

    aput-object v8, v7, v3

    .line 97
    if-nez v2, :cond_3

    .line 98
    iget-object v7, p0, Lcom/android/gallery3d/data/SizeClustering;->mNames:[Ljava/lang/String;

    const v8, 0x7f0a01ff

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    add-int/lit8 v10, v2, 0x1

    invoke-direct {p0, v10}, Lcom/android/gallery3d/data/SizeClustering;->getSizeString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 109
    :goto_3
    iget-object v7, p0, Lcom/android/gallery3d/data/SizeClustering;->mMinSizes:[J

    sget-object v8, Lcom/android/gallery3d/data/SizeClustering;->SIZE_LEVELS:[J

    aget-wide v8, v8, v2

    aput-wide v8, v7, v3

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 100
    :cond_3
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_4

    .line 101
    iget-object v7, p0, Lcom/android/gallery3d/data/SizeClustering;->mNames:[Ljava/lang/String;

    const v8, 0x7f0a0200

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/data/SizeClustering;->getSizeString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    goto :goto_3

    .line 104
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/gallery3d/data/SizeClustering;->getSizeString(I)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, minSize:Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    invoke-direct {p0, v7}, Lcom/android/gallery3d/data/SizeClustering;->getSizeString(I)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, maxSize:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/gallery3d/data/SizeClustering;->mNames:[Ljava/lang/String;

    const v8, 0x7f0a0201

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v11

    aput-object v4, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    goto :goto_3

    .line 112
    .end local v4           #maxSize:Ljava/lang/String;
    .end local v5           #minSize:Ljava/lang/String;
    :cond_5
    return-void
.end method
