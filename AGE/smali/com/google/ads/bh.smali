.class Lcom/google/ads/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/bl;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/google/ads/bi;

.field final synthetic d:Lcom/google/ads/be;


# direct methods
.method constructor <init>(Lcom/google/ads/be;Lcom/google/ads/bl;Landroid/view/View;Lcom/google/ads/bi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/bh;->d:Lcom/google/ads/be;

    iput-object p2, p0, Lcom/google/ads/bh;->a:Lcom/google/ads/bl;

    iput-object p3, p0, Lcom/google/ads/bh;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/google/ads/bh;->c:Lcom/google/ads/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/bh;->d:Lcom/google/ads/be;

    iget-object v1, p0, Lcom/google/ads/bh;->a:Lcom/google/ads/bl;

    invoke-static {v0, v1}, Lcom/google/ads/be;->a(Lcom/google/ads/be;Lcom/google/ads/bl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Trying to switch GWAdNetworkAmbassadors, but GWController().destroy() has been called. Destroying the new ambassador and terminating mediation."

    invoke-static {v0}, Lcom/google/ads/e/i;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/bh;->d:Lcom/google/ads/be;

    invoke-static {v0}, Lcom/google/ads/be;->b(Lcom/google/ads/be;)Lcom/google/ads/b/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/bh;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/google/ads/bh;->a:Lcom/google/ads/bl;

    iget-object v3, p0, Lcom/google/ads/bh;->c:Lcom/google/ads/bi;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/ads/b/w;->a(Landroid/view/View;Lcom/google/ads/bl;Lcom/google/ads/bi;Z)V

    goto :goto_0
.end method
