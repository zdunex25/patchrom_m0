.class Lcom/google/ads/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/b/a;

.field final synthetic b:Lcom/google/ads/b/a;


# direct methods
.method constructor <init>(Lcom/google/ads/b/a;Lcom/google/ads/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/b/b;->b:Lcom/google/ads/b/a;

    iput-object p2, p0, Lcom/google/ads/b/b;->a:Lcom/google/ads/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/b/b;->b:Lcom/google/ads/b/a;

    iget-object v0, v0, Lcom/google/ads/b/a;->a:Lcom/google/ads/bu;

    iget-object v0, v0, Lcom/google/ads/bu;->j:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/h;

    iget-object v1, p0, Lcom/google/ads/b/b;->a:Lcom/google/ads/b/a;

    invoke-virtual {v0, v1}, Lcom/google/ads/h;->removeView(Landroid/view/View;)V

    return-void
.end method
