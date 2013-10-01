.class public Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;
.super Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;
.source "DelayedPresetCache.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mProcessingHandler:Landroid/os/Handler;

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;I)V
    .locals 3
    .parameter "loader"
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;-><init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;I)V

    .line 26
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mHandlerThread:Landroid/os/HandlerThread;

    .line 31
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mProcessingHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache$1;-><init>(Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mUIHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImageProcessing"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mHandlerThread:Landroid/os/HandlerThread;

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mProcessingHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 47
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 56
    :goto_0
    return v3

    .line 49
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;

    .line 50
    .local v0, cache:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->compute(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)V

    .line 51
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 52
    .local v1, uimsg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected willCompute(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)V
    .locals 3
    .parameter "cache"

    .prologue
    const/4 v2, 0x1

    .line 68
    if-nez p1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->setBusy(Z)V

    .line 72
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 73
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
