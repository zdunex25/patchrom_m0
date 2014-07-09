.class public abstract Lcom/stericson/RootTools/execution/Command;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/RootTools/execution/Command$1;,
        Lcom/stericson/RootTools/execution/Command$CommandHandler;,
        Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;
    }
.end annotation


# instance fields
.field command:[Ljava/lang/String;

.field context:Landroid/content/Context;

.field executing:Z

.field executionMonitor:Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;

.field exitCode:I

.field finished:Z

.field handlerEnabled:Z

.field id:I

.field javaCommand:Z

.field mHandler:Landroid/os/Handler;

.field terminated:Z

.field timeout:I


# direct methods
.method public varargs constructor <init>(IIZLandroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "timeout"
    .parameter "javaCommand"
    .parameter "context"
    .parameter "command"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p5}, Lcom/stericson/RootTools/execution/Command;-><init>(II[Ljava/lang/String;)V

    .line 126
    iput-boolean p3, p0, Lcom/stericson/RootTools/execution/Command;->javaCommand:Z

    .line 127
    iput-object p4, p0, Lcom/stericson/RootTools/execution/Command;->context:Landroid/content/Context;

    .line 128
    return-void
.end method

.method public varargs constructor <init>(II[Ljava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "timeout"
    .parameter "command"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v2, p0, Lcom/stericson/RootTools/execution/Command;->executionMonitor:Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;

    .line 39
    iput-object v2, p0, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    .line 40
    iput-boolean v1, p0, Lcom/stericson/RootTools/execution/Command;->executing:Z

    .line 42
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/stericson/RootTools/execution/Command;->javaCommand:Z

    .line 44
    iput-object v2, p0, Lcom/stericson/RootTools/execution/Command;->context:Landroid/content/Context;

    .line 45
    iput-boolean v1, p0, Lcom/stericson/RootTools/execution/Command;->finished:Z

    .line 46
    iput-boolean v1, p0, Lcom/stericson/RootTools/execution/Command;->terminated:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/RootTools/execution/Command;->handlerEnabled:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/stericson/RootTools/execution/Command;->exitCode:I

    .line 49
    iput v1, p0, Lcom/stericson/RootTools/execution/Command;->id:I

    .line 50
    sget v0, Lcom/stericson/RootTools/RootTools;->default_Command_Timeout:I

    iput v0, p0, Lcom/stericson/RootTools/execution/Command;->timeout:I

    .line 90
    iput-object p3, p0, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    .line 91
    iput p1, p0, Lcom/stericson/RootTools/execution/Command;->id:I

    .line 92
    iput p2, p0, Lcom/stericson/RootTools/execution/Command;->timeout:I

    .line 94
    sget-boolean v0, Lcom/stericson/RootTools/RootTools;->handlerEnabled:Z

    invoke-direct {p0, v0}, Lcom/stericson/RootTools/execution/Command;->createHandler(Z)V

    .line 95
    return-void
.end method

.method public varargs constructor <init>(IZLandroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "javaCommand"
    .parameter "context"
    .parameter "command"

    .prologue
    .line 103
    invoke-direct {p0, p1, p4}, Lcom/stericson/RootTools/execution/Command;-><init>(I[Ljava/lang/String;)V

    .line 104
    iput-boolean p2, p0, Lcom/stericson/RootTools/execution/Command;->javaCommand:Z

    .line 105
    iput-object p3, p0, Lcom/stericson/RootTools/execution/Command;->context:Landroid/content/Context;

    .line 106
    return-void
.end method

.method public varargs constructor <init>(IZZLandroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "handlerEnabled"
    .parameter "javaCommand"
    .parameter "context"
    .parameter "command"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p5}, Lcom/stericson/RootTools/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    .line 115
    iput-boolean p3, p0, Lcom/stericson/RootTools/execution/Command;->javaCommand:Z

    .line 116
    iput-object p4, p0, Lcom/stericson/RootTools/execution/Command;->context:Landroid/content/Context;

    .line 117
    return-void
.end method

.method public varargs constructor <init>(IZ[Ljava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "handlerEnabled"
    .parameter "command"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v2, p0, Lcom/stericson/RootTools/execution/Command;->executionMonitor:Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;

    .line 39
    iput-object v2, p0, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    .line 40
    iput-boolean v1, p0, Lcom/stericson/RootTools/execution/Command;->executing:Z

    .line 42
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/stericson/RootTools/execution/Command;->javaCommand:Z

    .line 44
    iput-object v2, p0, Lcom/stericson/RootTools/execution/Command;->context:Landroid/content/Context;

    .line 45
    iput-boolean v1, p0, Lcom/stericson/RootTools/execution/Command;->finished:Z

    .line 46
    iput-boolean v1, p0, Lcom/stericson/RootTools/execution/Command;->terminated:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/RootTools/execution/Command;->handlerEnabled:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/stericson/RootTools/execution/Command;->exitCode:I

    .line 49
    iput v1, p0, Lcom/stericson/RootTools/execution/Command;->id:I

    .line 50
    sget v0, Lcom/stericson/RootTools/RootTools;->default_Command_Timeout:I

    iput v0, p0, Lcom/stericson/RootTools/execution/Command;->timeout:I

    .line 76
    iput-object p3, p0, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    .line 77
    iput p1, p0, Lcom/stericson/RootTools/execution/Command;->id:I

    .line 79
    invoke-direct {p0, p2}, Lcom/stericson/RootTools/execution/Command;->createHandler(Z)V

    .line 80
    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "command"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v2, p0, Lcom/stericson/RootTools/execution/Command;->executionMonitor:Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;

    .line 39
    iput-object v2, p0, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    .line 40
    iput-boolean v1, p0, Lcom/stericson/RootTools/execution/Command;->executing:Z

    .line 42
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/stericson/RootTools/execution/Command;->javaCommand:Z

    .line 44
    iput-object v2, p0, Lcom/stericson/RootTools/execution/Command;->context:Landroid/content/Context;

    .line 45
    iput-boolean v1, p0, Lcom/stericson/RootTools/execution/Command;->finished:Z

    .line 46
    iput-boolean v1, p0, Lcom/stericson/RootTools/execution/Command;->terminated:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/RootTools/execution/Command;->handlerEnabled:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/stericson/RootTools/execution/Command;->exitCode:I

    .line 49
    iput v1, p0, Lcom/stericson/RootTools/execution/Command;->id:I

    .line 50
    sget v0, Lcom/stericson/RootTools/RootTools;->default_Command_Timeout:I

    iput v0, p0, Lcom/stericson/RootTools/execution/Command;->timeout:I

    .line 62
    iput-object p2, p0, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    .line 63
    iput p1, p0, Lcom/stericson/RootTools/execution/Command;->id:I

    .line 65
    sget-boolean v0, Lcom/stericson/RootTools/RootTools;->handlerEnabled:Z

    invoke-direct {p0, v0}, Lcom/stericson/RootTools/execution/Command;->createHandler(Z)V

    .line 66
    return-void
.end method

.method private createHandler(Z)V
    .locals 2
    .parameter "handlerEnabled"

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/stericson/RootTools/execution/Command;->handlerEnabled:Z

    .line 160
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 161
    const-string v0, "CommandHandler created"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/stericson/RootTools/execution/Command$CommandHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stericson/RootTools/execution/Command$CommandHandler;-><init>(Lcom/stericson/RootTools/execution/Command;Lcom/stericson/RootTools/execution/Command$1;)V

    iput-object v0, p0, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string v0, "CommandHandler not created"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract commandCompleted(II)V
.end method

.method protected commandFinished()V
    .locals 4

    .prologue
    .line 137
    iget-boolean v2, p0, Lcom/stericson/RootTools/execution/Command;->terminated:Z

    if-nez v2, :cond_0

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/stericson/RootTools/execution/Command;->handlerEnabled:Z

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 141
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "action"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 144
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/stericson/RootTools/execution/Command;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " finished."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/stericson/RootTools/execution/Command;->finishCommand()V

    .line 152
    monitor-exit p0

    .line 154
    :cond_0
    return-void

    .line 147
    :cond_1
    iget v2, p0, Lcom/stericson/RootTools/execution/Command;->id:I

    iget v3, p0, Lcom/stericson/RootTools/execution/Command;->exitCode:I

    invoke-virtual {p0, v2, v3}, Lcom/stericson/RootTools/execution/Command;->commandCompleted(II)V

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public abstract commandOutput(ILjava/lang/String;)V
.end method

.method public abstract commandTerminated(ILjava/lang/String;)V
.end method

.method protected finishCommand()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stericson/RootTools/execution/Command;->executing:Z

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/RootTools/execution/Command;->finished:Z

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 134
    return-void
.end method

.method public getCommand()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-boolean v3, p0, Lcom/stericson/RootTools/execution/Command;->javaCommand:Z

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Command;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, filePath:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dalvikvm -cp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/anbuild.dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " com.android.internal.util.WithFramework"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " com.stericson.RootTools.containers.RootClass "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #i:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/stericson/RootTools/execution/Command;->command:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getExitCode()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/stericson/RootTools/execution/Command;->exitCode:I

    return v0
.end method

.method public isExecuting()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/stericson/RootTools/execution/Command;->executing:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/stericson/RootTools/execution/Command;->finished:Z

    return v0
.end method

.method public isHandlerEnabled()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/stericson/RootTools/execution/Command;->handlerEnabled:Z

    return v0
.end method

.method protected output(ILjava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "line"

    .prologue
    .line 257
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/stericson/RootTools/execution/Command;->handlerEnabled:Z

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 259
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "action"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    const-string v2, "text"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 263
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 268
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stericson/RootTools/execution/Command;->commandOutput(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected setExitCode(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iput p1, p0, Lcom/stericson/RootTools/execution/Command;->exitCode:I

    .line 215
    monitor-exit p0

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected startExecution()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 219
    new-instance v0, Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;-><init>(Lcom/stericson/RootTools/execution/Command;Lcom/stericson/RootTools/execution/Command$1;)V

    iput-object v0, p0, Lcom/stericson/RootTools/execution/Command;->executionMonitor:Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;

    .line 220
    iget-object v0, p0, Lcom/stericson/RootTools/execution/Command;->executionMonitor:Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;

    invoke-virtual {v0, v2}, Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;->setPriority(I)V

    .line 221
    iget-object v0, p0, Lcom/stericson/RootTools/execution/Command;->executionMonitor:Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;

    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Command$ExecutionMonitor;->start()V

    .line 222
    iput-boolean v2, p0, Lcom/stericson/RootTools/execution/Command;->executing:Z

    .line 223
    return-void
.end method

.method public terminate(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 227
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeAll()V

    .line 228
    const-string v0, "Terminating all shells."

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/stericson/RootTools/execution/Command;->terminated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected terminated(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 234
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/stericson/RootTools/execution/Command;->handlerEnabled:Z

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 239
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "action"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    const-string v2, "text"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 243
    iget-object v2, p0, Lcom/stericson/RootTools/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/stericson/RootTools/execution/Command;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not finish because it was terminated. Termination reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 250
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/stericson/RootTools/execution/Command;->setExitCode(I)V

    .line 251
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/stericson/RootTools/execution/Command;->terminated:Z

    .line 252
    invoke-virtual {p0}, Lcom/stericson/RootTools/execution/Command;->finishCommand()V

    .line 253
    monitor-exit p0

    .line 254
    return-void

    .line 246
    :cond_0
    iget v2, p0, Lcom/stericson/RootTools/execution/Command;->id:I

    invoke-virtual {p0, v2, p1}, Lcom/stericson/RootTools/execution/Command;->commandTerminated(ILjava/lang/String;)V

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
