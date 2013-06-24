.class public Lcom/stericson/RootTools/execution/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/RootTools/execution/Shell$Worker;
    }
.end annotation


# static fields
.field private static customShell:Lcom/stericson/RootTools/execution/Shell; = null

.field private static error:Ljava/lang/String; = null

.field private static rootShell:Lcom/stericson/RootTools/execution/Shell; = null

.field private static shell:Lcom/stericson/RootTools/execution/Shell; = null

.field private static shellTimeout:I = 0x0

.field private static final token:Ljava/lang/String; = "F*D^W@#FGF"


# instance fields
.field private close:Z

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stericson/RootTools/execution/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final in:Ljava/io/BufferedReader;

.field private input:Ljava/lang/Runnable;

.field private final out:Ljava/io/OutputStreamWriter;

.field private output:Ljava/lang/Runnable;

.field private final proc:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/stericson/RootTools/execution/Shell;->error:Ljava/lang/String;

    .line 49
    sput-object v1, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    .line 50
    sput-object v1, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    .line 51
    sput-object v1, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    .line 53
    const/16 v0, 0x2710

    sput v0, Lcom/stericson/RootTools/execution/Shell;->shellTimeout:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    .line 45
    iput-boolean v4, p0, Lcom/stericson/RootTools/execution/Shell;->close:Z

    .line 195
    new-instance v2, Lcom/stericson/RootTools/execution/Shell$1;

    invoke-direct {v2, p0}, Lcom/stericson/RootTools/execution/Shell$1;-><init>(Lcom/stericson/RootTools/execution/Shell;)V

    iput-object v2, p0, Lcom/stericson/RootTools/execution/Shell;->input:Ljava/lang/Runnable;

    .line 205
    new-instance v2, Lcom/stericson/RootTools/execution/Shell$2;

    invoke-direct {v2, p0}, Lcom/stericson/RootTools/execution/Shell$2;-><init>(Lcom/stericson/RootTools/execution/Shell;)V

    iput-object v2, p0, Lcom/stericson/RootTools/execution/Shell;->output:Ljava/lang/Runnable;

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting shell: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 59
    new-instance v2, Ljava/lang/ProcessBuilder;

    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    iput-object v2, p0, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    .line 60
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/stericson/RootTools/execution/Shell;->in:Ljava/io/BufferedReader;

    .line 61
    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;

    .line 63
    new-instance v1, Lcom/stericson/RootTools/execution/Shell$Worker;

    iget-object v2, p0, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell;->in:Ljava/io/BufferedReader;

    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/stericson/RootTools/execution/Shell$Worker;-><init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;Lcom/stericson/RootTools/execution/Shell$1;)V

    .line 64
    .local v1, worker:Lcom/stericson/RootTools/execution/Shell$Worker;
    invoke-virtual {v1}, Lcom/stericson/RootTools/execution/Shell$Worker;->start()V

    .line 68
    :try_start_0
    sget v2, Lcom/stericson/RootTools/execution/Shell;->shellTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/stericson/RootTools/execution/Shell$Worker;->join(J)V

    .line 70
    iget v2, v1, Lcom/stericson/RootTools/execution/Shell$Worker;->exit:I

    const/16 v3, -0x38f

    if-ne v2, v3, :cond_0

    .line 71
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 73
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    sget-object v3, Lcom/stericson/RootTools/execution/Shell;->error:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Lcom/stericson/RootTools/execution/Shell$Worker;->interrupt()V

    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 90
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v2

    .line 75
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_1
    iget v2, v1, Lcom/stericson/RootTools/execution/Shell$Worker;->exit:I

    const/16 v3, -0x2a

    if-ne v2, v3, :cond_1

    .line 76
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 78
    new-instance v2, Lcom/stericson/RootTools/exceptions/RootDeniedException;

    const-string v3, "Root Access Denied"

    invoke-direct {v2, v3}, Lcom/stericson/RootTools/exceptions/RootDeniedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell;->input:Ljava/lang/Runnable;

    const-string v4, "Shell Input"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 83
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell;->output:Ljava/lang/Runnable;

    const-string v4, "Shell Output"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    return-void
.end method

.method static synthetic access$100(Lcom/stericson/RootTools/execution/Shell;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/stericson/RootTools/execution/Shell;->writeCommands()V

    return-void
.end method

.method static synthetic access$200(Lcom/stericson/RootTools/execution/Shell;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/stericson/RootTools/execution/Shell;->readOutput()V

    return-void
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    sput-object p0, Lcom/stericson/RootTools/execution/Shell;->error:Ljava/lang/String;

    return-object p0
.end method

.method public static closeAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeShell()V

    .line 145
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeRootShell()V

    .line 146
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeCustomShell()V

    .line 147
    return-void
.end method

.method public static closeCustomShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Shell;->close()V

    goto :goto_0
.end method

.method public static closeRootShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Shell;->close()V

    goto :goto_0
.end method

.method public static closeShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Shell;->close()V

    goto :goto_0
.end method

.method public static getOpenShell()Lcom/stericson/RootTools/execution/Shell;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    .line 156
    :goto_0
    return-object v0

    .line 153
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-eqz v0, :cond_1

    .line 154
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    goto :goto_0

    .line 156
    :cond_1
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    goto :goto_0
.end method

.method public static isAnyShellOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 185
    sget-object v1, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    if-eqz v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 187
    :cond_1
    sget-object v1, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v1, :cond_0

    .line 189
    sget-object v1, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v1, :cond_0

    .line 192
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomShellOpen()Z
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRootShellOpen()Z
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isShellOpen()Z
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readOutput()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, command:Lcom/stericson/RootTools/execution/Command;
    const/4 v6, 0x0

    .line 221
    .local v6, read:I
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/stericson/RootTools/execution/Shell;->in:Ljava/io/BufferedReader;

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 268
    :goto_1
    const-string v7, "Read all output"

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 269
    iget-object v7, p0, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    .line 270
    iget-object v7, p0, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    .line 271
    const-string v7, "Shell destroyed"

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 273
    :goto_2
    iget-object v7, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 274
    if-nez v0, :cond_1

    .line 275
    iget-object v7, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #command:Lcom/stericson/RootTools/execution/Command;
    check-cast v0, Lcom/stericson/RootTools/execution/Command;

    .line 276
    .restart local v0       #command:Lcom/stericson/RootTools/execution/Command;
    :cond_1
    const-string v7, "Unexpected Termination."

    invoke-virtual {v0, v7}, Lcom/stericson/RootTools/execution/Command;->terminated(Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x0

    .line 278
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 228
    :cond_2
    if-nez v0, :cond_4

    .line 229
    iget-object v7, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v6, v7, :cond_3

    .line 231
    iget-boolean v7, p0, Lcom/stericson/RootTools/execution/Shell;->close:Z

    if-eqz v7, :cond_0

    goto :goto_1

    .line 235
    :cond_3
    iget-object v7, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #command:Lcom/stericson/RootTools/execution/Command;
    check-cast v0, Lcom/stericson/RootTools/execution/Command;

    .line 238
    .restart local v0       #command:Lcom/stericson/RootTools/execution/Command;
    :cond_4
    const-string v7, "F*D^W@#FGF"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 239
    .local v5, pos:I
    if-lez v5, :cond_5

    .line 240
    iget v7, v0, Lcom/stericson/RootTools/execution/Command;->id:I

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/stericson/RootTools/execution/Command;->output(ILjava/lang/String;)V

    .line 241
    :cond_5
    if-ltz v5, :cond_6

    .line 242
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 243
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, fields:[Ljava/lang/String;
    array-length v7, v2

    if-lt v7, v10, :cond_6

    aget-object v7, v2, v9

    if-eqz v7, :cond_6

    .line 246
    const/4 v3, 0x0

    .line 248
    .local v3, id:I
    const/4 v7, 0x1

    :try_start_0
    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 252
    :goto_3
    const/4 v1, -0x1

    .line 254
    .local v1, exitCode:I
    const/4 v7, 0x2

    :try_start_1
    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 258
    :goto_4
    if-ne v3, v6, :cond_6

    .line 259
    invoke-virtual {v0, v1}, Lcom/stericson/RootTools/execution/Command;->setExitCode(I)V

    .line 260
    add-int/lit8 v6, v6, 0x1

    .line 261
    const/4 v0, 0x0

    .line 262
    goto/16 :goto_0

    .line 266
    .end local v1           #exitCode:I
    .end local v2           #fields:[Ljava/lang/String;
    .end local v3           #id:I
    :cond_6
    iget v7, v0, Lcom/stericson/RootTools/execution/Command;->id:I

    invoke-virtual {v0, v7, v4}, Lcom/stericson/RootTools/execution/Command;->output(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 280
    .end local v5           #pos:I
    :cond_7
    return-void

    .line 256
    .restart local v1       #exitCode:I
    .restart local v2       #fields:[Ljava/lang/String;
    .restart local v3       #id:I
    .restart local v5       #pos:I
    :catch_0
    move-exception v7

    goto :goto_4

    .line 250
    .end local v1           #exitCode:I
    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method public static runCommand(Lcom/stericson/RootTools/execution/Command;)V
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 288
    return-void
.end method

.method public static runRootCommand(Lcom/stericson/RootTools/execution/Command;)V
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 284
    return-void
.end method

.method public static startCustomShell(Ljava/lang/String;)Lcom/stericson/RootTools/execution/Shell;
    .locals 1
    .parameter "shellPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 328
    const/16 v0, 0x4e20

    invoke-static {p0, v0}, Lcom/stericson/RootTools/execution/Shell;->startCustomShell(Ljava/lang/String;I)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static startCustomShell(Ljava/lang/String;I)Lcom/stericson/RootTools/execution/Shell;
    .locals 1
    .parameter "shellPath"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 332
    sput p1, Lcom/stericson/RootTools/execution/Shell;->shellTimeout:I

    .line 334
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 335
    const-string v0, "Starting Custom Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 336
    new-instance v0, Lcom/stericson/RootTools/execution/Shell;

    invoke-direct {v0, p0}, Lcom/stericson/RootTools/execution/Shell;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    .line 341
    :goto_0
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    return-object v0

    .line 339
    :cond_0
    const-string v0, "Using Existing Custom Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startRootShell()Lcom/stericson/RootTools/execution/Shell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 291
    const/16 v0, 0x4e20

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/stericson/RootTools/execution/Shell;->startRootShell(II)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static startRootShell(I)Lcom/stericson/RootTools/execution/Shell;
    .locals 1
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/stericson/RootTools/execution/Shell;->startRootShell(II)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static startRootShell(II)Lcom/stericson/RootTools/execution/Shell;
    .locals 5
    .parameter "timeout"
    .parameter "retry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 300
    sput p0, Lcom/stericson/RootTools/execution/Shell;->shellTimeout:I

    .line 302
    sget-object v4, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v4, :cond_1

    .line 303
    const-string v4, "Starting Root Shell!"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 304
    const-string v0, "su"

    .line 306
    .local v0, cmd:Ljava/lang/String;
    const/4 v2, 0x0

    .line 307
    .local v2, retries:I
    :goto_0
    sget-object v4, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v4, :cond_2

    .line 309
    :try_start_0
    new-instance v4, Lcom/stericson/RootTools/execution/Shell;

    invoke-direct {v4, v0}, Lcom/stericson/RootTools/execution/Shell;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, e:Ljava/io/IOException;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #retries:I
    .local v3, retries:I
    if-lt v2, p1, :cond_0

    .line 313
    const-string v4, "IOException, could not start shell"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 314
    throw v1

    :cond_0
    move v2, v3

    .line 316
    .end local v3           #retries:I
    .restart local v2       #retries:I
    goto :goto_0

    .line 321
    .end local v0           #cmd:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #retries:I
    :cond_1
    const-string v4, "Using Existing Root Shell!"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 324
    :cond_2
    sget-object v4, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    return-object v4
.end method

.method public static startShell()Lcom/stericson/RootTools/execution/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 345
    const/16 v0, 0x4e20

    invoke-static {v0}, Lcom/stericson/RootTools/execution/Shell;->startShell(I)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static startShell(I)Lcom/stericson/RootTools/execution/Shell;
    .locals 3
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 349
    sput p0, Lcom/stericson/RootTools/execution/Shell;->shellTimeout:I

    .line 352
    :try_start_0
    sget-object v1, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v1, :cond_0

    .line 353
    const-string v1, "Starting Shell!"

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 354
    new-instance v1, Lcom/stericson/RootTools/execution/Shell;

    const-string v2, "/system/bin/sh"

    invoke-direct {v1, v2}, Lcom/stericson/RootTools/execution/Shell;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    .line 358
    :goto_0
    sget-object v1, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    return-object v1

    .line 357
    :cond_0
    const-string v1, "Using Existing Shell!"

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/stericson/RootTools/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Lcom/stericson/RootTools/exceptions/RootDeniedException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method

.method private writeCommands()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    const/4 v4, 0x0

    .line 428
    .local v4, write:I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_1
    :try_start_1
    iget-boolean v5, p0, Lcom/stericson/RootTools/execution/Shell;->close:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 430
    iget-object v5, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 433
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6, v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;ILjava/lang/Exception;)V

    .line 452
    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_2
    return-void

    .line 432
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;

    .line 433
    .local v3, out:Ljava/io/OutputStreamWriter;
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 434
    :try_start_4
    iget-object v5, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 435
    iget-object v5, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericson/RootTools/execution/Command;

    .line 436
    .local v2, next:Lcom/stericson/RootTools/execution/Command;
    invoke-virtual {v2, v3}, Lcom/stericson/RootTools/execution/Command;->writeCommand(Ljava/io/OutputStreamWriter;)V

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\necho F*D^W@#FGF "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " $?\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, line:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 440
    add-int/lit8 v4, v4, 0x1

    .line 441
    goto :goto_0

    .end local v1           #line:Ljava/lang/String;
    .end local v2           #next:Lcom/stericson/RootTools/execution/Command;
    :cond_2
    iget-boolean v5, p0, Lcom/stericson/RootTools/execution/Shell;->close:Z

    if-eqz v5, :cond_0

    .line 442
    const-string v5, "\nexit 0\n"

    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 444
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 445
    const-string v5, "Closing shell"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;
    .locals 2
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/stericson/RootTools/execution/Shell;->close:Z

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to add commands to a closed shell"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 102
    monitor-exit v1

    .line 104
    return-object p1

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 108
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-ne p0, v0, :cond_0

    .line 109
    sput-object v1, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    .line 110
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    if-ne p0, v0, :cond_1

    .line 111
    sput-object v1, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    .line 112
    :cond_1
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-ne p0, v0, :cond_2

    .line 113
    sput-object v1, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    monitor-enter v1

    .line 115
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/stericson/RootTools/execution/Shell;->close:Z

    .line 116
    iget-object v0, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 117
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public countCommands()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public waitFor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/stericson/RootTools/execution/Shell;->close()V

    .line 367
    iget-object v1, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    iget-object v2, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stericson/RootTools/execution/Command;

    .line 370
    .local v0, command:Lcom/stericson/RootTools/execution/Command;
    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Command;->exitCode()I

    .line 372
    .end local v0           #command:Lcom/stericson/RootTools/execution/Command;
    :cond_0
    return-void
.end method
