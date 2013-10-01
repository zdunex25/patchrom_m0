.class public Landroid/media/MediaRouter$UserRouteInfo;
.super Landroid/media/MediaRouter$RouteInfo;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserRouteInfo"
.end annotation


# instance fields
.field mRcc:Landroid/media/RemoteControlClient;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 1297
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 1298
    const/high16 v0, 0x80

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSupportedTypes:I

    .line 1299
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    .line 1300
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    .line 1301
    return-void
.end method

.method private setPlaybackInfoOnRcc(II)V
    .locals 1
    .parameter "what"
    .parameter "value"

    .prologue
    .line 1500
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1, p2}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1503
    :cond_0
    return-void
.end method

.method private updatePlaybackInfoOnRcc()V
    .locals 4

    .prologue
    .line 1478
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v1}, Landroid/media/RemoteControlClient;->getRcseId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1479
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x3

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1481
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x2

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1483
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x4

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1485
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x5

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1487
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x1

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1491
    :try_start_0
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v2}, Landroid/media/RemoteControlClient;->getRcseId()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRemoteVolObserver:Landroid/media/IRemoteVolumeObserver$Stub;

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    :cond_0
    :goto_0
    return-void

    .line 1493
    :catch_0
    move-exception v0

    .line 1494
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Error registering remote volume observer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getRemoteControlClient()Landroid/media/RemoteControlClient;
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method public requestSetVolume(I)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 1433
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1434
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_1

    .line 1435
    const-string v0, "MediaRouter"

    const-string v1, "Cannot requestSetVolume on user route - no volume callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_0
    :goto_0
    return-void

    .line 1438
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    goto :goto_0
.end method

.method public requestUpdateVolume(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 1444
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1445
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_1

    .line 1446
    const-string v0, "MediaRouter"

    const-string v1, "Cannot requestChangeVolume on user route - no volumec callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1449
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    goto :goto_0
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 1366
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1367
    return-void
.end method

.method public setIconResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1376
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$UserRouteInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1377
    return-void
.end method

.method public setName(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1317
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mNameResId:I

    .line 1318
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    .line 1319
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 1320
    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1308
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    .line 1309
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 1310
    return-void
.end method

.method public setPlaybackStream(I)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 1471
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    if-eq v0, p1, :cond_0

    .line 1472
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    .line 1473
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 1475
    :cond_0
    return-void
.end method

.method public setPlaybackType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1394
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    if-eq v0, p1, :cond_0

    .line 1395
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    .line 1396
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 1398
    :cond_0
    return-void
.end method

.method public setRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 0
    .parameter "rcc"

    .prologue
    .line 1345
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    .line 1346
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->updatePlaybackInfoOnRcc()V

    .line 1347
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 1328
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setStatusInt(Ljava/lang/CharSequence;)V

    .line 1329
    return-void
.end method

.method public setVolume(I)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 1420
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->getVolumeMax()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1421
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    if-eq v0, p1, :cond_0

    .line 1422
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    .line 1423
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 1424
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1425
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$RouteGroup;->memberVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1429
    :cond_0
    return-void
.end method

.method public setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V
    .locals 1
    .parameter "vcb"

    .prologue
    .line 1384
    new-instance v0, Landroid/media/MediaRouter$VolumeCallbackInfo;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaRouter$VolumeCallbackInfo;-><init>(Landroid/media/MediaRouter$VolumeCallback;Landroid/media/MediaRouter$RouteInfo;)V

    iput-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    .line 1385
    return-void
.end method

.method public setVolumeHandling(I)V
    .locals 1
    .parameter "volumeHandling"

    .prologue
    .line 1407
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    if-eq v0, p1, :cond_0

    .line 1408
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    .line 1409
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 1412
    :cond_0
    return-void
.end method

.method public setVolumeMax(I)V
    .locals 1
    .parameter "volumeMax"

    .prologue
    .line 1460
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    if-eq v0, p1, :cond_0

    .line 1461
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    .line 1462
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 1464
    :cond_0
    return-void
.end method
