.class public Lcom/android/OriginalSettings/PenHelpMenu;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "PenHelpMenu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenHelpMenu;->addPreferencesFromResource(I)V

    .line 33
    return-void
.end method
