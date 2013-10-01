.class Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
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
        "Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 939
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    return-void
.end method

.method private needContentReload()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 942
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1100(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    .local v1, i:I
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1200(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 943
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1300(Lcom/android/gallery3d/app/PhotoDataAdapter;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    rem-int/lit16 v5, v1, 0x100

    aget-object v4, v4, v5

    if-nez v4, :cond_1

    .line 946
    :cond_0
    :goto_1
    return v3

    .line 942
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 945
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1300(Lcom/android/gallery3d/app/PhotoDataAdapter;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1400(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v5

    rem-int/lit16 v5, v5, 0x100

    aget-object v0, v4, v5

    .line 946
    .local v0, current:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1500(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    if-ne v4, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public call()Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 952
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    .line 953
    .local v0, info:Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1700(Lcom/android/gallery3d/app/PhotoDataAdapter;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->version:J

    .line 954
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->needContentReload()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    .line 955
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1500(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/android/gallery3d/data/Path;

    .line 956
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1400(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 957
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1100(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    .line 958
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1200(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    .line 959
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    .line 960
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->call()Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
