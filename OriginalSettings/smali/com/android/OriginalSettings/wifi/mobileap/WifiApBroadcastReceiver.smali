.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static MAX_CLIENTS:I

.field static final WIFI_AP_ON_ICON:[I

.field private static bExpireAlarm:Z

.field private static bStartAlarm:Z

.field private static mGateTraceTag:Ljava/lang/String;

.field public static mIsForegroundWifiSettings:Z

.field private static mLastClientNum:I


# instance fields
.field mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-string v0, "GATE"

    sput-object v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    .line 42
    sput-boolean v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 56
    sput v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    .line 58
    sput-boolean v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 59
    sput-boolean v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 63
    sput v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->MAX_CLIENTS:I

    .line 68
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->WIFI_AP_ON_ICON:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x90t 0x2t 0x2t 0x7ft
        0x91t 0x2t 0x2t 0x7ft
        0x92t 0x2t 0x2t 0x7ft
        0x93t 0x2t 0x2t 0x7ft
        0x94t 0x2t 0x2t 0x7ft
        0x95t 0x2t 0x2t 0x7ft
        0x96t 0x2t 0x2t 0x7ft
        0x97t 0x2t 0x2t 0x7ft
        0x98t 0x2t 0x2t 0x7ft
        0x99t 0x2t 0x2t 0x7ft
        0x9at 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 327
    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 328
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "1200"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V
    .locals 2
    .parameter "ctxt"
    .parameter "type"

    .prologue
    .line 321
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 324
    return-void
.end method

.method private startWifiApSettings(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 333
    sget-boolean v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v1, :cond_0

    .line 334
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 335
    .local v0, wifiApIntent:Landroid/content/Intent;
    const-string v1, "android.settings.WIFI_AP_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 337
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 339
    .end local v0           #wifiApIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method clearTimeoutNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 379
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0902bf

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 381
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, action:Ljava/lang/String;
    const-string v20, "WifiApBroadcastReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onReceive: action "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v20, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 87
    const-string v20, "wifi_state"

    const/16 v21, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 89
    .local v7, apState:I
    packed-switch v7, :pswitch_data_0

    .line 302
    .end local v7           #apState:I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 91
    .restart local v7       #apState:I
    :pswitch_1
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_0

    .line 114
    :pswitch_2
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_0

    .line 134
    .end local v7           #apState:I
    :cond_1
    const-string v20, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 135
    const-string v20, "wifiap_power_mode_alarm_option"

    const/16 v21, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 137
    .local v14, option:I
    if-nez v14, :cond_4

    .line 138
    invoke-direct/range {p0 .. p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v17

    .line 139
    .local v17, powermode_value:I
    const-string v20, "WifiApBroadcastReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ALARM_START : set "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " sec"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-eqz v17, :cond_2

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v9, v20, v22

    .line 143
    .local v9, expireTime:J
    new-instance v5, Landroid/content/Intent;

    const-string v20, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v5, alarm_intent:Landroid/content/Intent;
    const-string v20, "wifiap_power_mode_alarm_option"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const/16 v20, 0x0

    const/high16 v21, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 147
    .local v15, pending:Landroid/app/PendingIntent;
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 148
    .local v6, am:Landroid/app/AlarmManager;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0, v9, v10, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 150
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 151
    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 153
    .end local v5           #alarm_intent:Landroid/content/Intent;
    .end local v6           #am:Landroid/app/AlarmManager;
    .end local v9           #expireTime:J
    .end local v15           #pending:Landroid/app/PendingIntent;
    :cond_2
    sget-boolean v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v20, :cond_3

    .line 154
    new-instance v5, Landroid/content/Intent;

    const-string v20, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .restart local v5       #alarm_intent:Landroid/content/Intent;
    const-string v20, "wifiap_power_mode_alarm_option"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const/16 v20, 0x0

    const/high16 v21, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 158
    .restart local v15       #pending:Landroid/app/PendingIntent;
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 159
    .restart local v6       #am:Landroid/app/AlarmManager;
    invoke-virtual {v6, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 161
    .end local v5           #alarm_intent:Landroid/content/Intent;
    .end local v6           #am:Landroid/app/AlarmManager;
    .end local v15           #pending:Landroid/app/PendingIntent;
    :cond_3
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 163
    .end local v17           #powermode_value:I
    :cond_4
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v14, v0, :cond_5

    .line 164
    const-string v20, "WifiApBroadcastReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "WIFIAP_POWER_MODE_VALUE_CHANGED, mLastClientNum = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v20, :cond_0

    .line 166
    const-string v20, "WifiApBroadcastReceiver"

    const-string v21, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 169
    :cond_5
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_7

    .line 170
    const-string v20, "WifiApBroadcastReceiver"

    const-string v21, "ALARM_EXPIRE"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 172
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 175
    const-string v20, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PowerManager;

    .line 176
    .local v16, pm:Landroid/os/PowerManager;
    const/16 v20, 0x1

    const-string v21, "MobileAPCloseService"

    move-object/from16 v0, v16

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    .line 178
    .local v11, mStopService:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_1
    const-string v20, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/WifiManager;

    .line 185
    .local v19, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v18

    .line 186
    .local v18, wifiApState:I
    invoke-direct/range {p0 .. p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v17

    .line 188
    .restart local v17       #powermode_value:I
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 189
    .local v12, msg:Landroid/os/Message;
    const/16 v20, 0x3

    move/from16 v0, v20

    iput v0, v12, Landroid/os/Message;->what:I

    .line 190
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v13

    .line 192
    .local v13, num:I
    const-string v20, "WifiApBroadcastReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "powermode_value = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-nez v13, :cond_6

    const/16 v20, 0xd

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    if-eqz v17, :cond_6

    .line 194
    const-string v20, "WifiApBroadcastReceiver"

    const-string v21, "--> ap disable"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 200
    :cond_6
    if-eqz v11, :cond_0

    .line 202
    :try_start_1
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 179
    .end local v12           #msg:Landroid/os/Message;
    .end local v13           #num:I
    .end local v17           #powermode_value:I
    .end local v18           #wifiApState:I
    .end local v19           #wm:Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v8

    .line 180
    .local v8, e:Ljava/lang/Throwable;
    const-string v20, "WifiApBroadcastReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 204
    .end local v8           #e:Ljava/lang/Throwable;
    .restart local v12       #msg:Landroid/os/Message;
    .restart local v13       #num:I
    .restart local v17       #powermode_value:I
    .restart local v18       #wifiApState:I
    .restart local v19       #wm:Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v8

    .line 205
    .restart local v8       #e:Ljava/lang/Throwable;
    const-string v20, "WifiApBroadcastReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot release wake lock ~~"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 208
    .end local v8           #e:Ljava/lang/Throwable;
    .end local v11           #mStopService:Landroid/os/PowerManager$WakeLock;
    .end local v12           #msg:Landroid/os/Message;
    .end local v13           #num:I
    .end local v16           #pm:Landroid/os/PowerManager;
    .end local v17           #powermode_value:I
    .end local v18           #wifiApState:I
    .end local v19           #wm:Landroid/net/wifi/WifiManager;
    :cond_7
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v14, v0, :cond_0

    .line 209
    const-string v20, "WifiApBroadcastReceiver"

    const-string v21, "ALARM_STOP"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-boolean v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v20, :cond_0

    sget-boolean v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v20, :cond_0

    .line 211
    new-instance v5, Landroid/content/Intent;

    const-string v20, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .restart local v5       #alarm_intent:Landroid/content/Intent;
    const-string v20, "wifiap_power_mode_alarm_option"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    const/16 v20, 0x0

    const/high16 v21, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 214
    .restart local v15       #pending:Landroid/app/PendingIntent;
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 215
    .restart local v6       #am:Landroid/app/AlarmManager;
    invoke-virtual {v6, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 216
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 219
    .end local v5           #alarm_intent:Landroid/content/Intent;
    .end local v6           #am:Landroid/app/AlarmManager;
    .end local v14           #option:I
    .end local v15           #pending:Landroid/app/PendingIntent;
    :cond_8
    const-string v20, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 220
    const-string v20, "NUM"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 221
    .local v3, ClientNum:I
    const-string v20, "WifiApBroadcastReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ClientNum from WIFI_AP_STA_STATUS_CHANGED_ACTION = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-gez v3, :cond_9

    .line 223
    const/4 v3, 0x0

    .line 235
    :cond_9
    if-nez v3, :cond_b

    sget v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-eqz v20, :cond_b

    .line 236
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 263
    :cond_a
    :goto_2
    sput v3, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    goto/16 :goto_0

    .line 239
    :cond_b
    if-lez v3, :cond_a

    .line 261
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_2

    .line 286
    .end local v3           #ClientNum:I
    :cond_c
    const-string v20, "com.android.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 287
    invoke-virtual/range {p0 .. p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 288
    :cond_d
    const-string v20, "android.settings.WIFI_AP_SEC_SETTINGS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 289
    invoke-direct/range {p0 .. p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 290
    :cond_e
    const-string v20, "android.intent.action.MIP_ERROR"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string v20, "android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    goto/16 :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
