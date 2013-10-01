.class public Lcom/google/ads/bv;
.super Lcom/google/ads/e/ac;


# instance fields
.field public final a:Lcom/google/ads/e/af;

.field public final b:Lcom/google/ads/e/af;

.field public final c:Lcom/google/ads/e/ah;

.field public final d:Lcom/google/ads/e/af;

.field public final e:Lcom/google/ads/e/af;

.field public final f:Lcom/google/ads/e/af;

.field public final g:Lcom/google/ads/e/af;

.field public final h:Lcom/google/ads/e/af;

.field public final i:Lcom/google/ads/e/af;

.field public final j:Lcom/google/ads/e/af;

.field public final k:Lcom/google/ads/e/af;

.field public final l:Lcom/google/ads/e/ag;

.field public final m:Lcom/google/ads/e/ag;

.field public final n:Lcom/google/ads/e/ag;

.field public final o:Lcom/google/ads/e/ag;

.field public final p:Lcom/google/ads/e/ag;

.field public final q:Lcom/google/ads/e/ag;

.field public final r:Lcom/google/ads/e/ag;

.field public final s:Lcom/google/ads/e/ag;

.field public final t:Lcom/google/ads/e/ag;


# direct methods
.method public constructor <init>(Lcom/google/ads/bt;Lcom/google/ads/a;Lcom/google/ads/h;Lcom/google/ads/j;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/b/ac;Lcom/google/ads/b/w;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/ads/e/ac;-><init>()V

    new-instance v1, Lcom/google/ads/e/ag;

    const-string v2, "currentAd"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->l:Lcom/google/ads/e/ag;

    new-instance v1, Lcom/google/ads/e/ag;

    const-string v2, "nextAd"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->m:Lcom/google/ads/e/ag;

    new-instance v1, Lcom/google/ads/e/ag;

    const-string v2, "adListener"

    invoke-direct {v1, p0, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/bv;->o:Lcom/google/ads/e/ag;

    new-instance v1, Lcom/google/ads/e/ag;

    const-string v2, "appEventListener"

    invoke-direct {v1, p0, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/bv;->p:Lcom/google/ads/e/ag;

    new-instance v1, Lcom/google/ads/e/ag;

    const-string v2, "swipeableEventListener"

    invoke-direct {v1, p0, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/bv;->q:Lcom/google/ads/e/ag;

    new-instance v1, Lcom/google/ads/e/ag;

    const-string v2, "spamSignals"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->r:Lcom/google/ads/e/ag;

    new-instance v1, Lcom/google/ads/e/ag;

    const-string v2, "spamSignalsUtil"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->s:Lcom/google/ads/e/ag;

    new-instance v1, Lcom/google/ads/e/ag;

    const-string v2, "usesManualImpressions"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->t:Lcom/google/ads/e/ag;

    new-instance v1, Lcom/google/ads/e/af;

    const-string v2, "appState"

    invoke-direct {v1, p0, v2, p1}, Lcom/google/ads/e/af;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->d:Lcom/google/ads/e/af;

    new-instance v1, Lcom/google/ads/e/af;

    const-string v2, "ad"

    invoke-direct {v1, p0, v2, p2}, Lcom/google/ads/e/af;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->a:Lcom/google/ads/e/af;

    new-instance v1, Lcom/google/ads/e/af;

    const-string v2, "adView"

    invoke-direct {v1, p0, v2, p3}, Lcom/google/ads/e/af;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->j:Lcom/google/ads/e/af;

    new-instance v1, Lcom/google/ads/e/af;

    const-string v2, "adType"

    invoke-direct {v1, p0, v2, p9}, Lcom/google/ads/e/af;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->g:Lcom/google/ads/e/af;

    new-instance v1, Lcom/google/ads/e/af;

    const-string v2, "adUnitId"

    invoke-direct {v1, p0, v2, p5}, Lcom/google/ads/e/af;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->h:Lcom/google/ads/e/af;

    new-instance v1, Lcom/google/ads/e/ah;

    const-string v2, "activity"

    invoke-direct {v1, p0, v2, p6}, Lcom/google/ads/e/ah;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->c:Lcom/google/ads/e/ah;

    new-instance v1, Lcom/google/ads/e/af;

    const-string v2, "interstitialAd"

    invoke-direct {v1, p0, v2, p4}, Lcom/google/ads/e/af;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->k:Lcom/google/ads/e/af;

    new-instance v1, Lcom/google/ads/e/af;

    const-string v2, "bannerContainer"

    invoke-direct {v1, p0, v2, p8}, Lcom/google/ads/e/af;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->i:Lcom/google/ads/e/af;

    new-instance v1, Lcom/google/ads/e/af;

    const-string v2, "applicationContext"

    invoke-direct {v1, p0, v2, p7}, Lcom/google/ads/e/af;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->f:Lcom/google/ads/e/af;

    new-instance v1, Lcom/google/ads/e/ag;

    const-string v2, "adSizes"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->n:Lcom/google/ads/e/ag;

    new-instance v1, Lcom/google/ads/e/af;

    const-string v2, "adManager"

    invoke-direct {v1, p0, v2, p10}, Lcom/google/ads/e/af;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->b:Lcom/google/ads/e/af;

    if-eqz p9, :cond_0

    invoke-virtual {p9}, Lcom/google/ads/b/ac;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/ads/b/a;

    invoke-direct {v0, p0}, Lcom/google/ads/b/a;-><init>(Lcom/google/ads/bv;)V

    :cond_0
    new-instance v1, Lcom/google/ads/e/af;

    const-string v2, "activationOverlay"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/e/af;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bv;->e:Lcom/google/ads/e/af;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/bv;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/bv;->g:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/ac;

    invoke-virtual {v0}, Lcom/google/ads/b/ac;->a()Z

    move-result v0

    return v0
.end method
