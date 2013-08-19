.class public abstract Lcom/stericson/RootTools/RootTools$Result;
.super Ljava/lang/Object;
.source "RootTools.java"

# interfaces
.implements Lcom/stericson/RootTools/execution/IResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/RootTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Result"
.end annotation


# instance fields
.field private data:Ljava/io/Serializable;

.field private error:I

.field private process:Ljava/lang/Process;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    iput-object v0, p0, Lcom/stericson/RootTools/RootTools$Result;->process:Ljava/lang/Process;

    .line 813
    iput-object v0, p0, Lcom/stericson/RootTools/RootTools$Result;->data:Ljava/io/Serializable;

    .line 814
    const/4 v0, 0x0

    iput v0, p0, Lcom/stericson/RootTools/RootTools$Result;->error:I

    return-void
.end method


# virtual methods
.method public getData()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/stericson/RootTools/RootTools$Result;->data:Ljava/io/Serializable;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 848
    iget v0, p0, Lcom/stericson/RootTools/RootTools$Result;->error:I

    return v0
.end method

.method public getProcess()Ljava/lang/Process;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/stericson/RootTools/RootTools$Result;->process:Ljava/lang/Process;

    return-object v0
.end method

.method public abstract onComplete(I)V
.end method

.method public abstract onFailure(Ljava/lang/Exception;)V
.end method

.method public abstract process(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract processError(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public setData(Ljava/io/Serializable;)Lcom/stericson/RootTools/RootTools$Result;
    .locals 0
    .parameter "data"

    .prologue
    .line 834
    iput-object p1, p0, Lcom/stericson/RootTools/RootTools$Result;->data:Ljava/io/Serializable;

    .line 835
    return-object p0
.end method

.method public bridge synthetic setData(Ljava/io/Serializable;)Lcom/stericson/RootTools/execution/IResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 811
    invoke-virtual {p0, p1}, Lcom/stericson/RootTools/RootTools$Result;->setData(Ljava/io/Serializable;)Lcom/stericson/RootTools/RootTools$Result;

    move-result-object v0

    return-object v0
.end method

.method public setError(I)Lcom/stericson/RootTools/RootTools$Result;
    .locals 0
    .parameter "error"

    .prologue
    .line 843
    iput p1, p0, Lcom/stericson/RootTools/RootTools$Result;->error:I

    .line 844
    return-object p0
.end method

.method public bridge synthetic setError(I)Lcom/stericson/RootTools/execution/IResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 811
    invoke-virtual {p0, p1}, Lcom/stericson/RootTools/RootTools$Result;->setError(I)Lcom/stericson/RootTools/RootTools$Result;

    move-result-object v0

    return-object v0
.end method

.method public setProcess(Ljava/lang/Process;)Lcom/stericson/RootTools/RootTools$Result;
    .locals 0
    .parameter "process"

    .prologue
    .line 825
    iput-object p1, p0, Lcom/stericson/RootTools/RootTools$Result;->process:Ljava/lang/Process;

    .line 826
    return-object p0
.end method

.method public bridge synthetic setProcess(Ljava/lang/Process;)Lcom/stericson/RootTools/execution/IResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 811
    invoke-virtual {p0, p1}, Lcom/stericson/RootTools/RootTools$Result;->setProcess(Ljava/lang/Process;)Lcom/stericson/RootTools/RootTools$Result;

    move-result-object v0

    return-object v0
.end method
