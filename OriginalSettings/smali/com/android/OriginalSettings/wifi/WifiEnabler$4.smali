.class Lcom/android/OriginalSettings/wifi/WifiEnabler$4;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 503
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$4;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$4;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$1100(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 506
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$4;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    const/4 v1, 0x0

    #calls: Lcom/android/OriginalSettings/wifi/WifiEnabler;->setSwitchChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$1200(Lcom/android/OriginalSettings/wifi/WifiEnabler;Z)V

    .line 507
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$4;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 510
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$4;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$1000(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    const/4 v1, -0x2

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$4;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$1000(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1, v1, v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V

    .line 515
    :cond_0
    return-void
.end method
