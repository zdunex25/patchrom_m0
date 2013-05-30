.class public Lcom/android/OriginalSettings/ActivateThisDevice;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "ActivateThisDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13
    .local v0, myintent:Landroid/content/Intent;
    const-string v1, "com.sprint.dsa.DSA_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    const-string v1, "vnd.sprint.dsa/vnd.sprint.dsa.main"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const-string v1, "com.sprint.dsa.source"

    const-string v2, "menu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ActivateThisDevice;->startActivity(Landroid/content/Intent;)V

    .line 19
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 24
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ActivateThisDevice;->finish()V

    .line 25
    return-void
.end method
