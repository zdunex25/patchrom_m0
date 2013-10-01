.class public Lcom/android/gallery3d/data/MtpSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "MtpSource.java"


# instance fields
.field mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field mMatcher:Lcom/android/gallery3d/data/PathMatcher;

.field mMtpContext:Lcom/android/gallery3d/data/MtpContext;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 34
    const-string v0, "mtp"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/data/MtpSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 36
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/mtp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/mtp/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/mtp/item/*/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 40
    new-instance v0, Lcom/android/gallery3d/data/MtpContext;

    iget-object v1, p0, Lcom/android/gallery3d/data/MtpSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/MtpContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpSource;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    .line 41
    return-void
.end method

.method public static isMtpPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 74
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mtp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 6
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_0
    new-instance v0, Lcom/android/gallery3d/data/MtpDeviceSet;

    iget-object v1, p0, Lcom/android/gallery3d/data/MtpSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/MtpSource;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/gallery3d/data/MtpDeviceSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MtpContext;)V

    .line 56
    :goto_0
    return-object v0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    .line 51
    .local v3, deviceId:I
    new-instance v0, Lcom/android/gallery3d/data/MtpDevice;

    iget-object v1, p0, Lcom/android/gallery3d/data/MtpSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/MtpSource;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    invoke-direct {v0, p1, v1, v3, v2}, Lcom/android/gallery3d/data/MtpDevice;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILcom/android/gallery3d/data/MtpContext;)V

    goto :goto_0

    .line 54
    .end local v3           #deviceId:I
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    .line 55
    .restart local v3       #deviceId:I
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v4

    .line 56
    .local v4, objectId:I
    new-instance v0, Lcom/android/gallery3d/data/MtpImage;

    iget-object v2, p0, Lcom/android/gallery3d/data/MtpSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v5, p0, Lcom/android/gallery3d/data/MtpSource;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/MtpImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IILcom/android/gallery3d/data/MtpContext;)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpSource;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MtpContext;->pause()V

    .line 66
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpSource;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MtpContext;->resume()V

    .line 71
    return-void
.end method
