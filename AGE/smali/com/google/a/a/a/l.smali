.class Lcom/google/a/a/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/a/a/a/j;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/a/a/a/j;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    iput p2, p0, Lcom/google/a/a/a/l;->b:I

    iput-object p3, p0, Lcom/google/a/a/a/l;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/a/a/a/l;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "LicenseChecker"

    const-string v1, "Received response."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    invoke-static {v0}, Lcom/google/a/a/a/j;->c(Lcom/google/a/a/a/j;)Lcom/google/a/a/a/i;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/a/i;->b(Lcom/google/a/a/a/i;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    invoke-static {v1}, Lcom/google/a/a/a/j;->a(Lcom/google/a/a/a/j;)Lcom/google/a/a/a/n;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    invoke-static {v0}, Lcom/google/a/a/a/j;->b(Lcom/google/a/a/a/j;)V

    iget-object v0, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    invoke-static {v0}, Lcom/google/a/a/a/j;->a(Lcom/google/a/a/a/j;)Lcom/google/a/a/a/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    invoke-static {v1}, Lcom/google/a/a/a/j;->c(Lcom/google/a/a/a/j;)Lcom/google/a/a/a/i;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/a/a/i;->c(Lcom/google/a/a/a/i;)Ljava/security/PublicKey;

    move-result-object v1

    iget v2, p0, Lcom/google/a/a/a/l;->b:I

    iget-object v3, p0, Lcom/google/a/a/a/l;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/a/a/a/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/a/a/a/n;->a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    invoke-static {v0}, Lcom/google/a/a/a/j;->c(Lcom/google/a/a/a/j;)Lcom/google/a/a/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/j;

    invoke-static {v1}, Lcom/google/a/a/a/j;->a(Lcom/google/a/a/a/j;)Lcom/google/a/a/a/n;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/a/a/i;->b(Lcom/google/a/a/a/i;Lcom/google/a/a/a/n;)V

    :cond_0
    return-void
.end method
