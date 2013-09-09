.class Lcom/google/ads/bn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/c/e;

.field final synthetic b:Lcom/google/ads/bl;


# direct methods
.method constructor <init>(Lcom/google/ads/bl;Lcom/google/ads/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/bn;->b:Lcom/google/ads/bl;

    iput-object p2, p0, Lcom/google/ads/bn;->a:Lcom/google/ads/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/bn;->a:Lcom/google/ads/c/e;

    invoke-interface {v0}, Lcom/google/ads/c/e;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while telling adapter ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/bn;->b:Lcom/google/ads/bl;

    invoke-virtual {v2}, Lcom/google/ads/bl;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ad to show interstitial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/e/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
