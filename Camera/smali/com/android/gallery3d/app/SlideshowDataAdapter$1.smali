.class Lcom/android/gallery3d/app/SlideshowDataAdapter$1;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/SlideshowDataAdapter;->nextSlide(Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/android/gallery3d/app/SlideshowPage$Slide;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/SlideshowDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/app/SlideshowPage$Slide;
    .locals 1
    .parameter "jc"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    #calls: Lcom/android/gallery3d/app/SlideshowDataAdapter;->innerNextBitmap()Lcom/android/gallery3d/app/SlideshowPage$Slide;
    invoke-static {v0}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$900(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Lcom/android/gallery3d/app/SlideshowPage$Slide;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/SlideshowDataAdapter$1;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/app/SlideshowPage$Slide;

    move-result-object v0

    return-object v0
.end method
