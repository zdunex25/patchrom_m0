.class Lcom/android/gallery3d/data/FaceClustering$FaceCluster;
.super Ljava/lang/Object;
.source "FaceClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/FaceClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceCluster"
.end annotation


# instance fields
.field mCoverFaceIndex:I

.field mCoverItem:Lcom/android/gallery3d/data/MediaItem;

.field mCoverRegion:Landroid/graphics/Rect;

.field mName:Ljava/lang/String;

.field mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/gallery3d/data/FaceClustering;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/FaceClustering;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->this$0:Lcom/android/gallery3d/data/FaceClustering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mPaths:Ljava/util/ArrayList;

    .line 44
    iput-object p2, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mName:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public add(Lcom/android/gallery3d/data/MediaItem;I)V
    .locals 6
    .parameter "item"
    .parameter "faceIndex"

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 49
    .local v2, path:Lcom/android/gallery3d/data/Path;
    iget-object v4, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getFaces()[Lcom/android/gallery3d/data/Face;

    move-result-object v1

    .line 51
    .local v1, faces:[Lcom/android/gallery3d/data/Face;
    if-eqz v1, :cond_0

    .line 52
    aget-object v0, v1, p2

    .line 53
    .local v0, face:Lcom/android/gallery3d/data/Face;
    iget-object v4, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/android/gallery3d/data/MediaItem;

    if-nez v4, :cond_1

    .line 54
    iput-object p1, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/android/gallery3d/data/MediaItem;

    .line 55
    invoke-virtual {v0}, Lcom/android/gallery3d/data/Face;->getPosition()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mCoverRegion:Landroid/graphics/Rect;

    .line 56
    iput p2, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mCoverFaceIndex:I

    .line 67
    .end local v0           #face:Lcom/android/gallery3d/data/Face;
    :cond_0
    :goto_0
    return-void

    .line 58
    .restart local v0       #face:Lcom/android/gallery3d/data/Face;
    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/data/Face;->getPosition()Landroid/graphics/Rect;

    move-result-object v3

    .line 59
    .local v3, region:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mCoverRegion:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mCoverRegion:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 61
    iput-object p1, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/android/gallery3d/data/MediaItem;

    .line 62
    invoke-virtual {v0}, Lcom/android/gallery3d/data/Face;->getPosition()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mCoverRegion:Landroid/graphics/Rect;

    .line 63
    iput p2, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mCoverFaceIndex:I

    goto :goto_0
.end method

.method public getCover()Lcom/android/gallery3d/data/MediaItem;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->this$0:Lcom/android/gallery3d/data/FaceClustering;

    #getter for: Lcom/android/gallery3d/data/FaceClustering;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/gallery3d/data/FaceClustering;->access$000(Lcom/android/gallery3d/data/FaceClustering;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/android/gallery3d/data/MediaItem;

    iget v2, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mCoverFaceIndex:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/picasasource/PicasaSource;->getFaceItem(Landroid/content/Context;Lcom/android/gallery3d/data/MediaItem;I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/android/gallery3d/data/MediaItem;

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/data/FaceClustering$FaceCluster;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
