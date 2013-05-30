.class Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, action:Ljava/lang/String;
    const-string v12, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 64
    const-string v12, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    .line 66
    .local v7, info:Landroid/net/NetworkInfo;
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 67
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->startMonitor()V

    .line 142
    .end local v7           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v7       #info:Landroid/net/NetworkInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->stopMonitor()V

    goto :goto_0

    .line 71
    .end local v7           #info:Landroid/net/NetworkInfo;
    :cond_2
    const-string v12, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 73
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v13, v12, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    monitor-enter v13

    .line 74
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v12, v12, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 75
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$000(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 77
    .local v3, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v3, :cond_5

    .line 78
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v12, v12, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 108
    :cond_3
    :goto_1
    const-string v12, "WifiConnectionMonitorService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceive, blacklist: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_4
    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 80
    .restart local v3       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_5
    const/4 v4, 0x0

    .line 81
    .local v4, found:Z
    const/4 v8, 0x0

    .line 83
    .local v8, removeSsid:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v12, v12, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 84
    .local v11, string:Ljava/lang/String;
    const/4 v4, 0x0

    .line 86
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 87
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_7

    iget-object v12, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v12, :cond_7

    if-eqz v11, :cond_7

    iget-object v12, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 89
    const/4 v4, 0x1

    .line 94
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_8
    const-string v12, "WifiConnectionMonitorService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceive, find "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-nez v4, :cond_6

    .line 97
    const-string v12, "WifiConnectionMonitorService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceive, remove "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from blacklist"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    move-object v8, v11

    .line 103
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v11           #string:Ljava/lang/String;
    :cond_9
    if-nez v4, :cond_3

    .line 104
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v12, v12, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 111
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4           #found:Z
    .end local v8           #removeSsid:Ljava/lang/String;
    :cond_a
    const-string v12, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v13, v12, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    monitor-enter v13

    .line 114
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v12, v12, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_d

    .line 115
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$000(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v10

    .line 117
    .local v10, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v10, :cond_d

    .line 118
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    .line 119
    .local v9, result:Landroid/net/wifi/ScanResult;
    iget-object v12, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v12, v12, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v14, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    iget v12, v9, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mThreshold:I
    invoke-static {v14}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)I

    move-result v14

    add-int/lit8 v14, v14, 0x5

    if-lt v12, v14, :cond_b

    .line 120
    const-string v12, "WifiConnectionMonitorService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceive, SSID:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", RSSI:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", threashold:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mThreshold:I
    invoke-static {v15}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v12, "WifiConnectionMonitorService"

    const-string v14, "onReceive, remove from the blacklist"

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v12, v12, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v14, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    const-string v12, "WifiConnectionMonitorService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceive, blacklist:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$000(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 127
    .restart local v3       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_b

    .line 128
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 129
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v12, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v12, :cond_c

    iget-object v12, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v14, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 130
    const-string v12, "WifiConnectionMonitorService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceive, EnableNetwork : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$000(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    iget v14, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 132
    monitor-exit v13

    goto/16 :goto_0

    .line 140
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #result:Landroid/net/wifi/ScanResult;
    .end local v10           #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v12

    :cond_d
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0
.end method
