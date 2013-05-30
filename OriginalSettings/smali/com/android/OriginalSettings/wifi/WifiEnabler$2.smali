.class Lcom/android/OriginalSettings/wifi/WifiEnabler$2;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WifiEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    const/4 v1, 0x2

    #calls: Lcom/android/OriginalSettings/wifi/WifiEnabler;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$800(Lcom/android/OriginalSettings/wifi/WifiEnabler;I)V

    .line 468
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$900(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 469
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    const/4 v1, 0x1

    #calls: Lcom/android/OriginalSettings/wifi/WifiEnabler;->setWifiEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$700(Lcom/android/OriginalSettings/wifi/WifiEnabler;Z)V

    .line 470
    return-void
.end method
