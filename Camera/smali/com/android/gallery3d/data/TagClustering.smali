.class public Lcom/android/gallery3d/data/TagClustering;
.super Lcom/android/gallery3d/data/Clustering;
.source "TagClustering.java"


# instance fields
.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNames:[Ljava/lang/String;

.field private mUntaggedString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/gallery3d/data/Clustering;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/TagClustering;->mUntaggedString:Ljava/lang/String;

    .line 37
    return-void
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
    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/data/TagClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/data/TagClustering;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/data/TagClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 9
    .parameter "baseSet"

    .prologue
    .line 41
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 43
    .local v5, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v6, untagged:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v7, Lcom/android/gallery3d/data/TagClustering$1;

    invoke-direct {v7, p0, v6, v5}, Lcom/android/gallery3d/data/TagClustering$1;-><init>(Lcom/android/gallery3d/data/TagClustering;Ljava/util/ArrayList;Ljava/util/TreeMap;)V

    invoke-virtual {p1, v7}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 67
    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v4

    .line 68
    .local v4, m:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/gallery3d/data/TagClustering;->mClusters:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    add-int/2addr v7, v4

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/gallery3d/data/TagClustering;->mNames:[Ljava/lang/String;

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, i:I
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;>;"
    iget-object v8, p0, Lcom/android/gallery3d/data/TagClustering;->mNames:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v8, v1

    .line 73
    iget-object v7, p0, Lcom/android/gallery3d/data/TagClustering;->mClusters:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_1

    .line 69
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;>;"
    .end local v1           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 75
    .restart local v1       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 76
    iget-object v7, p0, Lcom/android/gallery3d/data/TagClustering;->mNames:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    iget-object v8, p0, Lcom/android/gallery3d/data/TagClustering;->mUntaggedString:Ljava/lang/String;

    aput-object v8, v7, v1

    .line 77
    iget-object v7, p0, Lcom/android/gallery3d/data/TagClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 79
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_2
    return-void
.end method
