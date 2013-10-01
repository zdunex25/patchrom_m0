.class Landroid/bluetooth/BluetoothTetheringDataTracker$2;
.super Ljava/lang/Object;
.source "BluetoothTetheringDataTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothTetheringDataTracker;->startReverseTether(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothTetheringDataTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 320
    const-string v5, "BluetoothTethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startReverseTether mCsHandler: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    #getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$100(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dhcp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$200()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, DhcpResultName:Ljava/lang/String;
    const-string v4, ""

    .line 324
    .local v4, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v5, 0x96

    if-ge v1, v5, :cond_3

    .line 325
    const-wide/16 v5, 0xc8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    const-string v5, "failed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 329
    const-string v5, "BluetoothTethering"

    const-string/jumbo v6, "startReverseTether, failed to start dhcp service"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    :goto_1
    return-void

    .line 325
    :catch_0
    move-exception v2

    .local v2, ie:Ljava/lang/InterruptedException;
    goto :goto_1

    .line 332
    .end local v2           #ie:Ljava/lang/InterruptedException;
    :cond_1
    const-string/jumbo v5, "ok"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 334
    iget-object v5, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$200()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/bluetooth/BluetoothTetheringDataTracker;->readLinkProperty(Ljava/lang/String;)Z
    invoke-static {v5, v6}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$300(Landroid/bluetooth/BluetoothTetheringDataTracker;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 336
    iget-object v5, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    #getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$400(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 337
    iget-object v5, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    #getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$400(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5, v6, v9, v9}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v5, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    #getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$100(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 341
    iget-object v5, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    #getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$100(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    iget-object v7, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    #getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$400(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 342
    .local v3, msg:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 344
    iget-object v5, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    #getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$100(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    #getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$400(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 345
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 324
    .end local v3           #msg:Landroid/os/Message;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    :cond_3
    const-string v5, "BluetoothTethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startReverseTether, dhcp failed, resut: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
