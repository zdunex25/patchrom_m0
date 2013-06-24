.class Lcom/vipercn/viper4android/activity/ViPER4Android$6;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android/activity/ViPER4Android;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #calls: Lcom/vipercn/viper4android/activity/ViPER4Android;->CheckSoftwareActive()Z
    invoke-static {v0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$2(Lcom/vipercn/viper4android/activity/ViPER4Android;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #calls: Lcom/vipercn/viper4android/activity/ViPER4Android;->SubmitInformation()Z
    invoke-static {v0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$3(Lcom/vipercn/viper4android/activity/ViPER4Android;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #calls: Lcom/vipercn/viper4android/activity/ViPER4Android;->SetSoftwareActive()V
    invoke-static {v0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$4(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    .line 564
    const-string v0, "ViPER4Android"

    const-string v1, "Software actived"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    return-void
.end method
