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
    .line 42
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/stericson/RootTools/internal/Runner;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/stericson/RootTools/internal/Runner;->binaryName:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/stericson/RootTools/internal/Runner;->parameter:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 49
    const/4 v2, 0x0

    .line 51
    .local v2, privateFilesPath:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/stericson/RootTools/internal/Runner;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 58
    :goto_0
    if-eqz v2, :cond_0

    .line 60
    :try_start_1
    new-instance v0, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/stericson/RootTools/internal/Runner;->binaryName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/stericson/RootTools/internal/Runner;->parameter:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v0, v3, v4}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 61
    .local v0, command:Lcom/stericson/RootTools/execution/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 62
    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/CommandCapture;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .end local v0           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    :cond_0
    :goto_1
    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, e:Ljava/io/IOException;
    sget-boolean v3, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v3, :cond_1

    .line 54
    const-string v3, "RootTools::Runner"

    const-string v4, "Problem occured while trying to locate private files directory!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method
