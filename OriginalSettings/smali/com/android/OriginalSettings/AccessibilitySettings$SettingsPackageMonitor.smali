.class Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/AccessibilitySettings;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1478
    iput-object p1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/AccessibilitySettings;Lcom/android/OriginalSettings/AccessibilitySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1478
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 1482
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #getter for: Lcom/android/OriginalSettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$700(Lcom/android/OriginalSettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1483
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #getter for: Lcom/android/OriginalSettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$700(Lcom/android/OriginalSettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1484
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 1488
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #getter for: Lcom/android/OriginalSettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$700(Lcom/android/OriginalSettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1489
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #getter for: Lcom/android/OriginalSettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$700(Lcom/android/OriginalSettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1490
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 1494
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #getter for: Lcom/android/OriginalSettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$700(Lcom/android/OriginalSettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1495
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #getter for: Lcom/android/OriginalSettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$700(Lcom/android/OriginalSettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1496
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 1500
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #getter for: Lcom/android/OriginalSettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$700(Lcom/android/OriginalSettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1501
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #getter for: Lcom/android/OriginalSettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$700(Lcom/android/OriginalSettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1502
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 1507
    const-string v0, "SettingsPackageMonitor"

    const-string v1, "unregister"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #getter for: Lcom/android/OriginalSettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$700(Lcom/android/OriginalSettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #getter for: Lcom/android/OriginalSettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$700(Lcom/android/OriginalSettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1511
    :cond_0
    invoke-super {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1512
    return-void
.end method
