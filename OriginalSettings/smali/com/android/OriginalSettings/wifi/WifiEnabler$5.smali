.class Lcom/android/OriginalSettings/wifi/WifiEnabler$5;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 522
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$5;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 525
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$5;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$900(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 526
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$5;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$900(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$5;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$1000(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09021a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 532
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$5;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 533
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$5;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$1000(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090337

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 534
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$5;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    #calls: Lcom/android/OriginalSettings/wifi/WifiEnabler;->setSwitchChecked(Z)V
    invoke-static {v0, v3}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$1200(Lcom/android/OriginalSettings/wifi/WifiEnabler;Z)V

    .line 530
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$5;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$1100(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
