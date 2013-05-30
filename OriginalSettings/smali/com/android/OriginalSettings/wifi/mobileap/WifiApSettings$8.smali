.class Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v3, 0x0

    .line 642
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 643
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1300(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Lcom/android/OriginalSettings/wifi/WifiApDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    #setter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1202(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 644
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 646
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->saveIsShowPassword()V

    .line 648
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateStatus()V
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1500(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    .line 649
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 650
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 652
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 663
    :cond_0
    :goto_1
    return-void

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 658
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->access$1600(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 660
    :cond_2
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    goto :goto_1
.end method
