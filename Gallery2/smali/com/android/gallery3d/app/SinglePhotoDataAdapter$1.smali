.class Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "SinglePhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    .line 66
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;

    #calls: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeLargeComplete(Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V

    .line 72
    :goto_1
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/util/Future;

    #calls: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeThumbComplete(Lcom/android/gallery3d/util/Future;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V

    goto :goto_1
.end method
