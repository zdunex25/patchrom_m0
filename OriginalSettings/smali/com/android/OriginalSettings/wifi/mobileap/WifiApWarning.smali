.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->finish()V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 33
    const-string v2, "WifiApWarning"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 37
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    const-string v2, "WifiApWarning"

    const-string v3, "Error: this activity may be started only with intent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->finish()V

    .line 58
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v2, "wifiap_warning_dialog_type"

    const/16 v3, 0x1f40

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mDialogType:I

    .line 44
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 45
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    iget v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->mDialogType:I

    packed-switch v2, :pswitch_data_0

    .line 55
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 47
    :pswitch_0
    const-string v2, "WifiApWarning"

    const-string v3, "DIALOG_NAI_MISMATCH"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const v2, 0x7f0902a1

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 49
    const v2, 0x7f0902a2

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 50
    const v2, 0x7f0902c4

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 51
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWarning;->setupAlert()V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1f41
        :pswitch_0
    .end packed-switch
.end method
