.class Lcom/android/gallery3d/data/LocationClustering$1;
.super Ljava/lang/Object;
.source "LocationClustering.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/LocationClustering;->run(Lcom/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/LocationClustering;

.field final synthetic val$buf:[Lcom/android/gallery3d/data/LocationClustering$SmallItem;

.field final synthetic val$latLong:[D

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/LocationClustering;I[D[Lcom/android/gallery3d/data/LocationClustering$SmallItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/gallery3d/data/LocationClustering$1;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    iput p2, p0, Lcom/android/gallery3d/data/LocationClustering$1;->val$total:I

    iput-object p3, p0, Lcom/android/gallery3d/data/LocationClustering$1;->val$latLong:[D

    iput-object p4, p0, Lcom/android/gallery3d/data/LocationClustering$1;->val$buf:[Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 3
    .parameter "index"
    .parameter "item"

    .prologue
    .line 76
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/data/LocationClustering$1;->val$total:I

    if-lt p1, v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    new-instance v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/LocationClustering$SmallItem;-><init>(Lcom/android/gallery3d/data/LocationClustering$1;)V

    .line 78
    .local v0, s:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->path:Lcom/android/gallery3d/data/Path;

    .line 79
    iget-object v1, p0, Lcom/android/gallery3d/data/LocationClustering$1;->val$latLong:[D

    invoke-virtual {p2, v1}, Lcom/android/gallery3d/data/MediaItem;->getLatLong([D)V

    .line 80
    iget-object v1, p0, Lcom/android/gallery3d/data/LocationClustering$1;->val$latLong:[D

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    iput-wide v1, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    .line 81
    iget-object v1, p0, Lcom/android/gallery3d/data/LocationClustering$1;->val$latLong:[D

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    iput-wide v1, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    .line 82
    iget-object v1, p0, Lcom/android/gallery3d/data/LocationClustering$1;->val$buf:[Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    aput-object v0, v1, p1

    goto :goto_0
.end method
