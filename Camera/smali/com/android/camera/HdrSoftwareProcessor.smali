.class public Lcom/android/camera/HdrSoftwareProcessor;
.super Ljava/lang/Object;
.source "HdrSoftwareProcessor.java"


# instance fields
.field private mOutputBitmap:Landroid/graphics/Bitmap;

.field private mRSHost:Lcom/android/camera/HdrSoftwareRS;

.field private mRSRenderer:Landroid/renderscript/RenderScript;

.field private mSourceBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HdrSoftwareProcessor;->mRSRenderer:Landroid/renderscript/RenderScript;

    .line 71
    new-instance v0, Lcom/android/camera/HdrSoftwareRS;

    iget-object v1, p0, Lcom/android/camera/HdrSoftwareProcessor;->mRSRenderer:Landroid/renderscript/RenderScript;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080005

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/HdrSoftwareRS;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/android/camera/HdrSoftwareProcessor;->mRSHost:Lcom/android/camera/HdrSoftwareRS;

    .line 72
    return-void
.end method


# virtual methods
.method public computeHDR(Landroid/content/Context;)[B
    .locals 5
    .parameter "ctx"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/camera/HdrSoftwareProcessor;->computeHDRRenderScript(Landroid/content/Context;)V

    .line 102
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/camera/HdrSoftwareProcessor;->mOutputBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 104
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 109
    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SW_HDR"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public computeHDRRenderScript(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 116
    const-string v0, "SW_HDR"

    const-string v1, "Starting HDR render (RS)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/camera/HdrSoftwareProcessor;->mRSHost:Lcom/android/camera/HdrSoftwareRS;

    invoke-virtual {v0}, Lcom/android/camera/HdrSoftwareRS;->process()V

    .line 120
    iget-object v0, p0, Lcom/android/camera/HdrSoftwareProcessor;->mRSHost:Lcom/android/camera/HdrSoftwareRS;

    invoke-virtual {v0}, Lcom/android/camera/HdrSoftwareRS;->getOutput()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HdrSoftwareProcessor;->mOutputBitmap:Landroid/graphics/Bitmap;

    .line 121
    return-void
.end method

.method public prepare(Landroid/content/Context;[Landroid/net/Uri;)V
    .locals 3
    .parameter "ctx"
    .parameter "sourceImages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HdrSoftwareProcessor;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 86
    iget-object v1, p0, Lcom/android/camera/HdrSoftwareProcessor;->mRSHost:Lcom/android/camera/HdrSoftwareRS;

    iget-object v2, p0, Lcom/android/camera/HdrSoftwareProcessor;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/HdrSoftwareRS;->setBitmapInput(Landroid/graphics/Bitmap;I)V

    .line 89
    iget-object v1, p0, Lcom/android/camera/HdrSoftwareProcessor;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method
