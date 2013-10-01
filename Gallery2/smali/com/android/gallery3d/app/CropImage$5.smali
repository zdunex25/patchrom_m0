.class Lcom/android/gallery3d/app/CropImage$5;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/CropImage;->initializeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 921
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$5;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 924
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$5;->this$0:Lcom/android/gallery3d/app/CropImage;

    const/4 v2, 0x0

    #setter for: Lcom/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/CropImage;->access$1002(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 925
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 926
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 927
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$5;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage$5;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
