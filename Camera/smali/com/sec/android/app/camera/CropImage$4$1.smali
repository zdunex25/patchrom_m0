.class Lcom/android/camera/CropImage$4$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CropImage$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CropImage$4;

.field final synthetic val$b:Landroid/graphics/Bitmap;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage$4;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iput-object p2, p0, Lcom/android/camera/CropImage$4$1;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/camera/CropImage$4$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 302
    iget-object v0, p0, Lcom/android/camera/CropImage$4$1;->val$b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget-object v1, v1, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    #getter for: Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/CropImage;->access$200(Lcom/android/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CropImage$4$1;->val$b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget-object v0, v0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    #getter for: Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImageView;
    invoke-static {v0}, Lcom/android/camera/CropImage;->access$300(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CropImage$4$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 304
    iget-object v0, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget-object v0, v0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    #getter for: Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/camera/CropImage;->access$200(Lcom/android/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 305
    iget-object v0, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget-object v0, v0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v1, p0, Lcom/android/camera/CropImage$4$1;->val$b:Landroid/graphics/Bitmap;

    #setter for: Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/camera/CropImage;->access$202(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget-object v0, v0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    #getter for: Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImageView;
    invoke-static {v0}, Lcom/android/camera/CropImage;->access$300(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget-object v0, v0, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    #getter for: Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImageView;
    invoke-static {v0}, Lcom/android/camera/CropImage;->access$300(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/CropImageView;->center(ZZ)V

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CropImage$4$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 311
    return-void
.end method
