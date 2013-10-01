.class Lcom/google/a/a/a/j;
.super Lcom/google/a/a/a/d;


# instance fields
.field final synthetic a:Lcom/google/a/a/a/i;

.field private final b:Lcom/google/a/a/a/n;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/a/a/a/i;Lcom/google/a/a/a/n;)V
    .locals 1

    iput-object p1, p0, Lcom/google/a/a/a/j;->a:Lcom/google/a/a/a/i;

    invoke-direct {p0}, Lcom/google/a/a/a/d;-><init>()V

    iput-object p2, p0, Lcom/google/a/a/a/j;->b:Lcom/google/a/a/a/n;

    new-instance v0, Lcom/google/a/a/a/k;

    invoke-direct {v0, p0}, Lcom/google/a/a/a/k;-><init>(Lcom/google/a/a/a/j;)V

    iput-object v0, p0, Lcom/google/a/a/a/j;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/google/a/a/a/j;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/a/a/a/j;)Lcom/google/a/a/a/n;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/j;->b:Lcom/google/a/a/a/n;

    return-object v0
.end method

.method private a()V
    .locals 4

    const-string v0, "LicenseChecker"

    const-string v1, "Start monitoring timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/a/a/a/j;->a:Lcom/google/a/a/a/i;

    invoke-static {v0}, Lcom/google/a/a/a/i;->a(Lcom/google/a/a/a/i;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/a/a/j;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private b()V
    .locals 2

    const-string v0, "LicenseChecker"

    const-string v1, "Clearing timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/a/a/a/j;->a:Lcom/google/a/a/a/i;

    invoke-static {v0}, Lcom/google/a/a/a/i;->a(Lcom/google/a/a/a/i;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/a/a/j;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/google/a/a/a/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/a/a/j;->b()V

    return-void
.end method

.method static synthetic c(Lcom/google/a/a/a/j;)Lcom/google/a/a/a/i;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/j;->a:Lcom/google/a/a/a/i;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/a/a/a/j;->a:Lcom/google/a/a/a/i;

    invoke-static {v0}, Lcom/google/a/a/a/i;->a(Lcom/google/a/a/a/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/a/a/a/l;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/a/a/a/l;-><init>(Lcom/google/a/a/a/j;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
