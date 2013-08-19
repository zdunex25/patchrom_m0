.class Lcom/stericson/RootTools/internal/RootToolsInternalMethods$1;
.super Lcom/stericson/RootTools/execution/Command;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->exists(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method varargs constructor <init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;I[Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$1;->this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    iput-object p4, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$1;->val$result:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/stericson/RootTools/execution/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output(ILjava/lang/String;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 420
    invoke-static {p2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$1;->val$result:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    return-void
.end method
