.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;
.source "ImageFilterSharpen.java"


# instance fields
.field private mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;-><init>()V

    .line 27
    const-string v0, "Sharpen"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public createFilter(Landroid/content/res/Resources;FZ)V
    .locals 9
    .parameter "res"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 33
    sget-object v6, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mInPixelsAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v5

    .line 34
    .local v5, w:I
    sget-object v6, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mInPixelsAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v1

    .line 36
    .local v1, h:I
    iget v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mParameter:I

    int-to-float v6, v6

    mul-float v3, v6, p2

    .line 37
    .local v3, p1:F
    const/high16 v6, 0x42c8

    div-float v4, v3, v6

    .line 38
    .local v4, value:F
    const/16 v6, 0x9

    new-array v0, v6, [F

    .line 39
    .local v0, f:[F
    move v2, v4

    .line 40
    .local v2, p:F
    const/4 v6, 0x0

    neg-float v7, v2

    aput v7, v0, v6

    .line 41
    const/4 v6, 0x1

    neg-float v7, v2

    aput v7, v0, v6

    .line 42
    const/4 v6, 0x2

    neg-float v7, v2

    aput v7, v0, v6

    .line 43
    const/4 v6, 0x3

    neg-float v7, v2

    aput v7, v0, v6

    .line 44
    const/4 v6, 0x4

    const/high16 v7, 0x4100

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f80

    add-float/2addr v7, v8

    aput v7, v0, v6

    .line 45
    const/4 v6, 0x5

    neg-float v7, v2

    aput v7, v0, v6

    .line 46
    const/4 v6, 0x6

    neg-float v7, v2

    aput v7, v0, v6

    .line 47
    const/4 v6, 0x7

    neg-float v7, v2

    aput v7, v0, v6

    .line 48
    const/16 v6, 0x8

    neg-float v7, v2

    aput v7, v0, v6

    .line 49
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    if-nez v6, :cond_0

    .line 50
    new-instance v6, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->getRenderScriptContext()Landroid/renderscript/RenderScript;

    move-result-object v7

    const v8, 0x7f080002

    invoke-direct {v6, v7, p1, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    .line 52
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->set_gCoeffs([F)V

    .line 53
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->set_gWidth(I)V

    .line 54
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {v6, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->set_gHeight(I)V

    .line 55
    return-void
.end method

.method public runFilter()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mInPixelsAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->set_gIn(Landroid/renderscript/Allocation;)V

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mInPixelsAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->bind_gPixels(Landroid/renderscript/Allocation;)V

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mInPixelsAllocation:Landroid/renderscript/Allocation;

    sget-object v2, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mOutPixelsAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->forEach_root(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 62
    return-void
.end method
