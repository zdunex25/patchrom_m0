.class public Lcom/vipercn/viper4android/service/HeadsetService;
.super Landroid/app/Service;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vipercn/viper4android/service/HeadsetService$LocalBinder;,
        Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;,
        Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    }
.end annotation


# static fields
.field public static final ID_V4A_GENERAL_FX:Ljava/util/UUID; = null

.field public static final PARAM_FX_TYPE_SWITCH:I = 0x10001

.field public static final PARAM_GET_CHANNELS:I = 0x8008

.field public static final PARAM_GET_CONFIGURE:I = 0x8004

.field public static final PARAM_GET_CONVUSABLE:I = 0x8009

.field public static final PARAM_GET_DRIVER_VERSION:I = 0x8001

.field public static final PARAM_GET_EFFECT_TYPE:I = 0x8006

.field public static final PARAM_GET_ENABLED:I = 0x8003

.field public static final PARAM_GET_NEONENABLED:I = 0x8002

.field public static final PARAM_GET_SAMPLINGRATE:I = 0x8007

.field public static final PARAM_GET_STREAMING:I = 0x8005

.field public static final PARAM_HPFX_AGC_MAXSCALER:I = 0x10015

.field public static final PARAM_HPFX_AGC_PROCESS_ENABLED:I = 0x10012

.field public static final PARAM_HPFX_AGC_RATIO:I = 0x10013

.field public static final PARAM_HPFX_AGC_VOLUME:I = 0x10014

.field public static final PARAM_HPFX_COLM_DEPTH:I = 0x1000b

.field public static final PARAM_HPFX_COLM_MIDIMAGE:I = 0x1000a

.field public static final PARAM_HPFX_COLM_PROCESS_ENABLED:I = 0x10008

.field public static final PARAM_HPFX_COLM_WIDENING:I = 0x10009

.field public static final PARAM_HPFX_CONV_PROCESS_ENABLED:I = 0x10002

.field public static final PARAM_HPFX_CONV_UPDATEKERNEL:I = 0x10003

.field public static final PARAM_HPFX_CURE_CROSSFEED:I = 0x10024

.field public static final PARAM_HPFX_CURE_PROCESS_ENABLED:I = 0x10023

.field public static final PARAM_HPFX_DYNSYS_BASSGAIN:I = 0x1001b

.field public static final PARAM_HPFX_DYNSYS_ENABLETUBE:I = 0x10017

.field public static final PARAM_HPFX_DYNSYS_PROCESS_ENABLED:I = 0x10016

.field public static final PARAM_HPFX_DYNSYS_SIDEGAIN:I = 0x1001a

.field public static final PARAM_HPFX_DYNSYS_XCOEFFS:I = 0x10018

.field public static final PARAM_HPFX_DYNSYS_YCOEFFS:I = 0x10019

.field public static final PARAM_HPFX_FIREQ_BANDLEVEL:I = 0x10007

.field public static final PARAM_HPFX_FIREQ_PROCESS_ENABLED:I = 0x10006

.field public static final PARAM_HPFX_LIMITER_THRESHOLD:I = 0x10026

.field public static final PARAM_HPFX_OUTPUT_VOLUME:I = 0x10025

.field public static final PARAM_HPFX_REVB_DAMP:I = 0x1000f

.field public static final PARAM_HPFX_REVB_DRY:I = 0x10011

.field public static final PARAM_HPFX_REVB_PROCESS_ENABLED:I = 0x1000c

.field public static final PARAM_HPFX_REVB_ROOMSIZE:I = 0x1000d

.field public static final PARAM_HPFX_REVB_WET:I = 0x10010

.field public static final PARAM_HPFX_REVB_WIDTH:I = 0x1000e

.field public static final PARAM_HPFX_VHE_PRECIOUS:I = 0x10005

.field public static final PARAM_HPFX_VHE_PROCESS_ENABLED:I = 0x10004

.field public static final PARAM_HPFX_VIPERBASS_BASSGAIN:I = 0x1001f

.field public static final PARAM_HPFX_VIPERBASS_MODE:I = 0x1001d

.field public static final PARAM_HPFX_VIPERBASS_PROCESS_ENABLED:I = 0x1001c

.field public static final PARAM_HPFX_VIPERBASS_SPEAKER:I = 0x1001e

.field public static final PARAM_HPFX_VIPERCLARITY_CLARITY:I = 0x10022

.field public static final PARAM_HPFX_VIPERCLARITY_MODE:I = 0x10021

.field public static final PARAM_HPFX_VIPERCLARITY_PROCESS_ENABLED:I = 0x10020

.field public static final PARAM_SET_COMM_STATUS:I = 0x9001

.field public static final PARAM_SET_UPDATE_STATUS:I = 0x9002

.field public static final PARAM_SPKFX_AGC_MAXSCALER:I = 0x10034

.field public static final PARAM_SPKFX_AGC_PROCESS_ENABLED:I = 0x10031

.field public static final PARAM_SPKFX_AGC_RATIO:I = 0x10032

.field public static final PARAM_SPKFX_AGC_VOLUME:I = 0x10033

.field public static final PARAM_SPKFX_CONV_PROCESS_ENABLED:I = 0x10027

.field public static final PARAM_SPKFX_CONV_UPDATEKERNEL:I = 0x10028

.field public static final PARAM_SPKFX_FIREQ_BANDLEVEL:I = 0x1002a

.field public static final PARAM_SPKFX_FIREQ_PROCESS_ENABLED:I = 0x10029

.field public static final PARAM_SPKFX_LIMITER_THRESHOLD:I = 0x10036

.field public static final PARAM_SPKFX_OUTPUT_VOLUME:I = 0x10035

.field public static final PARAM_SPKFX_REVB_DAMP:I = 0x1002e

.field public static final PARAM_SPKFX_REVB_DRY:I = 0x10030

.field public static final PARAM_SPKFX_REVB_PROCESS_ENABLED:I = 0x1002b

.field public static final PARAM_SPKFX_REVB_ROOMSIZE:I = 0x1002c

.field public static final PARAM_SPKFX_REVB_WET:I = 0x1002f

.field public static final PARAM_SPKFX_REVB_WIDTH:I = 0x1002d

.field public static final V4A_FX_TYPE_HEADPHONE:I = 0x1

.field public static final V4A_FX_TYPE_NONE:I = 0x0

.field public static final V4A_FX_TYPE_SPEAKER:I = 0x2


# instance fields
.field private hDrvStatusCommTimer:Landroid/os/Handler;

.field private final mAudioSessionReceiver:Landroid/content/BroadcastReceiver;

.field private final mBinder:Lcom/vipercn/viper4android/service/HeadsetService$LocalBinder;

.field private final mCancelNotifyReceiver:Landroid/content/BroadcastReceiver;

.field private mDriverIsReady:Z

.field private mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

.field private mGeneralFXList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;",
            ">;"
        }
    .end annotation
.end field

.field private mOverriddenEqualizerLevels:[F

.field private final mPreferenceUpdateReceiver:Landroid/content/BroadcastReceiver;

.field protected mPreviousMode:Ljava/lang/String;

.field private final mRoutingReceiver:Landroid/content/BroadcastReceiver;

.field private final mScreenOnReceiver:Landroid/content/BroadcastReceiver;

.field private mServicePrepared:Z

.field private final mShowNotifyReceiver:Landroid/content/BroadcastReceiver;

.field protected mUseBluetooth:Z

.field protected mUseHeadset:Z

.field private mV4AMutex:Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;

.field private final tmDrvStatusCommTimer:Ljava/util/Timer;

.field private ttDrvStatusCommTimer:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 268
    const-string v0, "41d3c987-e6cf-11e3-a88a-11aba5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/vipercn/viper4android/service/HeadsetService;->ID_V4A_GENERAL_FX:Ljava/util/UUID;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 350
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$LocalBinder;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mBinder:Lcom/vipercn/viper4android/service/HeadsetService$LocalBinder;

    .line 351
    iput-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mUseHeadset:Z

    .line 352
    iput-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mUseBluetooth:Z

    .line 353
    const-string v0, "none"

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mPreviousMode:Ljava/lang/String;

    .line 356
    iput-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    .line 357
    iput-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mServicePrepared:Z

    .line 358
    iput-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    .line 360
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFXList:Ljava/util/Map;

    .line 361
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;

    invoke-direct {v0, p0, v2}, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mV4AMutex:Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;

    .line 363
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->tmDrvStatusCommTimer:Ljava/util/Timer;

    .line 364
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$1;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$1;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->hDrvStatusCommTimer:Landroid/os/Handler;

    .line 384
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$2;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$2;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->ttDrvStatusCommTimer:Ljava/util/TimerTask;

    .line 395
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$3;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$3;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mAudioSessionReceiver:Landroid/content/BroadcastReceiver;

    .line 456
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$4;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$4;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mPreferenceUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 466
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$5;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$5;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mShowNotifyReceiver:Landroid/content/BroadcastReceiver;

    .line 482
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$6;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$6;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mCancelNotifyReceiver:Landroid/content/BroadcastReceiver;

    .line 492
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$7;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$7;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    .line 502
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$8;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$8;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mRoutingReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    return-void
.end method

.method private CancelNotification()V
    .locals 2

    .prologue
    .line 583
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 584
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/16 v1, 0x1234

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 585
    return-void
.end method

.method private ShowNotification(Ljava/lang/String;)V
    .locals 14
    .parameter "nFXType"

    .prologue
    .line 554
    const-string v10, "com.vipercn.viper4android.settings"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/vipercn/viper4android/service/HeadsetService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 555
    .local v8, preferences:Landroid/content/SharedPreferences;
    const-string v10, "viper4android.settings.show_notify_icon"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 556
    .local v0, bEnableNotify:Z
    if-nez v0, :cond_0

    .line 558
    const-string v10, "ViPER4Android"

    const-string v11, "ShowNotification(): show_notify = false"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_0
    return-void

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "icon"

    const-string v12, "drawable"

    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 563
    .local v4, nIconID:I
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ViPER4Android FX "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 565
    .local v9, szNotifyText:Ljava/lang/String;
    new-instance v7, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v7, v4, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 566
    .local v7, notify:Landroid/app/Notification;
    iget v10, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v7, Landroid/app/Notification;->flags:I

    .line 567
    iget v10, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x20

    iput v10, v7, Landroid/app/Notification;->flags:I

    .line 568
    const/4 v10, 0x0

    iput v10, v7, Landroid/app/Notification;->defaults:I

    .line 570
    const-string v3, "ViPER4Android FX"

    .line 571
    .local v3, contentTitle:Ljava/lang/CharSequence;
    move-object v2, p1

    .line 573
    .local v2, contentText:Ljava/lang/CharSequence;
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/vipercn/viper4android/activity/ViPER4Android;

    invoke-direct {v5, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 574
    .local v5, notificationIntent:Landroid/content/Intent;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p0, v10, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 575
    .local v1, contentItent:Landroid/app/PendingIntent;
    invoke-virtual {v7, p0, v3, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 577
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Lcom/vipercn/viper4android/service/HeadsetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 578
    .local v6, notificationManager:Landroid/app/NotificationManager;
    const/16 v10, 0x1234

    invoke-virtual {v6, v10, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/vipercn/viper4android/service/HeadsetService;)Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    .locals 1
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vipercn/viper4android/service/HeadsetService;)Z
    .locals 1
    .parameter

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vipercn/viper4android/service/HeadsetService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->hDrvStatusCommTimer:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vipercn/viper4android/service/HeadsetService;)Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;
    .locals 1
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mV4AMutex:Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vipercn/viper4android/service/HeadsetService;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 360
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFXList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vipercn/viper4android/service/HeadsetService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android/service/HeadsetService;->ShowNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/vipercn/viper4android/service/HeadsetService;)V
    .locals 0
    .parameter

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->CancelNotification()V

    return-void
.end method


# virtual methods
.method public GetConvolverUsable()Z
    .locals 3

    .prologue
    .line 820
    const/4 v0, 0x0

    .line 821
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v2, 0x8009

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 824
    const/4 v0, 0x1

    .line 826
    :cond_0
    return v0
.end method

.method public GetDriverChannels()I
    .locals 3

    .prologue
    .line 812
    const/4 v0, 0x0

    .line 813
    .local v0, nResult:I
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 814
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v2, 0x8008

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v0

    .line 815
    :cond_0
    return v0
.end method

.method public GetDriverEffectType()I
    .locals 3

    .prologue
    .line 796
    const/4 v0, 0x0

    .line 797
    .local v0, nResult:I
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 798
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v2, 0x8006

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v0

    .line 799
    :cond_0
    return v0
.end method

.method public GetDriverEnabled()Z
    .locals 3

    .prologue
    .line 763
    const/4 v0, 0x0

    .line 764
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 766
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v2, 0x8003

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 767
    const/4 v0, 0x1

    .line 769
    :cond_0
    return v0
.end method

.method public GetDriverIsReady()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    return v0
.end method

.method public GetDriverNEON()Z
    .locals 3

    .prologue
    .line 752
    const/4 v0, 0x0

    .line 753
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v2, 0x8002

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 756
    const/4 v0, 0x1

    .line 758
    :cond_0
    return v0
.end method

.method public GetDriverProcess()Z
    .locals 3

    .prologue
    .line 785
    const/4 v0, 0x0

    .line 786
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 788
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v2, 0x8005

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 789
    const/4 v0, 0x1

    .line 791
    :cond_0
    return v0
.end method

.method public GetDriverSamplingRate()I
    .locals 3

    .prologue
    .line 804
    const/4 v0, 0x0

    .line 805
    .local v0, nResult:I
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 806
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v2, 0x8007

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v0

    .line 807
    :cond_0
    return v0
.end method

.method public GetDriverUsable()Z
    .locals 3

    .prologue
    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v2, 0x8004

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 778
    const/4 v0, 0x1

    .line 780
    :cond_0
    return v0
.end method

.method public GetDriverVersion()Ljava/lang/String;
    .locals 7

    .prologue
    .line 739
    const/4 v4, 0x0

    .line 740
    .local v4, nVerDWord:I
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v5, :cond_0

    .line 741
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v6, 0x8001

    invoke-virtual {v5, v6}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v4

    .line 743
    :cond_0
    const/high16 v5, -0x100

    and-int/2addr v5, v4

    shr-int/lit8 v2, v5, 0x18

    .line 744
    .local v2, VMain:I
    const/high16 v5, 0xff

    and-int/2addr v5, v4

    shr-int/lit8 v3, v5, 0x10

    .line 745
    .local v3, VSub:I
    const v5, 0xff00

    and-int/2addr v5, v4

    shr-int/lit8 v1, v5, 0x8

    .line 746
    .local v1, VExt:I
    and-int/lit16 v5, v4, 0xff

    shr-int/lit8 v0, v5, 0x0

    .line 747
    .local v0, VBuild:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public GetServicePrepared()Z
    .locals 1

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mServicePrepared:Z

    return v0
.end method

.method protected SetV4AEqualizerBandLevel(IIZLcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;)V
    .locals 1
    .parameter "idx"
    .parameter "level"
    .parameter "hpfx"
    .parameter "dsp"

    .prologue
    .line 831
    if-eqz p4, :cond_0

    iget-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-nez v0, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    if-eqz p3, :cond_2

    const v0, 0x10007

    invoke-virtual {p4, v0, p1, p2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x2(III)V

    goto :goto_0

    .line 833
    :cond_2
    const v0, 0x1002a

    invoke-virtual {p4, v0, p1, p2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x2(III)V

    goto :goto_0
.end method

.method public StartStatusUpdating()V
    .locals 3

    .prologue
    .line 727
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v1, 0x9002

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 729
    :cond_0
    return-void
.end method

.method public StopStatusUpdating()V
    .locals 3

    .prologue
    .line 733
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v1, 0x9002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 735
    :cond_0
    return-void
.end method

.method public getAudioOutputRouting()Ljava/lang/String;
    .locals 4

    .prologue
    .line 704
    const-string v2, "com.vipercn.viper4android.settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/vipercn/viper4android/service/HeadsetService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 705
    .local v0, prefSettings:Landroid/content/SharedPreferences;
    const-string v2, "viper4android.settings.lock_effect"

    const-string v3, "none"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, szLockedEffect:Ljava/lang/String;
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 708
    iget-boolean v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mUseBluetooth:Z

    if-eqz v2, :cond_1

    const-string v1, "bluetooth"

    .line 712
    .end local v1           #szLockedEffect:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 709
    .restart local v1       #szLockedEffect:Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mUseHeadset:Z

    if-eqz v2, :cond_2

    const-string v1, "headset"

    goto :goto_0

    .line 710
    :cond_2
    const-string v1, "speaker"

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mBinder:Lcom/vipercn/viper4android/service/HeadsetService$LocalBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 590
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 591
    iput-boolean v11, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mServicePrepared:Z

    .line 595
    :try_start_0
    invoke-direct {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->CancelNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 599
    :try_start_1
    const-string v0, "ViPER4Android"

    const-string v1, "Creating global V4ADSPModule ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    sget-object v1, Lcom/vipercn/viper4android/service/HeadsetService;->ID_V4A_GENERAL_FX:Ljava/util/UUID;

    const/16 v2, 0x7fff

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;Ljava/util/UUID;II)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 609
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-nez v0, :cond_1

    .line 610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    .line 619
    :goto_1
    const/4 v0, 0x1

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->startForeground(ILandroid/app/Notification;)V

    .line 621
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 622
    .local v6, audioFilter:Landroid/content/IntentFilter;
    const-string v0, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 623
    const-string v0, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mAudioSessionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v6}, Lcom/vipercn/viper4android/service/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 626
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 627
    .local v9, screenFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/vipercn/viper4android/service/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 630
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 631
    .local v8, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 632
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mRoutingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/vipercn/viper4android/service/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 636
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mPreferenceUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.vipercn.viper4android.UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 637
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mShowNotifyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.vipercn.viper4android.SHOWNOTIFY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 638
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mCancelNotifyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.vipercn.viper4android.CANCELNOTIFY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 640
    const-string v0, "ViPER4Android"

    const-string v1, "Service launched."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem()V

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mServicePrepared:Z

    .line 646
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->tmDrvStatusCommTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->ttDrvStatusCommTimer:Ljava/util/TimerTask;

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 654
    .end local v6           #audioFilter:Landroid/content/IntentFilter;
    .end local v8           #intentFilter:Landroid/content/IntentFilter;
    .end local v9           #screenFilter:Landroid/content/IntentFilter;
    :goto_2
    return-void

    .line 603
    :catch_0
    move-exception v7

    .line 605
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "ViPER4Android"

    const-string v1, "Creating V4ADSPModule failed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 648
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 650
    .restart local v7       #e:Ljava/lang/Exception;
    iput-boolean v11, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mServicePrepared:Z

    .line 651
    invoke-direct {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->CancelNotification()V

    .line 652
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 613
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    .line 614
    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->GetDriverVersion()Ljava/lang/String;

    move-result-object v10

    .line 615
    .local v10, szDriverVer:Ljava/lang/String;
    const-string v0, "0.0.0.0"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    goto/16 :goto_1

    .line 616
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 659
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 661
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mServicePrepared:Z

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->tmDrvStatusCommTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 667
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->stopForeground(Z)V

    .line 669
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mAudioSessionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 670
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 671
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mRoutingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 672
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mPreferenceUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 673
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mShowNotifyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 674
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mCancelNotifyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 676
    invoke-direct {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->CancelNotification()V

    .line 678
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    invoke-virtual {v1}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->release()V

    .line 680
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    .line 682
    const-string v1, "ViPER4Android"

    const-string v2, "Service destroyed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 686
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->CancelNotification()V

    goto :goto_0
.end method

.method public setEqualizerLevels([F)V
    .locals 0
    .parameter "levels"

    .prologue
    .line 698
    iput-object p1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mOverriddenEqualizerLevels:[F

    .line 699
    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem()V

    .line 700
    return-void
.end method

.method protected updateSystem()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 838
    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->getAudioOutputRouting()Ljava/lang/String;

    move-result-object v1

    .line 839
    .local v1, mode:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "com.vipercn.viper4android."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v10}, Lcom/vipercn/viper4android/service/HeadsetService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 840
    .local v4, preferences:Landroid/content/SharedPreferences;
    const-string v6, "ViPER4Android"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Begin system update("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v2, 0x0

    .line 843
    .local v2, nFXType:I
    const-string v6, "headset"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "bluetooth"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 844
    :cond_0
    const/4 v2, 0x1

    .line 848
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mPreviousMode:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 850
    iput-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mPreviousMode:Ljava/lang/String;

    .line 851
    const-string v6, "headset"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 852
    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "text_headset"

    const-string v8, "string"

    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/vipercn/viper4android/service/HeadsetService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vipercn/viper4android/service/HeadsetService;->ShowNotification(Ljava/lang/String;)V

    .line 858
    :cond_2
    :goto_1
    const-string v6, "com.vipercn.viper4android.settings"

    invoke-virtual {p0, v6, v10}, Lcom/vipercn/viper4android/service/HeadsetService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 859
    .local v3, prefSettings:Landroid/content/SharedPreferences;
    const-string v6, "viper4android.settings.compatiblemode"

    const-string v7, "global"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 860
    .local v5, szCompatibleMode:Ljava/lang/String;
    const/4 v0, 0x0

    .line 861
    .local v0, mFXInLocalMode:Z
    const-string v6, "global"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v0, 0x0

    .line 864
    :goto_2
    const-string v6, "ViPER4Android"

    const-string v7, "<+++++++++++++++ Update global effect +++++++++++++++>"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {p0, v4, v2, v0}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem_Global(Landroid/content/SharedPreferences;IZ)V

    .line 866
    const-string v6, "ViPER4Android"

    const-string v7, "<++++++++++++++++++++++++++++++++++++++++++++++++++++>"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v6, "ViPER4Android"

    const-string v7, "<+++++++++++++++ Update local effect +++++++++++++++>"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-virtual {p0, v4, v2, v0}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem_Local(Landroid/content/SharedPreferences;IZ)V

    .line 870
    const-string v6, "ViPER4Android"

    const-string v7, "<+++++++++++++++++++++++++++++++++++++++++++++++++++>"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    return-void

    .line 845
    .end local v0           #mFXInLocalMode:Z
    .end local v3           #prefSettings:Landroid/content/SharedPreferences;
    .end local v5           #szCompatibleMode:Ljava/lang/String;
    :cond_3
    const-string v6, "speaker"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 846
    const/4 v2, 0x2

    goto :goto_0

    .line 853
    :cond_4
    const-string v6, "bluetooth"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 854
    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "text_bluetooth"

    const-string v8, "string"

    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/vipercn/viper4android/service/HeadsetService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vipercn/viper4android/service/HeadsetService;->ShowNotification(Ljava/lang/String;)V

    goto :goto_1

    .line 855
    :cond_5
    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "text_speaker"

    const-string v8, "string"

    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/vipercn/viper4android/service/HeadsetService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vipercn/viper4android/service/HeadsetService;->ShowNotification(Ljava/lang/String;)V

    goto :goto_1

    .line 862
    .restart local v0       #mFXInLocalMode:Z
    .restart local v3       #prefSettings:Landroid/content/SharedPreferences;
    .restart local v5       #szCompatibleMode:Ljava/lang/String;
    :cond_6
    const/4 v0, 0x1

    goto :goto_2
.end method

.method protected updateSystem_Global(Landroid/content/SharedPreferences;IZ)V
    .locals 8
    .parameter "preferences"
    .parameter "nFXType"
    .parameter "mLocalFX"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 875
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    iget-object v2, v2, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-nez v2, :cond_2

    .line 877
    :cond_0
    const-string v2, "ViPER4Android"

    const-string v3, "updateSystem(): Effects is invalid!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_1
    :goto_0
    return-void

    .line 881
    :cond_2
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    iget-object v2, v2, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v1

    .line 882
    .local v1, mFXVerify:Landroid/media/audiofx/AudioEffect$Descriptor;
    if-nez v1, :cond_3

    .line 884
    const-string v2, "ViPER4Android"

    const-string v3, "updateSystem(): Effects token lost!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 887
    :cond_3
    iget-object v2, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v3, Lcom/vipercn/viper4android/service/HeadsetService;->ID_V4A_GENERAL_FX:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 890
    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "text_token_lost"

    const-string v4, "string"

    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vipercn/viper4android/service/HeadsetService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 889
    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 891
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 893
    const-string v2, "ViPER4Android"

    const-string v3, "updateSystem(): Effects token lost!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const-string v2, "ViPER4Android"

    const-string v3, "updateSystem(): The effect has been replaced by system!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v2, "ViPER4Android"

    const-string v3, "updateSystem(): Reloading driver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :try_start_0
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    invoke-virtual {v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->release()V

    .line 899
    new-instance v2, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    sget-object v3, Lcom/vipercn/viper4android/service/HeadsetService;->ID_V4A_GENERAL_FX:Ljava/util/UUID;

    const/16 v4, 0x7fff

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;Ljava/util/UUID;II)V

    iput-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    .line 900
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    iget-object v2, v2, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 907
    :cond_4
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    iget-object v2, v2, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->hasControl()Z

    move-result v2

    if-nez v2, :cond_5

    .line 910
    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "text_token_lost"

    const-string v4, "string"

    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vipercn/viper4android/service/HeadsetService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 909
    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 911
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 913
    const-string v2, "ViPER4Android"

    const-string v3, "updateSystem(): Effects token lost!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const-string v2, "ViPER4Android"

    const-string v3, "updateSystem(): The effect has been taken over by system!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-string v2, "ViPER4Android"

    const-string v3, "updateSystem(): Reloading driver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :try_start_1
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    invoke-virtual {v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->release()V

    .line 919
    new-instance v2, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    sget-object v3, Lcom/vipercn/viper4android/service/HeadsetService;->ID_V4A_GENERAL_FX:Ljava/util/UUID;

    const/16 v4, 0x7fff

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;Ljava/util/UUID;II)V

    iput-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    .line 920
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    iget-object v2, v2, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_1

    .line 928
    :cond_5
    if-eqz p3, :cond_6

    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    invoke-virtual {p0, p1, p2, v2, v7}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem_Module(Landroid/content/SharedPreferences;ILcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;Z)V

    goto/16 :goto_0

    .line 902
    :catch_0
    move-exception v0

    .line 904
    .local v0, e:Ljava/lang/Exception;
    goto/16 :goto_0

    .line 922
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 924
    .restart local v0       #e:Ljava/lang/Exception;
    goto/16 :goto_0

    .line 929
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    invoke-virtual {p0, p1, p2, v2, v6}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem_Module(Landroid/content/SharedPreferences;ILcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;Z)V

    goto/16 :goto_0
.end method

.method protected updateSystem_Local(Landroid/content/SharedPreferences;IZ)V
    .locals 10
    .parameter "preferences"
    .parameter "nFXType"
    .parameter "mLocalFX"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 934
    iget-object v4, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    iget-object v4, v4, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-nez v4, :cond_1

    .line 936
    :cond_0
    const-string v4, "ViPER4Android"

    const-string v5, "updateSystem(): Effects is invalid!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :goto_0
    return-void

    .line 940
    :cond_1
    iget-object v4, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    iget-object v4, v4, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v4}, Landroid/media/audiofx/AudioEffect;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v1

    .line 941
    .local v1, mFXVerify:Landroid/media/audiofx/AudioEffect$Descriptor;
    if-nez v1, :cond_2

    .line 943
    const-string v4, "ViPER4Android"

    const-string v5, "updateSystem(): Effects token lost!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 946
    :cond_2
    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v5, Lcom/vipercn/viper4android/service/HeadsetService;->ID_V4A_GENERAL_FX:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 948
    const-string v4, "ViPER4Android"

    const-string v5, "updateSystem(): Effects token lost!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 952
    :cond_3
    iget-object v4, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mV4AMutex:Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;

    invoke-virtual {v4}, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;->acquire()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 954
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFXList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 969
    iget-object v4, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mV4AMutex:Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;

    invoke-virtual {v4}, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;->release()V

    goto :goto_0

    .line 954
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 958
    .local v2, sessionId:Ljava/lang/Integer;
    :try_start_0
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFXList:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    .line 959
    .local v3, v4aModule:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    if-nez p3, :cond_5

    const/4 v5, 0x1

    invoke-virtual {p0, p1, p2, v3, v5}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem_Module(Landroid/content/SharedPreferences;ILcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 962
    .end local v3           #v4aModule:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    :catch_0
    move-exception v0

    .line 964
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ViPER4Android"

    const-string v6, "Trouble trying to manage session %d, removing..."

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 965
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFXList:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 960
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #v4aModule:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    :cond_5
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v3, v5}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem_Module(Landroid/content/SharedPreferences;ILcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 971
    .end local v2           #sessionId:Ljava/lang/Integer;
    .end local v3           #v4aModule:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    :cond_6
    const-string v4, "ViPER4Android"

    const-string v5, "Semaphore accquire failed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updateSystem_Module(Landroid/content/SharedPreferences;ILcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;Z)V
    .locals 9
    .parameter "preferences"
    .parameter "nFXType"
    .parameter "v4aModule"
    .parameter "mMasterSwitchOff"

    .prologue
    .line 976
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Commiting effects type"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const v6, 0x10001

    invoke-virtual {p3, v6, p2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 980
    const/4 v6, 0x1

    if-ne p2, v6, :cond_12

    .line 982
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Commiting headphone-fx parameters"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating FIR Equalizer."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mOverriddenEqualizerLevels:[F

    if-eqz v6, :cond_6

    .line 988
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mOverriddenEqualizerLevels:[F

    array-length v6, v6

    if-lt v4, v6, :cond_5

    .line 997
    .end local v4           #i:I
    :cond_0
    const-string v6, "viper4android.headphonefx.fireq.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 998
    const v6, 0x10006

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1002
    :goto_1
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Convolver."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const v6, 0x10003

    const-string v7, "viper4android.headphonefx.convolver.kernel"

    const-string v8, ""

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vxString(ILjava/lang/String;)V

    .line 1004
    const-string v6, "viper4android.headphonefx.convolver.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1005
    const v6, 0x10002

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1009
    :goto_2
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Field Surround (Colorful Music)."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const-string v6, "viper4android.headphonefx.colorfulmusic.coeffs"

    const-string v7, "120;200"

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1011
    .local v1, cmParameter:[Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1013
    const v6, 0x10009

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1014
    const v6, 0x1000b

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1016
    :cond_1
    const v6, 0x1000a

    const-string v7, "viper4android.headphonefx.colorfulmusic.midimage"

    const-string v8, "150"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1017
    const-string v6, "viper4android.headphonefx.colorfulmusic.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1018
    const v6, 0x10008

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1022
    :goto_3
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating ViPER\'s Headphone Surround Engine +."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const v6, 0x10005

    const-string v7, "viper4android.headphonefx.vhs.qual"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1024
    const-string v6, "viper4android.headphonefx.vhs.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1025
    const v6, 0x10004

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1029
    :goto_4
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Reverberation."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const v6, 0x1000d

    const-string v7, "viper4android.headphonefx.reverb.roomsize"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1031
    const v6, 0x1000e

    const-string v7, "viper4android.headphonefx.reverb.roomwidth"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1032
    const v6, 0x1000f

    const-string v7, "viper4android.headphonefx.reverb.damp"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1033
    const v6, 0x10010

    const-string v7, "viper4android.headphonefx.reverb.wet"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1034
    const v6, 0x10011

    const-string v7, "viper4android.headphonefx.reverb.dry"

    const-string v8, "50"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1035
    const-string v6, "viper4android.headphonefx.reverb.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1036
    const v6, 0x1000c

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1040
    :goto_5
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Playback AGC."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const v6, 0x10013

    const-string v7, "viper4android.headphonefx.playbackgain.ratio"

    const-string v8, "50"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1042
    const v6, 0x10014

    const-string v7, "viper4android.headphonefx.playbackgain.volume"

    const-string v8, "80"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1043
    const v6, 0x10015

    const-string v7, "viper4android.headphonefx.playbackgain.maxscaler"

    const-string v8, "400"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1044
    const-string v6, "viper4android.headphonefx.playbackgain.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1045
    const v6, 0x10012

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1049
    :goto_6
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Dynamic System."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const-string v6, "viper4android.headphonefx.dynamicsystem.coeffs"

    const-string v7, "100;5600;40;40;50;50"

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1051
    .local v3, dsParameter:[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    .line 1053
    const v6, 0x10018

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p3, v6, v7, v8}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x2(III)V

    .line 1054
    const v6, 0x10019

    const/4 v7, 0x2

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p3, v6, v7, v8}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x2(III)V

    .line 1055
    const v6, 0x1001a

    const/4 v7, 0x4

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x5

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p3, v6, v7, v8}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x2(III)V

    .line 1057
    :cond_2
    const-string v6, "viper4android.headphonefx.dynamicsystem.bass"

    const-string v7, "0"

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1058
    .local v2, dsBass:I
    mul-int/lit8 v6, v2, 0x14

    add-int/lit8 v2, v6, 0x64

    .line 1059
    const v6, 0x1001b

    invoke-virtual {p3, v6, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1060
    const-string v6, "viper4android.headphonefx.dynamicsystem.tube"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1061
    const v6, 0x10017

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1063
    :goto_7
    const-string v6, "viper4android.headphonefx.dynamicsystem.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1064
    const v6, 0x10016

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1068
    :goto_8
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Fidelity Control."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const v6, 0x1001d

    const-string v7, "viper4android.headphonefx.fidelity.bass.mode"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1070
    const v6, 0x1001e

    const-string v7, "viper4android.headphonefx.fidelity.bass.freq"

    const-string v8, "40"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1071
    const v6, 0x1001f

    const-string v7, "viper4android.headphonefx.fidelity.bass.gain"

    const-string v8, "50"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1072
    const-string v6, "viper4android.headphonefx.fidelity.bass.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1073
    const v6, 0x1001c

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1075
    :goto_9
    const v6, 0x10021

    const-string v7, "viper4android.headphonefx.fidelity.clarity.mode"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1076
    const v6, 0x10022

    const-string v7, "viper4android.headphonefx.fidelity.clarity.gain"

    const-string v8, "50"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1077
    const-string v6, "viper4android.headphonefx.fidelity.clarity.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1078
    const v6, 0x10020

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1082
    :goto_a
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Cure System."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const v6, 0x10024

    const-string v7, "viper4android.headphonefx.cure.crossfeed"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1084
    const-string v6, "viper4android.headphonefx.cure.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1085
    const v6, 0x10023

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1089
    :goto_b
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Limiter."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const v6, 0x10025

    const-string v7, "viper4android.headphonefx.outvol"

    const-string v8, "100"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1091
    const v6, 0x10026

    const-string v7, "viper4android.headphonefx.limiter"

    const-string v8, "100"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1094
    const-string v6, "viper4android.headphonefx.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1095
    .local v0, bMasterControl:Z
    if-eqz p4, :cond_3

    const/4 v0, 0x0

    .line 1096
    :cond_3
    iget-object v6, p3, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v6, v0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 1160
    .end local v0           #bMasterControl:Z
    .end local v1           #cmParameter:[Ljava/lang/String;
    .end local v2           #dsBass:I
    .end local v3           #dsParameter:[Ljava/lang/String;
    :cond_4
    :goto_c
    const-string v6, "ViPER4Android"

    const-string v7, "System updated."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return-void

    .line 989
    .restart local v4       #i:I
    :cond_5
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mOverriddenEqualizerLevels:[F

    aget v6, v6, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x42c8

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0, v4, v6, v7, p3}, Lcom/vipercn/viper4android/service/HeadsetService;->SetV4AEqualizerBandLevel(IIZLcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;)V

    .line 988
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 993
    .end local v4           #i:I
    :cond_6
    const-string v6, "viper4android.headphonefx.fireq.custom"

    const-string v7, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 994
    .local v5, levels:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:S
    :goto_d
    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 995
    aget-object v6, v5, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x42c8

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0, v4, v6, v7, p3}, Lcom/vipercn/viper4android/service/HeadsetService;->SetV4AEqualizerBandLevel(IIZLcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;)V

    .line 994
    add-int/lit8 v6, v4, 0x1

    int-to-short v4, v6

    goto :goto_d

    .line 999
    .end local v4           #i:S
    .end local v5           #levels:[Ljava/lang/String;
    :cond_7
    const v6, 0x10006

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_1

    .line 1006
    :cond_8
    const v6, 0x10002

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_2

    .line 1019
    .restart local v1       #cmParameter:[Ljava/lang/String;
    :cond_9
    const v6, 0x10008

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_3

    .line 1026
    :cond_a
    const v6, 0x10004

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_4

    .line 1037
    :cond_b
    const v6, 0x1000c

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_5

    .line 1046
    :cond_c
    const v6, 0x10012

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_6

    .line 1062
    .restart local v2       #dsBass:I
    .restart local v3       #dsParameter:[Ljava/lang/String;
    :cond_d
    const v6, 0x10017

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_7

    .line 1065
    :cond_e
    const v6, 0x10016

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_8

    .line 1074
    :cond_f
    const v6, 0x1001c

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_9

    .line 1079
    :cond_10
    const v6, 0x10020

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_a

    .line 1086
    :cond_11
    const v6, 0x10023

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_b

    .line 1100
    .end local v1           #cmParameter:[Ljava/lang/String;
    .end local v2           #dsBass:I
    .end local v3           #dsParameter:[Ljava/lang/String;
    :cond_12
    const/4 v6, 0x2

    if-ne p2, v6, :cond_4

    .line 1102
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Commiting speaker-fx parameters"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating FIR Equalizer."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mOverriddenEqualizerLevels:[F

    if-eqz v6, :cond_16

    .line 1108
    const/4 v4, 0x0

    .local v4, i:I
    :goto_e
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mOverriddenEqualizerLevels:[F

    array-length v6, v6

    if-lt v4, v6, :cond_15

    .line 1117
    .end local v4           #i:I
    :cond_13
    const-string v6, "viper4android.headphonefx.fireq.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1118
    const v6, 0x10029

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1122
    :goto_f
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Reverberation."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const v6, 0x1002c

    const-string v7, "viper4android.headphonefx.reverb.roomsize"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1124
    const v6, 0x1002d

    const-string v7, "viper4android.headphonefx.reverb.roomwidth"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1125
    const v6, 0x1002e

    const-string v7, "viper4android.headphonefx.reverb.damp"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1126
    const v6, 0x1002f

    const-string v7, "viper4android.headphonefx.reverb.wet"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1127
    const v6, 0x10030

    const-string v7, "viper4android.headphonefx.reverb.dry"

    const-string v8, "50"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1128
    const-string v6, "viper4android.headphonefx.reverb.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1129
    const v6, 0x1002b

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1133
    :goto_10
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Convolver."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const v6, 0x10028

    const-string v7, "viper4android.headphonefx.convolver.kernel"

    const-string v8, ""

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vxString(ILjava/lang/String;)V

    .line 1135
    const-string v6, "viper4android.headphonefx.convolver.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1136
    const v6, 0x10027

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1140
    :goto_11
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating eXtraLoud."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const v6, 0x10032

    const-string v7, "viper4android.headphonefx.playbackgain.ratio"

    const-string v8, "50"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1142
    const v6, 0x10033

    const-string v7, "viper4android.headphonefx.playbackgain.volume"

    const-string v8, "80"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1143
    const v6, 0x10034

    const-string v7, "viper4android.headphonefx.playbackgain.maxscaler"

    const-string v8, "400"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1144
    const-string v6, "viper4android.headphonefx.playbackgain.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1145
    const v6, 0x10031

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1149
    :goto_12
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Limiter."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const v6, 0x10035

    const-string v7, "viper4android.headphonefx.outvol"

    const-string v8, "100"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1151
    const v6, 0x10036

    const-string v7, "viper4android.speakerfx.limiter"

    const-string v8, "100"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1154
    const-string v6, "viper4android.speakerfx.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1155
    .restart local v0       #bMasterControl:Z
    if-eqz p4, :cond_14

    const/4 v0, 0x0

    .line 1156
    :cond_14
    iget-object v6, p3, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v6, v0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    goto/16 :goto_c

    .line 1109
    .end local v0           #bMasterControl:Z
    .restart local v4       #i:I
    :cond_15
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mOverriddenEqualizerLevels:[F

    aget v6, v6, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x42c8

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v6, v7, p3}, Lcom/vipercn/viper4android/service/HeadsetService;->SetV4AEqualizerBandLevel(IIZLcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;)V

    .line 1108
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    .line 1113
    .end local v4           #i:I
    :cond_16
    const-string v6, "viper4android.headphonefx.fireq.custom"

    const-string v7, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1114
    .restart local v5       #levels:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:S
    :goto_13
    array-length v6, v5

    if-ge v4, v6, :cond_13

    .line 1115
    aget-object v6, v5, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x42c8

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v6, v7, p3}, Lcom/vipercn/viper4android/service/HeadsetService;->SetV4AEqualizerBandLevel(IIZLcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;)V

    .line 1114
    add-int/lit8 v6, v4, 0x1

    int-to-short v4, v6

    goto :goto_13

    .line 1119
    .end local v4           #i:S
    .end local v5           #levels:[Ljava/lang/String;
    :cond_17
    const v6, 0x10029

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_f

    .line 1130
    :cond_18
    const v6, 0x1002b

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_10

    .line 1137
    :cond_19
    const v6, 0x10027

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_11

    .line 1146
    :cond_1a
    const v6, 0x10031

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_12
.end method
