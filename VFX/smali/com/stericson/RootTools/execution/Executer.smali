.class public Lcom/stericson/RootTools/execution/Executer;
.super Ljava/lang/Object;
.source "Executer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/RootTools/execution/Executer$1;,
        Lcom/stericson/RootTools/execution/Executer$Worker;
    }
.end annotation


# instance fields
.field protected process:Ljava/lang/Process;

.field protected result:Lcom/stericson/RootTools/RootTools$Result;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    .line 40
    iput-object v0, p0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    .line 93
    return-void
.end method

.method static synthetic access$100(Lcom/stericson/RootTools/execution/Executer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/stericson/RootTools/execution/Executer;->closeShell()V

    return-void
.end method

.method private closeShell()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    iput-object v1, p0, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    if-eqz v0, :cond_1

    .line 259
    iput-object v1, p0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    .line 261
    :cond_1
    return-void

    .line 253
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;ZI)Ljava/util/List;
    .locals 8
    .parameter "commands"
    .parameter "sleepTime"
    .parameter "result"
    .parameter "useRoot"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Lcom/stericson/RootTools/RootTools$Result;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/stericson/RootTools/exceptions/RootToolsException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shell command"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, p1

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    const-string v1, "s"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/stericson/RootTools/execution/Executer$Worker;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/stericson/RootTools/execution/Executer$Worker;-><init>(Lcom/stericson/RootTools/execution/Executer;[Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;ZLcom/stericson/RootTools/execution/Executer$1;)V

    .line 69
    .local v0, worker:Lcom/stericson/RootTools/execution/Executer$Worker;
    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Executer$Worker;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    const/4 v1, -0x1

    if-ne p5, v1, :cond_0

    .line 73
    const p5, 0x493e0

    .line 76
    :cond_0
    int-to-long v1, p5

    :try_start_1
    invoke-virtual {v0, v1, v2}, Lcom/stericson/RootTools/execution/Executer$Worker;->join(J)V

    .line 79
    sget v1, Lcom/stericson/RootTools/RootTools;->shellDelay:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 81
    iget v1, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    const/16 v2, -0x38f

    if-eq v1, v2, :cond_2

    .line 82
    iget-object v1, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->finalResponse:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    monitor-exit p0

    return-object v1

    .line 66
    .end local v0           #worker:Lcom/stericson/RootTools/execution/Executer$Worker;
    :cond_1
    :try_start_2
    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 84
    .restart local v0       #worker:Lcom/stericson/RootTools/execution/Executer$Worker;
    :cond_2
    :try_start_3
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 85
    :catch_0
    move-exception v7

    .line 86
    .local v7, ex:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Executer$Worker;->interrupt()V

    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 88
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    .end local v0           #worker:Lcom/stericson/RootTools/execution/Executer$Worker;
    .end local v7           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
