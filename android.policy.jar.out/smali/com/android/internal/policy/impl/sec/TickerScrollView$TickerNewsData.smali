.class public Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;
.super Ljava/lang/Object;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerNewsData"
.end annotation


# instance fields
.field private mAttribute:Ljava/lang/String;

.field private mNews_url:Ljava/lang/String;

.field private mPublish_time:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V
    .locals 1
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 514
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    .line 515
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    .line 516
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    .line 517
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    .line 519
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "title"
    .parameter "attribute"
    .parameter "publish_time"
    .parameter "news_url"

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 514
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    .line 515
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    .line 516
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    .line 517
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    .line 521
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    .line 522
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    .line 523
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    .line 524
    iput-object p5, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    .line 525
    return-void
.end method


# virtual methods
.method public getNewsAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    return-object v0
.end method

.method public setNewsAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "attribute"

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    .line 543
    return-void
.end method

.method public setNewsTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    .line 540
    return-void
.end method

.method public setNewsUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "news_url"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    .line 549
    return-void
.end method

.method public setPublishedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "publish_time"

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    .line 546
    return-void
.end method
