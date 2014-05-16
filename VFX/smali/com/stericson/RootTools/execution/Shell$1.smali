.class Lcom/stericson/RootTools/execution/Shell$1;
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
    .line 293
    iput-object p1, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 298
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 304
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->close:Z
    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$200(Lcom/stericson/RootTools/execution/Shell;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->write:I
    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$300(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v3

    iget-object v5, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v5}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 305
    const/4 v3, 0x0

    sput-boolean v3, Lcom/stericson/RootTools/execution/Shell;->isExecuting:Z

    .line 306
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 308
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4, v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;ILjava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 359
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #setter for: Lcom/stericson/RootTools/execution/Shell;->write:I
    invoke-static {v3, v6}, Lcom/stericson/RootTools/execution/Shell;->access$302(Lcom/stericson/RootTools/execution/Shell;I)I

    .line 360
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;
    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v4

    #calls: Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Writer;)V
    invoke-static {v3, v4}, Lcom/stericson/RootTools/execution/Shell;->access$900(Lcom/stericson/RootTools/execution/Shell;Ljava/io/Writer;)V

    .line 362
    .end local v1           #e:Ljava/io/IOException;
    :goto_2
    return-void

    .line 308
    :cond_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 310
    :try_start_5
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->write:I
    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$300(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v3

    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->maxCommands:I
    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$400(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 315
    :goto_3
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->read:I
    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$500(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v3

    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->write:I
    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$300(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 317
    const-string v3, "Waiting for read and write to catch up before cleanup."

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 356
    :catch_1
    move-exception v1

    .line 357
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4, v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;ILjava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 359
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #setter for: Lcom/stericson/RootTools/execution/Shell;->write:I
    invoke-static {v3, v6}, Lcom/stericson/RootTools/execution/Shell;->access$302(Lcom/stericson/RootTools/execution/Shell;I)I

    .line 360
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;
    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v4

    #calls: Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Writer;)V
    invoke-static {v3, v4}, Lcom/stericson/RootTools/execution/Shell;->access$900(Lcom/stericson/RootTools/execution/Shell;Ljava/io/Writer;)V

    goto :goto_2

    .line 322
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_2
    :try_start_7
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #calls: Lcom/stericson/RootTools/execution/Shell;->cleanCommands()V
    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$600(Lcom/stericson/RootTools/execution/Shell;)V

    .line 331
    :cond_3
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->write:I
    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$300(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v3

    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 332
    const/4 v3, 0x1

    sput-boolean v3, Lcom/stericson/RootTools/execution/Shell;->isExecuting:Z

    .line 333
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$100(Lcom/stericson/RootTools/execution/Shell;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->write:I
    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$300(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stericson/RootTools/execution/Command;

    .line 334
    .local v0, cmd:Lcom/stericson/RootTools/execution/Command;
    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Command;->startExecution()V

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 337
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;
    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\necho F*D^W@#FGF "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->totalExecuted:I
    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$800(Lcom/stericson/RootTools/execution/Shell;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " $?\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, line:Ljava/lang/String;
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;
    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 340
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;
    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 341
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$308(Lcom/stericson/RootTools/execution/Shell;)I

    .line 342
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$808(Lcom/stericson/RootTools/execution/Shell;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 359
    .end local v0           #cmd:Lcom/stericson/RootTools/execution/Command;
    .end local v2           #line:Ljava/lang/String;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #setter for: Lcom/stericson/RootTools/execution/Shell;->write:I
    invoke-static {v4, v6}, Lcom/stericson/RootTools/execution/Shell;->access$302(Lcom/stericson/RootTools/execution/Shell;I)I

    .line 360
    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    iget-object v5, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;
    invoke-static {v5}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v5

    #calls: Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Writer;)V
    invoke-static {v4, v5}, Lcom/stericson/RootTools/execution/Shell;->access$900(Lcom/stericson/RootTools/execution/Shell;Ljava/io/Writer;)V

    throw v3

    .line 343
    :cond_4
    :try_start_8
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->close:Z
    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$200(Lcom/stericson/RootTools/execution/Shell;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    const/4 v3, 0x0

    sput-boolean v3, Lcom/stericson/RootTools/execution/Shell;->isExecuting:Z

    .line 348
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;
    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v3

    const-string v4, "\nexit 0\n"

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 349
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;
    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 350
    const-string v3, "Closing shell"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    .line 359
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #setter for: Lcom/stericson/RootTools/execution/Shell;->write:I
    invoke-static {v3, v6}, Lcom/stericson/RootTools/execution/Shell;->access$302(Lcom/stericson/RootTools/execution/Shell;I)I

    .line 360
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    iget-object v4, p0, Lcom/stericson/RootTools/execution/Shell$1;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #getter for: Lcom/stericson/RootTools/execution/Shell;->out:Ljava/io/OutputStreamWriter;
    invoke-static {v4}, Lcom/stericson/RootTools/execution/Shell;->access$700(Lcom/stericson/RootTools/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v4

    #calls: Lcom/stericson/RootTools/execution/Shell;->closeQuietly(Ljava/io/Writer;)V
    invoke-static {v3, v4}, Lcom/stericson/RootTools/execution/Shell;->access$900(Lcom/stericson/RootTools/execution/Shell;Ljava/io/Writer;)V

    goto/16 :goto_2
.end method
