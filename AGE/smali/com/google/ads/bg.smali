.class Lcom/google/ads/bg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/bb;

.field final synthetic b:Lcom/google/ads/be;


# direct methods
.method constructor <init>(Lcom/google/ads/be;Lcom/google/ads/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/bg;->b:Lcom/google/ads/be;

    iput-object p2, p0, Lcom/google/ads/bg;->a:Lcom/google/ads/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/bg;->b:Lcom/google/ads/be;

    invoke-static {v0}, Lcom/google/ads/be;->b(Lcom/google/ads/be;)Lcom/google/ads/b/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/bg;->a:Lcom/google/ads/bb;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/w;->b(Lcom/google/ads/bb;)V

    return-void
.end method
