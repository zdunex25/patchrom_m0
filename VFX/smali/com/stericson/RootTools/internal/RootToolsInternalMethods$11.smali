.class Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;
.super Lcom/stericson/RootTools/RootTools$Result;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->killProcess(Ljava/lang/String;)Z
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
    .line 1295
    iput-object p1, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;->this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    iput-object p2, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;->val$processName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/stericson/RootTools/RootTools$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 0
    .parameter "diag"

    .prologue
    .line 1329
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1
    .parameter "ex"

    .prologue
    .line 1324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;->setError(I)Lcom/stericson/RootTools/RootTools$Result;

    .line 1325
    return-void
.end method

.method public process(Ljava/lang/String;)V
    .locals 5
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1298
    iget-object v3, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;->val$processName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1299
    sget-object v3, Lcom/stericson/RootTools/internal/InternalVariables;->psPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1302
    .local v2, psMatcher:Ljava/util/regex/Matcher;
    :try_start_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1303
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1306
    .local v1, pid:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;->getData()Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;->getData()Ljava/io/Serializable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;->setData(Ljava/io/Serializable;)Lcom/stericson/RootTools/RootTools$Result;

    .line 1311
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1320
    .end local v1           #pid:Ljava/lang/String;
    .end local v2           #psMatcher:Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    return-void

    .line 1309
    .restart local v1       #pid:Ljava/lang/String;
    .restart local v2       #psMatcher:Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;->setData(Ljava/io/Serializable;)Lcom/stericson/RootTools/RootTools$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1315
    .end local v1           #pid:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1316
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Error with regex!"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1313
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v3, "Matching in ps command failed!"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
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
    .line 1333
    return-void
.end method
