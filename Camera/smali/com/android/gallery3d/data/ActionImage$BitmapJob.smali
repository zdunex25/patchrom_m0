.class Lcom/android/gallery3d/data/ActionImage$BitmapJob;
.super Ljava/lang/Object;
.source "ActionImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/ActionImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/android/gallery3d/data/ActionImage;


# direct methods
.method protected constructor <init>(Lcom/android/gallery3d/data/ActionImage;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/gallery3d/data/ActionImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/ActionImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p2, p0, Lcom/android/gallery3d/data/ActionImage$BitmapJob;->mType:I

    .line 57
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jc"

    .prologue
    const/4 v4, 0x1

    .line 61
    iget v2, p0, Lcom/android/gallery3d/data/ActionImage$BitmapJob;->mType:I

    invoke-static {v2}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v1

    .line 62
    .local v1, targetSize:I
    iget-object v2, p0, Lcom/android/gallery3d/data/ActionImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/ActionImage;

    #getter for: Lcom/android/gallery3d/data/ActionImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v2}, Lcom/android/gallery3d/data/ActionImage;->access$000(Lcom/android/gallery3d/data/ActionImage;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/data/ActionImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/ActionImage;

    #getter for: Lcom/android/gallery3d/data/ActionImage;->mResourceId:I
    invoke-static {v3}, Lcom/android/gallery3d/data/ActionImage;->access$100(Lcom/android/gallery3d/data/ActionImage;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/android/gallery3d/data/ActionImage$BitmapJob;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 66
    invoke-static {v0, v1, v4}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 68
    :cond_0
    invoke-static {v0, v1, v4}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/ActionImage$BitmapJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
