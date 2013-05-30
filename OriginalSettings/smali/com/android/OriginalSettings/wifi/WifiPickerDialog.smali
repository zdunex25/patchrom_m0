.class public Lcom/android/OriginalSettings/wifi/WifiPickerDialog;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "WifiPickerDialog.java"


# instance fields
.field mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v1, 0x7f040111

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiPickerDialog;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPickerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b0347

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/wifi/WifiSettings;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiPickerDialog;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    .line 31
    const v1, 0x7f090214

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiPickerDialog;->setTitle(I)V

    .line 32
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiPickerDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured from wifi_picker_dialog.xml, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPickerDialog;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 37
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 45
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 46
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 48
    :cond_0
    return-void
.end method
