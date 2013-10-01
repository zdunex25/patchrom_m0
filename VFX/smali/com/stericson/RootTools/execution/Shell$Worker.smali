.class public Lcom/stericson/RootTools/execution/Shell$Worker;
.super Ljava/lang/Thread;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/execution/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Worker"
.end annotation


# instance fields
.field public exit:I

.field public in:Ljava/io/BufferedReader;

.field public out:Ljava/io/OutputStreamWriter;

.field public proc:Ljava/lang/Process;


# direct methods
.method private constructor <init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;)V
    .locals 1
    .parameter "proc"
    .parameter "in"
    .parameter "out"

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 354
    const/16 v0, -0x38f

    iput v0, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->exit:I

    .line 361
    iput-object p1, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->proc:Ljava/lang/Process;

    .line 362
    iput-object p2, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->in:Ljava/io/BufferedReader;

    .line 363
    iput-object p3, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->out:Ljava/io/OutputStreamWriter;

    .line 364
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;Lcom/stericson/RootTools/execution/Shell$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 353
    invoke-direct {p0, p1, p2, p3}, Lcom/stericson/RootTools/execution/Shell$Worker;-><init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 369
    :try_start_0
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->out:Ljava/io/OutputStreamWriter;

    const-string v3, "echo Started\n"

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 370
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 373
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 375
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 386
    .local v0, e:Ljava/io/IOException;
    const/16 v2, -0x2a

    iput v2, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->exit:I

    .line 387
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 388
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/execution/Shell;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 393
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 377
    .restart local v1       #line:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    const-string v2, "Started"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 380
    const/4 v2, 0x1

    iput v2, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->exit:I

    goto :goto_1

    .line 383
    :cond_2
    const-string v2, "unkown error occured."

    invoke-static {v2}, Lcom/stericson/RootTools/execution/Shell;->access$302(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 390
    .end local v1           #line:Ljava/lang/String;
    .restart local v0       #e:Ljava/io/IOException;
    :cond_3
    const-string v2, "RootAccess denied?."

    invoke-static {v2}, Lcom/stericson/RootTools/execution/Shell;->access$302(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
