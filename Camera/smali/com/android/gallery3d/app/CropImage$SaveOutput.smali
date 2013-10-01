.class Lcom/android/gallery3d/app/CropImage$SaveOutput;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCropRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/RectF;)V
    .locals 0
    .parameter
    .parameter "cropRect"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p2, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 272
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 14
    .parameter "jc"

    .prologue
    const/4 v13, 0x0

    const/4 v8, 0x0

    .line 276
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 277
    .local v0, cropRect:Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 279
    .local v3, extra:Landroid/os/Bundle;
    new-instance v5, Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget v11, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-direct {v5, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 283
    .local v5, rect:Landroid/graphics/Rect;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 284
    .local v6, result:Landroid/content/Intent;
    const-string v9, "cropped-rect"

    invoke-virtual {v6, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, cropped:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 287
    .local v4, outputted:Z
    if-eqz v3, :cond_8

    .line 288
    const-string v9, "output"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 289
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_2

    .line 290
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v6, v8

    .line 314
    .end local v6           #result:Landroid/content/Intent;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v6

    .line 291
    .restart local v6       #result:Landroid/content/Intent;
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_1
    const/4 v4, 0x1

    .line 292
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v9, v5}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 293
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    invoke-static {v9, p1, v1, v7}, Lcom/android/gallery3d/app/CropImage;->access$400(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v9

    if-nez v9, :cond_2

    move-object v6, v8

    goto :goto_0

    .line 295
    :cond_2
    const-string v9, "return-data"

    invoke-virtual {v3, v9, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 296
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v6, v8

    goto :goto_0

    .line 297
    :cond_3
    const/4 v4, 0x1

    .line 298
    if-nez v1, :cond_4

    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v9, v5}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 299
    :cond_4
    const-string v9, "data"

    invoke-virtual {v6, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 301
    :cond_5
    const-string v9, "set-as-wallpaper"

    invoke-virtual {v3, v9, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 302
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v6, v8

    goto :goto_0

    .line 303
    :cond_6
    const/4 v4, 0x1

    .line 304
    if-nez v1, :cond_7

    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v9, v5}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 305
    :cond_7
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->setAsWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    invoke-static {v9, p1, v1}, Lcom/android/gallery3d/app/CropImage;->access$500(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v9

    if-nez v9, :cond_8

    move-object v6, v8

    goto :goto_0

    .line 308
    .end local v7           #uri:Landroid/net/Uri;
    :cond_8
    if-nez v4, :cond_0

    .line 309
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v6, v8

    goto :goto_0

    .line 310
    :cond_9
    if-nez v1, :cond_a

    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v8, v5}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 311
    :cond_a
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->saveToMediaProvider(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    invoke-static {v8, p1, v1}, Lcom/android/gallery3d/app/CropImage;->access$600(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    .line 312
    .local v2, data:Landroid/net/Uri;
    if-eqz v2, :cond_0

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/CropImage$SaveOutput;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
