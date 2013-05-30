.class public Lcom/android/OriginalSettings/AccessibilitySettingsSetupWizard;
.super Lmiui/preference/BasePreferenceActivity;
.source "AccessibilitySettingsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Lmiui/preference/BasePreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 37
    const-class v1, Lcom/android/OriginalSettings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 38
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 27
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccessibilitySettingsSetupWizard;->setResult(I)V

    .line 28
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettingsSetupWizard;->finish()V

    .line 29
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/AccessibilitySettingsSetupWizard;->setContentView(I)V

    .line 20
    const v1, 0x7f0b0009

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/AccessibilitySettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method
