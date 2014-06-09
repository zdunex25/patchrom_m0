.class Lcom/stericson/RootTools/execution/Shell$3;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/execution/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/execution/Shell;


# direct methods
.method constructor <init>(Lcom/stericson/RootTools/execution/Shell;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 383
    const/4 v1, 0x0

    .line 385
    .local v1, command:Lcom/stericson/RootTools/execution/Command;
    :cond_0
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->close:Z
    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$200(Lcom/stericson/RootTools/execution/Shell;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 386
    const/4 v8, 0x0

    sput-boolean v8, Lcom/stericson/RootTools/execution/Shell;->isReading:Z

    .line 387
    iget-object v8, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->in:Ljava/io/BufferedReader;
    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$1000(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, line:Ljava/lang/String;
    const/4 v8, 0x1

    sput-boolean v8, Lcom/stericson/RootTools/execution/Shell;->isReading:Z

    .line 393
    if-nez v6, :cond_3

    .line 458
    .end local v6           #line:Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v8, "Read all output"

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :try_start_1
    iget-object v8, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;
    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$1200(Lcom/stericson/RootTools/execution/Shell;)Ljava/lang/Process;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    .line 461
    iget-object v8, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->proc:Ljava/lang/Process;
    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$1200(Lcom/stericson/RootTools/execution/Shell;)Ljava/lang/Process;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 464
    :goto_2
    :try_start_2
    iget-object v8, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    iget-object v9, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;
    invoke-static {v9}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v9

    #calls: Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Writer;)V
    invoke-static {v8, v9}, Lcom/stericson/RootTools/execution/Shell;->access$900(Lcom/stericson/RootTools/execution/Shell;Ljava/io/Writer;)V

    .line 465
    iget-object v8, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    iget-object v9, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->in:Ljava/io/BufferedReader;
    invoke-static {v9}, Lcom/stericson/RootTools/execution/Shell;->access$1000(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v9

    #calls: Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Reader;)V
    invoke-static {v8, v9}, Lcom/stericson/RootTools/execution/Shell;->access$1300(Lcom/stericson/RootTools/execution/Shell;Ljava/io/Reader;)V

    .line 467
    const-string v8, "Shell destroyed"

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 469
    :goto_3
    iget-object v8, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->read:I
    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$500(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v8

    iget-object v9, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v9}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 470
    if-nez v1, :cond_2

    .line 471
    iget-object v8, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->read:I
    invoke-static {v9}, Lcom/stericson/RootTools/execution/Shell;->access$500(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/stericson/RootTools/execution/Command;

    move-object v1, v0

    .line 473
    :cond_2
    const-string v8, "Unexpected Termination."

    invoke-virtual {v1, v8}, Lcom/stericson/RootTools/execution/Command;->terminated(Ljava/lang/String;)V

    .line 474
    const/4 v1, 0x0

    .line 475
    iget-object v8, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$508(Lcom/stericson/RootTools/execution/Shell;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 480
    :catch_0
    move-exception v2

    .line 481
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10, v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;ILjava/lang/Exception;)V

    .line 483
    .end local v2           #e:Ljava/io/IOException;
    :goto_4
    return-void

    .line 396
    .restart local v6       #line:Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_5

    .line 397
    :try_start_3
    iget-object v8, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->read:I
    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$500(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v8

    iget-object v9, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v9}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v8, v9, :cond_4

    .line 398
    iget-object v8, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->close:Z
    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$200(Lcom/stericson/RootTools/execution/Shell;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_1

    .line 403
    :cond_4
    iget-object v8, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->read:I
    invoke-static {v9}, Lcom/stericson/RootTools/execution/Shell;->access$500(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/stericson/RootTools/execution/Command;

    move-object v1, v0

    .line 411
    :cond_5
    const-string v8, "F*D^W@#FGF"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 414
    .local v7, pos:I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    .line 418
    iget v8, v1, Lcom/stericson/RootTools/execution/Command;->id:I

    invoke-virtual {v1, v8, v6}, Lcom/stericson/RootTools/execution/Command;->output(ILjava/lang/String;)V

    .line 420
    :cond_6
    if-lez v7, :cond_7

    .line 424
    iget v8, v1, Lcom/stericson/RootTools/execution/Command;->id:I

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/stericson/RootTools/execution/Command;->output(ILjava/lang/String;)V

    .line 426
    :cond_7
    if-ltz v7, :cond_0

    .line 427
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 428
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, fields:[Ljava/lang/String;
    array-length v8, v4

    if-lt v8, v10, :cond_0

    const/4 v8, 0x1

    aget-object v8, v4, v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v8, :cond_0

    .line 431
    const/4 v5, 0x0

    .line 434
    .local v5, id:I
    const/4 v8, 0x1

    :try_start_4
    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v5

    .line 438
    :goto_5
    const/4 v3, -0x1

    .line 441
    .local v3, exitCode:I
    const/4 v8, 0x2

    :try_start_5
    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v3

    .line 445
    :goto_6
    :try_start_6
    iget-object v8, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->totalRead:I
    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$1100(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v8

    if-ne v5, v8, :cond_0

    .line 446
    invoke-virtual {v1, v3}, Lcom/stericson/RootTools/execution/Command;->setExitCode(I)V

    .line 447
    invoke-virtual {v1}, Lcom/stericson/RootTools/execution/Command;->commandFinished()V

    .line 448
    const/4 v1, 0x0

    .line 450
    iget-object v8, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$508(Lcom/stericson/RootTools/execution/Shell;)I

    .line 451
    iget-object v8, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v8}, Lcom/stericson/RootTools/execution/Shell;->access$1108(Lcom/stericson/RootTools/execution/Shell;)I

    goto/16 :goto_0

    .line 478
    .end local v3           #exitCode:I
    .end local v4           #fields:[Ljava/lang/String;
    .end local v5           #id:I
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #pos:I
    :cond_8
    iget-object v8, p0, Lcom/stericson/RootTools/execution/Shell$3;->this$0:Lcom/stericson/RootTools/execution/Shell;

    const/4 v9, 0x0

    #setter for: Lcom/stericson/RootTools/execution/Shell;->read:I
    invoke-static {v8, v9}, Lcom/stericson/RootTools/execution/Shell;->access$502(Lcom/stericson/RootTools/execution/Shell;I)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_4

    .line 462
    :catch_1
    move-exception v8

    goto/16 :goto_2

    .line 442
    .restart local v3       #exitCode:I
    .restart local v4       #fields:[Ljava/lang/String;
    .restart local v5       #id:I
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #pos:I
    :catch_2
    move-exception v8

    goto :goto_6

    .line 435
    .end local v3           #exitCode:I
    :catch_3
    move-exception v8

    goto :goto_5
.end method
