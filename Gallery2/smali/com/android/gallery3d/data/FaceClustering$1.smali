.class Lcom/android/gallery3d/data/FaceClustering$1;
.super Ljava/lang/Object;
.source "FaceClustering.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/FaceClustering;->run(Lcom/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/FaceClustering;

.field final synthetic val$map:Ljava/util/TreeMap;

.field final synthetic val$untagged:Lcom/android/gallery3d/data/FaceClustering$FaceCluster;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/FaceClustering;Lcom/android/gallery3d/data/FaceClustering$FaceCluster;Ljava/util/TreeMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/gallery3d/data/FaceClustering$1;->this$0:Lcom/android/gallery3d/data/FaceClustering;

    iput-object p2, p0, Lcom/android/gallery3d/data/FaceClustering$1;->val$untagged:Lcom/android/gallery3d/data/FaceClustering$FaceCluster;

    iput-object p3, p0, Lcom/android/gallery3d/data/FaceClustering$1;->val$map:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 6
    .parameter "index"
    .parameter "item"

    .prologue
    .line 99
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getFaces()[Lcom/android/gallery3d/data/Face;

    move-result-object v2

    .line 100
    .local v2, faces:[Lcom/android/gallery3d/data/Face;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_2

    .line 101
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/data/FaceClustering$1;->val$untagged:Lcom/android/gallery3d/data/FaceClustering$FaceCluster;

    const/4 v5, -0x1

    invoke-virtual {v4, p2, v5}, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->add(Lcom/android/gallery3d/data/MediaItem;I)V

    .line 113
    :cond_1
    return-void

    .line 104
    :cond_2
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 105
    aget-object v1, v2, v3

    .line 106
    .local v1, face:Lcom/android/gallery3d/data/Face;
    iget-object v4, p0, Lcom/android/gallery3d/data/FaceClustering$1;->val$map:Ljava/util/TreeMap;

    invoke-virtual {v4, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;

    .line 107
    .local v0, cluster:Lcom/android/gallery3d/data/FaceClustering$FaceCluster;
    if-nez v0, :cond_3

    .line 108
    new-instance v0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;

    .end local v0           #cluster:Lcom/android/gallery3d/data/FaceClustering$FaceCluster;
    iget-object v4, p0, Lcom/android/gallery3d/data/FaceClustering$1;->this$0:Lcom/android/gallery3d/data/FaceClustering;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Face;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;-><init>(Lcom/android/gallery3d/data/FaceClustering;Ljava/lang/String;)V

    .line 109
    .restart local v0       #cluster:Lcom/android/gallery3d/data/FaceClustering$FaceCluster;
    iget-object v4, p0, Lcom/android/gallery3d/data/FaceClustering$1;->val$map:Ljava/util/TreeMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_3
    invoke-virtual {v0, p2, v3}, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->add(Lcom/android/gallery3d/data/MediaItem;I)V

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
