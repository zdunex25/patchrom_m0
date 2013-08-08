.class Lcom/b/a/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/b/a/b/c;


# direct methods
.method constructor <init>(Lcom/b/a/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/b/d;->a:Lcom/b/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/d;->a:Lcom/b/a/b/c;

    invoke-static {v0}, Lcom/b/a/b/c;->a(Lcom/b/a/b/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/b/a/a;->a(Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_0
.end method
