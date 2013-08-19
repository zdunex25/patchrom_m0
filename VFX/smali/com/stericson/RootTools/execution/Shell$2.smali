.class Lcom/stericson/RootTools/execution/Shell$2;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/execution/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/execution/Shell;


# direct methods
.method constructor <init>(Lcom/stericson/RootTools/execution/Shell;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/stericson/RootTools/execution/Shell$2;->this$0:Lcom/stericson/RootTools/execution/Shell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/stericson/RootTools/execution/Shell$2;->this$0:Lcom/stericson/RootTools/execution/Shell;

    #calls: Lcom/stericson/RootTools/execution/Shell;->readOutput()V
    invoke-static {v1}, Lcom/stericson/RootTools/execution/Shell;->access$200(Lcom/stericson/RootTools/execution/Shell;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_0

    .line 200
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_0
.end method
