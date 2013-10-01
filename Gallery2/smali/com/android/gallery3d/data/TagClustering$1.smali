.class Lcom/android/gallery3d/data/TagClustering$1;
.super Ljava/lang/Object;
.source "TagClustering.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/TagClustering;->run(Lcom/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/TagClustering;

.field final synthetic val$map:Ljava/util/TreeMap;

.field final synthetic val$untagged:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/TagClustering;Ljava/util/ArrayList;Ljava/util/TreeMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/gallery3d/data/TagClustering$1;->this$0:Lcom/android/gallery3d/data/TagClustering;

    iput-object p2, p0, Lcom/android/gallery3d/data/TagClustering$1;->val$untagged:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/gallery3d/data/TagClustering$1;->val$map:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 6
    .parameter "index"
    .parameter "item"

    .prologue
    .line 48
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 50
    .local v3, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getTags()[Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, tags:[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_2

    .line 52
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/data/TagClustering$1;->val$untagged:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_1
    return-void

    .line 55
    :cond_2
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 56
    aget-object v1, v4, v0

    .line 57
    .local v1, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/data/TagClustering$1;->val$map:Ljava/util/TreeMap;

    invoke-virtual {v5, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 58
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    if-nez v2, :cond_3

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-object v5, p0, Lcom/android/gallery3d/data/TagClustering$1;->val$map:Ljava/util/TreeMap;

    invoke-virtual {v5, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
