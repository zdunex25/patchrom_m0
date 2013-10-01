.class Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullImageJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Lcom/android/gallery3d/data/MediaItem;

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter "item"

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 728
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .parameter "jc"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->isTemporaryItem(Lcom/android/gallery3d/data/MediaItem;)Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$400(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    const/4 v0, 0x0

    .line 735
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 723
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
