.class Lcom/stericson/RootTools/internal/RootToolsInternalMethods$8;
.super Lcom/stericson/RootTools/execution/Command;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getSymlink(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method varargs constructor <init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;I[Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$8;->this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    iput-object p4, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$8;->val$results:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/stericson/RootTools/execution/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output(ILjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "line"

    .prologue
    .line 1028
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 1029
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$8;->val$results:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    :cond_0
    return-void
.end method
