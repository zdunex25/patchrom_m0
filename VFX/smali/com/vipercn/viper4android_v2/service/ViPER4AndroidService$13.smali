.class Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$13;
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
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$13;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    .line 1091
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1096
    const-string v0, "ViPER4Android"

    const-string v1, "mCancelNotifyReceiver::onReceive()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$13;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    #calls: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->CancelNotification()V
    invoke-static {v0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$17(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    .line 1098
    return-void
.end method
