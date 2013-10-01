.class public Lcom/android/gallery3d/data/FaceClustering;
.super Lcom/android/gallery3d/data/Clustering;
.source "FaceClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/FaceClustering$FaceCluster;
    }
.end annotation


# instance fields
.field private mClusters:[Lcom/android/gallery3d/data/FaceClustering$FaceCluster;

.field private mContext:Landroid/content/Context;

.field private mUntaggedString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/gallery3d/data/Clustering;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/FaceClustering;->mUntaggedString:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/android/gallery3d/data/FaceClustering;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/data/FaceClustering;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/data/FaceClustering;->mContext:Landroid/content/Context;

    return-object v0
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
    iget-object v0, p0, Lcom/android/gallery3d/data/FaceClustering;->mClusters:[Lcom/android/gallery3d/data/FaceClustering$FaceCluster;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClusterCover(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/data/FaceClustering;->mClusters:[Lcom/android/gallery3d/data/FaceClustering$FaceCluster;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->getCover()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/data/FaceClustering;->mClusters:[Lcom/android/gallery3d/data/FaceClustering$FaceCluster;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/data/FaceClustering;->mClusters:[Lcom/android/gallery3d/data/FaceClustering$FaceCluster;

    array-length v0, v0

    return v0
.end method

.method public run(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 5
    .parameter "baseSet"

    .prologue
    .line 92
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 94
    .local v1, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Lcom/android/gallery3d/data/Face;Lcom/android/gallery3d/data/FaceClustering$FaceCluster;>;"
    new-instance v2, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;

    iget-object v3, p0, Lcom/android/gallery3d/data/FaceClustering;->mUntaggedString:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;-><init>(Lcom/android/gallery3d/data/FaceClustering;Ljava/lang/String;)V

    .line 96
    .local v2, untagged:Lcom/android/gallery3d/data/FaceClustering$FaceCluster;
    new-instance v3, Lcom/android/gallery3d/data/FaceClustering$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/gallery3d/data/FaceClustering$1;-><init>(Lcom/android/gallery3d/data/FaceClustering;Lcom/android/gallery3d/data/FaceClustering$FaceCluster;Ljava/util/TreeMap;)V

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 116
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v0

    .line 117
    .local v0, m:I
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v3, v0

    new-array v3, v3, [Lcom/android/gallery3d/data/FaceClustering$FaceCluster;

    invoke-interface {v4, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/gallery3d/data/FaceClustering$FaceCluster;

    iput-object v3, p0, Lcom/android/gallery3d/data/FaceClustering;->mClusters:[Lcom/android/gallery3d/data/FaceClustering$FaceCluster;

    .line 118
    invoke-virtual {v2}, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/android/gallery3d/data/FaceClustering;->mClusters:[Lcom/android/gallery3d/data/FaceClustering$FaceCluster;

    aput-object v2, v3, v0

    .line 121
    :cond_0
    return-void

    .line 117
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
