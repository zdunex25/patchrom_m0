.class Lcom/android/gallery3d/data/FilterTypeSet$1;
.super Ljava/lang/Object;
.source "FilterTypeSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/FilterTypeSet;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/FilterTypeSet;

.field final synthetic val$buf:[Lcom/android/gallery3d/data/Path;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/FilterTypeSet;I[Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/gallery3d/data/FilterTypeSet$1;->this$0:Lcom/android/gallery3d/data/FilterTypeSet;

    iput p2, p0, Lcom/android/gallery3d/data/FilterTypeSet$1;->val$total:I

    iput-object p3, p0, Lcom/android/gallery3d/data/FilterTypeSet$1;->val$buf:[Lcom/android/gallery3d/data/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 3
    .parameter "index"
    .parameter "item"

    .prologue
    .line 105
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/data/FilterTypeSet$1;->this$0:Lcom/android/gallery3d/data/FilterTypeSet;

    #getter for: Lcom/android/gallery3d/data/FilterTypeSet;->mMediaType:I
    invoke-static {v2}, Lcom/android/gallery3d/data/FilterTypeSet;->access$000(Lcom/android/gallery3d/data/FilterTypeSet;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 106
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/data/FilterTypeSet$1;->val$total:I

    if-lt p1, v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 108
    .local v0, path:Lcom/android/gallery3d/data/Path;
    iget-object v1, p0, Lcom/android/gallery3d/data/FilterTypeSet$1;->val$buf:[Lcom/android/gallery3d/data/Path;

    aput-object v0, v1, p1

    goto :goto_0
.end method
