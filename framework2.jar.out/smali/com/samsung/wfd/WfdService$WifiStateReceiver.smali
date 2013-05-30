.class Lcom/samsung/wfd/WfdService$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WfdService;


# direct methods
.method private constructor <init>(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/wfd/WfdService;Lcom/samsung/wfd/WfdService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WifiStateReceiver;-><init>(Lcom/samsung/wfd/WfdService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 593
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, action:Ljava/lang/String;
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "intent recieved "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v10, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 598
    const-string v10, "wifi_p2p_state"

    const/4 v11, 0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 600
    .local v9, state:I
    packed-switch v9, :pswitch_data_0

    .line 952
    .end local v9           #state:I
    :cond_0
    :goto_0
    return-void

    .line 603
    .restart local v9       #state:I
    :pswitch_0
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v11, 0x1

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$102(Lcom/samsung/wfd/WfdService;Z)Z

    .line 605
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$200(Lcom/samsung/wfd/WfdService;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 606
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->startWfdRoutine()V
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)V

    goto :goto_0

    .line 608
    :cond_1
    const-string v10, "WfdService"

    const-string v11, "Wfd is not enabled from Picker"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 613
    :pswitch_1
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v11, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$102(Lcom/samsung/wfd/WfdService;Z)Z

    .line 614
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 616
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendWfdPickerStartBroadCast()V

    goto :goto_0

    .line 624
    .end local v9           #state:I
    :cond_2
    const-string v10, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 625
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    .line 633
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v11, "IP"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    #setter for: Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$702(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 635
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$700(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 636
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dongle IP:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$700(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_3
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v11, "URL"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    #setter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$802(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 641
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$800(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 642
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dongle Update URL:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$800(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_4
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v11, "count"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    #setter for: Lcom/samsung/wfd/WfdService;->mAudioCnt:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$902(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 647
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mAudioCnt:Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 648
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "audio count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mAudioCnt:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_5
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v11, "VER"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    #setter for: Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$1002(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 653
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 654
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dongle ver:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_6
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v11, 0x4

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;I)V

    .line 658
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v11, 0x1

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;I)V

    .line 659
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastDongleVerToFota()V
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$1300(Lcom/samsung/wfd/WfdService;)V

    goto/16 :goto_0

    .line 661
    :cond_7
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Recvd WFD session established intent in wrong state:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 664
    :cond_8
    const-string v10, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 665
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "receive from Engine...WFD_SESSION_TERMINATED  state:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_9

    .line 667
    const-string v10, "WfdService"

    const-string v11, "send wfd stop msg"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v11, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$1402(Lcom/samsung/wfd/WfdService;Z)Z

    .line 669
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v11, 0x0

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;I)V

    .line 670
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v11, 0x0

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;I)V

    .line 671
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v10

    const v11, 0x2206c

    invoke-virtual {v10, v11}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 672
    :cond_9
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_a

    .line 673
    const-string v10, "WfdService"

    const-string v11, "send disable wfd msg"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v10

    const v11, 0x22068

    invoke-virtual {v10, v11}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 676
    :cond_a
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Recvd WFD session terminated intent in wrong state:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 679
    :cond_b
    const-string v10, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 680
    const-string v10, "WfdService"

    const-string v11, " onReceive << WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v10, "networkInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    .line 683
    .local v7, networkInfo:Landroid/net/NetworkInfo;
    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "wifiP2pInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/p2p/WifiP2pInfo;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v11, v10}, Lcom/samsung/wfd/WfdService;->access$1502(Lcom/samsung/wfd/WfdService;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 685
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 686
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 693
    const-string v10, "WfdService"

    const-string v11, "WIFI_P2P_CONNECTION_CHANGED_ACTION >> isConnected() true"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v11, 0x1

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$1702(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_0

    .line 710
    :cond_c
    const-string v10, "WfdService"

    const-string v11, "WIFI_P2P_CONNECTION_CHANGED_ACTION >> isConnected() false"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v11, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$1702(Lcom/samsung/wfd/WfdService;Z)Z

    .line 713
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 714
    const-string v10, "WfdService"

    const-string v11, "don\'t show disconnect popup..."

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v10

    const v11, 0x22068

    invoke-virtual {v10, v11}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 719
    :cond_d
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    goto/16 :goto_0

    .line 723
    :pswitch_2
    const-string v10, "WfdService"

    const-string v11, "Wifip2p disconnect..."

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v11, 0x2207b

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$1900(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 729
    .end local v7           #networkInfo:Landroid/net/NetworkInfo;
    :cond_e
    const-string v10, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 730
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 734
    const-string v10, "wifiP2pGroupInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 736
    .local v5, mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    if-nez v5, :cond_f

    .line 737
    const-string v10, "WfdService"

    const-string v11, "EXTRA_WIFI_P2P_GROUP_INFO is null!!! check!!"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 741
    :cond_f
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result v11

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$2002(Lcom/samsung/wfd/WfdService;I)I

    .line 742
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wifi P2P_CONNECTION_ESTABLISHED >> Wfd frequency:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$2000(Lcom/samsung/wfd/WfdService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_10

    .line 745
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v11, 0x3

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;I)V

    .line 747
    const-string v10, "WfdService"

    const-string v11, "send wfd start msg"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v10

    const v11, 0x2206b

    invoke-virtual {v10, v11}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 751
    :cond_10
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Recvd Wifi P2P connected intent in wrong state:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 754
    .end local v5           #mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_11
    const-string v10, "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 755
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 757
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v11, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$2002(Lcom/samsung/wfd/WfdService;I)I

    .line 758
    const-string v10, "WfdService"

    const-string v11, "wifi P2P_CONNECTION_TERMINATED"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 760
    :cond_12
    const-string v10, "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 761
    const-string v10, "res"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 762
    .local v8, resolution:I
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mSourceReslnBitMask:I
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2200(Lcom/samsung/wfd/WfdService;)I

    move-result v11

    and-int/2addr v11, v8

    #setter for: Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$2102(Lcom/samsung/wfd/WfdService;I)I

    .line 763
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Recvd WFD sink resln bitmask:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SrcRslnBitMsk:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mSourceReslnBitMask:I
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$2200(Lcom/samsung/wfd/WfdService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " UpdatedRslnBitMsk:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$2100(Lcom/samsung/wfd/WfdService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionInfo()V
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$2300(Lcom/samsung/wfd/WfdService;)V

    goto/16 :goto_0

    .line 776
    .end local v8           #resolution:I
    :cond_13
    const-string v10, "android.intent.action.WIFI_DISPLAY_PARAM_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 777
    const-string v10, "WfdService"

    const-string v11, "WFD param changed notification"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionInfo()V
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$2300(Lcom/samsung/wfd/WfdService;)V

    goto/16 :goto_0

    .line 781
    :cond_14
    const-string v10, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 782
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v11, "res"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    #setter for: Lcom/samsung/wfd/WfdService;->mCurrentResln:I
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$2402(Lcom/samsung/wfd/WfdService;I)I

    .line 783
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v11, "3D"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    #setter for: Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$2502(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 784
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Recvd resolution from app:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mCurrentResln:I
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$2400(Lcom/samsung/wfd/WfdService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " 3D:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$2500(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v11, "Control"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    #setter for: Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$2602(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 787
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$2600(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$2600(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "terminate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 788
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Recvd SessionControl from app:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$2600(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v10

    const v11, 0x22068

    invoke-virtual {v10, v11}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 791
    :cond_15
    const-string v10, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 793
    const-string v10, "networkInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 795
    .local v4, info:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_19

    .line 796
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 798
    const-string v10, "WfdService"

    const-string v11, "AP is connected!"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const-string v10, "wifiInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiInfo;

    .line 803
    .local v6, mWifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v6, :cond_16

    .line 804
    const-string v10, "WfdService"

    const-string v11, "EXTRA_WIFI_INFO is null!!! check!!"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 808
    :cond_16
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v11

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyAp:I
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$2702(Lcom/samsung/wfd/WfdService;I)I

    .line 810
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 811
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AP is connected! FreqAp:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyAp:I
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$2700(Lcom/samsung/wfd/WfdService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ? FreqWfd:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$2000(Lcom/samsung/wfd/WfdService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyAp:I
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$2700(Lcom/samsung/wfd/WfdService;)I

    move-result v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2000(Lcom/samsung/wfd/WfdService;)I

    move-result v11

    if-eq v10, v11, :cond_0

    .line 814
    const-string v10, "WfdService"

    const-string v11, "They are different. Now WfdService will be restarted!!"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v11, 0x22073

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$1900(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 821
    :cond_17
    const-string v10, "WfdService"

    const-string v11, "WfdService is not running..."

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 825
    .end local v6           #mWifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_18
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v11, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyAp:I
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$2702(Lcom/samsung/wfd/WfdService;I)I

    .line 826
    const-string v10, "WfdService"

    const-string v11, "AP is disconnected!"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 841
    :cond_19
    const-string v10, "WfdService"

    const-string v11, "NetworkInfo is null!! check!!"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 844
    .end local v4           #info:Landroid/net/NetworkInfo;
    :cond_1a
    const-string v10, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 845
    const/16 v1, 0xe

    .line 847
    .local v1, apState:I
    const-string v10, "wifi_state"

    const/16 v11, 0xe

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 848
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "apState:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$2800(Lcom/samsung/wfd/WfdService;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0xb

    if-ne v1, v10, :cond_0

    .line 851
    const-string v10, "WfdService"

    const-string v11, "Wait done for Hotspot off!!! Now Wfd is start!"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v11, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$2802(Lcom/samsung/wfd/WfdService;Z)Z

    .line 853
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v10

    const v11, 0x2206f

    invoke-virtual {v10, v11}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 856
    .end local v1           #apState:I
    :cond_1b
    const-string v10, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 857
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v11, "state"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    #setter for: Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$2902(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_0

    .line 858
    :cond_1c
    const-string v10, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 860
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v11, "URL"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    #setter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$802(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 862
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$800(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 863
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dongle Update URL:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$800(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v11, 0x22078

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$1900(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 866
    :cond_1d
    const-string v10, "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 867
    const-string v10, "WfdService"

    const-string v11, "display toast for weak network"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v10

    const v11, 0x2207a

    invoke-virtual {v10, v11}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 869
    :cond_1e
    const-string v10, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 871
    const-string v10, "cause"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 872
    .local v3, data:I
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WFD Engine noti Error << data:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v11, 0x2207b

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$1900(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 876
    .end local v3           #data:I
    :cond_1f
    const-string v10, "com.samsung.wfd.RESULT_WFD_UPDATE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 878
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v11, "result"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    #setter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$1802(Lcom/samsung/wfd/WfdService;Z)Z

    .line 879
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_RESULT_WFD_UPDATE << result:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 882
    const-string v10, "WfdService"

    const-string v11, "dongle update is failed..."

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 887
    :cond_20
    const-string v10, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_BROKER"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 888
    const-string v10, "cause"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 889
    .local v2, cause:I
    sparse-switch v2, :sswitch_data_0

    .line 905
    const-string v10, "WfdService"

    const-string v11, "broker notify that picker is normally goning!"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :goto_1
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->sendToWfdPickerControlInfo(I)V
    invoke-static {v10, v2}, Lcom/samsung/wfd/WfdService;->access$3000(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 894
    :sswitch_0
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "broker notify that WfdService should control to finish picker! cause:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 901
    :sswitch_1
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "broker notify that WfdService proceed setWfdEnabled("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v10, v2}, Lcom/samsung/wfd/WfdService;->setWfdEnabled(I)Z

    goto :goto_1

    .line 909
    .end local v2           #cause:I
    :cond_21
    const-string v10, "android.intent.action.WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 911
    const-string v10, "cause"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 912
    .restart local v3       #data:I
    const-string v10, "WfdService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WFD Engine HDCP result >> data:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    packed-switch v3, :pswitch_data_2

    goto/16 :goto_0

    .line 916
    :pswitch_3
    const-string v10, "WfdService"

    const-string v11, "connect with non-HDCP dongle! show WFD suspend!"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->WfdStartHDCPSuspend()V
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$3100(Lcom/samsung/wfd/WfdService;)V

    goto/16 :goto_0

    .line 922
    .end local v3           #data:I
    :cond_22
    const-string v10, "android.intent.action.WFD_TEARDOWN_FOR_AUDIO_OUT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 923
    const-string v10, "WfdService"

    const-string v11, "action  << WFD_TEARDOWN_FOR_AUDIO_OUT"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v10

    const v11, 0x2207c

    invoke-virtual {v10, v11}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    .line 925
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v10}, Lcom/samsung/wfd/WfdService;->setWfdTerminate()Z

    goto/16 :goto_0

    .line 926
    :cond_23
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 927
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v11, 0x1

    #setter for: Lcom/samsung/wfd/WfdService;->mScreenStatus:Z
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$3202(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_0

    .line 935
    :cond_24
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 936
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v11, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mScreenStatus:Z
    invoke-static {v10, v11}, Lcom/samsung/wfd/WfdService;->access$3202(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_0

    .line 947
    :cond_25
    const-string v10, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 948
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 949
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v10

    const v11, 0x22080

    invoke-virtual {v10, v11}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 600
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 719
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 889
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0xa -> :sswitch_0
        0x1e -> :sswitch_0
        0x28 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch

    .line 914
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method
