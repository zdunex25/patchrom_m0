.class Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache$1;
.super Landroid/os/Handler;
.source "DelayedPresetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache$1;->this$0:Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 35
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 42
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;

    .line 38
    .local v0, cache:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache$1;->this$0:Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->didCompute(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)V

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
