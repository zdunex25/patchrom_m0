.class Lcom/google/a/a/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/a/a/a/j;


# direct methods
.method constructor <init>(Lcom/google/a/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/a/a/k;->a:Lcom/google/a/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "LicenseChecker"

    const-string v1, "Check timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/a/a/a/k;->a:Lcom/google/a/a/a/j;

    invoke-static {v0}, Lcom/google/a/a/a/j;->c(Lcom/google/a/a/a/j;)Lcom/google/a/a/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/a/a/k;->a:Lcom/google/a/a/a/j;

    invoke-static {v1}, Lcom/google/a/a/a/j;->a(Lcom/google/a/a/a/j;)Lcom/google/a/a/a/n;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/a/a/i;->a(Lcom/google/a/a/a/i;Lcom/google/a/a/a/n;)V

    iget-object v0, p0, Lcom/google/a/a/a/k;->a:Lcom/google/a/a/a/j;

    invoke-static {v0}, Lcom/google/a/a/a/j;->c(Lcom/google/a/a/a/j;)Lcom/google/a/a/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/a/a/k;->a:Lcom/google/a/a/a/j;

    invoke-static {v1}, Lcom/google/a/a/a/j;->a(Lcom/google/a/a/a/j;)Lcom/google/a/a/a/n;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/a/a/i;->b(Lcom/google/a/a/a/i;Lcom/google/a/a/a/n;)V

    return-void
.end method
