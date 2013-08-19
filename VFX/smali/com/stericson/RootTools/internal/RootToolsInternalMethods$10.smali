.class Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;
.super Lcom/stericson/RootTools/RootTools$Result;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->isProcessRunning(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

.field final synthetic val$processName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;->this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    iput-object p2, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;->val$processName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/stericson/RootTools/RootTools$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 0
    .parameter "diag"

    .prologue
    .line 1262
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1
    .parameter "ex"

    .prologue
    .line 1257
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;->setError(I)Lcom/stericson/RootTools/RootTools$Result;

    .line 1258
    return-void
.end method

.method public process(Ljava/lang/String;)V
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;->val$processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;->setData(Ljava/io/Serializable;)Lcom/stericson/RootTools/RootTools$Result;

    .line 1253
    :cond_0
    return-void
.end method

.method public processError(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1266
    return-void
.end method
