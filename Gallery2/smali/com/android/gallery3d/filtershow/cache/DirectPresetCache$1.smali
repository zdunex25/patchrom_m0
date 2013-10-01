.class Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$1;
.super Ljava/lang/Object;
.source "DirectPresetCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$1;->this$0:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$1;->this$0:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;

    #getter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mObservers:Ljava/util/Vector;
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->access$000(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$1;->this$0:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;

    #getter for: Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->mObservers:Ljava/util/Vector;
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;->access$000(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 72
    .local v1, imageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 73
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImage()V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v1           #imageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    :cond_0
    return-void
.end method
