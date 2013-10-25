.class Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$3;
.super Ljava/util/TimerTask;
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
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$3;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    .line 815
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 823
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$3;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    #setter for: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->bMediaMounted:Z
    invoke-static {v0, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$2(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;Z)V

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$3;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    #getter for: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->bMediaMounted:Z
    invoke-static {v0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$3(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    const-string v0, "ViPER4Android"

    const-string v1, "Media mounted, now updating parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$3;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    const/4 v1, 0x1

    #setter for: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->bMediaMounted:Z
    invoke-static {v0, v1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$2(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;Z)V

    .line 831
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$3;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v0, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->updateSystem(Z)V

    goto :goto_0
.end method
