.class Lcom/vipercn/viper4android/activity/ViPER4Android$7;
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
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$7;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 576
    const-string v1, "ViPER4Android"

    const-string v2, "Begin driver check ..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :goto_0
    iget-object v1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$7;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mKillAllThread:Z
    invoke-static {v1}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$5(Lcom/vipercn/viper4android/activity/ViPER4Android;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 592
    :cond_0
    const-string v1, "ViPER4Android"

    const-string v2, "Driver check finished"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-void

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$7;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #calls: Lcom/vipercn/viper4android/activity/ViPER4Android;->ProcessDriverCheck()Z
    invoke-static {v1}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$6(Lcom/vipercn/viper4android/activity/ViPER4Android;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 586
    :catch_0
    move-exception v0

    .line 588
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "ViPER4Android"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Driver check error = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
