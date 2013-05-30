.class public Lcom/miui/osb/ShellCommand$CommandResult;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/osb/ShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommandResult"
.end annotation


# instance fields
.field public final exit_value:Ljava/lang/Integer;

.field public final stderr:Ljava/lang/String;

.field public final stdout:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/osb/ShellCommand;


# direct methods
.method constructor <init>(Lcom/miui/osb/ShellCommand;Ljava/lang/Integer;)V
    .locals 1
    .parameter
    .parameter "exit_value_in"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/miui/osb/ShellCommand$CommandResult;-><init>(Lcom/miui/osb/ShellCommand;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method constructor <init>(Lcom/miui/osb/ShellCommand;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "exit_value_in"
    .parameter "stdout_in"
    .parameter "stderr_in"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/miui/osb/ShellCommand$CommandResult;->this$0:Lcom/miui/osb/ShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/miui/osb/ShellCommand$CommandResult;->exit_value:Ljava/lang/Integer;

    .line 51
    iput-object p3, p0, Lcom/miui/osb/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/miui/osb/ShellCommand$CommandResult;->stderr:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public success()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/osb/ShellCommand$CommandResult;->exit_value:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/osb/ShellCommand$CommandResult;->exit_value:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
