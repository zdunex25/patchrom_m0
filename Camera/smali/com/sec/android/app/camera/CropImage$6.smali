.class Lcom/android/camera/CropImage$6;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CropImage;

.field final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/camera/CropImage$6;->this$0:Lcom/android/camera/CropImage;

    iput-object p2, p0, Lcom/android/camera/CropImage$6;->val$b:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/camera/CropImage$6;->this$0:Lcom/android/camera/CropImage;

    #getter for: Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImageView;
    invoke-static {v0}, Lcom/android/camera/CropImage;->access$300(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CropImageView;->clear()V

    .line 542
    iget-object v0, p0, Lcom/android/camera/CropImage$6;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 543
    return-void
.end method
