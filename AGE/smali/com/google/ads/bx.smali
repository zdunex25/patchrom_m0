.class public Lcom/google/ads/bx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/bv;


# static fields
.field private static final a:Lcom/google/ads/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/ads/b/h;->a:Lcom/google/ads/e/q;

    invoke-interface {v0}, Lcom/google/ads/e/q;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/h;

    sput-object v0, Lcom/google/ads/bx;->a:Lcom/google/ads/b/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/b/w;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "urls"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Could not get the urls param from canOpenURLs gmsg."

    invoke-static {v0}, Lcom/google/ads/e/i;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    array-length v7, v4

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_3

    aget-object v8, v4, v3

    const-string v0, ";"

    invoke-virtual {v8, v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v9, v0, v2

    array-length v10, v0

    if-lt v10, v11, :cond_1

    aget-object v0, v0, v1

    :goto_2
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x1

    invoke-virtual {v6, v10, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    const-string v0, "android.intent.action.VIEW"

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/google/ads/bx;->a:Lcom/google/ads/b/h;

    invoke-virtual {v0, p3, v5}, Lcom/google/ads/b/h;->a(Landroid/webkit/WebView;Ljava/util/Map;)V

    goto :goto_0
.end method
