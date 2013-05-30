.class public Lcom/sec/android/app/camera/Weather;
.super Ljava/lang/Object;
.source "Weather.java"


# instance fields
.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

.field private final CAMERA_SERVICE_CODE:I

.field private final KEY_APP_SERVICE_STATUS:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final MSG_WEATHER_DATA_UPDATED:I

.field private final MSG_WEATHER_SETTING_CHANGED:I

.field private TAG:Ljava/lang/String;

.field private mAppServiceStatus:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mContextualWeather:I

.field private mHandler:Landroid/os/Handler;

.field private mWeatherIcon:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "CameraWeather"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->TAG:Ljava/lang/String;

    .line 41
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 42
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 46
    const-string v0, "aw_daemon_service_key_app_service_status"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->KEY_APP_SERVICE_STATUS:Ljava/lang/String;

    .line 47
    const-string v0, "aw_daemon_service_key_icon_num"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->KEY_ICON_NUM:Ljava/lang/String;

    .line 51
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->CAMERA_SERVICE_CODE:I

    .line 54
    const/16 v0, 0x12c0

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->MSG_WEATHER_SETTING_CHANGED:I

    .line 55
    const/16 v0, 0x12c1

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->MSG_WEATHER_DATA_UPDATED:I

    .line 57
    iput v1, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    .line 64
    iput v1, p0, Lcom/sec/android/app/camera/Weather;->mAppServiceStatus:I

    .line 66
    check-cast p1, Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 68
    new-instance v0, Lcom/sec/android/app/camera/Weather$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Weather$1;-><init>(Lcom/sec/android/app/camera/Weather;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->mHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method private static AppServiceOff(II)I
    .locals 1
    .parameter "value"
    .parameter "code"

    .prologue
    .line 112
    xor-int/lit8 v0, p1, -0x1

    and-int/2addr p0, v0

    .line 113
    return p0
.end method

.method private static AppServiceOn(II)I
    .locals 0
    .parameter "value"
    .parameter "code"

    .prologue
    .line 107
    or-int/2addr p0, p1

    .line 108
    return p0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/Weather;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method public static isKoreaFeature()Z
    .locals 2

    .prologue
    .line 85
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    const/4 v1, 0x1

    .line 89
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKweatherEnable()Z
    .locals 4

    .prologue
    .line 96
    const-string v0, "kweather"

    .line 98
    .local v0, DAEMON_KWEATHER:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_LiveWallpaper_WeatherWallCPName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, mCPName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "kweather"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const/4 v2, 0x1

    .line 104
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setContextualWeather(I)V
    .locals 6
    .parameter "weatherIconNum"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 259
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isKweatherEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    packed-switch p1, :pswitch_data_0

    .line 311
    iput v1, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    .line 376
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contextual Tag Weather: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void

    .line 263
    :pswitch_0
    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 270
    :pswitch_1
    iput v3, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 284
    :pswitch_2
    iput v4, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 307
    :pswitch_3
    iput v5, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 315
    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 371
    :pswitch_4
    iput v1, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 324
    :pswitch_5
    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 335
    :pswitch_6
    iput v3, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 349
    :pswitch_7
    iput v4, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 363
    :pswitch_8
    iput v5, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 368
    :pswitch_9
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 315
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public Connect()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    .line 119
    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_app_service_status"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 121
    .local v3, mAppServiceStatus:I
    and-int/lit8 v4, v3, 0x10

    if-eq v4, v7, :cond_0

    .line 122
    invoke-static {v3, v7}, Lcom/sec/android/app/camera/Weather;->AppServiceOn(II)I

    move-result v3

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_app_service_status"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isKweatherEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 132
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.daemonapp.ap.kweather"

    const-string v5, "com.sec.android.daemonapp.ap.kweather.KWeatherDaemonService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 142
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isKweatherEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    const-string v4, "com.sec.android.widgetapp.ap.hero.kweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v4, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 147
    const-string v4, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v4, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 151
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_2

    .line 153
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    new-instance v4, Lcom/sec/android/app/camera/Weather$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/Weather$2;-><init>(Lcom/sec/android/app/camera/Weather;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v5, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Weather;->updateWeatherInfo()V

    .line 184
    return-void

    .line 137
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.daemonapp.ap.accuweather"

    const-string v5, "com.sec.android.daemonapp.ap.accuweather.AccuWeatherDaemonService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 176
    .restart local v1       #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public Disconnect()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 190
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "aw_daemon_service_key_app_service_status"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 192
    .local v2, mAppServiceStatus:I
    and-int/lit8 v3, v2, 0x10

    if-ne v3, v6, :cond_0

    .line 193
    invoke-static {v2, v6}, Lcom/sec/android/app/camera/Weather;->AppServiceOff(II)I

    move-result v2

    .line 196
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "aw_daemon_service_key_app_service_status"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isKweatherEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.daemonapp.ap.kweather"

    const-string v4, "com.sec.android.daemonapp.ap.kweather.KWeatherDaemonService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 214
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_1

    .line 221
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_1
    :goto_1
    return-void

    .line 209
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.daemonapp.ap.accuweather"

    const-string v4, "com.sec.android.daemonapp.ap.accuweather.AccuWeatherDaemonService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 222
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public getContextualWeather()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    return v0
.end method

.method public updateWeatherInfo()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "aw_daemon_service_key_app_service_status"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 234
    .local v0, mAppServiceStatus:I
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 236
    .local v1, mIsWeatherDateAvailable:Z
    :goto_0
    if-nez v1, :cond_1

    .line 246
    :goto_1
    return-void

    .end local v1           #mIsWeatherDateAvailable:Z
    :cond_0
    move v1, v2

    .line 234
    goto :goto_0

    .line 240
    .restart local v1       #mIsWeatherDateAvailable:Z
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "aw_daemon_service_key_icon_num"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    .line 242
    iget-object v2, p0, Lcom/sec/android/app/camera/Weather;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Weather Data : iconNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget v2, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Weather;->setContextualWeather(I)V

    goto :goto_1
.end method
