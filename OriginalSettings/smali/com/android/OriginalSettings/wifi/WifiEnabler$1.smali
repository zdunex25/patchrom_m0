.class Lcom/android/OriginalSettings/wifi/WifiEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/android/OriginalSettings/wifi/WifiEnabler;->handleWifiStateChanged(I)V
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$000(Lcom/android/OriginalSettings/wifi/WifiEnabler;I)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$100(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    const-string v2, "newState"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SupplicantState;

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    #calls: Lcom/android/OriginalSettings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v3, v2}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$200(Lcom/android/OriginalSettings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 118
    :cond_2
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 121
    .local v1, info:Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$100(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 122
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    #calls: Lcom/android/OriginalSettings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$200(Lcom/android/OriginalSettings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 123
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_3
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    const-string v3, "wifi_state"

    const/16 v4, 0xe

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/android/OriginalSettings/wifi/WifiEnabler;->handleWifiApStateChanged(I)V
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$300(Lcom/android/OriginalSettings/wifi/WifiEnabler;I)V

    goto :goto_0

    .line 126
    :cond_4
    const-string v2, "com.android.settings.wifi.WIFI_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    #calls: Lcom/android/OriginalSettings/wifi/WifiEnabler;->checkWifiTetheringAndDisable()Z
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$400(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    #calls: Lcom/android/OriginalSettings/wifi/WifiEnabler;->checkWifiDirectAndDisable()Z
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$500(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 128
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiEnabler;->mHandler:Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$600(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 131
    :cond_6
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    const/4 v3, 0x1

    #calls: Lcom/android/OriginalSettings/wifi/WifiEnabler;->setWifiEnable(Z)V
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$700(Lcom/android/OriginalSettings/wifi/WifiEnabler;Z)V

    goto/16 :goto_0
.end method
