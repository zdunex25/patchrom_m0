.class Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings$3;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->access$000(Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connection_monitor_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 666
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 667
    return-void
.end method
