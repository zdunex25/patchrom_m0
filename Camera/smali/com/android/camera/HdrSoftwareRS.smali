.class public Lcom/android/camera/HdrSoftwareRS;
.super Ljava/lang/Object;
.source "HdrSoftwareRS.java"


# instance fields
.field private mInBitmapAlloc:[Landroid/renderscript/Allocation;

.field private mOutBitmap:Landroid/graphics/Bitmap;

.field private mOutBitmapAlloc:Landroid/renderscript/Allocation;

.field private mRS:Landroid/renderscript/RenderScript;

.field private mScript:Lcom/android/camera/ScriptC_HdrSoftware;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 1
    .parameter "rs"
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/camera/HdrSoftwareRS;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    new-instance v0, Lcom/android/camera/ScriptC_HdrSoftware;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/camera/ScriptC_HdrSoftware;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/android/camera/HdrSoftwareRS;->mScript:Lcom/android/camera/ScriptC_HdrSoftware;

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/renderscript/Allocation;

    iput-object v0, p0, Lcom/android/camera/HdrSoftwareRS;->mInBitmapAlloc:[Landroid/renderscript/Allocation;

    .line 59
    return-void
.end method


# virtual methods
.method public getOutput()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/HdrSoftwareRS;->mOutBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public process()V
    .locals 8

    .prologue
    .line 68
    iget-object v5, p0, Lcom/android/camera/HdrSoftwareRS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v6, p0, Lcom/android/camera/HdrSoftwareRS;->mInBitmapAlloc:[Landroid/renderscript/Allocation;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/HdrSoftwareRS;->mOutBitmapAlloc:Landroid/renderscript/Allocation;

    .line 69
    iget-object v5, p0, Lcom/android/camera/HdrSoftwareRS;->mScript:Lcom/android/camera/ScriptC_HdrSoftware;

    iget-object v6, p0, Lcom/android/camera/HdrSoftwareRS;->mOutBitmapAlloc:Landroid/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/android/camera/ScriptC_HdrSoftware;->bind_gOutput(Landroid/renderscript/Allocation;)V

    .line 72
    iget-object v5, p0, Lcom/android/camera/HdrSoftwareRS;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 73
    .local v1, num_rows:I
    iget-object v5, p0, Lcom/android/camera/HdrSoftwareRS;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 75
    .local v4, row_width:I
    new-array v2, v1, [I

    .line 76
    .local v2, row_indices:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 77
    mul-int v5, v0, v4

    aput v5, v2, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iget-object v5, p0, Lcom/android/camera/HdrSoftwareRS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v6, p0, Lcom/android/camera/HdrSoftwareRS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v6}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v1, v7}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 81
    .local v3, row_indices_alloc:Landroid/renderscript/Allocation;
    invoke-virtual {v3, v2}, Landroid/renderscript/Allocation;->copyFrom([I)V

    .line 83
    iget-object v5, p0, Lcom/android/camera/HdrSoftwareRS;->mScript:Lcom/android/camera/ScriptC_HdrSoftware;

    invoke-virtual {v5, v3}, Lcom/android/camera/ScriptC_HdrSoftware;->set_gInIndex(Landroid/renderscript/Allocation;)V

    .line 84
    iget-object v5, p0, Lcom/android/camera/HdrSoftwareRS;->mScript:Lcom/android/camera/ScriptC_HdrSoftware;

    invoke-virtual {v5, v4}, Lcom/android/camera/ScriptC_HdrSoftware;->set_gImageWidth(I)V

    .line 85
    iget-object v5, p0, Lcom/android/camera/HdrSoftwareRS;->mScript:Lcom/android/camera/ScriptC_HdrSoftware;

    iget-object v6, p0, Lcom/android/camera/HdrSoftwareRS;->mScript:Lcom/android/camera/ScriptC_HdrSoftware;

    invoke-virtual {v5, v6}, Lcom/android/camera/ScriptC_HdrSoftware;->set_gScript(Landroid/renderscript/Script;)V

    .line 88
    iget-object v5, p0, Lcom/android/camera/HdrSoftwareRS;->mScript:Lcom/android/camera/ScriptC_HdrSoftware;

    invoke-virtual {v5}, Lcom/android/camera/ScriptC_HdrSoftware;->invoke_performHdrComputation()V

    .line 91
    iget-object v5, p0, Lcom/android/camera/HdrSoftwareRS;->mOutBitmapAlloc:Landroid/renderscript/Allocation;

    iget-object v6, p0, Lcom/android/camera/HdrSoftwareRS;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 92
    return-void
.end method

.method public setBitmapInput(Landroid/graphics/Bitmap;I)V
    .locals 5
    .parameter "input"
    .parameter "input_image"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 107
    if-nez p1, :cond_1

    .line 108
    const-string v0, "HdrSoftwareRS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set HdrSoftware input bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": input is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v4, :cond_3

    .line 113
    :cond_2
    const-string v0, "HdrSoftwareRS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for HDR input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HdrSoftwareRS;->mInBitmapAlloc:[Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/android/camera/HdrSoftwareRS;->mRS:Landroid/renderscript/RenderScript;

    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v1, p1, v2, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    aput-object v1, v0, p2

    .line 121
    packed-switch p2, :pswitch_data_0

    .line 135
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HdrSoftwareRS;->mOutBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HdrSoftwareRS;->mOutBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HdrSoftwareRS;->mScript:Lcom/android/camera/ScriptC_HdrSoftware;

    iget-object v1, p0, Lcom/android/camera/HdrSoftwareRS;->mInBitmapAlloc:[Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bind_gInputLow(Landroid/renderscript/Allocation;)V

    goto :goto_1

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HdrSoftwareRS;->mScript:Lcom/android/camera/ScriptC_HdrSoftware;

    iget-object v1, p0, Lcom/android/camera/HdrSoftwareRS;->mInBitmapAlloc:[Landroid/renderscript/Allocation;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bind_gInputMid(Landroid/renderscript/Allocation;)V

    goto :goto_1

    .line 131
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/HdrSoftwareRS;->mScript:Lcom/android/camera/ScriptC_HdrSoftware;

    iget-object v1, p0, Lcom/android/camera/HdrSoftwareRS;->mInBitmapAlloc:[Landroid/renderscript/Allocation;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bind_gInputHi(Landroid/renderscript/Allocation;)V

    goto :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
