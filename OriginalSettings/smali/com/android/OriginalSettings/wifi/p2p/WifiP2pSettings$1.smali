.class Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x0

    const/16 v8, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 204
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 205
    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 207
    const-string v6, "WifiP2pSettings"

    const-string v7, "WIFI_P2P_STATE_ENABLED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 209
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 210
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 211
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->addThisDevicePreference()V
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    .line 213
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 216
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    new-instance v8, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1$1;

    invoke-direct {v8, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1$1;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 221
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 229
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 344
    :cond_1
    :goto_1
    return-void

    .line 223
    :cond_2
    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$600()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 224
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v6, v10, v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 226
    :cond_3
    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$600()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 230
    :cond_4
    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_1

    .line 232
    const-string v6, "WifiP2pSettings"

    const-string v7, "WIFI_P2P_STATE_DISABLED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$602(Z)Z

    .line 235
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z
    invoke-static {v6, v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$902(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 236
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v6, v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1002(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 237
    invoke-static {v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1102(Z)Z

    .line 238
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z
    invoke-static {v6, v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1202(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 239
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v6, v9, v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 240
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z
    invoke-static {v6, v10}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1302(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 241
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->changeActionBar()V
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    .line 242
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v6, v12}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1500(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;I)V

    .line 243
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v6, v10}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1500(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;I)V

    .line 244
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Lcom/android/OriginalSettings/ProgressCategory;->setProgressText(ZI)V

    .line 245
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 246
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/OriginalSettings/ProgressCategory;->removeAll()V

    .line 247
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1600(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 248
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1700(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 249
    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1800()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 250
    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1800()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 251
    :cond_5
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    const v7, 0x7f09036c

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->addMessagePreference(I)V
    invoke-static {v6, v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1900(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;I)V

    .line 252
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mNoDeviceText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mNoDeviceImage:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2100(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2200(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 256
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 257
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v11}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2302(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 259
    :cond_6
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 262
    :cond_7
    const-string v6, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 263
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 264
    const-string v6, "wifiP2pGroupInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$502(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 265
    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$500()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$500()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 266
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 267
    invoke-static {v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$602(Z)Z

    .line 268
    invoke-static {v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1102(Z)Z

    .line 269
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->finish()V

    .line 272
    :cond_8
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_1

    .line 274
    :cond_9
    const-string v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 275
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 276
    const-string v6, "wifiP2pInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 279
    .local v4, p2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 281
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_10

    .line 282
    const-string v6, "WifiP2pSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connected!!!! multi-connect? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v8}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 285
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 286
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v11}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2302(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 289
    :cond_a
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 292
    iget-boolean v6, v4, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 293
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->finish()V

    .line 295
    :cond_b
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-ne v6, v10, :cond_c

    .line 296
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v6, v9, v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 298
    :cond_c
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-ne v6, v10, :cond_f

    .line 299
    const-string v6, "WifiP2pSettings"

    const-string v7, "AUTO GO is created for multiple connect"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    .line 302
    .local v2, mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2500()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 303
    .local v5, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6, v5}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/wifi/p2p/WifiP2pConfigList;->update(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto :goto_2

    .line 305
    .end local v5           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_d
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 306
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    new-instance v8, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1$2;

    invoke-direct {v8, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1$2;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {v6, v7, v2, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfigList;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 316
    :cond_e
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v6, v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1002(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 317
    invoke-static {v10}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1102(Z)Z

    .line 318
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z
    invoke-static {v6, v10}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1302(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 319
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->changeActionBar()V
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    .line 336
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;
    :cond_f
    :goto_3
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 322
    :cond_10
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2700(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 323
    const-string v6, "WifiP2pSettings"

    const-string v7, "disconnected"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {v11}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$502(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 326
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 327
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v6, v12}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1500(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;I)V

    .line 329
    :cond_11
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v6

    if-nez v6, :cond_f

    .line 330
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 331
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v6, v10, v9}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;ZZ)V

    goto :goto_3

    .line 337
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #p2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    :cond_12
    const-string v6, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 338
    const-string v6, "wifiP2pDevice"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2802(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 340
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v6

    if-nez v6, :cond_1

    .line 341
    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->addThisDevicePreference()V
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    goto/16 :goto_1
.end method
