.class Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DnsCheckingState"
.end annotation


# instance fields
.field dnsCheckLogStr:Ljava/lang/String;

.field dnsCheckSuccesses:[I

.field dnsResponseStrs:[Ljava/lang/String;

.field idDnsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 1
    .parameter

    .prologue
    .line 795
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 801
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    return-void
.end method

.method private makeLogString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 886
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckLogStr:Ljava/lang/String;

    .line 887
    .local v3, logStr:Ljava/lang/String;
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 888
    .local v4, respStr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 887
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 889
    .end local v4           #respStr:Ljava/lang/String;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 805
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Ljava/lang/String;)V

    .line 806
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->setPoorConnectNotificationVisible(Z)V
    invoke-static {v3, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3400(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    .line 808
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/DnsPinger;->getDnsList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    .line 809
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 810
    .local v2, numDnses:I
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckSuccesses:[I

    .line 811
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    .line 812
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 813
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v0

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_1
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 816
    const-string v3, "Pinging %s on ssid [%s]: "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckLogStr:Ljava/lang/String;

    .line 818
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckLogStr:Ljava/lang/String;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Ljava/lang/String;)V

    .line 821
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 822
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNumDnsPings:I
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 823
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 824
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v5

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPingTimeoutMs:I
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3700(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v6

    mul-int/lit16 v7, v0, 0xc8

    add-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v5, v3, v6, v7}, Landroid/net/DnsPinger;->pingDnsAsync(Ljava/net/InetAddress;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 822
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 828
    .end local v1           #j:I
    :cond_4
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/DnsPinger;->cancelPings()V

    .line 895
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 832
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "processMessage\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Ljava/lang/String;)V

    .line 833
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    const/high16 v5, 0x5

    if-eq v4, v5, :cond_1

    .line 834
    const/4 v3, 0x0

    .line 882
    :goto_0
    return v3

    .line 837
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 838
    .local v1, pingID:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 840
    .local v2, pingResponseTime:I
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 841
    .local v0, dnsServerId:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 842
    const-string v4, "Received a Dns response with unknown ID!"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3800(Ljava/lang/String;)V

    goto :goto_0

    .line 846
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    if-ltz v2, :cond_3

    .line 848
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 850
    :cond_3
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 851
    if-ltz v2, :cond_6

    .line 852
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v7, v5, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "|"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    .line 866
    :cond_4
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v4, v4, v5

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    if-lt v4, v5, :cond_8

    .line 867
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->makeLogString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Ljava/lang/String;)V

    .line 869
    :cond_5
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->shouldCheckWalledGarden()Z
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 870
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenCheckState:Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 854
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v7, v5, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "|x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    goto :goto_1

    .line 872
    :cond_7
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 874
    :cond_8
    const-string v4, "DNS Checking FAILURE"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3800(Ljava/lang/String;)V

    .line 875
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->makeLogString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  FAILURE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Ljava/lang/String;)V

    .line 877
    :cond_9
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->setPoorConnectNotificationVisible(Z)V
    invoke-static {v4, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3400(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    .line 879
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0
.end method
