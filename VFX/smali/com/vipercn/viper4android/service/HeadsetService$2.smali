.class Lcom/vipercn/viper4android/service/HeadsetService$2;
.super Ljava/util/TimerTask;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android/service/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android/service/HeadsetService;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android/service/HeadsetService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android/service/HeadsetService$2;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    .line 387
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 392
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 393
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 394
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService$2;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    #getter for: Lcom/vipercn/viper4android/service/HeadsetService;->hDrvStatusCommTimer:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vipercn/viper4android/service/HeadsetService;->access$2(Lcom/vipercn/viper4android/service/HeadsetService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    return-void
.end method
