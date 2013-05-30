.class public Lcom/miui/osb/SystemCommandExecutor;
.super Ljava/lang/Object;
.source "SystemCommandExecutor.java"


# instance fields
.field private adminPassword:Ljava/lang/String;

.field private commandInformation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private errorStreamHandler:Lcom/miui/osb/ThreadedStreamHandler;

.field private inputStreamHandler:Lcom/miui/osb/ThreadedStreamHandler;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, commandInformation:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    .line 32
    const-string v1, "The commandInformation is required."

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/miui/osb/SystemCommandExecutor;->commandInformation:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/osb/SystemCommandExecutor;->adminPassword:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public executeCommand()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 39
    const/16 v2, -0x63

    .line 42
    .local v2, exitValue:I
    :try_start_0
    new-instance v4, Ljava/lang/ProcessBuilder;

    iget-object v7, p0, Lcom/miui/osb/SystemCommandExecutor;->commandInformation:Ljava/util/List;

    invoke-direct {v4, v7}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 43
    .local v4, pb:Ljava/lang/ProcessBuilder;
    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v5

    .line 49
    .local v5, process:Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 56
    .local v6, stdOutput:Ljava/io/OutputStream;
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 57
    .local v3, inputStream:Ljava/io/InputStream;
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 64
    .local v1, errorStream:Ljava/io/InputStream;
    new-instance v7, Lcom/miui/osb/ThreadedStreamHandler;

    .line 65
    iget-object v8, p0, Lcom/miui/osb/SystemCommandExecutor;->adminPassword:Ljava/lang/String;

    invoke-direct {v7, v3, v6, v8}, Lcom/miui/osb/ThreadedStreamHandler;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 64
    iput-object v7, p0, Lcom/miui/osb/SystemCommandExecutor;->inputStreamHandler:Lcom/miui/osb/ThreadedStreamHandler;

    .line 66
    new-instance v7, Lcom/miui/osb/ThreadedStreamHandler;

    invoke-direct {v7, v1}, Lcom/miui/osb/ThreadedStreamHandler;-><init>(Ljava/io/InputStream;)V

    iput-object v7, p0, Lcom/miui/osb/SystemCommandExecutor;->errorStreamHandler:Lcom/miui/osb/ThreadedStreamHandler;

    .line 70
    iget-object v7, p0, Lcom/miui/osb/SystemCommandExecutor;->inputStreamHandler:Lcom/miui/osb/ThreadedStreamHandler;

    invoke-virtual {v7}, Lcom/miui/osb/ThreadedStreamHandler;->start()V

    .line 71
    iget-object v7, p0, Lcom/miui/osb/SystemCommandExecutor;->errorStreamHandler:Lcom/miui/osb/ThreadedStreamHandler;

    invoke-virtual {v7}, Lcom/miui/osb/ThreadedStreamHandler;->start()V

    .line 74
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 77
    iget-object v7, p0, Lcom/miui/osb/SystemCommandExecutor;->inputStreamHandler:Lcom/miui/osb/ThreadedStreamHandler;

    invoke-virtual {v7}, Lcom/miui/osb/ThreadedStreamHandler;->interrupt()V

    .line 78
    iget-object v7, p0, Lcom/miui/osb/SystemCommandExecutor;->errorStreamHandler:Lcom/miui/osb/ThreadedStreamHandler;

    invoke-virtual {v7}, Lcom/miui/osb/ThreadedStreamHandler;->interrupt()V

    .line 79
    iget-object v7, p0, Lcom/miui/osb/SystemCommandExecutor;->inputStreamHandler:Lcom/miui/osb/ThreadedStreamHandler;

    invoke-virtual {v7}, Lcom/miui/osb/ThreadedStreamHandler;->join()V

    .line 80
    iget-object v7, p0, Lcom/miui/osb/SystemCommandExecutor;->errorStreamHandler:Lcom/miui/osb/ThreadedStreamHandler;

    invoke-virtual {v7}, Lcom/miui/osb/ThreadedStreamHandler;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    .end local v1           #errorStream:Ljava/io/InputStream;
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v4           #pb:Ljava/lang/ProcessBuilder;
    .end local v5           #process:Ljava/lang/Process;
    .end local v6           #stdOutput:Ljava/io/OutputStream;
    :goto_0
    return v2

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    throw v0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/InterruptedException;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public getStandardErrorFromCommand()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/osb/SystemCommandExecutor;->errorStreamHandler:Lcom/miui/osb/ThreadedStreamHandler;

    invoke-virtual {v0}, Lcom/miui/osb/ThreadedStreamHandler;->getOutputBuffer()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getStandardOutputFromCommand()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/osb/SystemCommandExecutor;->inputStreamHandler:Lcom/miui/osb/ThreadedStreamHandler;

    invoke-virtual {v0}, Lcom/miui/osb/ThreadedStreamHandler;->getOutputBuffer()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
