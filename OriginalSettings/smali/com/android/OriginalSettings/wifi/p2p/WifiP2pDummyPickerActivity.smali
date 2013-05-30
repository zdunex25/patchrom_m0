.class public final Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDummyPickerActivity;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "WifiP2pDummyPickerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f04010f

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDummyPickerActivity;->setContentView(I)V

    .line 36
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 41
    return-void
.end method
