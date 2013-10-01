.class Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;J)V
    .locals 0
    .parameter
    .parameter "version"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-wide p2, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J

    .line 250
    return-void
.end method

.method private getInvalidIndex(J)I
    .locals 7
    .parameter "version"

    .prologue
    .line 253
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSetVersion:[J
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$400(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[J

    move-result-object v4

    .line 254
    .local v4, setVersion:[J
    array-length v2, v4

    .line 255
    .local v2, length:I
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentStart:I
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$500(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v0

    .local v0, i:I
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$600(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 256
    rem-int v1, v0, v2

    .line 257
    .local v1, index:I
    rem-int v5, v0, v2

    aget-wide v5, v4, v5

    cmp-long v5, v5, p1

    if-eqz v5, :cond_0

    .line 259
    .end local v0           #i:I
    .end local v1           #index:I
    :goto_1
    return v0

    .line 255
    .restart local v0       #i:I
    .restart local v1       #index:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v1           #index:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public call()Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-wide v3, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J

    invoke-direct {p0, v3, v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->getInvalidIndex(J)I

    move-result v0

    .line 265
    .local v0, index:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$700(Lcom/android/gallery3d/app/AlbumSetDataLoader;)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v1, v2

    .line 270
    :goto_0
    return-object v1

    .line 266
    :cond_0
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader$1;)V

    .line 267
    .local v1, info:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$700(Lcom/android/gallery3d/app/AlbumSetDataLoader;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    .line 268
    iput v0, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    .line 269
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->call()Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
