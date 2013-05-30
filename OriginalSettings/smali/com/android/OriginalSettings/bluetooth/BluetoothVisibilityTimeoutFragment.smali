.class public final Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;
.super Landroid/app/DialogFragment;
.source "BluetoothVisibilityTimeoutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

.field private mLastIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0, p2}, Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;->setDiscoverableTimeout(I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;->dismiss()V

    .line 90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getDiscoverableEnabler()Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    .line 107
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v0, :cond_1

    .line 110
    if-eqz p1, :cond_0

    .line 114
    const-string v0, "last_visible_timeout_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;->mLastIndex:I

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;->dismiss()V

    .line 118
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0a0023

    const v3, 0x7f09008d

    const/high16 v2, 0x104

    .line 68
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;->mLastIndex:I

    invoke-virtual {v0, v4, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeoutIndex()I

    move-result v1

    invoke-virtual {v0, v4, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "last_visible_timeout_index"

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeoutIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    :cond_0
    return-void
.end method
