.class Lcom/vipercn/viper4android/service/HeadsetService$4;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/vipercn/viper4android/service/HeadsetService$4;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    .line 459
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 464
    const-string v0, "ViPER4Android"

    const-string v1, "mPreferenceUpdateReceiver::onReceive()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService$4;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    invoke-virtual {v0}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem()V

    .line 466
    return-void
.end method
