.class Lcom/android/gallery3d/ui/TileImageView$TileQueue;
.super Ljava/lang/Object;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileQueue"
.end annotation


# instance fields
.field private mHead:Lcom/android/gallery3d/ui/TileImageView$Tile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/TileImageView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 758
    return-void
.end method

.method public pop()Lcom/android/gallery3d/ui/TileImageView$Tile;
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 745
    .local v0, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mNext:Lcom/android/gallery3d/ui/TileImageView$Tile;

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 746
    :cond_0
    return-object v0
.end method

.method public push(Lcom/android/gallery3d/ui/TileImageView$Tile;)Z
    .locals 2
    .parameter "tile"

    .prologue
    .line 750
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/android/gallery3d/ui/TileImageView$Tile;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 751
    .local v0, wasEmpty:Z
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/android/gallery3d/ui/TileImageView$Tile;

    iput-object v1, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mNext:Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 752
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 753
    return v0

    .line 750
    .end local v0           #wasEmpty:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
