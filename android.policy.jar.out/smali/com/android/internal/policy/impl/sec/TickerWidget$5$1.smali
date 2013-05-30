.class Lcom/android/internal/policy/impl/sec/TickerWidget$5$1;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/TickerWidget$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$5;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/TickerWidget$5;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$5$1;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 346
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$5$1;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$5;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->updateFacebookInstalled()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1700(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    .line 348
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$5$1;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$5;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookInstalled:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    const-string v2, "facebook:/newsfeed"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 350
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 351
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 352
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$5$1;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$5;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1500(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 356
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$5$1;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$5;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1600(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 357
    return-void

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$5$1;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$5;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1900(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerScrollView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mAccountThread:Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;->start()V

    goto :goto_0
.end method
