.class public Lcom/stericson/RootTools/internal/Runner;
.super Ljava/lang/Thread;
.source "Runner.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RootTools::Runner"


# instance fields
.field binaryName:Ljava/lang/String;

.field context:Landroid/content/Context;

.field parameter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "binaryName"
    .parameter "parameter"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/stericson/RootTools/internal/Runner;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/stericson/RootTools/internal/Runner;->binaryName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/stericson/RootTools/internal/Runner;->parameter:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private commandWait(Lcom/stericson/RootTools/execution/Command;)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 70
    monitor-enter p1

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lcom/stericson/RootTools/execution/Command;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit p1

    .line 79
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 50
    const/4 v2, 0x0

    .line 52
    .local v2, privateFilesPath:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/stericson/RootTools/internal/Runner;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 59
    :goto_0
    if-eqz v2, :cond_0

    .line 61
    :try_start_1
    new-instance v0, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/stericson/RootTools/internal/Runner;->binaryName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/stericson/RootTools/internal/Runner;->parameter:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v3, v4, v5}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    .line 62
    .local v0, command:Lcom/stericson/RootTools/execution/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 63
    invoke-direct {p0, v0}, Lcom/stericson/RootTools/internal/Runner;->commandWait(Lcom/stericson/RootTools/execution/Command;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    .end local v0           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    :cond_0
    :goto_1
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, e:Ljava/io/IOException;
    sget-boolean v3, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v3, :cond_1

    .line 55
    const-string v3, "RootTools::Runner"

    const-string v4, "Problem occured while trying to locate private files directory!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method
