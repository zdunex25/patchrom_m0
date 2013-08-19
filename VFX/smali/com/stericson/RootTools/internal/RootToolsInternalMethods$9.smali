.class Lcom/stericson/RootTools/internal/RootToolsInternalMethods$9;
.super Lcom/stericson/RootTools/execution/Command;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

.field final synthetic val$box:Ljava/lang/String;

.field final synthetic val$util:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$9;->this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    iput-object p4, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$9;->val$box:Ljava/lang/String;

    iput-object p5, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$9;->val$util:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/stericson/RootTools/execution/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output(ILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "line"

    .prologue
    const/4 v2, 0x1

    .line 1158
    iget-object v0, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$9;->val$box:Ljava/lang/String;

    const-string v1, "toolbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    const-string v0, "no such tool"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    sput-boolean v2, Lcom/stericson/RootTools/internal/InternalVariables;->found:Z

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    iget-object v0, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$9;->val$box:Ljava/lang/String;

    const-string v1, "busybox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$9;->val$util:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    const-string v0, "Found util!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1166
    sput-boolean v2, Lcom/stericson/RootTools/internal/InternalVariables;->found:Z

    goto :goto_0
.end method
