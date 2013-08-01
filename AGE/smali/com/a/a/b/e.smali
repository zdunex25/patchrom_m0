.class Lcom/a/a/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/a/a/b/c;


# direct methods
.method constructor <init>(Lcom/a/a/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/b/e;->a:Lcom/a/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x2

    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/e;->a:Lcom/a/a/b/c;

    invoke-static {v0}, Lcom/a/a/b/c;->b(Lcom/a/a/b/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/a/a/a;->a(Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/a/a/a;->a(Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_0
.end method
