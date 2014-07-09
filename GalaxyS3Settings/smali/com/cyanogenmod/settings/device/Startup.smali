.class public Lcom/cyanogenmod/settings/device/Startup;
.super Landroid/content/BroadcastReceiver;
.source "Startup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "bootintent"

    .prologue
    .line 27
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/DockFragmentActivity;->restore(Landroid/content/Context;)V

    .line 28
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/HapticFragmentActivity;->restore(Landroid/content/Context;)V

    .line 29
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/Hspa;->restore(Landroid/content/Context;)V

    .line 30
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/RadioFragmentActivity;->restore(Landroid/content/Context;)V

    .line 31
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->restore(Landroid/content/Context;)V

    .line 32
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/mDNIeScenario;->restore(Landroid/content/Context;)V

    .line 33
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/mDNIeMode;->restore(Landroid/content/Context;)V

    .line 34
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/mDNIeNegative;->restore(Landroid/content/Context;)V

    .line 35
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/LedFade;->restore(Landroid/content/Context;)V

    .line 36
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/VibratorIntensity;->restore(Landroid/content/Context;)V

    .line 37
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/TouchkeyTimeout;->restore(Landroid/content/Context;)V

    .line 38
    return-void
.end method
