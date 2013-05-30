.class public Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "CustomizableKeySettings.java"


# instance fields
.field private mLongPress:Landroid/preference/Preference;

.field private mResetSettings:Landroid/preference/Preference;

.field private mShortPress:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->updateUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->resetCustomizableKey()V

    return-void
.end method

.method private resetCustomizableKey()V
    .locals 3

    .prologue
    .line 147
    const-string v0, "CustomizableKeySettings"

    const-string v1, "resetCustomizableKey() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "short_press_app"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    invoke-virtual {p0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "short_press_app_title"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    invoke-virtual {p0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_app"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    invoke-virtual {p0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_app_title"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    return-void
.end method

.method private updateUI()V
    .locals 5

    .prologue
    const v4, 0x7f090177

    .line 83
    invoke-virtual {p0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "short_press_app_title"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, short_app:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "long_press_app_title"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, long_app:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->mShortPress:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 90
    :goto_0
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->mLongPress:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 95
    :goto_1
    return-void

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->mShortPress:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 93
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->mLongPress:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->addPreferencesFromResource(I)V

    .line 59
    const-string v0, "short_press_key"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->mShortPress:Landroid/preference/Preference;

    .line 60
    const-string v0, "long_press_key"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->mLongPress:Landroid/preference/Preference;

    .line 61
    const-string v0, "reset_key"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->mResetSettings:Landroid/preference/Preference;

    .line 62
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 121
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400a3

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 123
    .local v1, layout:Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 142
    :goto_0
    return-object v2

    .line 125
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090cca

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings$2;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings$2;-><init>(Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings$1;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings$1;-><init>(Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 73
    const-string v0, "CustomizableKeySettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 98
    iget-object v2, p0, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->mShortPress:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.customizablekey.AppList"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v2, "pressed_type"

    const-string v3, "short"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->startActivity(Landroid/content/Intent;)V

    .line 114
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->mLongPress:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.customizablekey.AppList"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v2, "pressed_type"

    const-string v3, "long"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->mResetSettings:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->showDialog(I)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 66
    invoke-direct {p0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->updateUI()V

    .line 67
    const-string v0, "CustomizableKeySettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 79
    const-string v0, "CustomizableKeySettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method
