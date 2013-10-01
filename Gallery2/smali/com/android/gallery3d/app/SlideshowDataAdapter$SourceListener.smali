.class Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SlideshowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/SlideshowDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/SlideshowDataAdapter;Lcom/android/gallery3d/app/SlideshowDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;-><init>(Lcom/android/gallery3d/app/SlideshowDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$800(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    const/4 v2, 0x1

    #setter for: Lcom/android/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$202(Lcom/android/gallery3d/app/SlideshowDataAdapter;Z)Z

    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 155
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
