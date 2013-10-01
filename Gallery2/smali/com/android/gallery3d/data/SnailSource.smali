.class public Lcom/android/gallery3d/data/SnailSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "SnailSource.java"


# static fields
.field private static sNextId:I


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mMatcher:Lcom/android/gallery3d/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 31
    const-string v0, "snail"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/data/SnailSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 33
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/SnailSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/data/SnailSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/snail/set/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/data/SnailSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/snail/item/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public static getItemPath(I)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "id"

    .prologue
    .line 68
    const-string v0, "/snail/item"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public static getSetPath(I)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "id"

    .prologue
    .line 64
    const-string v0, "/snail/set"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized newId()I
    .locals 3

    .prologue
    .line 60
    const-class v1, Lcom/android/gallery3d/data/SnailSource;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/gallery3d/data/SnailSource;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/android/gallery3d/data/SnailSource;->sNextId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 7
    .parameter "path"

    .prologue
    const/4 v6, 0x0

    .line 41
    iget-object v4, p0, Lcom/android/gallery3d/data/SnailSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 42
    .local v0, dataManager:Lcom/android/gallery3d/data/DataManager;
    iget-object v4, p0, Lcom/android/gallery3d/data/SnailSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 53
    const/4 v4, 0x0

    :goto_0
    return-object v4

    .line 44
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/snail/item/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/data/SnailSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, itemPath:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/SnailItem;

    .line 47
    .local v2, item:Lcom/android/gallery3d/data/SnailItem;
    new-instance v4, Lcom/android/gallery3d/data/SnailAlbum;

    invoke-direct {v4, p1, v2}, Lcom/android/gallery3d/data/SnailAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/SnailItem;)V

    goto :goto_0

    .line 49
    .end local v2           #item:Lcom/android/gallery3d/data/SnailItem;
    .end local v3           #itemPath:Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/android/gallery3d/data/SnailSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v1

    .line 50
    .local v1, id:I
    new-instance v4, Lcom/android/gallery3d/data/SnailItem;

    invoke-direct {v4, p1}, Lcom/android/gallery3d/data/SnailItem;-><init>(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
