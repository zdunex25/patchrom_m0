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
    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "CameraWeather"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->TAG:Ljava/lang/String;

    .line 40
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 41
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 45
    const-string v0, "aw_daemon_service_key_app_service_status"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->KEY_APP_SERVICE_STATUS:Ljava/lang/String;

    .line 46
    const-string v0, "aw_daemon_service_key_icon_num"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->KEY_ICON_NUM:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/sec/android/app/camera/Weather;->CAMERA_SERVICE_CODE:I

    .line 53
    const/16 v0, 0x12c0

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->MSG_WEATHER_SETTING_CHANGED:I

    .line 54
    const/16 v0, 0x12c1

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->MSG_WEATHER_DATA_UPDATED:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    .line 57
    iput v1, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    .line 64
    check-cast p1, Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 66
    new-instance v0, Lcom/sec/android/app/camera/Weather$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Weather$1;-><init>(Lcom/sec/android/app/camera/Weather;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->mHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/Weather;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method public static isKoreaFeature()Z
    .locals 2

    .prologue
    .line 83
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
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

    .line 85
    :cond_0
    const/4 v1, 0x1

    .line 87
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKweatherEnable()Z
    .locals 4

    .prologue
    .line 94
    const-string v0, "kweather"

    .line 96
    .local v0, DAEMON_KWEATHER:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_LiveWallpaper_WeatherWallCPName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, mCPName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "kweather"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const/4 v2, 0x1

    .line 102
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setContextualWeather(I)V
    .locals 3
    .parameter "weatherIconNum"

    .prologue
    .line 188
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isKweatherEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
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

    .line 249
    return-void

    .line 191
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 243
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 200
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 210
    :pswitch_2
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 223
    :pswitch_3
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 236
    :pswitch_4
    const/16 v0, 0x16

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 240
    :pswitch_5
    const/16 v0, 0x21

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public Connect()V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isKweatherEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v1, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 112
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v1, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/sec/android/app/camera/Weather$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Weather$2;-><init>(Lcom/sec/android/app/camera/Weather;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Weather;->updateWeatherInfo()V

    .line 144
    return-void
.end method

.method public Disconnect()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    :cond_0
    return-void
.end method

.method public getContextualWeather()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    return v0
.end method

.method public updateWeatherInfo()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "aw_daemon_service_key_app_service_status"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, mAppServiceStatus:I
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_0

    .line 165
    .local v1, mIsWeatherDateAvailable:Z
    :goto_0
    if-nez v1, :cond_1

    .line 175
    :goto_1
    return-void

    .end local v1           #mIsWeatherDateAvailable:Z
    :cond_0
    move v1, v2

    .line 163
    goto :goto_0

    .line 169
    .restart local v1       #mIsWeatherDateAvailable:Z
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "aw_daemon_service_key_icon_num"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    .line 171
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

    .line 174
    iget v2, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Weather;->setContextualWeather(I)V

    goto :goto_1
.end method
