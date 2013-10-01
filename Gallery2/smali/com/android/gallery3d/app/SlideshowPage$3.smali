.class Lcom/android/gallery3d/app/SlideshowPage$3;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/SlideshowPage;->loadNextBitmap()V
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
        "Lcom/android/gallery3d/app/SlideshowPage$Slide;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/SlideshowPage;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/gallery3d/app/SlideshowPage$3;->this$0:Lcom/android/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/app/SlideshowPage$Slide;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/android/gallery3d/app/SlideshowPage$Slide;>;"
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$3;->this$0:Lcom/android/gallery3d/app/SlideshowPage;

    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/SlideshowPage$Slide;

    #setter for: Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/SlideshowPage;->access$302(Lcom/android/gallery3d/app/SlideshowPage;Lcom/android/gallery3d/app/SlideshowPage$Slide;)Lcom/android/gallery3d/app/SlideshowPage$Slide;

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$3;->this$0:Lcom/android/gallery3d/app/SlideshowPage;

    #getter for: Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/SlideshowPage;->access$400(Lcom/android/gallery3d/app/SlideshowPage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 149
    return-void
.end method
