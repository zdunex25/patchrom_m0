.class Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DateTimeSettings;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/DateTimeSettings;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "handler"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    .line 104
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 105
    invoke-virtual {p1}, Lcom/android/OriginalSettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 106
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "auto_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 112
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 115
    .local v1, isSettingWizard:Z
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    .line 116
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    const-string v5, "auto_time"

    #calls: Lcom/android/OriginalSettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/OriginalSettings/DateTimeSettings;->access$000(Lcom/android/OriginalSettings/DateTimeSettings;Ljava/lang/String;)Z

    move-result v0

    .line 117
    .local v0, autoEnabled:Z
    const-string v4, "DateTimeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SettingsObserver onChange getAutoState() return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    #getter for: Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/OriginalSettings/DateTimeSettings;->access$100(Lcom/android/OriginalSettings/DateTimeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 119
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    #getter for: Lcom/android/OriginalSettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/OriginalSettings/DateTimeSettings;->access$200(Lcom/android/OriginalSettings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v5

    if-nez v0, :cond_2

    move v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 120
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    #getter for: Lcom/android/OriginalSettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/OriginalSettings/DateTimeSettings;->access$300(Lcom/android/OriginalSettings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v4

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 122
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    #calls: Lcom/android/OriginalSettings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V
    invoke-static {v2}, Lcom/android/OriginalSettings/DateTimeSettings;->access$400(Lcom/android/OriginalSettings/DateTimeSettings;)V

    .line 124
    .end local v0           #autoEnabled:Z
    :cond_0
    return-void

    .end local v1           #isSettingWizard:Z
    :cond_1
    move v1, v3

    .line 112
    goto :goto_0

    .restart local v0       #autoEnabled:Z
    .restart local v1       #isSettingWizard:Z
    :cond_2
    move v4, v3

    .line 119
    goto :goto_1

    :cond_3
    move v2, v3

    .line 120
    goto :goto_2
.end method
