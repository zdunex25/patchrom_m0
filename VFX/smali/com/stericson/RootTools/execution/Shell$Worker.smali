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
    .line 571
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 565
    const/16 v0, -0x38f

    iput v0, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->exit:I

    .line 572
    iput-object p1, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->proc:Ljava/lang/Process;

    .line 573
    iput-object p2, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->in:Ljava/io/BufferedReader;

    .line 574
    iput-object p3, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->out:Ljava/io/OutputStreamWriter;

    .line 575
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;Lcom/stericson/RootTools/execution/Shell$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 564
    invoke-direct {p0, p1, p2, p3}, Lcom/stericson/RootTools/execution/Shell$Worker;-><init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;)V

    return-void
.end method

.method private setShellOom()V
    .locals 7

    .prologue
    .line 625
    :try_start_0
    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->proc:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 626
    .local v3, processClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 628
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_1
    const-string v4, "pid"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 632
    :goto_0
    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 633
    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->proc:Ljava/lang/Process;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 634
    .local v2, pid:I
    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->out:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(echo -17 > /proc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/oom_adj) &> /dev/null\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 635
    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->out:Ljava/io/OutputStreamWriter;

    const-string v5, "(echo -17 > /proc/$$/oom_adj) &> /dev/null\n"

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 636
    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 639
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #pid:I
    .end local v3           #processClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    return-void

    .line 629
    .restart local v1       #field:Ljava/lang/reflect/Field;
    .restart local v3       #processClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 630
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_0

    .line 637
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v3           #processClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 590
    :try_start_0
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->out:Ljava/io/OutputStreamWriter;

    const-string v3, "echo Started\n"

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 591
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 594
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 596
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 609
    .local v0, e:Ljava/io/IOException;
    const/16 v2, -0x2a

    iput v2, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->exit:I

    .line 610
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 611
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/execution/Shell;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 598
    .restart local v1       #line:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 600
    const-string v2, "Started"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 601
    const/4 v2, 0x1

    iput v2, p0, Lcom/stericson/RootTools/execution/Shell$Worker;->exit:I

    .line 602
    invoke-direct {p0}, Lcom/stericson/RootTools/execution/Shell$Worker;->setShellOom()V

    goto :goto_1

    .line 606
    :cond_2
    const-string v2, "unkown error occured."

    invoke-static {v2}, Lcom/stericson/RootTools/execution/Shell;->access$1402(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 613
    .end local v1           #line:Ljava/lang/String;
    .restart local v0       #e:Ljava/io/IOException;
    :cond_3
    const-string v2, "RootAccess denied?."

    invoke-static {v2}, Lcom/stericson/RootTools/execution/Shell;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
