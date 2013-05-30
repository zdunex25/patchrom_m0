.class public Lcom/miui/osb/ShellCommand;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/osb/ShellCommand$CommandResult;,
        Lcom/miui/osb/ShellCommand$SH;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShellCommand.java"


# instance fields
.field private can_su:Ljava/lang/Boolean;

.field public sh:Lcom/miui/osb/ShellCommand$SH;

.field public su:Lcom/miui/osb/ShellCommand$SH;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/miui/osb/ShellCommand$SH;

    const-string v1, "sh"

    invoke-direct {v0, p0, v1}, Lcom/miui/osb/ShellCommand$SH;-><init>(Lcom/miui/osb/ShellCommand;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/osb/ShellCommand;->sh:Lcom/miui/osb/ShellCommand$SH;

    .line 17
    new-instance v0, Lcom/miui/osb/ShellCommand$SH;

    const-string v1, "su"

    invoke-direct {v0, p0, v1}, Lcom/miui/osb/ShellCommand$SH;-><init>(Lcom/miui/osb/ShellCommand;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/osb/ShellCommand;->su:Lcom/miui/osb/ShellCommand$SH;

    .line 18
    return-void
.end method


# virtual methods
.method public canSU()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/osb/ShellCommand;->canSU(Z)Z

    move-result v0

    return v0
.end method

.method public canSU(Z)Z
    .locals 5
    .parameter "force_check"

    .prologue
    .line 25
    iget-object v2, p0, Lcom/miui/osb/ShellCommand;->can_su:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_3

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/miui/osb/ShellCommand;->su:Lcom/miui/osb/ShellCommand$SH;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/miui/osb/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/miui/osb/ShellCommand$CommandResult;

    move-result-object v1

    .line 27
    .local v1, r:Lcom/miui/osb/ShellCommand$CommandResult;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v0, out:Ljava/lang/StringBuilder;
    iget-object v2, v1, Lcom/miui/osb/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 30
    iget-object v2, v1, Lcom/miui/osb/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_1
    iget-object v2, v1, Lcom/miui/osb/ShellCommand$CommandResult;->stderr:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 32
    iget-object v2, v1, Lcom/miui/osb/ShellCommand$CommandResult;->stderr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_2
    const-string v2, "ShellCommand.java"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "canSU() su["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/miui/osb/ShellCommand$CommandResult;->exit_value:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {v1}, Lcom/miui/osb/ShellCommand$CommandResult;->success()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/osb/ShellCommand;->can_su:Ljava/lang/Boolean;

    .line 37
    .end local v0           #out:Ljava/lang/StringBuilder;
    .end local v1           #r:Lcom/miui/osb/ShellCommand$CommandResult;
    :cond_3
    iget-object v2, p0, Lcom/miui/osb/ShellCommand;->can_su:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public suOrSH()Lcom/miui/osb/ShellCommand$SH;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/miui/osb/ShellCommand;->canSU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/osb/ShellCommand;->su:Lcom/miui/osb/ShellCommand$SH;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/osb/ShellCommand;->sh:Lcom/miui/osb/ShellCommand$SH;

    goto :goto_0
.end method
