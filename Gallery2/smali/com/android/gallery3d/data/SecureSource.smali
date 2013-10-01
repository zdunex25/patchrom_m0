.class public Lcom/android/gallery3d/data/SecureSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "SecureSource.java"


# static fields
.field private static mMatcher:Lcom/android/gallery3d/data/PathMatcher;


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    sput-object v0, Lcom/android/gallery3d/data/SecureSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 28
    sget-object v0, Lcom/android/gallery3d/data/SecureSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/secure/all/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 29
    sget-object v0, Lcom/android/gallery3d/data/SecureSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/secure/unlock"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const-string v0, "secure"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/android/gallery3d/data/SecureSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 35
    return-void
.end method

.method public static isSecurePath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 38
    sget-object v0, Lcom/android/gallery3d/data/SecureSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-static {p0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 5
    .parameter "path"

    .prologue
    .line 43
    sget-object v2, Lcom/android/gallery3d/data/SecureSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 53
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :pswitch_0
    iget-object v2, p0, Lcom/android/gallery3d/data/SecureSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 46
    .local v0, dataManager:Lcom/android/gallery3d/data/DataManager;
    const-string v2, "/secure/unlock"

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaItem;

    .line 48
    .local v1, unlock:Lcom/android/gallery3d/data/MediaItem;
    new-instance v2, Lcom/android/gallery3d/data/SecureAlbum;

    iget-object v3, p0, Lcom/android/gallery3d/data/SecureSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, p1, v3, v1}, Lcom/android/gallery3d/data/SecureAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaItem;)V

    .line 51
    .end local v0           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v1           #unlock:Lcom/android/gallery3d/data/MediaItem;
    :goto_0
    return-object v2

    :pswitch_1
    new-instance v2, Lcom/android/gallery3d/data/UnlockImage;

    iget-object v3, p0, Lcom/android/gallery3d/data/SecureSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, p1, v3}, Lcom/android/gallery3d/data/UnlockImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
