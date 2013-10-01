.class Lcom/android/updater/OTAUpdaterActivity$4;
.super Ljava/lang/Object;
.source "OTAUpdaterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/OTAUpdaterActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/OTAUpdaterActivity;


# direct methods
.method constructor <init>(Lcom/android/updater/OTAUpdaterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/updater/OTAUpdaterActivity$4;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 223
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 224
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$4;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/updater/OTAUpdaterActivity;->startActivity(Landroid/content/Intent;)V

    .line 225
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$4;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    #getter for: Lcom/android/updater/OTAUpdaterActivity;->cfg:Lcom/android/updater/Config;
    invoke-static {v0}, Lcom/android/updater/OTAUpdaterActivity;->access$1(Lcom/android/updater/OTAUpdaterActivity;)Lcom/android/updater/Config;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/updater/Config;->setIgnoredDataWarn(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$4;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/updater/OTAUpdaterActivity;->checkOnResume:Z
    invoke-static {v0, v1}, Lcom/android/updater/OTAUpdaterActivity;->access$2(Lcom/android/updater/OTAUpdaterActivity;Z)V

    .line 227
    return-void
.end method
