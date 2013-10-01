.class final Lcom/android/gallery3d/provider/GalleryProvider$MtpPipeDataWriter;
.super Ljava/lang/Object;
.source "GalleryProvider.java"

# interfaces
.implements Lcom/android/gallery3d/provider/GalleryProvider$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/provider/GalleryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MtpPipeDataWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/provider/GalleryProvider$PipeDataWriter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mImage:Lcom/android/gallery3d/data/MtpImage;

.field final synthetic this$0:Lcom/android/gallery3d/provider/GalleryProvider;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/provider/GalleryProvider;Lcom/android/gallery3d/data/MtpImage;)V
    .locals 0
    .parameter
    .parameter "image"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/gallery3d/provider/GalleryProvider$MtpPipeDataWriter;->this$0:Lcom/android/gallery3d/provider/GalleryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p2, p0, Lcom/android/gallery3d/provider/GalleryProvider$MtpPipeDataWriter;->mImage:Lcom/android/gallery3d/data/MtpImage;

    .line 263
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/provider/GalleryProvider;Lcom/android/gallery3d/data/MtpImage;Lcom/android/gallery3d/provider/GalleryProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/provider/GalleryProvider$MtpPipeDataWriter;-><init>(Lcom/android/gallery3d/provider/GalleryProvider;Lcom/android/gallery3d/data/MtpImage;)V

    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    .locals 6
    .parameter "output"
    .parameter "args"

    .prologue
    .line 267
    const/4 v1, 0x0

    .line 269
    .local v1, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v1           #os:Ljava/io/OutputStream;
    .local v2, os:Ljava/io/OutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/android/gallery3d/provider/GalleryProvider$MtpPipeDataWriter;->mImage:Lcom/android/gallery3d/data/MtpImage;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MtpImage;->getImageData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 276
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v3, "GalleryProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to download: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/provider/GalleryProvider$MtpPipeDataWriter;->mImage:Lcom/android/gallery3d/data/MtpImage;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .end local v1           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_2

    .line 271
    .end local v1           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_1
.end method
