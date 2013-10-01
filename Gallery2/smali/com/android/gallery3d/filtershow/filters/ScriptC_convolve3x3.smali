.class public Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_convolve3x3.java"


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __F32:Landroid/renderscript/Element;

.field private __I32:Landroid/renderscript/Element;

.field private __U8_4:Landroid/renderscript/Element;

.field private mExportVar_gCoeffs:[F

.field private mExportVar_gHeight:I

.field private mExportVar_gIn:Landroid/renderscript/Allocation;

.field private mExportVar_gPixels:Landroid/renderscript/Allocation;

.field private mExportVar_gWidth:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 1
    .parameter "rs"
    .parameter "resources"
    .parameter "id"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 42
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->__I32:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->__ALLOCATION:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->__F32:Landroid/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->__U8_4:Landroid/renderscript/Element;

    .line 46
    return-void
.end method


# virtual methods
.method public bind_gPixels(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x2

    .line 88
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->mExportVar_gPixels:Landroid/renderscript/Allocation;

    .line 89
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public forEach_root(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 4
    .parameter "ain"
    .parameter "aout"

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v2, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Type mismatch with U8_4!"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_0
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->__U8_4:Landroid/renderscript/Element;

    invoke-virtual {v2, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Type mismatch with U8_4!"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 150
    .local v0, tIn:Landroid/renderscript/Type;
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    .line 151
    .local v1, tOut:Landroid/renderscript/Type;
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 157
    :cond_2
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Dimension mismatch between input and output parameters!"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, p2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    .line 160
    return-void
.end method

.method public declared-synchronized set_gCoeffs([F)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0x9

    .line 115
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->mExportVar_gCoeffs:[F

    .line 116
    new-instance v2, Landroid/renderscript/FieldPacker;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 117
    .local v2, fp:Landroid/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, ct1:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 118
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 122
    .local v0, __dimArr:[I
    const/4 v3, 0x0

    const/16 v4, 0x9

    aput v4, v0, v3

    .line 123
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->__F32:Landroid/renderscript/Element;

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->setVar(ILandroid/renderscript/FieldPacker;Landroid/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 115
    .end local v0           #__dimArr:[I
    .end local v1           #ct1:I
    .end local v2           #fp:Landroid/renderscript/FieldPacker;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set_gHeight(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 73
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->setVar(II)V

    .line 74
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->mExportVar_gHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gIn(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 100
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 101
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->mExportVar_gIn:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gWidth(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 58
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->setVar(II)V

    .line 59
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->mExportVar_gWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
