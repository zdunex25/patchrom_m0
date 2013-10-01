.class public Lcom/google/ads/bl;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/ads/b/ac;

.field private final b:Lcom/google/ads/bi;

.field private c:Z

.field private d:Z

.field private e:Lcom/google/ads/bk;

.field private final f:Lcom/google/ads/be;

.field private g:Lcom/google/ads/c/b;

.field private h:Z

.field private i:Z

.field private j:Landroid/view/View;

.field private final k:Ljava/lang/String;

.field private final l:Lcom/google/ads/d;

.field private final m:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/google/ads/be;Lcom/google/ads/b/ac;Lcom/google/ads/bi;Ljava/lang/String;Lcom/google/ads/d;Ljava/util/HashMap;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/e/g;->b(Z)V

    iput-object p1, p0, Lcom/google/ads/bl;->f:Lcom/google/ads/be;

    iput-object p2, p0, Lcom/google/ads/bl;->a:Lcom/google/ads/b/ac;

    iput-object p3, p0, Lcom/google/ads/bl;->b:Lcom/google/ads/bi;

    iput-object p4, p0, Lcom/google/ads/bl;->k:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/ads/bl;->l:Lcom/google/ads/d;

    iput-object p6, p0, Lcom/google/ads/bl;->m:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/google/ads/bl;->c:Z

    iput-boolean v1, p0, Lcom/google/ads/bl;->d:Z

    iput-object v2, p0, Lcom/google/ads/bl;->e:Lcom/google/ads/bk;

    iput-object v2, p0, Lcom/google/ads/bl;->g:Lcom/google/ads/c/b;

    iput-boolean v1, p0, Lcom/google/ads/bl;->h:Z

    iput-boolean v1, p0, Lcom/google/ads/bl;->i:Z

    iput-object v2, p0, Lcom/google/ads/bl;->j:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/bl;)Lcom/google/ads/c/b;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/bl;->g:Lcom/google/ads/c/b;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/bl;->h:Z

    const-string v1, "destroy() called but startLoadAdTask has not been called."

    invoke-static {v0, v1}, Lcom/google/ads/e/g;->a(ZLjava/lang/String;)V

    invoke-static {}, Lcom/google/ads/bt;->a()Lcom/google/ads/bt;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bt;->c:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/bm;

    invoke-direct {v1, p0}, Lcom/google/ads/bm;-><init>(Lcom/google/ads/bl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/app/Activity;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/ads/bl;->h:Z

    const-string v2, "startLoadAdTask has already been called."

    invoke-static {v1, v2}, Lcom/google/ads/e/g;->b(ZLjava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ads/bl;->h:Z

    invoke-static {}, Lcom/google/ads/bt;->a()Lcom/google/ads/bt;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/bt;->c:Lcom/google/ads/e/af;

    invoke-virtual {v1}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/Handler;

    move-object v7, v0

    new-instance v1, Lcom/google/ads/bo;

    iget-object v4, p0, Lcom/google/ads/bl;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/ads/bl;->l:Lcom/google/ads/d;

    iget-object v6, p0, Lcom/google/ads/bl;->m:Ljava/util/HashMap;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/bo;-><init>(Lcom/google/ads/bl;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/d;Ljava/util/HashMap;)V

    invoke-virtual {v7, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized a(Lcom/google/ads/c/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/bl;->g:Lcom/google/ads/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZLcom/google/ads/bk;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/ads/bl;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/bl;->c:Z

    iput-object p2, p0, Lcom/google/ads/bl;->e:Lcom/google/ads/bk;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/bl;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/bl;->c:Z

    const-string v1, "isLoadAdTaskSuccessful() called when isLoadAdTaskDone() is false."

    invoke-static {v0, v1}, Lcom/google/ads/e/g;->a(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/ads/bl;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Lcom/google/ads/bk;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/bl;->e:Lcom/google/ads/bk;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/ads/bk;->d:Lcom/google/ads/bk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/bl;->e:Lcom/google/ads/bk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Landroid/view/View;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/bl;->c:Z

    const-string v1, "getAdView() called when isLoadAdTaskDone() is false."

    invoke-static {v0, v1}, Lcom/google/ads/e/g;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/bl;->j:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/bl;->a:Lcom/google/ads/b/ac;

    invoke-virtual {v0}, Lcom/google/ads/b/ac;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/e/g;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/bl;->g:Lcom/google/ads/c/b;

    check-cast v0, Lcom/google/ads/c/e;

    invoke-static {}, Lcom/google/ads/bt;->a()Lcom/google/ads/bt;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/bt;->c:Lcom/google/ads/e/af;

    invoke-virtual {v1}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lcom/google/ads/bn;

    invoke-direct {v2, p0, v0}, Lcom/google/ads/bn;-><init>(Lcom/google/ads/bl;Lcom/google/ads/c/e;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "In Ambassador.show(): ambassador.adapter does not implement the MediationInterstitialAdapter interface."

    invoke-static {v1, v0}, Lcom/google/ads/e/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/bl;->g:Lcom/google/ads/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/bl;->g:Lcom/google/ads/c/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "\"adapter was not created.\""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized h()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/bl;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized i()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/bl;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
