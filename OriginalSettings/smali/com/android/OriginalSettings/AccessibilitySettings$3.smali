.class Lcom/android/OriginalSettings/AccessibilitySettings$3;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$3;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 285
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$3;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #getter for: Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$400(Lcom/android/OriginalSettings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$3;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation_second"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 288
    .local v0, autoRotationEnabled:Z
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$3;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #getter for: Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$400(Lcom/android/OriginalSettings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 290
    .end local v0           #autoRotationEnabled:Z
    :cond_1
    return-void
.end method
