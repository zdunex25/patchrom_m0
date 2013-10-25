.class Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$4;
.super Landroid/content/BroadcastReceiver;
.source "ViPER4AndroidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$4;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    .line 838
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 843
    const-string v1, "ViPER4Android"

    const-string v2, "m3rdAPI_QUERY_DRIVERSTATUS_Receiver::onReceive()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vipercn.viper4android_v2.QUERY_DRIVERSTATUS_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 845
    .local v0, itResult:Landroid/content/Intent;
    const-string v2, "driver_ready"

    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$4;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    #getter for: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mServicePrepared:Z
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$4(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$4;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    #getter for: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$5(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 846
    const-string v1, "enabled"

    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$4;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 847
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$4;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v1, v0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->sendBroadcast(Landroid/content/Intent;)V

    .line 848
    return-void

    .line 845
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
