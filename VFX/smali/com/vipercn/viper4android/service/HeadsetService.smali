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

.field public static final PARAM_HPFX_AGC_MAXSCALER:I = 0x10017

.field public static final PARAM_HPFX_AGC_PROCESS_ENABLED:I = 0x10014

.field public static final PARAM_HPFX_AGC_RATIO:I = 0x10015

.field public static final PARAM_HPFX_AGC_VOLUME:I = 0x10016

.field public static final PARAM_HPFX_COLM_DEPTH:I = 0x1000b

.field public static final PARAM_HPFX_COLM_MIDIMAGE:I = 0x1000a

.field public static final PARAM_HPFX_COLM_PROCESS_ENABLED:I = 0x10008

.field public static final PARAM_HPFX_COLM_WIDENING:I = 0x10009

.field public static final PARAM_HPFX_CONV_PROCESS_ENABLED:I = 0x10002

.field public static final PARAM_HPFX_CONV_UPDATEKERNEL:I = 0x10003

.field public static final PARAM_HPFX_CURE_CROSSFEED:I = 0x10026

.field public static final PARAM_HPFX_CURE_PROCESS_ENABLED:I = 0x10025

.field public static final PARAM_HPFX_DIFFSURR_DELAYTIME:I = 0x1000d

.field public static final PARAM_HPFX_DIFFSURR_PROCESS_ENABLED:I = 0x1000c

.field public static final PARAM_HPFX_DYNSYS_BASSGAIN:I = 0x1001d

.field public static final PARAM_HPFX_DYNSYS_ENABLETUBE:I = 0x10019

.field public static final PARAM_HPFX_DYNSYS_PROCESS_ENABLED:I = 0x10018

.field public static final PARAM_HPFX_DYNSYS_SIDEGAIN:I = 0x1001c

.field public static final PARAM_HPFX_DYNSYS_XCOEFFS:I = 0x1001a

.field public static final PARAM_HPFX_DYNSYS_YCOEFFS:I = 0x1001b

.field public static final PARAM_HPFX_FIREQ_BANDLEVEL:I = 0x10007

.field public static final PARAM_HPFX_FIREQ_PROCESS_ENABLED:I = 0x10006

.field public static final PARAM_HPFX_LIMITER_THRESHOLD:I = 0x10029

.field public static final PARAM_HPFX_OUTPUT_PAN:I = 0x10028

.field public static final PARAM_HPFX_OUTPUT_VOLUME:I = 0x10027

.field public static final PARAM_HPFX_REVB_DAMP:I = 0x10011

.field public static final PARAM_HPFX_REVB_DRY:I = 0x10013

.field public static final PARAM_HPFX_REVB_PROCESS_ENABLED:I = 0x1000e

.field public static final PARAM_HPFX_REVB_ROOMSIZE:I = 0x1000f

.field public static final PARAM_HPFX_REVB_WET:I = 0x10012

.field public static final PARAM_HPFX_REVB_WIDTH:I = 0x10010

.field public static final PARAM_HPFX_VHE_PRECIOUS:I = 0x10005

.field public static final PARAM_HPFX_VHE_PROCESS_ENABLED:I = 0x10004

.field public static final PARAM_HPFX_VIPERBASS_BASSGAIN:I = 0x10021

.field public static final PARAM_HPFX_VIPERBASS_MODE:I = 0x1001f

.field public static final PARAM_HPFX_VIPERBASS_PROCESS_ENABLED:I = 0x1001e

.field public static final PARAM_HPFX_VIPERBASS_SPEAKER:I = 0x10020

.field public static final PARAM_HPFX_VIPERCLARITY_CLARITY:I = 0x10024

.field public static final PARAM_HPFX_VIPERCLARITY_MODE:I = 0x10023

.field public static final PARAM_HPFX_VIPERCLARITY_PROCESS_ENABLED:I = 0x10022

.field public static final PARAM_SET_COMM_STATUS:I = 0x9001

.field public static final PARAM_SET_UPDATE_STATUS:I = 0x9002

.field public static final PARAM_SPKFX_AGC_MAXSCALER:I = 0x10037

.field public static final PARAM_SPKFX_AGC_PROCESS_ENABLED:I = 0x10034

.field public static final PARAM_SPKFX_AGC_RATIO:I = 0x10035

.field public static final PARAM_SPKFX_AGC_VOLUME:I = 0x10036

.field public static final PARAM_SPKFX_CONV_PROCESS_ENABLED:I = 0x1002a

.field public static final PARAM_SPKFX_CONV_UPDATEKERNEL:I = 0x1002b

.field public static final PARAM_SPKFX_FIREQ_BANDLEVEL:I = 0x1002d

.field public static final PARAM_SPKFX_FIREQ_PROCESS_ENABLED:I = 0x1002c

.field public static final PARAM_SPKFX_LIMITER_THRESHOLD:I = 0x10039

.field public static final PARAM_SPKFX_OUTPUT_VOLUME:I = 0x10038

.field public static final PARAM_SPKFX_REVB_DAMP:I = 0x10031

.field public static final PARAM_SPKFX_REVB_DRY:I = 0x10033

.field public static final PARAM_SPKFX_REVB_PROCESS_ENABLED:I = 0x1002e

.field public static final PARAM_SPKFX_REVB_ROOMSIZE:I = 0x1002f

.field public static final PARAM_SPKFX_REVB_WET:I = 0x10032

.field public static final PARAM_SPKFX_REVB_WIDTH:I = 0x10030

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

    .line 353
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$LocalBinder;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mBinder:Lcom/vipercn/viper4android/service/HeadsetService$LocalBinder;

    .line 354
    iput-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mUseHeadset:Z

    .line 355
    iput-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mUseBluetooth:Z

    .line 356
    const-string v0, "none"

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mPreviousMode:Ljava/lang/String;

    .line 359
    iput-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    .line 360
    iput-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mServicePrepared:Z

    .line 361
    iput-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    .line 363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFXList:Ljava/util/Map;

    .line 364
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;

    invoke-direct {v0, p0, v2}, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mV4AMutex:Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;

    .line 366
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->tmDrvStatusCommTimer:Ljava/util/Timer;

    .line 367
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$1;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$1;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->hDrvStatusCommTimer:Landroid/os/Handler;

    .line 387
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$2;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$2;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->ttDrvStatusCommTimer:Ljava/util/TimerTask;

    .line 398
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$3;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$3;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mAudioSessionReceiver:Landroid/content/BroadcastReceiver;

    .line 459
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$4;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$4;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mPreferenceUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 469
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$5;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$5;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mShowNotifyReceiver:Landroid/content/BroadcastReceiver;

    .line 485
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$6;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$6;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mCancelNotifyReceiver:Landroid/content/BroadcastReceiver;

    .line 495
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$7;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$7;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    .line 505
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$8;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/service/HeadsetService$8;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mRoutingReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    return-void
.end method

.method private CancelNotification()V
    .locals 2

    .prologue
    .line 586
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 587
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/16 v1, 0x1234

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 588
    return-void
.end method

.method private ShowNotification(Ljava/lang/String;)V
    .locals 14
    .parameter "nFXType"

    .prologue
    .line 557
    const-string v10, "com.vipercn.viper4android.settings"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/vipercn/viper4android/service/HeadsetService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 558
    .local v8, preferences:Landroid/content/SharedPreferences;
    const-string v10, "viper4android.settings.show_notify_icon"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 559
    .local v0, bEnableNotify:Z
    if-nez v0, :cond_0

    .line 561
    const-string v10, "ViPER4Android"

    const-string v11, "ShowNotification(): show_notify = false"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :goto_0
    return-void

    .line 565
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

    .line 566
    .local v4, nIconID:I
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ViPER4Android FX "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 568
    .local v9, szNotifyText:Ljava/lang/String;
    new-instance v7, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v7, v4, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 569
    .local v7, notify:Landroid/app/Notification;
    iget v10, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v7, Landroid/app/Notification;->flags:I

    .line 570
    iget v10, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x20

    iput v10, v7, Landroid/app/Notification;->flags:I

    .line 571
    const/4 v10, 0x0

    iput v10, v7, Landroid/app/Notification;->defaults:I

    .line 573
    const-string v3, "ViPER4Android FX"

    .line 574
    .local v3, contentTitle:Ljava/lang/CharSequence;
    move-object v2, p1

    .line 576
    .local v2, contentText:Ljava/lang/CharSequence;
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/vipercn/viper4android/activity/ViPER4Android;

    invoke-direct {v5, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 577
    .local v5, notificationIntent:Landroid/content/Intent;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p0, v10, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 578
    .local v1, contentItent:Landroid/app/PendingIntent;
    invoke-virtual {v7, p0, v3, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 580
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Lcom/vipercn/viper4android/service/HeadsetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 581
    .local v6, notificationManager:Landroid/app/NotificationManager;
    const/16 v10, 0x1234

    invoke-virtual {v6, v10, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/vipercn/viper4android/service/HeadsetService;)Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    .locals 1
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vipercn/viper4android/service/HeadsetService;)Z
    .locals 1
    .parameter

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vipercn/viper4android/service/HeadsetService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->hDrvStatusCommTimer:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vipercn/viper4android/service/HeadsetService;)Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;
    .locals 1
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mV4AMutex:Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vipercn/viper4android/service/HeadsetService;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFXList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vipercn/viper4android/service/HeadsetService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android/service/HeadsetService;->ShowNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/vipercn/viper4android/service/HeadsetService;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->CancelNotification()V

    return-void
.end method


# virtual methods
.method public GetConvolverUsable()Z
    .locals 3

    .prologue
    .line 823
    const/4 v0, 0x0

    .line 824
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v2, 0x8009

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 827
    const/4 v0, 0x1

    .line 829
    :cond_0
    return v0
.end method

.method public GetDriverChannels()I
    .locals 3

    .prologue
    .line 815
    const/4 v0, 0x0

    .line 816
    .local v0, nResult:I
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v2, 0x8008

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v0

    .line 818
    :cond_0
    return v0
.end method

.method public GetDriverEffectType()I
    .locals 3

    .prologue
    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, nResult:I
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 801
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v2, 0x8006

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v0

    .line 802
    :cond_0
    return v0
.end method

.method public GetDriverEnabled()Z
    .locals 3

    .prologue
    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 769
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v2, 0x8003

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 770
    const/4 v0, 0x1

    .line 772
    :cond_0
    return v0
.end method

.method public GetDriverIsReady()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    return v0
.end method

.method public GetDriverNEON()Z
    .locals 3

    .prologue
    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v2, 0x8002

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 759
    const/4 v0, 0x1

    .line 761
    :cond_0
    return v0
.end method

.method public GetDriverProcess()Z
    .locals 3

    .prologue
    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 791
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v2, 0x8005

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 792
    const/4 v0, 0x1

    .line 794
    :cond_0
    return v0
.end method

.method public GetDriverSamplingRate()I
    .locals 3

    .prologue
    .line 807
    const/4 v0, 0x0

    .line 808
    .local v0, nResult:I
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v2, 0x8007

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v0

    .line 810
    :cond_0
    return v0
.end method

.method public GetDriverUsable()Z
    .locals 3

    .prologue
    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v2, 0x8004

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 781
    const/4 v0, 0x1

    .line 783
    :cond_0
    return v0
.end method

.method public GetDriverVersion()Ljava/lang/String;
    .locals 7

    .prologue
    .line 742
    const/4 v4, 0x0

    .line 743
    .local v4, nVerDWord:I
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v5, :cond_0

    .line 744
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v6, 0x8001

    invoke-virtual {v5, v6}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v4

    .line 746
    :cond_0
    const/high16 v5, -0x100

    and-int/2addr v5, v4

    shr-int/lit8 v2, v5, 0x18

    .line 747
    .local v2, VMain:I
    const/high16 v5, 0xff

    and-int/2addr v5, v4

    shr-int/lit8 v3, v5, 0x10

    .line 748
    .local v3, VSub:I
    const v5, 0xff00

    and-int/2addr v5, v4

    shr-int/lit8 v1, v5, 0x8

    .line 749
    .local v1, VExt:I
    and-int/lit16 v5, v4, 0xff

    shr-int/lit8 v0, v5, 0x0

    .line 750
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
    .line 720
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
    .line 834
    if-eqz p4, :cond_0

    iget-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-nez v0, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    if-eqz p3, :cond_2

    const v0, 0x10007

    invoke-virtual {p4, v0, p1, p2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x2(III)V

    goto :goto_0

    .line 836
    :cond_2
    const v0, 0x1002d

    invoke-virtual {p4, v0, p1, p2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x2(III)V

    goto :goto_0
.end method

.method public StartStatusUpdating()V
    .locals 3

    .prologue
    .line 730
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v1, 0x9002

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 732
    :cond_0
    return-void
.end method

.method public StopStatusUpdating()V
    .locals 3

    .prologue
    .line 736
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    const v1, 0x9002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 738
    :cond_0
    return-void
.end method

.method public getAudioOutputRouting()Ljava/lang/String;
    .locals 4

    .prologue
    .line 707
    const-string v2, "com.vipercn.viper4android.settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/vipercn/viper4android/service/HeadsetService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 708
    .local v0, prefSettings:Landroid/content/SharedPreferences;
    const-string v2, "viper4android.settings.lock_effect"

    const-string v3, "none"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, szLockedEffect:Ljava/lang/String;
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 711
    iget-boolean v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mUseBluetooth:Z

    if-eqz v2, :cond_1

    const-string v1, "bluetooth"

    .line 715
    .end local v1           #szLockedEffect:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 712
    .restart local v1       #szLockedEffect:Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mUseHeadset:Z

    if-eqz v2, :cond_2

    const-string v1, "headset"

    goto :goto_0

    .line 713
    :cond_2
    const-string v1, "speaker"

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mBinder:Lcom/vipercn/viper4android/service/HeadsetService$LocalBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 593
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 594
    iput-boolean v11, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mServicePrepared:Z

    .line 598
    :try_start_0
    invoke-direct {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->CancelNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 602
    :try_start_1
    const-string v0, "ViPER4Android"

    const-string v1, "Creating global V4ADSPModule ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-nez v0, :cond_0

    .line 604
    new-instance v0, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    sget-object v1, Lcom/vipercn/viper4android/service/HeadsetService;->ID_V4A_GENERAL_FX:Ljava/util/UUID;

    const/16 v2, 0x7fff

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;Ljava/util/UUID;II)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 612
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-nez v0, :cond_1

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    .line 622
    :goto_1
    const/4 v0, 0x1

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->startForeground(ILandroid/app/Notification;)V

    .line 624
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 625
    .local v6, audioFilter:Landroid/content/IntentFilter;
    const-string v0, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    const-string v0, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mAudioSessionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v6}, Lcom/vipercn/viper4android/service/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 629
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 630
    .local v9, screenFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/vipercn/viper4android/service/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 633
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 634
    .local v8, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mRoutingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/vipercn/viper4android/service/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 639
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mPreferenceUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.vipercn.viper4android.UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 640
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mShowNotifyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.vipercn.viper4android.SHOWNOTIFY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 641
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mCancelNotifyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.vipercn.viper4android.CANCELNOTIFY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 643
    const-string v0, "ViPER4Android"

    const-string v1, "Service launched."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem()V

    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mServicePrepared:Z

    .line 649
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->tmDrvStatusCommTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->ttDrvStatusCommTimer:Ljava/util/TimerTask;

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 657
    .end local v6           #audioFilter:Landroid/content/IntentFilter;
    .end local v8           #intentFilter:Landroid/content/IntentFilter;
    .end local v9           #screenFilter:Landroid/content/IntentFilter;
    :goto_2
    return-void

    .line 606
    :catch_0
    move-exception v7

    .line 608
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "ViPER4Android"

    const-string v1, "Creating V4ADSPModule failed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 651
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 653
    .restart local v7       #e:Ljava/lang/Exception;
    iput-boolean v11, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mServicePrepared:Z

    .line 654
    invoke-direct {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->CancelNotification()V

    .line 655
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 616
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    .line 617
    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->GetDriverVersion()Ljava/lang/String;

    move-result-object v10

    .line 618
    .local v10, szDriverVer:Ljava/lang/String;
    const-string v0, "0.0.0.0"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    goto/16 :goto_1

    .line 619
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
    .line 662
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 664
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mServicePrepared:Z

    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->tmDrvStatusCommTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 670
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->stopForeground(Z)V

    .line 672
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mAudioSessionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 673
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 674
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mRoutingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 675
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mPreferenceUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 676
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mShowNotifyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 677
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mCancelNotifyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 679
    invoke-direct {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->CancelNotification()V

    .line 681
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    invoke-virtual {v1}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->release()V

    .line 683
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    .line 685
    const-string v1, "ViPER4Android"

    const-string v2, "Service destroyed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :goto_0
    return-void

    .line 687
    :catch_0
    move-exception v0

    .line 689
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->CancelNotification()V

    goto :goto_0
.end method

.method public setEqualizerLevels([F)V
    .locals 0
    .parameter "levels"

    .prologue
    .line 701
    iput-object p1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mOverriddenEqualizerLevels:[F

    .line 702
    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem()V

    .line 703
    return-void
.end method

.method protected updateSystem()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 841
    invoke-virtual {p0}, Lcom/vipercn/viper4android/service/HeadsetService;->getAudioOutputRouting()Ljava/lang/String;

    move-result-object v1

    .line 842
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

    .line 843
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

    .line 845
    const/4 v2, 0x0

    .line 846
    .local v2, nFXType:I
    const-string v6, "headset"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "bluetooth"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 847
    :cond_0
    const/4 v2, 0x1

    .line 851
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mPreviousMode:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 853
    iput-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mPreviousMode:Ljava/lang/String;

    .line 854
    const-string v6, "headset"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 855
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

    .line 861
    :cond_2
    :goto_1
    const-string v6, "com.vipercn.viper4android.settings"

    invoke-virtual {p0, v6, v10}, Lcom/vipercn/viper4android/service/HeadsetService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 862
    .local v3, prefSettings:Landroid/content/SharedPreferences;
    const-string v6, "viper4android.settings.compatiblemode"

    const-string v7, "global"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 863
    .local v5, szCompatibleMode:Ljava/lang/String;
    const/4 v0, 0x0

    .line 864
    .local v0, mFXInLocalMode:Z
    const-string v6, "global"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v0, 0x0

    .line 867
    :goto_2
    const-string v6, "ViPER4Android"

    const-string v7, "<+++++++++++++++ Update global effect +++++++++++++++>"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {p0, v4, v2, v0}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem_Global(Landroid/content/SharedPreferences;IZ)V

    .line 869
    const-string v6, "ViPER4Android"

    const-string v7, "<++++++++++++++++++++++++++++++++++++++++++++++++++++>"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const-string v6, "ViPER4Android"

    const-string v7, "<+++++++++++++++ Update local effect +++++++++++++++>"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-virtual {p0, v4, v2, v0}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem_Local(Landroid/content/SharedPreferences;IZ)V

    .line 873
    const-string v6, "ViPER4Android"

    const-string v7, "<+++++++++++++++++++++++++++++++++++++++++++++++++++>"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return-void

    .line 848
    .end local v0           #mFXInLocalMode:Z
    .end local v3           #prefSettings:Landroid/content/SharedPreferences;
    .end local v5           #szCompatibleMode:Ljava/lang/String;
    :cond_3
    const-string v6, "speaker"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 849
    const/4 v2, 0x2

    goto :goto_0

    .line 856
    :cond_4
    const-string v6, "bluetooth"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 857
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

    .line 858
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

    .line 865
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

    .line 878
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    iget-object v2, v2, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-nez v2, :cond_2

    .line 880
    :cond_0
    const-string v2, "ViPER4Android"

    const-string v3, "updateSystem(): Effects is invalid!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_1
    :goto_0
    return-void

    .line 884
    :cond_2
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    iget-object v2, v2, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v1

    .line 885
    .local v1, mFXVerify:Landroid/media/audiofx/AudioEffect$Descriptor;
    if-nez v1, :cond_3

    .line 887
    const-string v2, "ViPER4Android"

    const-string v3, "updateSystem(): Effects token lost!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 890
    :cond_3
    iget-object v2, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v3, Lcom/vipercn/viper4android/service/HeadsetService;->ID_V4A_GENERAL_FX:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 893
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

    .line 892
    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 894
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 896
    const-string v2, "ViPER4Android"

    const-string v3, "updateSystem(): Effects token lost!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string v2, "ViPER4Android"

    const-string v3, "updateSystem(): The effect has been replaced by system!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v2, "ViPER4Android"

    const-string v3, "updateSystem(): Reloading driver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :try_start_0
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    invoke-virtual {v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->release()V

    .line 902
    new-instance v2, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    sget-object v3, Lcom/vipercn/viper4android/service/HeadsetService;->ID_V4A_GENERAL_FX:Ljava/util/UUID;

    const/16 v4, 0x7fff

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;Ljava/util/UUID;II)V

    iput-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    .line 903
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    iget-object v2, v2, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 910
    :cond_4
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    iget-object v2, v2, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->hasControl()Z

    move-result v2

    if-nez v2, :cond_5

    .line 913
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

    .line 912
    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 914
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 916
    const-string v2, "ViPER4Android"

    const-string v3, "updateSystem(): Effects token lost!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string v2, "ViPER4Android"

    const-string v3, "updateSystem(): The effect has been taken over by system!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const-string v2, "ViPER4Android"

    const-string v3, "updateSystem(): Reloading driver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :try_start_1
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    invoke-virtual {v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->release()V

    .line 922
    new-instance v2, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    sget-object v3, Lcom/vipercn/viper4android/service/HeadsetService;->ID_V4A_GENERAL_FX:Ljava/util/UUID;

    const/16 v4, 0x7fff

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;Ljava/util/UUID;II)V

    iput-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    .line 923
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    iget-object v2, v2, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_1

    .line 931
    :cond_5
    if-eqz p3, :cond_6

    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    invoke-virtual {p0, p1, p2, v2, v7}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem_Module(Landroid/content/SharedPreferences;ILcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;Z)V

    goto/16 :goto_0

    .line 905
    :catch_0
    move-exception v0

    .line 907
    .local v0, e:Ljava/lang/Exception;
    goto/16 :goto_0

    .line 925
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 927
    .restart local v0       #e:Ljava/lang/Exception;
    goto/16 :goto_0

    .line 932
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

    .line 937
    iget-object v4, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    iget-object v4, v4, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mDriverIsReady:Z

    if-nez v4, :cond_1

    .line 939
    :cond_0
    const-string v4, "ViPER4Android"

    const-string v5, "updateSystem(): Effects is invalid!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :goto_0
    return-void

    .line 943
    :cond_1
    iget-object v4, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFX:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    iget-object v4, v4, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v4}, Landroid/media/audiofx/AudioEffect;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v1

    .line 944
    .local v1, mFXVerify:Landroid/media/audiofx/AudioEffect$Descriptor;
    if-nez v1, :cond_2

    .line 946
    const-string v4, "ViPER4Android"

    const-string v5, "updateSystem(): Effects token lost!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 949
    :cond_2
    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v5, Lcom/vipercn/viper4android/service/HeadsetService;->ID_V4A_GENERAL_FX:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 951
    const-string v4, "ViPER4Android"

    const-string v5, "updateSystem(): Effects token lost!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 955
    :cond_3
    iget-object v4, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mV4AMutex:Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;

    invoke-virtual {v4}, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;->acquire()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 957
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

    .line 972
    iget-object v4, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mV4AMutex:Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;

    invoke-virtual {v4}, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;->release()V

    goto :goto_0

    .line 957
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 961
    .local v2, sessionId:Ljava/lang/Integer;
    :try_start_0
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFXList:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    .line 962
    .local v3, v4aModule:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    if-nez p3, :cond_5

    const/4 v5, 0x1

    invoke-virtual {p0, p1, p2, v3, v5}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem_Module(Landroid/content/SharedPreferences;ILcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 965
    .end local v3           #v4aModule:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    :catch_0
    move-exception v0

    .line 967
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ViPER4Android"

    const-string v6, "Trouble trying to manage session %d, removing..."

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 968
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFXList:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 963
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #v4aModule:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    :cond_5
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v3, v5}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem_Module(Landroid/content/SharedPreferences;ILcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 974
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
    .line 979
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Commiting effects type"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const v6, 0x10001

    invoke-virtual {p3, v6, p2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 983
    const/4 v6, 0x1

    if-ne p2, v6, :cond_13

    .line 985
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Commiting headphone-fx parameters"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating FIR Equalizer."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mOverriddenEqualizerLevels:[F

    if-eqz v6, :cond_6

    .line 991
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mOverriddenEqualizerLevels:[F

    array-length v6, v6

    if-lt v4, v6, :cond_5

    .line 1000
    .end local v4           #i:I
    :cond_0
    const-string v6, "viper4android.headphonefx.fireq.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1001
    const v6, 0x10006

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1005
    :goto_1
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Convolver."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const v6, 0x10003

    const-string v7, "viper4android.headphonefx.convolver.kernel"

    const-string v8, ""

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vxString(ILjava/lang/String;)V

    .line 1007
    const-string v6, "viper4android.headphonefx.convolver.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1008
    const v6, 0x10002

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1012
    :goto_2
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Field Surround (Colorful Music)."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const-string v6, "viper4android.headphonefx.colorfulmusic.coeffs"

    const-string v7, "120;200"

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1014
    .local v1, cmParameter:[Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1016
    const v6, 0x10009

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1017
    const v6, 0x1000b

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1019
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

    .line 1020
    const-string v6, "viper4android.headphonefx.colorfulmusic.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1021
    const v6, 0x10008

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1025
    :goto_3
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Diff Surround."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const v6, 0x1000d

    const-string v7, "viper4android.headphonefx.diffsurr.delay"

    const-string v8, "500"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1027
    const-string v6, "viper4android.headphonefx.diffsurr.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1028
    const v6, 0x1000c

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1032
    :goto_4
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating ViPER\'s Headphone Surround Engine +."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
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

    .line 1034
    const-string v6, "viper4android.headphonefx.vhs.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1035
    const v6, 0x10004

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1039
    :goto_5
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Reverberation."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const v6, 0x1000f

    const-string v7, "viper4android.headphonefx.reverb.roomsize"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1041
    const v6, 0x10010

    const-string v7, "viper4android.headphonefx.reverb.roomwidth"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1042
    const v6, 0x10011

    const-string v7, "viper4android.headphonefx.reverb.damp"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1043
    const v6, 0x10012

    const-string v7, "viper4android.headphonefx.reverb.wet"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1044
    const v6, 0x10013

    const-string v7, "viper4android.headphonefx.reverb.dry"

    const-string v8, "50"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1045
    const-string v6, "viper4android.headphonefx.reverb.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1046
    const v6, 0x1000e

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1050
    :goto_6
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Playback AGC."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const v6, 0x10015

    const-string v7, "viper4android.headphonefx.playbackgain.ratio"

    const-string v8, "50"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1052
    const v6, 0x10016

    const-string v7, "viper4android.headphonefx.playbackgain.volume"

    const-string v8, "80"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1053
    const v6, 0x10017

    const-string v7, "viper4android.headphonefx.playbackgain.maxscaler"

    const-string v8, "400"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1054
    const-string v6, "viper4android.headphonefx.playbackgain.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1055
    const v6, 0x10014

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1059
    :goto_7
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Dynamic System."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const-string v6, "viper4android.headphonefx.dynamicsystem.coeffs"

    const-string v7, "100;5600;40;40;50;50"

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1061
    .local v3, dsParameter:[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    .line 1063
    const v6, 0x1001a

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

    .line 1064
    const v6, 0x1001b

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

    .line 1065
    const v6, 0x1001c

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

    .line 1067
    :cond_2
    const-string v6, "viper4android.headphonefx.dynamicsystem.bass"

    const-string v7, "0"

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1068
    .local v2, dsBass:I
    mul-int/lit8 v6, v2, 0x14

    add-int/lit8 v2, v6, 0x64

    .line 1069
    const v6, 0x1001d

    invoke-virtual {p3, v6, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1070
    const-string v6, "viper4android.headphonefx.dynamicsystem.tube"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1071
    const v6, 0x10019

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1073
    :goto_8
    const-string v6, "viper4android.headphonefx.dynamicsystem.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1074
    const v6, 0x10018

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1078
    :goto_9
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Fidelity Control."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const v6, 0x1001f

    const-string v7, "viper4android.headphonefx.fidelity.bass.mode"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1080
    const v6, 0x10020

    const-string v7, "viper4android.headphonefx.fidelity.bass.freq"

    const-string v8, "40"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1081
    const v6, 0x10021

    const-string v7, "viper4android.headphonefx.fidelity.bass.gain"

    const-string v8, "50"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1082
    const-string v6, "viper4android.headphonefx.fidelity.bass.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1083
    const v6, 0x1001e

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1085
    :goto_a
    const v6, 0x10023

    const-string v7, "viper4android.headphonefx.fidelity.clarity.mode"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1086
    const v6, 0x10024

    const-string v7, "viper4android.headphonefx.fidelity.clarity.gain"

    const-string v8, "50"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1087
    const-string v6, "viper4android.headphonefx.fidelity.clarity.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1088
    const v6, 0x10022

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1092
    :goto_b
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Cure System."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const v6, 0x10026

    const-string v7, "viper4android.headphonefx.cure.crossfeed"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1094
    const-string v6, "viper4android.headphonefx.cure.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1095
    const v6, 0x10025

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1099
    :goto_c
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Limiter."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const v6, 0x10027

    const-string v7, "viper4android.headphonefx.outvol"

    const-string v8, "100"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1101
    const v6, 0x10028

    const-string v7, "viper4android.headphonefx.channelpan"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1102
    const v6, 0x10029

    const-string v7, "viper4android.headphonefx.limiter"

    const-string v8, "100"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1105
    const-string v6, "viper4android.headphonefx.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1106
    .local v0, bMasterControl:Z
    if-eqz p4, :cond_3

    const/4 v0, 0x0

    .line 1107
    :cond_3
    iget-object v6, p3, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v6, v0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 1171
    .end local v0           #bMasterControl:Z
    .end local v1           #cmParameter:[Ljava/lang/String;
    .end local v2           #dsBass:I
    .end local v3           #dsParameter:[Ljava/lang/String;
    :cond_4
    :goto_d
    const-string v6, "ViPER4Android"

    const-string v7, "System updated."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    return-void

    .line 992
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

    .line 991
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 996
    .end local v4           #i:I
    :cond_6
    const-string v6, "viper4android.headphonefx.fireq.custom"

    const-string v7, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 997
    .local v5, levels:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:S
    :goto_e
    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 998
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

    .line 997
    add-int/lit8 v6, v4, 0x1

    int-to-short v4, v6

    goto :goto_e

    .line 1002
    .end local v4           #i:S
    .end local v5           #levels:[Ljava/lang/String;
    :cond_7
    const v6, 0x10006

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_1

    .line 1009
    :cond_8
    const v6, 0x10002

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_2

    .line 1022
    .restart local v1       #cmParameter:[Ljava/lang/String;
    :cond_9
    const v6, 0x10008

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_3

    .line 1029
    :cond_a
    const v6, 0x1000c

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_4

    .line 1036
    :cond_b
    const v6, 0x10004

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_5

    .line 1047
    :cond_c
    const v6, 0x1000e

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_6

    .line 1056
    :cond_d
    const v6, 0x10014

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_7

    .line 1072
    .restart local v2       #dsBass:I
    .restart local v3       #dsParameter:[Ljava/lang/String;
    :cond_e
    const v6, 0x10019

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_8

    .line 1075
    :cond_f
    const v6, 0x10018

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_9

    .line 1084
    :cond_10
    const v6, 0x1001e

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_a

    .line 1089
    :cond_11
    const v6, 0x10022

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_b

    .line 1096
    :cond_12
    const v6, 0x10025

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_c

    .line 1111
    .end local v1           #cmParameter:[Ljava/lang/String;
    .end local v2           #dsBass:I
    .end local v3           #dsParameter:[Ljava/lang/String;
    :cond_13
    const/4 v6, 0x2

    if-ne p2, v6, :cond_4

    .line 1113
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Commiting speaker-fx parameters"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating FIR Equalizer."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mOverriddenEqualizerLevels:[F

    if-eqz v6, :cond_17

    .line 1119
    const/4 v4, 0x0

    .local v4, i:I
    :goto_f
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService;->mOverriddenEqualizerLevels:[F

    array-length v6, v6

    if-lt v4, v6, :cond_16

    .line 1128
    .end local v4           #i:I
    :cond_14
    const-string v6, "viper4android.headphonefx.fireq.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1129
    const v6, 0x1002c

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1133
    :goto_10
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Reverberation."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const v6, 0x1002f

    const-string v7, "viper4android.headphonefx.reverb.roomsize"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1135
    const v6, 0x10030

    const-string v7, "viper4android.headphonefx.reverb.roomwidth"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1136
    const v6, 0x10031

    const-string v7, "viper4android.headphonefx.reverb.damp"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1137
    const v6, 0x10032

    const-string v7, "viper4android.headphonefx.reverb.wet"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1138
    const v6, 0x10033

    const-string v7, "viper4android.headphonefx.reverb.dry"

    const-string v8, "50"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1139
    const-string v6, "viper4android.headphonefx.reverb.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1140
    const v6, 0x1002e

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1144
    :goto_11
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Convolver."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const v6, 0x1002b

    const-string v7, "viper4android.headphonefx.convolver.kernel"

    const-string v8, ""

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vxString(ILjava/lang/String;)V

    .line 1146
    const-string v6, "viper4android.headphonefx.convolver.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1147
    const v6, 0x1002a

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1151
    :goto_12
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating eXtraLoud."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const v6, 0x10035

    const-string v7, "viper4android.headphonefx.playbackgain.ratio"

    const-string v8, "50"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1153
    const v6, 0x10036

    const-string v7, "viper4android.headphonefx.playbackgain.volume"

    const-string v8, "80"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1154
    const v6, 0x10037

    const-string v7, "viper4android.headphonefx.playbackgain.maxscaler"

    const-string v8, "400"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1155
    const-string v6, "viper4android.headphonefx.playbackgain.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1156
    const v6, 0x10034

    const/4 v7, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1160
    :goto_13
    const-string v6, "ViPER4Android"

    const-string v7, "updateSystem(): Updating Limiter."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const v6, 0x10038

    const-string v7, "viper4android.headphonefx.outvol"

    const-string v8, "100"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1162
    const v6, 0x10039

    const-string v7, "viper4android.speakerfx.limiter"

    const-string v8, "100"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1165
    const-string v6, "viper4android.speakerfx.enable"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1166
    .restart local v0       #bMasterControl:Z
    if-eqz p4, :cond_15

    const/4 v0, 0x0

    .line 1167
    :cond_15
    iget-object v6, p3, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v6, v0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    goto/16 :goto_d

    .line 1120
    .end local v0           #bMasterControl:Z
    .restart local v4       #i:I
    :cond_16
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

    .line 1119
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    .line 1124
    .end local v4           #i:I
    :cond_17
    const-string v6, "viper4android.headphonefx.fireq.custom"

    const-string v7, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1125
    .restart local v5       #levels:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:S
    :goto_14
    array-length v6, v5

    if-ge v4, v6, :cond_14

    .line 1126
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

    .line 1125
    add-int/lit8 v6, v4, 0x1

    int-to-short v4, v6

    goto :goto_14

    .line 1130
    .end local v4           #i:S
    .end local v5           #levels:[Ljava/lang/String;
    :cond_18
    const v6, 0x1002c

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_10

    .line 1141
    :cond_19
    const v6, 0x1002e

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_11

    .line 1148
    :cond_1a
    const v6, 0x1002a

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_12

    .line 1157
    :cond_1b
    const v6, 0x10034

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_13
.end method
