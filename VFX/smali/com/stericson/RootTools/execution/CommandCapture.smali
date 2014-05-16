.class public Lcom/stericson/RootTools/execution/CommandCapture;
.super Lcom/stericson/RootTools/execution/Command;
.source "CommandCapture.java"


# instance fields
.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public varargs constructor <init>(II[Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "timeout"
    .parameter "command"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/stericson/RootTools/execution/Command;-><init>(II[Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/stericson/RootTools/execution/CommandCapture;->sb:Ljava/lang/StringBuilder;

    .line 40
    return-void
.end method

.method public varargs constructor <init>(IZ[Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "handlerEnabled"
    .parameter "command"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/stericson/RootTools/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/stericson/RootTools/execution/CommandCapture;->sb:Ljava/lang/StringBuilder;

    .line 36
    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "command"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/stericson/RootTools/execution/Command;-><init>(I[Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/stericson/RootTools/execution/CommandCapture;->sb:Ljava/lang/StringBuilder;

    .line 32
    return-void
.end method


# virtual methods
.method public commandCompleted(II)V
    .locals 0
    .parameter "id"
    .parameter "exitcode"

    .prologue
    .line 57
    return-void
.end method

.method public commandOutput(ILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "line"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/stericson/RootTools/execution/CommandCapture;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    const-string v0, "Command"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public commandTerminated(ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "reason"

    .prologue
    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/stericson/RootTools/execution/CommandCapture;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
