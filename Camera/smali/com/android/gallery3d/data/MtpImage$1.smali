.class Lcom/android/gallery3d/data/MtpImage$1;
.super Ljava/lang/Object;
.source "MtpImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/MtpImage;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/MtpImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/MtpImage;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/gallery3d/data/MtpImage$1;->this$0:Lcom/android/gallery3d/data/MtpImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jc"

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v2, p0, Lcom/android/gallery3d/data/MtpImage$1;->this$0:Lcom/android/gallery3d/data/MtpImage;

    #getter for: Lcom/android/gallery3d/data/MtpImage;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;
    invoke-static {v2}, Lcom/android/gallery3d/data/MtpImage;->access$200(Lcom/android/gallery3d/data/MtpImage;)Lcom/android/gallery3d/data/MtpContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/android/gallery3d/data/MtpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/data/MtpImage$1;->this$0:Lcom/android/gallery3d/data/MtpImage;

    #getter for: Lcom/android/gallery3d/data/MtpImage;->mDeviceId:I
    invoke-static {v3}, Lcom/android/gallery3d/data/MtpImage;->access$000(Lcom/android/gallery3d/data/MtpImage;)I

    move-result v3

    invoke-static {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/data/MtpImage$1;->this$0:Lcom/android/gallery3d/data/MtpImage;

    #getter for: Lcom/android/gallery3d/data/MtpImage;->mObjectId:I
    invoke-static {v4}, Lcom/android/gallery3d/data/MtpImage;->access$100(Lcom/android/gallery3d/data/MtpImage;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/data/MtpClient;->getThumbnail(Ljava/lang/String;I)[B

    move-result-object v0

    .line 84
    .local v0, thumbnail:[B
    if-nez v0, :cond_0

    .line 85
    const-string v2, "MtpImage"

    const-string v3, "decoding thumbnail failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, v0, v1}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/MtpImage$1;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
