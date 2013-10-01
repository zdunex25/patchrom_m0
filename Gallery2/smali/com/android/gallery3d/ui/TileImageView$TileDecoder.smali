.class Lcom/android/gallery3d/ui/TileImageView$TileDecoder;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mNotifier:Lcom/android/gallery3d/util/ThreadPool$CancelListener;

.field final synthetic this$0:Lcom/android/gallery3d/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/TileImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    new-instance v0, Lcom/android/gallery3d/ui/TileImageView$TileDecoder$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/TileImageView$TileDecoder$1;-><init>(Lcom/android/gallery3d/ui/TileImageView$TileDecoder;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;->mNotifier:Lcom/android/gallery3d/util/ThreadPool$CancelListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/TileImageView;Lcom/android/gallery3d/ui/TileImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 761
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;-><init>(Lcom/android/gallery3d/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 761
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3
    .parameter "jc"

    .prologue
    .line 774
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    .line 775
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;->mNotifier:Lcom/android/gallery3d/util/ThreadPool$CancelListener;

    invoke-interface {p1, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 776
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    iget-object v2, p0, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    monitor-enter v2

    .line 779
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    #getter for: Lcom/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;
    invoke-static {v1}, Lcom/android/gallery3d/ui/TileImageView;->access$1000(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    .line 780
    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 781
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 783
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    if-eqz v0, :cond_0

    .line 785
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/TileImageView;->decodeTile(Lcom/android/gallery3d/ui/TileImageView$Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/TileImageView;->queueForUpload(Lcom/android/gallery3d/ui/TileImageView$Tile;)V

    goto :goto_0

    .line 783
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 787
    .end local v0           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method
