.class public Lcom/google/ads/bt;
.super Lcom/google/ads/e/ac;


# static fields
.field private static final d:Lcom/google/ads/bt;


# instance fields
.field public final a:Lcom/google/ads/e/ag;

.field public final b:Lcom/google/ads/e/af;

.field public final c:Lcom/google/ads/e/af;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/bt;

    invoke-direct {v0}, Lcom/google/ads/bt;-><init>()V

    sput-object v0, Lcom/google/ads/bt;->d:Lcom/google/ads/bt;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/google/ads/e/ac;-><init>()V

    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "marketPackages"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/bt;->a:Lcom/google/ads/e/ag;

    new-instance v0, Lcom/google/ads/e/af;

    const-string v1, "constants"

    new-instance v2, Lcom/google/ads/bu;

    invoke-direct {v2}, Lcom/google/ads/bu;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/af;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/bt;->b:Lcom/google/ads/e/af;

    new-instance v0, Lcom/google/ads/e/af;

    const-string v1, "uiHandler"

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/af;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/bt;->c:Lcom/google/ads/e/af;

    return-void
.end method

.method public static a()Lcom/google/ads/bt;
    .locals 1

    sget-object v0, Lcom/google/ads/bt;->d:Lcom/google/ads/bt;

    return-object v0
.end method
