.class Lcom/android/OriginalSettings/AccessibilitySettings$6;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/AccessibilitySettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$6;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    .line 547
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$6;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 550
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$6;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "proximity_sensor"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 551
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$6;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #setter for: Lcom/android/OriginalSettings/AccessibilitySettings;->endPowerKeyEndChecked:Z
    invoke-static {v0, v3}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$502(Lcom/android/OriginalSettings/AccessibilitySettings;Z)Z

    .line 552
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$6;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #getter for: Lcom/android/OriginalSettings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$600(Lcom/android/OriginalSettings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$6;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #getter for: Lcom/android/OriginalSettings/AccessibilitySettings;->endPowerKeyEndChecked:Z
    invoke-static {v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$500(Lcom/android/OriginalSettings/AccessibilitySettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 553
    return-void
.end method
