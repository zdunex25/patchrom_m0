.class Lcom/android/OriginalSettings/wifi/WifiSettings$10;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WifiSettings;->showDurationDialog(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$10;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1293
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$10;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$10;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$800(Lcom/android/OriginalSettings/wifi/WifiSettings;)Ljava/lang/Runnable;

    move-result-object v2

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->removeDialogTimer(Ljava/lang/Runnable;)V
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$900(Lcom/android/OriginalSettings/wifi/WifiSettings;Ljava/lang/Runnable;)V

    .line 1295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1296
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "info_type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1297
    const-string v1, "visible"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1298
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$10;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1299
    return-void
.end method
