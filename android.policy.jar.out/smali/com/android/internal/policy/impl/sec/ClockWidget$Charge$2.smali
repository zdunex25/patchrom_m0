.class Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$2;
.super Landroid/content/BroadcastReceiver;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)V
    .locals 0
    .parameter

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$2;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1473
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1474
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1475
    :cond_0
    const-string v2, "ClockWidget"

    const-string v3, "received MISSED_EVENT intent !! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$2;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->access$2500(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1477
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$2;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->access$2500(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1479
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method
