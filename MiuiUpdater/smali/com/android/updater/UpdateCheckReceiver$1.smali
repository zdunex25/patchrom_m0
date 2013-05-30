.class Lcom/android/updater/UpdateCheckReceiver$1;
.super Ljava/lang/Object;
.source "UpdateCheckReceiver.java"

# interfaces
.implements Lcom/android/updater/FetchRomInfoTask$RomInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/UpdateCheckReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/UpdateCheckReceiver;

.field private final synthetic val$cfg:Lcom/android/updater/Config;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/android/updater/UpdateCheckReceiver;Lcom/android/updater/Config;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/updater/UpdateCheckReceiver$1;->this$0:Lcom/android/updater/UpdateCheckReceiver;

    iput-object p2, p0, Lcom/android/updater/UpdateCheckReceiver$1;->val$cfg:Lcom/android/updater/Config;

    iput-object p3, p0, Lcom/android/updater/UpdateCheckReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/updater/UpdateCheckReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/updater/UpdateCheckReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 104
    return-void
.end method

.method public onLoaded(Lcom/android/updater/RomInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 88
    invoke-static {p1}, Lcom/android/updater/Utils;->isUpdate(Lcom/android/updater/RomInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/updater/UpdateCheckReceiver$1;->val$cfg:Lcom/android/updater/Config;

    invoke-virtual {v0, p1}, Lcom/android/updater/Config;->storeUpdate(Lcom/android/updater/RomInfo;)V

    .line 90
    iget-object v0, p0, Lcom/android/updater/UpdateCheckReceiver$1;->val$cfg:Lcom/android/updater/Config;

    invoke-virtual {v0}, Lcom/android/updater/Config;->getShowNotif()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/updater/UpdateCheckReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/updater/Utils;->showUpdateNotif(Landroid/content/Context;Lcom/android/updater/RomInfo;)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/android/updater/UpdateCheckReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 100
    return-void

    .line 93
    :cond_0
    const-string v0, "OTA::Receiver"

    const-string v1, "found update, notif not shown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/updater/UpdateCheckReceiver$1;->val$cfg:Lcom/android/updater/Config;

    invoke-virtual {v0}, Lcom/android/updater/Config;->clearStoredUpdate()V

    goto :goto_0
.end method

.method public onStartLoading()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
