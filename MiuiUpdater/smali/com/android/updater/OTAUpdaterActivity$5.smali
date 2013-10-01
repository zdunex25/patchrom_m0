.class Lcom/android/updater/OTAUpdaterActivity$5;
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
    iput-object p1, p0, Lcom/android/updater/OTAUpdaterActivity$5;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 232
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 233
    iget-object v1, p0, Lcom/android/updater/OTAUpdaterActivity$5;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    #getter for: Lcom/android/updater/OTAUpdaterActivity;->cfg:Lcom/android/updater/Config;
    invoke-static {v1}, Lcom/android/updater/OTAUpdaterActivity;->access$1(Lcom/android/updater/OTAUpdaterActivity;)Lcom/android/updater/Config;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/updater/Config;->setIgnoredDataWarn(Z)V

    .line 235
    iget-object v1, p0, Lcom/android/updater/OTAUpdaterActivity$5;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    invoke-virtual {v1}, Lcom/android/updater/OTAUpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/updater/Utils;->dataAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/updater/OTAUpdaterActivity$5;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    invoke-virtual {v1}, Lcom/android/updater/OTAUpdaterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 237
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.updater.action.NOTIF_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/android/updater/OTAUpdaterActivity$5;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    #setter for: Lcom/android/updater/OTAUpdaterActivity;->dialogFromNotif:Z
    invoke-static {v1, v3}, Lcom/android/updater/OTAUpdaterActivity;->access$3(Lcom/android/updater/OTAUpdaterActivity;Z)V

    .line 239
    iget-object v1, p0, Lcom/android/updater/OTAUpdaterActivity$5;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    invoke-static {v0}, Lcom/android/updater/RomInfo;->fromIntent(Landroid/content/Intent;)Lcom/android/updater/RomInfo;

    move-result-object v2

    #calls: Lcom/android/updater/OTAUpdaterActivity;->showUpdateDialog(Lcom/android/updater/RomInfo;)V
    invoke-static {v1, v2}, Lcom/android/updater/OTAUpdaterActivity;->access$4(Lcom/android/updater/OTAUpdaterActivity;Lcom/android/updater/RomInfo;)V

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/android/updater/OTAUpdaterActivity$5;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/updater/OTAUpdaterActivity;->checkOnResume:Z
    invoke-static {v1, v2}, Lcom/android/updater/OTAUpdaterActivity;->access$2(Lcom/android/updater/OTAUpdaterActivity;Z)V

    .line 245
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void

    .line 241
    .restart local v0       #i:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/updater/OTAUpdaterActivity$5;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    #calls: Lcom/android/updater/OTAUpdaterActivity;->checkForRomUpdates()V
    invoke-static {v1}, Lcom/android/updater/OTAUpdaterActivity;->access$5(Lcom/android/updater/OTAUpdaterActivity;)V

    goto :goto_0
.end method
