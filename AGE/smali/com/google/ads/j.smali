.class public Lcom/google/ads/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/a;


# instance fields
.field private a:Lcom/google/ads/b/w;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/j;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/b/w;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v3

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/b/w;-><init>(Lcom/google/ads/a;Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    iput-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/b/w;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->y()V

    return-void
.end method

.method public a(Lcom/google/ads/c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bv;->o:Lcom/google/ads/e/ag;

    invoke-virtual {v0, p1}, Lcom/google/ads/e/ag;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/ads/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/j;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0, p1}, Lcom/google/ads/b/w;->a(Lcom/google/ads/d;)V

    return-void
.end method
