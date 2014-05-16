.class Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;
.super Lcom/stericson/RootTools/execution/CommandCapture;
.source "SanityCheckRootTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field _catch:Z

.field final synthetic this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;


# direct methods
.method varargs constructor <init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;IZ[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    invoke-direct {p0, p2, p3, p4}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->_catch:Z

    return-void
.end method


# virtual methods
.method public commandCompleted(II)V
    .locals 5
    .parameter "id"
    .parameter "exitCode"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    iget-object v2, v1, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    monitor-enter v2

    .line 329
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->_catch:Z

    .line 331
    iget-object v1, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    const/4 v3, 0x4

    const-string v4, "All tests complete."

    #calls: Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    invoke-static {v1, v3, v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->access$200(Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    const/4 v3, 0x2

    const/4 v4, 0x0

    #calls: Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    invoke-static {v1, v3, v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->access$200(Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :try_start_1
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->closeAllShells()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 341
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 342
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 341
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public commandOutput(ILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "line"

    .prologue
    .line 301
    invoke-super {p0, p1, p2}, Lcom/stericson/RootTools/execution/CommandCapture;->commandOutput(ILjava/lang/String;)V

    .line 303
    iget-boolean v0, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->_catch:Z

    if-eqz v0, :cond_0

    .line 304
    const-string v0, "CAUGHT!!!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 306
    :cond_0
    return-void
.end method

.method public commandTerminated(ILjava/lang/String;)V
    .locals 5
    .parameter "id"
    .parameter "reason"

    .prologue
    .line 310
    iget-object v1, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    iget-object v2, v1, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    monitor-enter v2

    .line 312
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->_catch:Z

    .line 313
    iget-object v1, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    const/4 v3, 0x4

    const-string v4, "All tests complete."

    #calls: Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    invoke-static {v1, v3, v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->access$200(Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$2;->this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    const/4 v3, 0x2

    const/4 v4, 0x0

    #calls: Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    invoke-static {v1, v3, v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->access$200(Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :try_start_1
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->closeAllShells()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 323
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 324
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 323
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
