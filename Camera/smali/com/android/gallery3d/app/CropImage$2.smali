.class Lcom/android/gallery3d/app/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;

.field final synthetic val$ios:Lcom/android/gallery3d/util/InterruptableOutputStream;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/InterruptableOutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$2;->this$0:Lcom/android/gallery3d/app/CropImage;

    iput-object p2, p0, Lcom/android/gallery3d/app/CropImage$2;->val$ios:Lcom/android/gallery3d/util/InterruptableOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$2;->val$ios:Lcom/android/gallery3d/util/InterruptableOutputStream;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/InterruptableOutputStream;->interrupt()V

    .line 556
    return-void
.end method
