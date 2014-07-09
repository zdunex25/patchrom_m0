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

.field public static isExecuting:Z = false

.field public static isReading:Z = false

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

.field private isCleaning:Z

.field private maxCommands:I

.field private final out:Ljava/io/OutputStreamWriter;

.field private output:Ljava/lang/Runnable;

.field private final proc:Ljava/lang/Process;

.field private read:I

.field private totalExecuted:I

.field private totalRead:I

.field private write:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/stericson/RootTools/execution/Shell;->error:Ljava/lang/String;

    .line 46
    sput-object v1, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    .line 47
    sput-object v1, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    .line 48
    sput-object v1, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    .line 50
    const/16 v0, 0x61a8

    sput v0, Lcom/stericson/RootTools/execution/Shell;->shellTimeout:I

    .line 51
    sput-boolean v2, Lcom/stericson/RootTools/execution/Shell;->isExecuting:Z

    .line 52
    sput-boolean v2, Lcom/stericson/RootTools/execution/Shell;->isReading:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 8
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    .line 42
    iput-boolean v6, p0, Lcom/stericson/RootTools/execution/Shell;->close:Z

    .line 54
    const/16 v4, 0x3e8

    iput v4, p0, Lcom/stericson/RootTools/execution/Shell;->maxCommands:I

    .line 55
    iput v6, p0, Lcom/stericson/RootTools/execution/Shell;->read:I

    .line 56
    iput v6, p0, Lcom/stericson/RootTools/execution/Shell;->write:I

    .line 57
    iput v6, p0, Lcom/stericson/RootTools/execution/Shell;->totalExecuted:I

    .line 58
    iput v6, p0, Lcom/stericson/RootTools/execution/Shell;->totalRead:I

    .line 59
    iput-boolean v6, p0, Lcom/stericson/RootTools/execution/Shell;->isCleaning:Z

    .line 293
    new-instance v4, Lcom/stericson/RootTools/execution/Shell$1;

    invoke-direct {v4, p0}, Lcom/stericson/RootTools/execution/Shell$1;-><init>(Lcom/stericson/RootTools/execution/Shell;)V

    iput-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->input:Ljava/lang/Runnable;

    .line 380
    new-instance v4, Lcom/stericson/RootTools/execution/Shell$3;

    invoke-direct {v4, p0}, Lcom/stericson/RootTools/execution/Shell$3;-><init>(Lcom/stericson/RootTools/execution/Shell;)V

    iput-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->output:Ljava/lang/Runnable;

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting shell: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 66
    new-instance v4, Ljava/lang/ProcessBuilder;

    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    iput-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    .line 67
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->in:Ljava/io/BufferedReader;

    .line 68
    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;

    .line 73
    new-instance v3, Lcom/stericson/RootTools/execution/Shell$Worker;

    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    iget-object v5, p0, Lcom/stericson/RootTools/execution/Shell;->in:Ljava/io/BufferedReader;

    iget-object v6, p0, Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/stericson/RootTools/execution/Shell$Worker;-><init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;Lcom/stericson/RootTools/execution/Shell$1;)V

    .line 74
    .local v3, worker:Lcom/stericson/RootTools/execution/Shell$Worker;
    invoke-virtual {v3}, Lcom/stericson/RootTools/execution/Shell$Worker;->start()V

    .line 85
    :try_start_0
    sget v4, Lcom/stericson/RootTools/execution/Shell;->shellTimeout:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/stericson/RootTools/execution/Shell$Worker;->join(J)V

    .line 90
    iget v4, v3, Lcom/stericson/RootTools/execution/Shell$Worker;->exit:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, -0x38f

    if-ne v4, v5, :cond_0

    .line 93
    :try_start_1
    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->in:Ljava/io/BufferedReader;

    invoke-direct {p0, v4}, Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Reader;)V

    .line 97
    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;

    invoke-direct {p0, v4}, Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Writer;)V

    .line 99
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    sget-object v5, Lcom/stericson/RootTools/execution/Shell;->error:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Lcom/stericson/RootTools/execution/Shell$Worker;->interrupt()V

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 137
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4

    .line 104
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_3
    iget v4, v3, Lcom/stericson/RootTools/execution/Shell$Worker;->exit:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v5, -0x2a

    if-ne v4, v5, :cond_1

    .line 107
    :try_start_4
    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 110
    :goto_1
    :try_start_5
    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->in:Ljava/io/BufferedReader;

    invoke-direct {p0, v4}, Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Reader;)V

    .line 111
    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;

    invoke-direct {p0, v4}, Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Writer;)V

    .line 113
    new-instance v4, Lcom/stericson/RootTools/exceptions/RootDeniedException;

    const-string v5, "Root Access Denied"

    invoke-direct {v4, v5}, Lcom/stericson/RootTools/exceptions/RootDeniedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 126
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->input:Ljava/lang/Runnable;

    const-string v5, "Shell Input"

    invoke-direct {v1, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 127
    .local v1, si:Ljava/lang/Thread;
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 128
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 130
    new-instance v2, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell;->output:Ljava/lang/Runnable;

    const-string v5, "Shell Output"

    invoke-direct {v2, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 131
    .local v2, so:Ljava/lang/Thread;
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 132
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 139
    return-void

    .line 108
    .end local v1           #si:Ljava/lang/Thread;
    .end local v2           #so:Ljava/lang/Thread;
    :catch_1
    move-exception v4

    goto :goto_1

    .line 94
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/BufferedReader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/stericson/RootTools/execution/Shell;->in:Ljava/io/BufferedReader;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/execution/Shell;->totalRead:I

    return v0
.end method

.method static synthetic access$1108(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/execution/Shell;->totalRead:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/stericson/RootTools/execution/Shell;->totalRead:I

    return v0
.end method

.method static synthetic access$1200(Lcom/stericson/RootTools/execution/Shell;)Ljava/lang/Process;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/stericson/RootTools/execution/Shell;Ljava/io/Reader;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Reader;)V

    return-void
.end method

.method static synthetic access$1402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    sput-object p0, Lcom/stericson/RootTools/execution/Shell;->error:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/stericson/RootTools/execution/Shell;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/stericson/RootTools/execution/Shell;->close:Z

    return v0
.end method

.method static synthetic access$300(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/execution/Shell;->write:I

    return v0
.end method

.method static synthetic access$302(Lcom/stericson/RootTools/execution/Shell;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/stericson/RootTools/execution/Shell;->write:I

    return p1
.end method

.method static synthetic access$308(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/execution/Shell;->write:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/stericson/RootTools/execution/Shell;->write:I

    return v0
.end method

.method static synthetic access$400(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/execution/Shell;->maxCommands:I

    return v0
.end method

.method static synthetic access$500(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/execution/Shell;->read:I

    return v0
.end method

.method static synthetic access$502(Lcom/stericson/RootTools/execution/Shell;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/stericson/RootTools/execution/Shell;->read:I

    return p1
.end method

.method static synthetic access$508(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/execution/Shell;->read:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/stericson/RootTools/execution/Shell;->read:I

    return v0
.end method

.method static synthetic access$600(Lcom/stericson/RootTools/execution/Shell;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/stericson/RootTools/execution/Shell;->cleanCommands()V

    return-void
.end method

.method static synthetic access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/execution/Shell;->totalExecuted:I

    return v0
.end method

.method static synthetic access$808(Lcom/stericson/RootTools/execution/Shell;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/execution/Shell;->totalExecuted:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/stericson/RootTools/execution/Shell;->totalExecuted:I

    return v0
.end method

.method static synthetic access$900(Lcom/stericson/RootTools/execution/Shell;Ljava/io/Writer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Writer;)V

    return-void
.end method

.method private cleanCommands()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 167
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/stericson/RootTools/execution/Shell;->isCleaning:Z

    .line 168
    iget v2, p0, Lcom/stericson/RootTools/execution/Shell;->maxCommands:I

    iget v3, p0, Lcom/stericson/RootTools/execution/Shell;->maxCommands:I

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 169
    .local v1, toClean:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 171
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/stericson/RootTools/execution/Shell;->read:I

    .line 175
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/stericson/RootTools/execution/Shell;->write:I

    .line 176
    iput-boolean v4, p0, Lcom/stericson/RootTools/execution/Shell;->isCleaning:Z

    .line 177
    return-void
.end method

.method public static closeAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeShell()V

    .line 232
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeRootShell()V

    .line 233
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeCustomShell()V

    .line 234
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
    .line 213
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Shell;->close()V

    goto :goto_0
.end method

.method private closeQuietly(Ljava/io/Reader;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 181
    if-eqz p1, :cond_0

    .line 182
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private closeQuietly(Ljava/io/Writer;)V
    .locals 1
    .parameter "output"

    .prologue
    .line 189
    if-eqz p1, :cond_0

    .line 190
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

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
    .line 219
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
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
    .line 225
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Shell;->close()V

    goto :goto_0
.end method

.method public static getOpenShell()Lcom/stericson/RootTools/execution/Shell;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    .line 250
    :goto_0
    return-object v0

    .line 247
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-eqz v0, :cond_1

    .line 248
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    goto :goto_0

    .line 250
    :cond_1
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    goto :goto_0
.end method

.method public static isAnyShellOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 275
    sget-object v1, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    if-eqz v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    sget-object v1, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v1, :cond_0

    .line 279
    sget-object v1, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v1, :cond_0

    .line 282
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomShellOpen()Z
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRootShellOpen()Z
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isShellOpen()Z
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
    .line 491
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 492
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
    .line 487
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 488
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
    .line 529
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
    .line 533
    sput p1, Lcom/stericson/RootTools/execution/Shell;->shellTimeout:I

    .line 535
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v0, :cond_0

    .line 536
    const-string v0, "Starting Custom Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 537
    new-instance v0, Lcom/stericson/RootTools/execution/Shell;

    invoke-direct {v0, p0}, Lcom/stericson/RootTools/execution/Shell;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    .line 541
    :goto_0
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    return-object v0

    .line 539
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
    .line 495
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
    .line 499
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
    .line 504
    sput p0, Lcom/stericson/RootTools/execution/Shell;->shellTimeout:I

    .line 506
    sget-object v4, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v4, :cond_1

    .line 507
    const-string v4, "Starting Root Shell!"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 508
    const-string v0, "su"

    .line 510
    .local v0, cmd:Ljava/lang/String;
    const/4 v2, 0x0

    .line 511
    .local v2, retries:I
    :goto_0
    sget-object v4, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v4, :cond_2

    .line 513
    :try_start_0
    new-instance v4, Lcom/stericson/RootTools/execution/Shell;

    invoke-direct {v4, v0}, Lcom/stericson/RootTools/execution/Shell;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 514
    :catch_0
    move-exception v1

    .line 515
    .local v1, e:Ljava/io/IOException;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #retries:I
    .local v3, retries:I
    if-lt v2, p1, :cond_0

    .line 516
    const-string v4, "IOException, could not start shell"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 517
    throw v1

    :cond_0
    move v2, v3

    .line 519
    .end local v3           #retries:I
    .restart local v2       #retries:I
    goto :goto_0

    .line 522
    .end local v0           #cmd:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #retries:I
    :cond_1
    const-string v4, "Using Existing Root Shell!"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 525
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
    .line 545
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
    .line 549
    sput p0, Lcom/stericson/RootTools/execution/Shell;->shellTimeout:I

    .line 552
    :try_start_0
    sget-object v1, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    if-nez v1, :cond_0

    .line 553
    const-string v1, "Starting Shell!"

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 554
    new-instance v1, Lcom/stericson/RootTools/execution/Shell;

    const-string v2, "/system/bin/sh"

    invoke-direct {v1, v2}, Lcom/stericson/RootTools/execution/Shell;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    .line 557
    :goto_0
    sget-object v1, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    return-object v1

    .line 556
    :cond_0
    const-string v1, "Using Existing Shell!"

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/stericson/RootTools/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 560
    .local v0, e:Lcom/stericson/RootTools/exceptions/RootDeniedException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
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
    .line 143
    iget-boolean v0, p0, Lcom/stericson/RootTools/execution/Shell;->close:Z

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to add commands to a closed shell"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/stericson/RootTools/execution/Shell;->isCleaning:Z

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p0}, Lcom/stericson/RootTools/execution/Shell;->notifyThreads()V

    .line 155
    return-object p1
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

    .line 196
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    if-ne p0, v0, :cond_1

    .line 197
    sput-object v1, Lcom/stericson/RootTools/execution/Shell;->rootShell:Lcom/stericson/RootTools/execution/Shell;

    .line 202
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    monitor-enter v1

    .line 207
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/stericson/RootTools/execution/Shell;->close:Z

    .line 208
    invoke-virtual {p0}, Lcom/stericson/RootTools/execution/Shell;->notifyThreads()V

    .line 209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    return-void

    .line 198
    :cond_1
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    if-ne p0, v0, :cond_2

    .line 199
    sput-object v1, Lcom/stericson/RootTools/execution/Shell;->shell:Lcom/stericson/RootTools/execution/Shell;

    goto :goto_0

    .line 200
    :cond_2
    sget-object v0, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    if-ne p0, v0, :cond_0

    .line 201
    sput-object v1, Lcom/stericson/RootTools/execution/Shell;->customShell:Lcom/stericson/RootTools/execution/Shell;

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCommandQueuePosition(Lcom/stericson/RootTools/execution/Command;)I
    .locals 1
    .parameter "cmd"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCommandQueuePositionString(Lcom/stericson/RootTools/execution/Command;)Ljava/lang/String;
    .locals 2
    .parameter "cmd"

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command is in position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/stericson/RootTools/execution/Shell;->getCommandQueuePosition(Lcom/stericson/RootTools/execution/Command;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " currently executing command at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stericson/RootTools/execution/Shell;->write:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected notifyThreads()V
    .locals 1

    .prologue
    .line 366
    new-instance v0, Lcom/stericson/RootTools/execution/Shell$2;

    invoke-direct {v0, p0}, Lcom/stericson/RootTools/execution/Shell$2;-><init>(Lcom/stericson/RootTools/execution/Shell;)V

    .line 374
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 375
    return-void
.end method

.method public useCWD(Landroid/content/Context;)V
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 159
    new-instance v0, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v5, v2}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 164
    return-void
.end method
