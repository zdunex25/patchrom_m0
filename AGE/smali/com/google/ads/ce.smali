.class public Lcom/google/ads/ce;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/bw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/b/w;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v6, 0x0

    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "afma_notify_dt"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "activation_overlay_url"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "check_packages"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "1"

    const-string v7, "drt_include"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v5, "request_scenario"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "1"

    const-string v9, "use_webview_loadurl"

    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    sget-object v9, Lcom/google/ads/b/u;->d:Lcom/google/ads/b/u;

    iget-object v9, v9, Lcom/google/ads/b/u;->e:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v5, Lcom/google/ads/b/u;->d:Lcom/google/ads/b/u;

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received ad url: <url: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" type: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "\" afmaNotifyDt: \""

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" activationOverlayUrl: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" useWebViewLoadUrl: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/e/i;->c(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/math/BigInteger;

    new-array v2, v11, [B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move v2, v6

    move-object v4, v1

    :goto_1
    array-length v1, v9

    if-ge v2, v1, :cond_4

    invoke-virtual {p1}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bv;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/bv;->c:Lcom/google/ads/e/ah;

    invoke-virtual {v1}, Lcom/google/ads/e/ah;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    aget-object v10, v9, v2

    invoke-static {v1, v10}, Lcom/google/ads/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v4

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    sget-object v9, Lcom/google/ads/b/u;->c:Lcom/google/ads/b/u;

    iget-object v9, v9, Lcom/google/ads/b/u;->e:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v5, Lcom/google/ads/b/u;->c:Lcom/google/ads/b/u;

    goto/16 :goto_0

    :cond_2
    sget-object v9, Lcom/google/ads/b/u;->a:Lcom/google/ads/b/u;

    iget-object v9, v9, Lcom/google/ads/b/u;->e:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/google/ads/b/u;->a:Lcom/google/ads/b/u;

    goto/16 :goto_0

    :cond_3
    sget-object v5, Lcom/google/ads/b/u;->b:Lcom/google/ads/b/u;

    goto/16 :goto_0

    :cond_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%X"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v4, v9, v6

    invoke-static {v1, v2, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%40installed_markets%40"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/ads/bt;->a()Lcom/google/ads/bt;

    move-result-object v2

    iget-object v2, v2, Lcom/google/ads/bt;->a:Lcom/google/ads/e/ag;

    invoke-virtual {v2, v1}, Lcom/google/ads/e/ag;->a(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad url modified to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/e/i;->c(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/google/ads/b/w;->j()Lcom/google/ads/b/n;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1, v7}, Lcom/google/ads/b/n;->d(Z)V

    invoke-virtual {v1, v5}, Lcom/google/ads/b/n;->a(Lcom/google/ads/b/u;)V

    invoke-virtual {v1, v8}, Lcom/google/ads/b/n;->e(Z)V

    invoke-virtual {v1, v3}, Lcom/google/ads/b/n;->e(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/ads/b/n;->d(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
