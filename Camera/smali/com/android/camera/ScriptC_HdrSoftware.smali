.class public Lcom/android/camera/ScriptC_HdrSoftware;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_HdrSoftware.java"


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __I32:Landroid/renderscript/Element;

.field private __SCRIPT:Landroid/renderscript/Element;

.field private mExportVar_gImageWidth:I

.field private mExportVar_gInIndex:Landroid/renderscript/Allocation;

.field private mExportVar_gInputHi:Landroid/renderscript/Allocation;

.field private mExportVar_gInputLow:Landroid/renderscript/Allocation;

.field private mExportVar_gInputMid:Landroid/renderscript/Allocation;

.field private mExportVar_gOutput:Landroid/renderscript/Allocation;

.field private mExportVar_gScript:Landroid/renderscript/Script;


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
    invoke-static {p1}, Landroid/renderscript/Element;->SCRIPT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ScriptC_HdrSoftware;->__SCRIPT:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ScriptC_HdrSoftware;->__ALLOCATION:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ScriptC_HdrSoftware;->__I32:Landroid/renderscript/Element;

    .line 45
    return-void
.end method


# virtual methods
.method public bind_gInputHi(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x4

    .line 110
    iput-object p1, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gInputHi:Landroid/renderscript/Allocation;

    .line 111
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gInputLow(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x2

    .line 86
    iput-object p1, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gInputLow:Landroid/renderscript/Allocation;

    .line 87
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gInputMid(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x3

    .line 98
    iput-object p1, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gInputMid:Landroid/renderscript/Allocation;

    .line 99
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gOutput(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x5

    .line 122
    iput-object p1, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gOutput:Landroid/renderscript/Allocation;

    .line 123
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public invoke_performHdrComputation()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ScriptC_HdrSoftware;->invoke(I)V

    .line 177
    return-void
.end method

.method public declared-synchronized set_gImageWidth(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 134
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/ScriptC_HdrSoftware;->setVar(II)V

    .line 135
    iput p1, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gImageWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gInIndex(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 71
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/ScriptC_HdrSoftware;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 72
    iput-object p1, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gInIndex:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gScript(Landroid/renderscript/Script;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 56
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/ScriptC_HdrSoftware;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 57
    iput-object p1, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gScript:Landroid/renderscript/Script;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
