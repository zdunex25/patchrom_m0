.class Lcom/vipercn/viper4android_v2/activity/ViPER4Android$4;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$4;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$4;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #calls: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->CheckSoftwareActive()Z
    invoke-static {v0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$4;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #calls: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->SubmitInformation()Z
    invoke-static {v0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$1(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$4;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #calls: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->SetSoftwareActive()V
    invoke-static {v0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$2(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    .line 542
    :cond_0
    return-void
.end method
