.class Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CloudSettingsMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->registerCloudReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 436
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 438
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_CLOUD_STATUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 441
    const-string v2, "CloudSettings"

    const-string v3, "Received current cloud settings - CloudSettingsMainFragment"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;
    invoke-static {v2}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$000(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;
    invoke-static {v2}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$000(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismiss()V

    .line 445
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    const-string v3, "cloudSettings"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/cloud/CloudSettings;->getInstance(Landroid/os/Bundle;)Lcom/android/OriginalSettings/cloud/CloudSettings;

    move-result-object v3

    #setter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/OriginalSettings/cloud/CloudSettings;
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$102(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;Lcom/android/OriginalSettings/cloud/CloudSettings;)Lcom/android/OriginalSettings/cloud/CloudSettings;

    .line 448
    const-string v2, "CloudSettings"

    iget-object v3, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/OriginalSettings/cloud/CloudSettings;
    invoke-static {v3}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Lcom/android/OriginalSettings/cloud/CloudSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/OriginalSettings/cloud/CloudSettings;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #calls: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->updatePreferences()V
    invoke-static {v2}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$200(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)V

    .line 450
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #calls: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->requestCloudStorageUsage()V
    invoke-static {v2}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$300(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)V

    .line 485
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 451
    .restart local v0       #action:Ljava/lang/String;
    :cond_2
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 452
    const-string v2, "noConnectivity"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 455
    .local v1, noConnectivity:Z
    if-eqz v1, :cond_1

    .line 456
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 457
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    const v4, 0x7f090d8b

    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 460
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 463
    .end local v1           #noConnectivity:Z
    :cond_3
    const-string v2, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_STORAGE_USAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 465
    const-string v2, "CloudSettings"

    const-string v3, "Received current cloud storage usage - CloudSettingsMainFragment"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;
    invoke-static {v2}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$000(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 468
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;
    invoke-static {v2}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$000(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismiss()V

    .line 469
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    invoke-static {}, Lcom/android/OriginalSettings/cloud/CloudSettings;->getInstance()Lcom/android/OriginalSettings/cloud/CloudSettings;

    move-result-object v3

    #setter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/OriginalSettings/cloud/CloudSettings;
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$102(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;Lcom/android/OriginalSettings/cloud/CloudSettings;)Lcom/android/OriginalSettings/cloud/CloudSettings;

    .line 470
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/OriginalSettings/cloud/CloudSettings;
    invoke-static {v2}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Lcom/android/OriginalSettings/cloud/CloudSettings;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 471
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/OriginalSettings/cloud/CloudSettings;
    invoke-static {v2}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Lcom/android/OriginalSettings/cloud/CloudSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/OriginalSettings/cloud/CloudSettings;->isAccountSet()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 472
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/OriginalSettings/cloud/CloudSettings;
    invoke-static {v2}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Lcom/android/OriginalSettings/cloud/CloudSettings;

    move-result-object v2

    const-string v3, "cloudSettings"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/cloud/CloudSettings;->setStorageUsage(Landroid/os/Bundle;)V

    .line 475
    :cond_5
    const-string v2, "CloudSettings"

    iget-object v3, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/OriginalSettings/cloud/CloudSettings;
    invoke-static {v3}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Lcom/android/OriginalSettings/cloud/CloudSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/OriginalSettings/cloud/CloudSettings;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/OriginalSettings/cloud/CloudSettings;
    invoke-static {v2}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Lcom/android/OriginalSettings/cloud/CloudSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/OriginalSettings/cloud/CloudSettings;->getStorageUsage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$400(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 478
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    iget-object v3, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/OriginalSettings/cloud/CloudSettings;
    invoke-static {v3}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Lcom/android/OriginalSettings/cloud/CloudSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/OriginalSettings/cloud/CloudSettings;->getStorageUsage()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$502(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$400(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$500(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
