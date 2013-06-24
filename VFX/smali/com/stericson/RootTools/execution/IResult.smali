.class public interface abstract Lcom/stericson/RootTools/execution/IResult;
.super Ljava/lang/Object;
.source "IResult.java"


# virtual methods
.method public abstract getData()Ljava/io/Serializable;
.end method

.method public abstract getError()I
.end method

.method public abstract getProcess()Ljava/lang/Process;
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

.method public abstract setData(Ljava/io/Serializable;)Lcom/stericson/RootTools/execution/IResult;
.end method

.method public abstract setError(I)Lcom/stericson/RootTools/execution/IResult;
.end method

.method public abstract setProcess(Ljava/lang/Process;)Lcom/stericson/RootTools/execution/IResult;
.end method
