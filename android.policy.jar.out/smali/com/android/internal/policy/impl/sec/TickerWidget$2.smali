.class Lcom/android/internal/policy/impl/sec/TickerWidget$2;
.super Landroid/content/BroadcastReceiver;
.source "TickerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerWidget;
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
    .line 129
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.daemonapp.stockclock.ACTION_UPDATE_STOCK_DATA_SYNC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsStockRefreshFailed:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$600(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const-string v0, "TickerWidget"

    const-string v1, "Receive : ACTION_UPDATE_STOCK_DATA_SYNC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/sec/TickerWidget$2$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$2$1;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.daemonapp.ap.sinanews.intent.action.SNEWS_DATE_SYNC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsNewsRefreshFailed:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1300(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/sec/TickerWidget$2$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$2$2;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    const-string v0, "TickerWidget"

    const-string v1, "Receive : ACTION_SNNEWS_DATE_SYNC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.internal.policy.impl.intent.action.ACTION_SINAWEIBO_DATE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookRefreshFailed:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1400(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/sec/TickerWidget$2$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$2$3;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    const-string v0, "TickerWidget"

    const-string v1, "Receive : ACTION_SINAWEIBO_DATE_UPDATED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookRefreshFailed:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1400(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/sec/TickerWidget$2$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$2$5;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    const-string v0, "TickerWidget"

    const-string v1, "Receive : ACTION_FACEBOOK_DATE_UPDATED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_3
    return-void

    .line 188
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.daemonapp.ap.yahoonews.intent.action.YNEWS_DATE_SYNC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsNewsRefreshFailed:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1300(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/sec/TickerWidget$2$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$2$4;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    const-string v0, "TickerWidget"

    const-string v1, "Receive : ACTION_YHNEWS_DATE_SYNC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
