.class Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$2;
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
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$2;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    .line 801
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 806
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 807
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 808
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$2;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    #getter for: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$0(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 809
    invoke-static {}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$1()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 810
    return-void
.end method
