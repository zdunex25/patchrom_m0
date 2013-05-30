.class public final Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;
.super Lmiui/preference/BasePreferenceActivity;
.source "DormantModeEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCheck:I

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 36
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 23
    new-instance v0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler$1;-><init>(Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    iput-object p1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->state:I

    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 42
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 151
    iget-object v5, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_incoming_calls"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 152
    .local v1, incoming:I
    iget-object v5, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_notifications"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 153
    .local v3, notification:I
    iget-object v5, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_alarm_and_timer"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, alarm:I
    iget-object v5, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_led_indicator"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 156
    .local v2, indicator:I
    const-string v5, "DormantModeEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllOptionDisabled()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 158
    const/4 v4, 0x1

    .line 160
    :cond_0
    return v4
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 133
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, state:I
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    .line 136
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 137
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    const-string v2, "DormantModeEnabler"

    const-string v3, "switch is on"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    return-void

    .line 139
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    if-nez p2, :cond_0

    if-ne v1, v5, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 141
    const/4 v1, 0x0

    .line 142
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    const-string v2, "DormantModeEnabler"

    const-string v3, "switch is off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DormantModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v1, "DormantModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DORMANTMODE_ONOFF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_switch_onoff"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mCheck:I

    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 94
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    return-void

    .line 96
    :cond_0
    const-string v1, "changed"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 65
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 67
    .local v0, state:I
    const-string v1, "DormantModeEnabler"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mCheck:I

    .line 70
    if-ne v0, v3, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 72
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 108
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    iput-object p1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 113
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, state:I
    if-ne v0, v3, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 119
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 129
    :goto_1
    const-string v1, "DormantModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitch DORMANTMODE_ONOFF ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1
.end method

.method public updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 47
    .local v1, state:I
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 49
    .local v0, isChecked:Z
    const-string v2, "DormantModeEnabler"

    const-string v3, "updateSwitch"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    if-ne v1, v5, :cond_1

    .line 53
    if-nez v0, :cond_0

    .line 54
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    if-eqz v0, :cond_0

    .line 58
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
