.class Lcom/android/gallery3d/app/AlbumDataLoader$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "AlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumDataLoader;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumDataLoader;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumDataLoader;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader$1;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 90
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumDataLoader$1;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$100(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumDataLoader$1;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$100(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/LoadingListener;->onLoadingStarted()V

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumDataLoader$1;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$100(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumDataLoader$1;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mFailedVersion:J
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$200(Lcom/android/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 101
    .local v0, loadingFailed:Z
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumDataLoader$1;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$100(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/LoadingListener;->onLoadingFinished(Z)V

    goto :goto_0

    .line 99
    .end local v0           #loadingFailed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
