.class Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mUpdateInfo:Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumDataLoader;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AlbumDataLoader;Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;)V
    .locals 0
    .parameter
    .parameter "info"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->mUpdateInfo:Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;

    .line 281
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 285
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->mUpdateInfo:Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;

    .line 286
    .local v3, info:Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    iget-wide v10, v3, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    #setter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSourceVersion:J
    invoke-static {v9, v10, v11}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$602(Lcom/android/gallery3d/app/AlbumDataLoader;J)J

    .line 287
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$700(Lcom/android/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    iget v10, v3, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    if-eq v9, v10, :cond_2

    .line 288
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    iget v10, v3, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    #setter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I
    invoke-static {v9, v10}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$702(Lcom/android/gallery3d/app/AlbumDataLoader;I)I

    .line 289
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1100(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1100(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I
    invoke-static {v10}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$700(Lcom/android/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    invoke-interface {v9, v10}, Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;->onSizeChanged(I)V

    .line 290
    :cond_0
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1000(Lcom/android/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I
    invoke-static {v10}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$700(Lcom/android/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    if-le v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I
    invoke-static {v10}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$700(Lcom/android/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    #setter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I
    invoke-static {v9, v10}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1002(Lcom/android/gallery3d/app/AlbumDataLoader;I)I

    .line 291
    :cond_1
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1200(Lcom/android/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I
    invoke-static {v10}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$700(Lcom/android/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    if-le v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I
    invoke-static {v10}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$700(Lcom/android/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    #setter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I
    invoke-static {v9, v10}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1202(Lcom/android/gallery3d/app/AlbumDataLoader;I)I

    .line 294
    :cond_2
    iget-object v6, v3, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 296
    .local v6, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    const-wide/16 v10, -0x1

    #setter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mFailedVersion:J
    invoke-static {v9, v10, v11}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$202(Lcom/android/gallery3d/app/AlbumDataLoader;J)J

    .line 297
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 298
    :cond_3
    iget v9, v3, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    if-lez v9, :cond_4

    .line 299
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    iget-wide v10, v3, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    #setter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mFailedVersion:J
    invoke-static {v9, v10, v11}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$202(Lcom/android/gallery3d/app/AlbumDataLoader;J)J

    .line 300
    const-string v9, "AlbumDataAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loading failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mFailedVersion:J
    invoke-static {v11}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$200(Lcom/android/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_4
    return-object v13

    .line 304
    :cond_5
    iget v9, v3, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mContentStart:I
    invoke-static {v10}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 305
    .local v7, start:I
    iget v9, v3, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I
    invoke-static {v10}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1000(Lcom/android/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 307
    .local v0, end:I
    move v1, v7

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 308
    rem-int/lit16 v2, v1, 0x3e8

    .line 309
    .local v2, index:I
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSetVersion:[J
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$800(Lcom/android/gallery3d/app/AlbumDataLoader;)[J

    move-result-object v9

    iget-wide v10, v3, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    aput-wide v10, v9, v2

    .line 310
    iget v9, v3, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    sub-int v9, v1, v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaItem;

    .line 311
    .local v8, updateItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v4

    .line 312
    .local v4, itemVersion:J
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mItemVersion:[J
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1300(Lcom/android/gallery3d/app/AlbumDataLoader;)[J

    move-result-object v9

    aget-wide v9, v9, v2

    cmp-long v9, v9, v4

    if-eqz v9, :cond_6

    .line 313
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mItemVersion:[J
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1300(Lcom/android/gallery3d/app/AlbumDataLoader;)[J

    move-result-object v9

    aput-wide v4, v9, v2

    .line 314
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1400(Lcom/android/gallery3d/app/AlbumDataLoader;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    aput-object v8, v9, v2

    .line 315
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1100(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1500(Lcom/android/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    if-lt v1, v9, :cond_6

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1200(Lcom/android/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    if-ge v1, v9, :cond_6

    .line 316
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1100(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v9

    invoke-interface {v9, v1}, Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;->onContentChanged(I)V

    .line 307
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
