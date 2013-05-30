.class public Lcom/android/OriginalSettings/AppEncryption;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "AppEncryption.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mDecryptReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/android/OriginalSettings/AppEncryption$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/AppEncryption$1;-><init>(Lcom/android/OriginalSettings/AppEncryption;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AppEncryption;->mDecryptReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 72
    return-void
.end method
