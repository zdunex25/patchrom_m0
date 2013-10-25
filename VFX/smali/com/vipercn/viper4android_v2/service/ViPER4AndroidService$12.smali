.class Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;
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
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    .line 1075
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1080
    const-string v1, "ViPER4Android"

    const-string v2, "mShowNotifyReceiver::onReceive()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getAudioOutputRouting()Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, mode:Ljava/lang/String;
    const-string v1, "headset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1084
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "text_headset"

    const-string v5, "string"

    iget-object v6, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->ShowNotification(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$16(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;Ljava/lang/String;)V

    .line 1088
    :goto_0
    return-void

    .line 1085
    :cond_0
    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1086
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "text_bluetooth"

    const-string v5, "string"

    iget-object v6, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->ShowNotification(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$16(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    :cond_1
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "text_speaker"

    const-string v5, "string"

    iget-object v6, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->ShowNotification(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$16(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;Ljava/lang/String;)V

    goto :goto_0
.end method
