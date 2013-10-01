.class Lcom/vipercn/viper4android/service/HeadsetService$1;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Lcom/vipercn/viper4android/service/HeadsetService$1;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    .line 367
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService$1;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    #getter for: Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    invoke-static {v1}, Lcom/vipercn/viper4android/service/HeadsetService;->access$0(Lcom/vipercn/viper4android/service/HeadsetService;)Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService$1;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    #getter for: Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z
    invoke-static {v1}, Lcom/vipercn/viper4android/service/HeadsetService;->access$1(Lcom/vipercn/viper4android/service/HeadsetService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService$1;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    #getter for: Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    invoke-static {v1}, Lcom/vipercn/viper4android/service/HeadsetService;->access$0(Lcom/vipercn/viper4android/service/HeadsetService;)Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    move-result-object v1

    iget-object v1, v1, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService$1;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    #getter for: Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    invoke-static {v1}, Lcom/vipercn/viper4android/service/HeadsetService;->access$0(Lcom/vipercn/viper4android/service/HeadsetService;)Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    move-result-object v1

    const v2, 0x9001

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 379
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/Exception;
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
