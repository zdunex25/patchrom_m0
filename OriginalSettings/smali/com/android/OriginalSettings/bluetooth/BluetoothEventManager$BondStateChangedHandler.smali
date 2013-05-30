.class Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BondStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method

.method private showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "reason"

    .prologue
    .line 345
    packed-switch p3, :pswitch_data_0

    .line 362
    :pswitch_0
    const-string v1, "BluetoothEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showUnbondMessage: Not displaying any message for reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_0
    return-void

    .line 347
    :pswitch_1
    const v0, 0x7f0901bf

    .line 365
    .local v0, errorMsg:I
    :goto_1
    invoke-static {p1, p2, v0}, Lcom/android/OriginalSettings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 350
    .end local v0           #errorMsg:I
    :pswitch_2
    const v0, 0x7f0901c1

    .line 351
    .restart local v0       #errorMsg:I
    goto :goto_1

    .line 353
    .end local v0           #errorMsg:I
    :pswitch_3
    const v0, 0x7f0901c0

    .line 354
    .restart local v0       #errorMsg:I
    goto :goto_1

    .line 359
    .end local v0           #errorMsg:I
    :pswitch_4
    const v0, 0x7f0901be

    .line 360
    .restart local v0       #errorMsg:I
    goto :goto_1

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 10
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    const/high16 v9, -0x8000

    .line 259
    if-nez p3, :cond_1

    .line 260
    const-string v6, "BluetoothEventManager"

    const-string v7, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string v6, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 265
    .local v0, bondState:I
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 266
    .local v1, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_4

    .line 267
    invoke-static {}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CachedBluetoothDevice for device "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found, calling readPairedDevices()."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_2
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    move-result v6

    if-nez v6, :cond_3

    .line 270
    invoke-static {}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got bonding state changed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but we have no record of that device."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_3
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 275
    if-nez v1, :cond_4

    .line 276
    invoke-static {}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got bonding state changed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but device not added in cache."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 282
    :cond_4
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v6}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v7

    monitor-enter v7

    .line 283
    :try_start_0
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v6}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;

    .line 284
    .local v2, callback:Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;
    invoke-interface {v2, v1, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_1

    .line 286
    .end local v2           #callback:Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(I)V

    .line 289
    const/16 v6, 0xa

    if-ne v0, v6, :cond_0

    .line 290
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 292
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothPreferences;->removeDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1600(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 297
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 300
    :cond_6
    const-string v6, "android.bluetooth.device.extra.REASON"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 303
    .local v4, reason:I
    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v4}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V

    .line 308
    const/16 v6, 0x9

    if-ne v4, v6, :cond_0

    .line 309
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getDeviceType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 310
    invoke-static {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 311
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v6}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v7

    monitor-enter v7

    .line 312
    :try_start_2
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v6}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;

    .line 313
    .restart local v2       #callback:Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;
    invoke-interface {v2, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;->onDeviceDeleted(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_2

    .line 315
    .end local v2           #callback:Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    :cond_7
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 316
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_0

    .line 319
    :cond_8
    if-eqz p3, :cond_0

    .line 320
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v5

    .line 321
    .local v5, successful:Z
    if-eqz v5, :cond_9

    .line 323
    invoke-static {}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 326
    :cond_9
    invoke-static {}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Framework rejected command immediately:REMOVE_BOND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
