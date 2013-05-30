.class Lcom/android/internal/policy/impl/sec/TickerWidget$9;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mNewsRefreshing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mStockRefreshing:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1200(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mFacebookRefreshing:Z

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->requestTickerDataToDemon()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2400(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1600(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 447
    return-void
.end method
