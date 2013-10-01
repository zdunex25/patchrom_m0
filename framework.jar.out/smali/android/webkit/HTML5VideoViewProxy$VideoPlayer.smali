.class final Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoPlayer"
.end annotation


# static fields
.field private static isVideoSelfEnded:Z

.field private static mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private static mHTML5VideoView:Landroid/webkit/HTML5VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    sput-boolean p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    return p0
.end method

.method static synthetic access$200(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V

    return-void
.end method

.method public static end()V
    .locals 1

    .prologue
    .line 292
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->showControllerInFullScreen()V

    .line 293
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 294
    sget-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    if-eqz v0, :cond_1

    .line 295
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    .line 299
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 300
    return-void

    .line 297
    :cond_1
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    goto :goto_0
.end method

.method public static enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
    .locals 8
    .parameter "layerId"
    .parameter "url"
    .parameter "proxy"
    .parameter "webView"

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 143
    const/4 v3, 0x0

    .line 144
    .local v3, savePosition:I
    const/4 v0, 0x0

    .line 145
    .local v0, canSkipPrepare:Z
    const/4 v1, 0x0

    .line 146
    .local v1, forceStart:Z
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v6, :cond_3

    .line 149
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 150
    const-string v4, "HTML5VideoViewProxy"

    const-string v5, "Try to reenter the full screen mode"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 153
    :cond_0
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v2

    .line 156
    .local v2, playerState:I
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->getVideoLayerId()I

    move-result v6

    if-ne p0, v6, :cond_2

    .line 157
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->getCurrentPosition()I

    move-result v3

    .line 158
    if-eq v2, v4, :cond_1

    const/4 v6, 0x2

    if-eq v2, v6, :cond_1

    if-ne v2, v7, :cond_4

    :cond_1
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v4

    .line 163
    :cond_2
    :goto_1
    if-nez v0, :cond_5

    .line 164
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->reset()V

    .line 170
    .end local v2           #playerState:I
    :cond_3
    :goto_2
    new-instance v4, Landroid/webkit/HTML5VideoFullScreen;

    invoke-virtual {p2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p0, v3, v0}, Landroid/webkit/HTML5VideoFullScreen;-><init>(Landroid/content/Context;IIZ)V

    sput-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 172
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4, v1}, Landroid/webkit/HTML5VideoView;->setStartWhenPrepared(Z)V

    .line 173
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 174
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v4, p1, v5}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 175
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4, p0, p2, p3}, Landroid/webkit/HTML5VideoView;->enterFullScreenVideoState(ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .restart local v2       #playerState:I
    :cond_4
    move v0, v5

    .line 158
    goto :goto_1

    .line 166
    :cond_5
    if-eq v2, v4, :cond_6

    if-ne v2, v7, :cond_7

    :cond_6
    move v1, v4

    :goto_3
    goto :goto_2

    :cond_7
    move v1, v5

    goto :goto_3
.end method

.method public static exitFullScreenVideo(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter "proxy"
    .parameter "webView"

    .prologue
    .line 180
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 182
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 186
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_0
    return-void
.end method

.method public static getCurrentPosition()I
    .locals 2

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, currentPosMs:I
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v1, :cond_0

    .line 268
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->getCurrentPosition()I

    move-result v0

    .line 270
    :cond_0
    return v0
.end method

.method public static isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z
    .locals 1
    .parameter "proxy"

    .prologue
    .line 261
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onPrepared()V
    .locals 1

    .prologue
    .line 286
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->start()V

    .line 289
    :cond_0
    return-void
.end method

.method public static pause(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 280
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 283
    :cond_0
    return-void
.end method

.method public static pauseAndDispatch()V
    .locals 2

    .prologue
    .line 135
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 138
    :cond_0
    return-void
.end method

.method public static play(Ljava/lang/String;ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebChromeClient;I)V
    .locals 6
    .parameter "url"
    .parameter "time"
    .parameter "proxy"
    .parameter "client"
    .parameter "videoLayerId"

    .prologue
    .line 193
    const/4 v2, -0x1

    .line 194
    .local v2, currentVideoLayerId:I
    const/4 v0, 0x0

    .line 195
    .local v0, backFromFullScreenMode:Z
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v4, :cond_1

    .line 196
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->getVideoLayerId()I

    move-result v2

    .line 197
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v0

    .line 203
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    if-eq v2, p4, :cond_1

    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eq v4, p2, :cond_1

    .line 207
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 208
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/HTML5VideoView;->setStartWhenPrepared(Z)V

    .line 209
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4, p0, p2}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 210
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4, p2}, Landroid/webkit/HTML5VideoView;->reprepareData(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const/4 v3, 0x0

    .line 216
    .local v3, skipPrepare:Z
    const/4 v1, 0x0

    .line 217
    .local v1, createInlineView:Z
    if-eqz v0, :cond_3

    if-ne v2, p4, :cond_3

    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->isReleased()Z

    move-result v4

    if-nez v4, :cond_3

    .line 220
    const/4 v3, 0x1

    .line 221
    const/4 v1, 0x1

    .line 238
    :cond_2
    :goto_1
    if-eqz v1, :cond_7

    .line 239
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 240
    new-instance v4, Landroid/webkit/HTML5VideoInline;

    invoke-direct {v4, p4, p1, v3}, Landroid/webkit/HTML5VideoInline;-><init>(IIZ)V

    sput-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 242
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v4, p0, v5}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 243
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4, p2}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 222
    :cond_3
    if-nez v0, :cond_4

    if-ne v2, p4, :cond_4

    invoke-static {}, Landroid/webkit/HTML5VideoInline;->surfaceTextureDeleted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    :cond_4
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v4, :cond_6

    .line 231
    if-nez v0, :cond_5

    .line 232
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v4, v5}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 234
    :cond_5
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->reset()V

    .line 236
    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    .line 247
    :cond_7
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v4, p2, :cond_8

    .line 249
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_0

    .line 250
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4, p1}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 251
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->start()V

    goto :goto_0

    .line 253
    :cond_8
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v4, :cond_0

    .line 256
    invoke-virtual {p2}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    goto :goto_0
.end method

.method public static seek(ILandroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "time"
    .parameter "proxy"

    .prologue
    .line 274
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p1, :cond_0

    if-ltz p0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p0}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 277
    :cond_0
    return-void
.end method

.method public static setBaseLayer(I)V
    .locals 7
    .parameter "layer"

    .prologue
    .line 110
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v5, :cond_1

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->isReleased()Z

    move-result v5

    if-nez v5, :cond_1

    .line 113
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getVideoLayerId()I

    move-result v0

    .line 114
    .local v0, currentVideoLayerId:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoInline;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    .line 116
    .local v3, surfTexture:Landroid/graphics/SurfaceTexture;
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getTextureName()I

    move-result v4

    .line 118
    .local v4, textureName:I
    if-eqz p0, :cond_1

    if-eqz v3, :cond_1

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 119
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v2

    .line 120
    .local v2, playerState:I
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getPlayerBuffering()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    const/4 v2, 0x1

    .line 122
    :cond_0
    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z
    invoke-static {v3, p0, v0, v4, v2}, Landroid/webkit/HTML5VideoViewProxy;->access$000(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v1

    .line 125
    .local v1, foundInTree:Z
    const/4 v5, 0x2

    if-lt v2, v5, :cond_1

    if-nez v1, :cond_1

    .line 127
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v5, v6}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 131
    .end local v0           #currentVideoLayerId:I
    .end local v1           #foundInTree:Z
    .end local v2           #playerState:I
    .end local v3           #surfTexture:Landroid/graphics/SurfaceTexture;
    .end local v4           #textureName:I
    :cond_1
    return-void
.end method

.method private static setPlayerBuffering(Z)V
    .locals 1
    .parameter "playerBuffering"

    .prologue
    .line 102
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p0}, Landroid/webkit/HTML5VideoView;->setPlayerBuffering(Z)V

    .line 103
    return-void
.end method
