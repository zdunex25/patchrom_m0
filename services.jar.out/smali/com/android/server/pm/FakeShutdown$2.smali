.class final Lcom/android/server/pm/FakeShutdown$2;
.super Landroid/content/BroadcastReceiver;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/FakeShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 317
    const-string v1, "FakeShutdown"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powerConnectedReceiver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/pm/FakeShutdown;->access$000()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v1, "plugged"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 319
    const-string v1, "FakeShutdown"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powerConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/pm/FakeShutdown;->powerConnected:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sput v4, Lcom/android/server/pm/FakeShutdown;->powerConnected:I

    .line 326
    :goto_0
    sget-object v2, Lcom/android/server/pm/FakeShutdown;->batteryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 327
    :try_start_0
    sget-object v1, Lcom/android/server/pm/FakeShutdown;->batteryLock:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 328
    sget-object v1, Lcom/android/server/pm/FakeShutdown;->batteryLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 329
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/pm/FakeShutdown;->batteryLock:Ljava/lang/Object;

    .line 331
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-static {}, Lcom/android/server/pm/FakeShutdown;->access$000()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 333
    const-string v1, "FakeShutdown"

    const-string v2, "start silentShutdown state : DOWN_LOWLV"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {}, Lcom/android/server/pm/FakeShutdown;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/server/pm/FakeShutdown;->access$200()I

    move-result v2

    #calls: Lcom/android/server/pm/FakeShutdown;->makeAirplaneModeIntent(Landroid/content/Context;I)Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/android/server/pm/FakeShutdown;->access$300(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 335
    .local v0, airplaneIntent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 336
    invoke-static {}, Lcom/android/server/pm/FakeShutdown;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 338
    :cond_1
    invoke-static {}, Lcom/android/server/pm/FakeShutdown;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/ShutdownThread;->silentShutdown(Landroid/content/Context;)V

    .line 340
    .end local v0           #airplaneIntent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 322
    :cond_3
    const-string v1, "FakeShutdown"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powerConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/pm/FakeShutdown;->powerConnected:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sput v4, Lcom/android/server/pm/FakeShutdown;->powerConnected:I

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
