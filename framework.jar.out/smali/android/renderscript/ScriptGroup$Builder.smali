.class public final Landroid/renderscript/ScriptGroup$Builder;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mKernelCount:I

.field private mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/renderscript/ScriptGroup$ConnectLine;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/renderscript/ScriptGroup$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    .line 175
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 176
    return-void
.end method

.method private findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;
    .locals 4
    .parameter "k"

    .prologue
    .line 256
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 257
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$Node;

    .line 258
    .local v2, n:Landroid/renderscript/ScriptGroup$Node;
    const/4 v1, 0x0

    .local v1, ct2:I
    :goto_1
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 259
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 264
    .end local v1           #ct2:I
    .end local v2           #n:Landroid/renderscript/ScriptGroup$Node;
    :goto_2
    return-object v2

    .line 258
    .restart local v1       #ct2:I
    .restart local v2       #n:Landroid/renderscript/ScriptGroup$Node;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    .end local v1           #ct2:I
    .end local v2           #n:Landroid/renderscript/ScriptGroup$Node;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;
    .locals 2
    .parameter "s"

    .prologue
    .line 247
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 248
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$Node;->mScript:Landroid/renderscript/Script;

    if-ne p1, v1, :cond_0

    .line 249
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    .line 252
    :goto_1
    return-object v1

    .line 247
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private mergeDAGs(II)V
    .locals 2
    .parameter "valueUsed"
    .parameter "valueKilled"

    .prologue
    .line 201
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 202
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    iget v1, v1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-ne v1, p2, :cond_0

    .line 203
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    iput p1, v1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 201
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_1
    return-void
.end method

.method private validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V
    .locals 5
    .parameter "target"
    .parameter "original"

    .prologue
    .line 181
    const/4 v1, 0x0

    .local v1, ct:I
    :goto_0
    iget-object v3, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 182
    iget-object v3, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ScriptGroup$ConnectLine;

    .line 183
    .local v0, cl:Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    if-eqz v3, :cond_1

    .line 184
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    iget-object v3, v3, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 185
    .local v2, tn:Landroid/renderscript/ScriptGroup$Node;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "Loops in group not allowed."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 188
    :cond_0
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    .line 190
    .end local v2           #tn:Landroid/renderscript/ScriptGroup$Node;
    :cond_1
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    if-eqz v3, :cond_3

    .line 191
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    iget-object v3, v3, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 192
    .restart local v2       #tn:Landroid/renderscript/ScriptGroup$Node;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "Loops in group not allowed."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    :cond_2
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    .line 181
    .end local v2           #tn:Landroid/renderscript/ScriptGroup$Node;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v0           #cl:Landroid/renderscript/ScriptGroup$ConnectLine;
    :cond_4
    return-void
.end method

.method private validateDAG()V
    .locals 5

    .prologue
    .line 229
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 230
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$Node;

    .line 231
    .local v2, n:Landroid/renderscript/ScriptGroup$Node;
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 232
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 233
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "Groups cannot contain unconnected scripts"

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_0
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v2, v3}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    .line 229
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    .end local v2           #n:Landroid/renderscript/ScriptGroup$Node;
    :cond_2
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/renderscript/ScriptGroup$Node;

    iget v1, v3, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 239
    .local v1, dagNumber:I
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 240
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/renderscript/ScriptGroup$Node;

    iget v3, v3, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-eq v3, v1, :cond_3

    .line 241
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "Multiple DAGs in group not allowed."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    :cond_4
    return-void
.end method

.method private validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V
    .locals 4
    .parameter "n"
    .parameter "dagNumber"

    .prologue
    .line 209
    iget v3, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-eq v3, p2, :cond_1

    .line 210
    iget v3, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    invoke-direct {p0, v3, p2}, Landroid/renderscript/ScriptGroup$Builder;->mergeDAGs(II)V

    .line 226
    :cond_0
    return-void

    .line 214
    :cond_1
    iput p2, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 215
    const/4 v1, 0x0

    .local v1, ct:I
    :goto_0
    iget-object v3, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 216
    iget-object v3, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ScriptGroup$ConnectLine;

    .line 217
    .local v0, cl:Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    if-eqz v3, :cond_2

    .line 218
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    iget-object v3, v3, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 219
    .local v2, tn:Landroid/renderscript/ScriptGroup$Node;
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    .line 221
    .end local v2           #tn:Landroid/renderscript/ScriptGroup$Node;
    :cond_2
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    if-eqz v3, :cond_3

    .line 222
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    iget-object v3, v3, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 223
    .restart local v2       #tn:Landroid/renderscript/ScriptGroup$Node;
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    .line 215
    .end local v2           #tn:Landroid/renderscript/ScriptGroup$Node;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addConnection(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)Landroid/renderscript/ScriptGroup$Builder;
    .locals 5
    .parameter "t"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 312
    invoke-direct {p0, p2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v1

    .line 313
    .local v1, nf:Landroid/renderscript/ScriptGroup$Node;
    if-nez v1, :cond_0

    .line 314
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "From script not found."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 317
    :cond_0
    iget-object v3, p3, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 318
    .local v2, nt:Landroid/renderscript/ScriptGroup$Node;
    if-nez v2, :cond_1

    .line 319
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "To script not found."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 322
    :cond_1
    new-instance v0, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v0, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)V

    .line 323
    .local v0, cl:Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    new-instance v4, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v4, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v3, v1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-direct {p0, v1, v1}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    .line 329
    return-object p0
.end method

.method public addConnection(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Builder;
    .locals 5
    .parameter "t"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 347
    invoke-direct {p0, p2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v1

    .line 348
    .local v1, nf:Landroid/renderscript/ScriptGroup$Node;
    if-nez v1, :cond_0

    .line 349
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "From script not found."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 352
    :cond_0
    invoke-direct {p0, p3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 353
    .local v2, nt:Landroid/renderscript/ScriptGroup$Node;
    if-nez v2, :cond_1

    .line 354
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "To script not found."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 357
    :cond_1
    new-instance v0, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v0, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)V

    .line 358
    .local v0, cl:Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    new-instance v4, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v4, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v3, v1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-direct {p0, v1, v1}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    .line 364
    return-object p0
.end method

.method public addKernel(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Builder;
    .locals 3
    .parameter "k"

    .prologue
    .line 276
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "Kernels may not be added once connections exist."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_0
    invoke-direct {p0, p1}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 294
    :goto_0
    return-object p0

    .line 286
    :cond_1
    iget v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    .line 287
    iget-object v1, p1, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v1}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v0

    .line 288
    .local v0, n:Landroid/renderscript/ScriptGroup$Node;
    if-nez v0, :cond_2

    .line 290
    new-instance v0, Landroid/renderscript/ScriptGroup$Node;

    .end local v0           #n:Landroid/renderscript/ScriptGroup$Node;
    iget-object v1, p1, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {v0, v1}, Landroid/renderscript/ScriptGroup$Node;-><init>(Landroid/renderscript/Script;)V

    .line 291
    .restart local v0       #n:Landroid/renderscript/ScriptGroup$Node;
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_2
    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public create()Landroid/renderscript/ScriptGroup;
    .locals 22

    .prologue
    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 378
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v21, "Empty script groups are not allowed"

    move-object/from16 v0, v21

    invoke-direct {v1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_0
    const/4 v8, 0x0

    .local v8, ct:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 382
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 385
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/ScriptGroup$Builder;->validateDAG()V

    .line 387
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v16, inputs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/renderscript/ScriptGroup$IO;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v19, outputs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/renderscript/ScriptGroup$IO;>;"
    move-object/from16 v0, p0

    iget v1, v0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    new-array v2, v1, [I

    .line 391
    .local v2, kernels:[I
    const/4 v14, 0x0

    .line 392
    .local v14, idx:I
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_9

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/renderscript/ScriptGroup$Node;

    .line 394
    .local v18, n:Landroid/renderscript/ScriptGroup$Node;
    const/4 v9, 0x0

    .local v9, ct2:I
    :goto_2
    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_8

    .line 395
    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/renderscript/Script$KernelID;

    .line 396
    .local v17, kid:Landroid/renderscript/Script$KernelID;
    add-int/lit8 v15, v14, 0x1

    .end local v14           #idx:I
    .local v15, idx:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    aput v1, v2, v14

    .line 398
    const/4 v11, 0x0

    .line 399
    .local v11, hasInput:Z
    const/4 v12, 0x0

    .line 400
    .local v12, hasOutput:Z
    const/4 v10, 0x0

    .local v10, ct3:I
    :goto_3
    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_3

    .line 401
    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$ConnectLine;

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    move-object/from16 v0, v17

    if-ne v1, v0, :cond_2

    .line 402
    const/4 v11, 0x1

    .line 400
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 405
    :cond_3
    const/4 v10, 0x0

    :goto_4
    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_5

    .line 406
    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$ConnectLine;

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/renderscript/Script$KernelID;

    move-object/from16 v0, v17

    if-ne v1, v0, :cond_4

    .line 407
    const/4 v12, 0x1

    .line 405
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 410
    :cond_5
    if-nez v11, :cond_6

    .line 411
    new-instance v1, Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v0, v17

    invoke-direct {v1, v0}, Landroid/renderscript/ScriptGroup$IO;-><init>(Landroid/renderscript/Script$KernelID;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_6
    if-nez v12, :cond_7

    .line 414
    new-instance v1, Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v0, v17

    invoke-direct {v1, v0}, Landroid/renderscript/ScriptGroup$IO;-><init>(Landroid/renderscript/Script$KernelID;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_7
    add-int/lit8 v9, v9, 0x1

    move v14, v15

    .end local v15           #idx:I
    .restart local v14       #idx:I
    goto/16 :goto_2

    .line 392
    .end local v10           #ct3:I
    .end local v11           #hasInput:Z
    .end local v12           #hasOutput:Z
    .end local v17           #kid:Landroid/renderscript/Script$KernelID;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 419
    .end local v9           #ct2:I
    .end local v18           #n:Landroid/renderscript/ScriptGroup$Node;
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    if-eq v14, v1, :cond_a

    .line 420
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v21, "Count mismatch, should not happen."

    move-object/from16 v0, v21

    invoke-direct {v1, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [I

    .line 424
    .local v3, src:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v4, v1, [I

    .line 425
    .local v4, dstk:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v5, v1, [I

    .line 426
    .local v5, dstf:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v6, v1, [I

    .line 428
    .local v6, types:[I
    const/4 v8, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_d

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/renderscript/ScriptGroup$ConnectLine;

    .line 430
    .local v7, cl:Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v1, v7, Landroid/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/renderscript/Script$KernelID;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    aput v1, v3, v8

    .line 431
    iget-object v1, v7, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    if-eqz v1, :cond_b

    .line 432
    iget-object v1, v7, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    aput v1, v4, v8

    .line 434
    :cond_b
    iget-object v1, v7, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    if-eqz v1, :cond_c

    .line 435
    iget-object v1, v7, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    aput v1, v5, v8

    .line 437
    :cond_c
    iget-object v1, v7, Landroid/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroid/renderscript/Type;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    aput v1, v6, v8

    .line 428
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 440
    .end local v7           #cl:Landroid/renderscript/ScriptGroup$ConnectLine;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nScriptGroupCreate([I[I[I[I[I)I

    move-result v13

    .line 441
    .local v13, id:I
    if-nez v13, :cond_e

    .line 442
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v21, "Object creation error, should not happen."

    move-object/from16 v0, v21

    invoke-direct {v1, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 445
    :cond_e
    new-instance v20, Landroid/renderscript/ScriptGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, v20

    invoke-direct {v0, v13, v1}, Landroid/renderscript/ScriptGroup;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 446
    .local v20, sg:Landroid/renderscript/ScriptGroup;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v0, v20

    iput-object v1, v0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    .line 447
    const/4 v8, 0x0

    :goto_6
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_f

    .line 448
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$IO;

    aput-object v1, v21, v8

    .line 447
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 451
    :cond_f
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v0, v20

    iput-object v1, v0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    .line 452
    const/4 v8, 0x0

    :goto_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_10

    .line 453
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$IO;

    aput-object v1, v21, v8

    .line 452
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 456
    :cond_10
    return-object v20
.end method
