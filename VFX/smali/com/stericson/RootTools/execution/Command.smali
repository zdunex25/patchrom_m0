.class public abstract Lcom/stericson/RootTools/execution/Command;
.super Ljava/lang/Object;
.source "Command.java"


# instance fields
.field final command:[Ljava/lang/String;

.field exitCode:I

.field finished:Z

.field id:I

.field timeout:I


# direct methods
.method public varargs constructor <init>(II[Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "timeout"
    .parameter "command"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/stericson/RootTools/execution/Command;->finished:Z

    .line 40
    iput v0, p0, Lcom/stericson/RootTools/execution/Command;->id:I

    .line 41
    const/16 v0, 0x1388

    iput v0, p0, Lcom/stericson/RootTools/execution/Command;->timeout:I

    .line 49
    iput-object p3, p0, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    .line 50
    iput p1, p0, Lcom/stericson/RootTools/execution/Command;->id:I

    .line 51
    iput p2, p0, Lcom/stericson/RootTools/execution/Command;->timeout:I

    .line 52
    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "command"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/stericson/RootTools/execution/Command;->finished:Z

    .line 40
    iput v0, p0, Lcom/stericson/RootTools/execution/Command;->id:I

    .line 41
    const/16 v0, 0x1388

    iput v0, p0, Lcom/stericson/RootTools/execution/Command;->timeout:I

    .line 44
    iput-object p2, p0, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    .line 45
    iput p1, p0, Lcom/stericson/RootTools/execution/Command;->id:I

    .line 46
    return-void
.end method


# virtual methods
.method public commandFinished(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "finished."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public exitCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget v0, p0, Lcom/stericson/RootTools/execution/Command;->timeout:I

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/execution/Command;->exitCode(I)I

    move-result v0

    monitor-exit p0

    return v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exitCode(I)I
    .locals 1
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/stericson/RootTools/execution/Command;->waitForFinish(I)V

    .line 116
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget v0, p0, Lcom/stericson/RootTools/execution/Command;->exitCode:I

    return v0

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending command(s): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public abstract output(ILjava/lang/String;)V
.end method

.method public setExitCode(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iput p1, p0, Lcom/stericson/RootTools/execution/Command;->exitCode:I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/RootTools/execution/Command;->finished:Z

    .line 78
    iget v0, p0, Lcom/stericson/RootTools/execution/Command;->id:I

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/execution/Command;->commandFinished(I)V

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public terminate(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 85
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeAll()V

    .line 86
    const-string v0, "Terminating all shells."

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/stericson/RootTools/execution/Command;->terminated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public terminated(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 93
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/execution/Command;->setExitCode(I)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stericson/RootTools/execution/Command;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " did not finish."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public waitForFinish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget v0, p0, Lcom/stericson/RootTools/execution/Command;->timeout:I

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/execution/Command;->waitForFinish(I)V

    .line 124
    monitor-exit p0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForFinish(I)V
    .locals 2
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/stericson/RootTools/execution/Command;->finished:Z

    if-nez v0, :cond_1

    .line 101
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 103
    iget-boolean v0, p0, Lcom/stericson/RootTools/execution/Command;->finished:Z

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/RootTools/execution/Command;->finished:Z

    .line 105
    const-string v0, "Timeout Exception has occurred."

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 106
    const-string v0, "Timeout Exception"

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/execution/Command;->terminate(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    return-void
.end method

.method public writeCommand(Ljava/io/OutputStreamWriter;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/stericson/RootTools/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 66
    return-void
.end method
