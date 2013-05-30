.class Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wfd/WfdPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setLastConnctedDeviceToBroker()V
    .locals 4

    .prologue
    .line 462
    const-string v1, "WfdPickerActivity"

    const-string v2, "setLastConnectedDeviceToBroker"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device addr is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.SET_CONNECT_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, intentBroker:Landroid/content/Intent;
    const-string v1, "addr"

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->startActivity(Landroid/content/Intent;)V

    .line 468
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 223
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, action:Ljava/lang/String;
    const-string v5, "WfdPickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v5, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 227
    const-string v5, "WfdPickerActivity"

    const-string v8, "wfd settings P2P changed"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const-string v5, "wifi_p2p_state"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v10, :cond_1

    move v5, v6

    :goto_0
    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pEnabled:Z
    invoke-static {v8, v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$002(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    .line 233
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 234
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v5, v7}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->handleP2pStateChanged(Z)V

    .line 459
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v5, v7

    .line 229
    goto :goto_0

    .line 236
    :cond_2
    const-string v5, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 238
    invoke-static {}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$200()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 240
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 242
    const-string v5, "wifiP2pGroupInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 244
    .local v2, mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    const-string v5, "connectedDevAddress"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, devAddr:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 250
    const-string v5, "WfdPickerActivity"

    const-string v6, "WifiP2pService notifies p2p connection is failed !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v5, v10}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$102(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)I

    .line 255
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    .line 257
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v5, v7}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$302(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    .line 258
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/16 v6, 0xb

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V
    invoke-static {v5, v6}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 260
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->cancelWfdConnect()V
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    .line 261
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/16 v6, 0xd

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V
    invoke-static {v5, v6}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    goto :goto_1

    .line 264
    .end local v1           #devAddr:Ljava/lang/String;
    .end local v2           #mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_3
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 266
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 270
    invoke-static {}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$200()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v6}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_1

    .line 275
    :cond_4
    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 278
    invoke-static {}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$200()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 280
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 282
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    const-string v5, "wifiP2pInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 285
    .local v4, wifip2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    const-string v5, "WfdPickerActivity"

    const-string v8, "onReceive << WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v5, "WfdPickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "curr state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v9}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 289
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v5

    if-eq v5, v12, :cond_5

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v5

    if-ne v5, v10, :cond_6

    .line 291
    :cond_5
    const-string v5, "WfdPickerActivity"

    const-string v6, "bad state! skip!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 294
    :cond_6
    const-string v5, "WfdPickerActivity"

    const-string v6, "connected... wait more times for p2p establish!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v5, v11}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$102(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)I

    goto/16 :goto_1

    .line 301
    :cond_7
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v5

    if-eq v5, v11, :cond_8

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v5

    if-eq v5, v12, :cond_8

    .line 303
    const-string v5, "WfdPickerActivity"

    const-string v6, "bad state! skip!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 306
    :cond_8
    const-string v5, "WfdPickerActivity"

    const-string v8, "disconnected..."

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v5, v6}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->handleP2pStateChanged(Z)V

    .line 315
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEndConnection:Z
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 316
    const-string v5, "WfdPickerActivity"

    const-string v6, "onReceive set mEndConnectionFlag false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v5, "WfdPickerActivity"

    const-string v6, "onReceive we need to scan device again!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEndConnection:Z
    invoke-static {v5, v7}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1002(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    .line 320
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    goto/16 :goto_1

    .line 323
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #wifip2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    :cond_9
    const-string v5, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 325
    const-string v5, "WfdPickerActivity"

    const-string v8, " onReceive << P2P_CONNECTION_ESTABLISHED"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v5

    if-ne v5, v11, :cond_d

    .line 332
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v5, v12}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$102(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)I

    .line 334
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 335
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v8

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    invoke-static {v5, v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 336
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->setLastConnctedDeviceToBroker()V

    .line 339
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v5

    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/samsung/wfd/WfdManager;->startWFDSession(Ljava/lang/Object;)V

    .line 343
    :cond_a
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v5, v7}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$302(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    .line 344
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/16 v8, 0xb

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V
    invoke-static {v5, v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 359
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    .line 361
    invoke-static {}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$200()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 362
    invoke-static {}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$200()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    iget-object v9, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v5, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 366
    :cond_b
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0903a5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v5, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 372
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 373
    const-string v5, "WfdPickerActivity"

    const-string v7, "connection established in picker dialog"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setResult(I)V

    .line 375
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 378
    :cond_c
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 379
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_1

    .line 383
    :cond_d
    const-string v5, "WfdPickerActivity"

    const-string v6, "bad state! P2P_CONNECTION_ESTABLISHED should be followed after wifi p2p connect - WIFI_P2P_CONNECTION_CHANGED_ACTION !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 386
    :cond_e
    const-string v5, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 388
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const-string v6, "cause"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v5, v6}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1702(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)I

    .line 390
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 392
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 403
    const-string v5, "WfdPickerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no problem! picker is going on!!! << "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v5, "WfdPickerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "curr state:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 409
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v5, v7}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1802(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    .line 412
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/wfd/WfdManager;->WFDGetStatus()Z

    move-result v5

    if-nez v5, :cond_10

    .line 416
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v5

    if-eq v5, v10, :cond_f

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_10

    .line 418
    :cond_f
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    .line 430
    :cond_10
    :goto_2
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v5, v7}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1802(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    goto/16 :goto_1

    .line 397
    :sswitch_0
    const-string v5, "WfdPickerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WfdService request to finish picker! << "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v7}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_1

    .line 425
    :cond_11
    const-string v5, "WfdPickerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad intent! WfdService didn\'t request to finish picker! << "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 433
    :cond_12
    const-string v5, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 434
    const-string v5, "WfdPickerActivity"

    const-string v6, "picker WIFI_P2P_THIS_DEVICE_CHANGED_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 438
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 439
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v5

    if-eq v5, v11, :cond_0

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v5

    if-eq v5, v12, :cond_0

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 444
    const-string v5, "WfdPickerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWfdManager.getWfdState: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 449
    :pswitch_0
    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v5, v7}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->handleP2pStateChanged(Z)V

    goto/16 :goto_1

    .line 392
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x1e -> :sswitch_0
        0x28 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch

    .line 445
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
