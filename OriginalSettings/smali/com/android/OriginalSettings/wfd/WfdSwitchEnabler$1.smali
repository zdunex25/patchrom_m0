.class Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, action:Ljava/lang/String;
    const-string v3, "WfdSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    const-string v4, "wifi_p2p_state"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #calls: Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->handleP2pStateChanged(I)V
    invoke-static {v3, v4}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->access$000(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;I)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v3, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    const-string v3, "WfdSwitchEnabler"

    const-string v4, "WfdSwitchEnabler received on WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    const-string v4, "cause"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mControlByWfdService:I
    invoke-static {v3, v4}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->access$102(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;I)I

    .line 76
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mControlByWfdService:I
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->access$100(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 89
    const-string v3, "WfdSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no problem! enabler is going on!!! << "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mControlByWfdService:I
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->access$100(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->access$200(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z
    invoke-static {v3, v7}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->access$202(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;Z)Z

    .line 94
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    #calls: Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->handleP2pStateChanged(I)V
    invoke-static {v3, v8}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->access$000(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;I)V

    goto :goto_0

    .line 80
    :sswitch_0
    const-string v3, "WfdSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WfdService request to finish enabler! << "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mControlByWfdService:I
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->access$100(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_2
    const-string v3, "com.samsung.wfd.WFD_SESSION_ENABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    invoke-virtual {v3, v6}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->setP2PDisable(Z)V

    goto/16 :goto_0

    .line 102
    :cond_3
    const-string v3, "com.samsung.wfd.WFD_SESSION_ESTABLISHING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 103
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    invoke-virtual {v3, v6}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->setP2PEnable(Z)V

    goto/16 :goto_0

    .line 106
    :cond_4
    const-string v3, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 107
    const-string v3, "WfdSwitchEnabler"

    const-string v4, "switch enable WIFI_P2P_THIS_DEVICE_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->access$300(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;)Lcom/samsung/wfd/WfdManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 111
    const-string v3, "WfdSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mWfdManager.getWfdState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->access$300(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;)Lcom/samsung/wfd/WfdManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->access$300(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;)Lcom/samsung/wfd/WfdManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 115
    :pswitch_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    #calls: Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->handleP2pStateChanged(I)V
    invoke-static {v3, v6}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->access$000(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;I)V

    goto/16 :goto_0

    .line 120
    :pswitch_1
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    #calls: Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->handleP2pStateChanged(I)V
    invoke-static {v3, v8}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->access$000(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;I)V

    goto/16 :goto_0

    .line 131
    :cond_5
    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 134
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    const-string v3, "wifiP2pInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 137
    .local v2, wifip2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_6

    .line 139
    const-string v3, "WfdSwitchEnabler"

    const-string v4, "wfdstate change to DISABLE since wifi is not connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    #calls: Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->handleP2pStateChanged(I)V
    invoke-static {v3, v6}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->access$000(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;I)V

    goto/16 :goto_0

    .line 144
    :cond_6
    const-string v3, "WfdSwitchEnabler"

    const-string v4, "wifi is connected, so do nothing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x1e -> :sswitch_0
        0x28 -> :sswitch_0
    .end sparse-switch

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
