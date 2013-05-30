.class public Landroid/hardware/motion/MotionRecognitionService;
.super Landroid/hardware/motion/IMotionRecognitionService$Stub;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionService$EventPool;,
        Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;,
        Landroid/hardware/motion/MotionRecognitionService$Listener;,
        Landroid/hardware/motion/MotionRecognitionService$PollIntThread;
    }
.end annotation


# static fields
.field private static final ACTION_MOTIONS_SETTINGS_CHANGED:Ljava/lang/String; = "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

.field private static final CONFIG_BROADCAST_INTENT:Z = false

.field private static final CONFIG_ENGINE_SEND_GYRO:Z = false

.field private static final CONFIG_READ_SETTINGS:Z = true

.field private static final CONFIG_USE_ALWAYS:Z = false

.field public static final FILE_DIR:Ljava/lang/String; = "/data/log/acc_int"

.field private static final PANNING_ICON:I = 0x1

.field private static final PANNING_IMAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionService"

.field private static final localLOGD:Z = false

.field private static final localLOGV:Z = false

.field private static final localLOGVV:Z = false

#the value of this static final field might be set in the static constructor
.field private static final mDefaultAppId:I = 0x0

.field private static final mSensitivityDef:I = 0x5

.field private static final mSensitivityMax:I = 0xa


# instance fields
.field mBootCompeleted:Z

.field private final mContext:Landroid/content/Context;

.field mEnableAccINT:Z

.field mEngineInitialized:Z

.field mEngineIsAvailable:Z

.field mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

.field mFlatEvent:Z

.field mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

.field mKeyInput:I

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/motion/MotionRecognitionService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field mLockEngine:Ljava/lang/Object;

.field mLogPW:Ljava/io/PrintWriter;

.field mLogPath:Ljava/lang/String;

.field mLogTime:J

.field mMsgHandler:Landroid/os/Handler;

.field private mPM:Landroid/os/PowerManager;

.field mPollThread:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

.field private mPostAccelVal:[D

.field private mPostGyroVal:[D

.field private mPostLightVal:I

.field private mPostProxVal:S

.field private mPostTouch:Z

.field mPowerTime:J

.field private mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mResolver:Landroid/content/ContentResolver;

.field mRotate:I

.field mScreenOn:Z

.field mSensorDelayInMsec:I

.field mSensorsEnabled:I

.field mSensorsUsed:I

.field mThread:Landroid/os/HandlerThread;

.field mfdAccint:I

.field private msspenabled:Z

.field private observer:Landroid/os/FileObserver;

.field orientationListener:Landroid/view/WindowOrientationListener;

.field private final sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

.field private final sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

.field private final sensorLightListener:Landroid/hardware/SensorEventListener;

.field sensorManager:Landroid/hardware/SensorManager;

.field private final sensorProximityListener:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/hardware/motion/MotionRecognitionEngineAppId$eAPPID;->APPID_TEST:Landroid/hardware/motion/MotionRecognitionEngineAppId$eAPPID;

    invoke-virtual {v0}, Landroid/hardware/motion/MotionRecognitionEngineAppId$eAPPID;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/motion/MotionRecognitionService;->mDefaultAppId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 185
    invoke-direct {p0}, Landroid/hardware/motion/IMotionRecognitionService$Stub;-><init>()V

    .line 81
    iput-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    .line 82
    const-string v1, ""

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    .line 83
    iput-wide v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    .line 84
    iput-wide v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mPowerTime:J

    .line 86
    iput-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    .line 87
    iput-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    .line 88
    iput-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mPollThread:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    .line 93
    iput-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    .line 94
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    .line 96
    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    .line 97
    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    .line 98
    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mBootCompeleted:Z

    .line 99
    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    .line 100
    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mEnableAccINT:Z

    .line 101
    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mFlatEvent:Z

    .line 103
    const/16 v1, 0x1c

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    .line 104
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    .line 105
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    .line 106
    const/16 v1, 0x14

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorDelayInMsec:I

    .line 107
    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mfdAccint:I

    .line 108
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mKeyInput:I

    .line 111
    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    .line 112
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$1;

    invoke-direct {v1, p0}, Landroid/hardware/motion/MotionRecognitionService$1;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$3;

    invoke-direct {v1, p0}, Landroid/hardware/motion/MotionRecognitionService$3;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mMsgHandler:Landroid/os/Handler;

    .line 1272
    new-array v1, v5, [D

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D

    .line 1273
    new-array v1, v5, [D

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D

    .line 1274
    const/4 v1, 0x5

    iput-short v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostProxVal:S

    .line 1276
    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostTouch:Z

    .line 1278
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$4;

    invoke-direct {v1, p0}, Landroid/hardware/motion/MotionRecognitionService$4;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    .line 1313
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$5;

    invoke-direct {v1, p0}, Landroid/hardware/motion/MotionRecognitionService$5;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 1350
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$6;

    invoke-direct {v1, p0}, Landroid/hardware/motion/MotionRecognitionService$6;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorProximityListener:Landroid/hardware/SensorEventListener;

    .line 1384
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$7;

    invoke-direct {v1, p0}, Landroid/hardware/motion/MotionRecognitionService$7;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorLightListener:Landroid/hardware/SensorEventListener;

    .line 186
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    .line 188
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->native_motionengine_is_available()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    .line 189
    iget-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    if-nez v1, :cond_1

    .line 190
    const-string v1, "MotionRecognitionService"

    const-string v2, "  Engine is not included"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 188
    goto :goto_0

    .line 194
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v4, "motion_recognition"

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    .line 195
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 197
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    .line 199
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$EventPool;

    invoke-direct {v1, p0}, Landroid/hardware/motion/MotionRecognitionService$EventPool;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    .line 201
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mMsgHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v4}, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPollThread:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    .line 203
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPollThread:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->start()V

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    .line 209
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android.hardware.sensor.hub"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    .line 210
    const-string v1, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  SSP enabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 212
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPM:Landroid/os/PowerManager;

    .line 224
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPM:Landroid/os/PowerManager;

    const-string v4, "reactive_alert"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

    .line 225
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 228
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    .line 230
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$2;

    invoke-direct {v1, p0, p1}, Landroid/hardware/motion/MotionRecognitionService$2;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->orientationListener:Landroid/view/WindowOrientationListener;

    goto/16 :goto_1
.end method

.method static synthetic access$000(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->finalizeIfPossible()V

    return-void
.end method

.method static synthetic access$1000(Landroid/hardware/motion/MotionRecognitionService;)S
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-short v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostProxVal:S

    return v0
.end method

.method static synthetic access$1002(Landroid/hardware/motion/MotionRecognitionService;S)S
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-short p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostProxVal:S

    return p1
.end method

.method static synthetic access$1100(Landroid/hardware/motion/MotionRecognitionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostLightVal:I

    return v0
.end method

.method static synthetic access$1102(Landroid/hardware/motion/MotionRecognitionService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostLightVal:I

    return p1
.end method

.method static synthetic access$1200(Landroid/hardware/motion/MotionRecognitionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostTouch:Z

    return v0
.end method

.method static synthetic access$1300(Landroid/hardware/motion/MotionRecognitionService;DDDDDDSIZII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p17}, Landroid/hardware/motion/MotionRecognitionService;->native_getscenario_id(DDDDDDSIZII)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/hardware/motion/MotionRecognitionService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/motion/MotionRecognitionService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->native_volume_changed(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/motion/MotionRecognitionService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/motion/MotionRecognitionService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->native_motionengine_poll_accint(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/hardware/motion/MotionRecognitionService;Landroid/hardware/motion/MREvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->disableUnusedSensors()V

    return-void
.end method

.method static synthetic access$800(Landroid/hardware/motion/MotionRecognitionService;)[D
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/motion/MotionRecognitionService;)[D
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D

    return-object v0
.end method

.method private checkSettingEngineEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 662
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_engine"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 663
    .local v1, isEnabled:Z
    :goto_0
    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .checkSettingEngineEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string v3, "debug.motion.enabled"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 665
    .local v0, debugEnabled:Z
    if-eqz v0, :cond_0

    .line 666
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .checkSettingEngineEnabled : isEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  debugEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    move v1, v0

    .line 669
    :cond_0
    return v1

    .end local v0           #debugEnabled:Z
    .end local v1           #isEnabled:Z
    :cond_1
    move v1, v2

    .line 662
    goto :goto_0
.end method

.method private checkSettingMotionEnabled(I)Z
    .locals 6
    .parameter "motion"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 676
    const-string v4, "debug.motion.enabled"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v4, v2, :cond_1

    .line 724
    :cond_0
    :goto_0
    return v2

    .line 679
    :cond_1
    const/4 v1, 0x0

    .line 680
    .local v1, setting:Ljava/lang/String;
    const/4 v0, 0x0

    .line 681
    .local v0, panningEvent:Z
    sparse-switch p1, :sswitch_data_0

    .line 709
    :goto_1
    if-eqz v0, :cond_2

    .line 710
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_panning"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_0

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_pan_to_browse_image"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_0

    move v2, v3

    .line 716
    goto :goto_0

    .line 682
    :sswitch_0
    const-string v1, "motion_double_tap"

    goto :goto_1

    .line 683
    :sswitch_1
    const-string v1, "motion_overturn"

    goto :goto_1

    .line 685
    :sswitch_2
    const-string v1, "motion_shake"

    goto :goto_1

    .line 686
    :sswitch_3
    const/4 v0, 0x1

    goto :goto_1

    .line 687
    :sswitch_4
    const-string v1, "motion_zooming"

    goto :goto_1

    .line 689
    :sswitch_5
    const-string v1, "motion_pick_up"

    goto :goto_1

    .line 690
    :sswitch_6
    const-string v1, "motion_pick_up_to_call_out"

    goto :goto_1

    .line 705
    :sswitch_7
    const-string v1, "motion_tilt_to_list_scrolling"

    goto :goto_1

    .line 720
    :cond_2
    if-eqz v1, :cond_0

    .line 721
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 681
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x23 -> :sswitch_2
        0x24 -> :sswitch_2
        0x3d -> :sswitch_3
        0x43 -> :sswitch_5
        0x44 -> :sswitch_6
        0x48 -> :sswitch_4
        0x4e -> :sswitch_7
        0x4f -> :sswitch_7
        0x50 -> :sswitch_7
        0x51 -> :sswitch_7
        0x52 -> :sswitch_7
        0x53 -> :sswitch_7
        0x54 -> :sswitch_7
        0x55 -> :sswitch_7
        0x57 -> :sswitch_7
        0x58 -> :sswitch_7
        0x59 -> :sswitch_7
        0x5a -> :sswitch_7
        0x5b -> :sswitch_7
        0x5c -> :sswitch_7
        0x5d -> :sswitch_7
        0x62 -> :sswitch_5
    .end sparse-switch
.end method

.method private disableUnusedSensors()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1132
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 1133
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 1134
    shl-int v4, v7, v1

    .line 1135
    .local v4, motion_sensor:I
    invoke-direct {p0, v4, v6}, Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V

    .line 1133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1137
    .end local v4           #motion_sensor:I
    :cond_0
    invoke-direct {p0, v6}, Landroid/hardware/motion/MotionRecognitionService;->enableAllSensors(Z)V

    .line 1155
    :cond_1
    return-void

    .line 1139
    .end local v1           #i:I
    :cond_2
    const/4 v0, 0x0

    .line 1141
    .local v0, bSensorsUsed:I
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 1142
    .local v3, listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget v5, v3, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    or-int/2addr v0, v5

    goto :goto_1

    .line 1145
    .end local v3           #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v8, :cond_1

    .line 1146
    shl-int v4, v7, v1

    .line 1147
    .restart local v4       #motion_sensor:I
    and-int v5, v0, v4

    if-nez v5, :cond_4

    .line 1148
    invoke-direct {p0, v4}, Landroid/hardware/motion/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1149
    invoke-direct {p0, v4, v6}, Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V

    .line 1150
    invoke-direct {p0, v4, v6}, Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V

    .line 1145
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private enableAllSensors(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 1123
    const/4 v2, 0x1

    shl-int v1, v2, v0

    .line 1124
    .local v1, motion_sensor:I
    invoke-direct {p0, v1, p1}, Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V

    .line 1122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1126
    .end local v1           #motion_sensor:I
    :cond_0
    return-void
.end method

.method private enableSensor(IZ)V
    .locals 6
    .parameter "motion_sensor"
    .parameter "enabled"

    .prologue
    const/4 v2, 0x2

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v5, 0x1

    .line 1075
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->isSensorEnabled(I)Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 1080
    if-eqz p2, :cond_5

    .line 1081
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    .line 1086
    if-ne p1, v5, :cond_2

    .line 1087
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorDelayInMsec:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 1089
    :cond_2
    if-ne p1, v2, :cond_3

    .line 1090
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorDelayInMsec:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;I)Z

    goto :goto_0

    .line 1092
    :cond_3
    if-ne p1, v3, :cond_4

    .line 1093
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorDelayInMsec:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 1095
    :cond_4
    if-ne p1, v4, :cond_0

    .line 1096
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorLightListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorDelayInMsec:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 1101
    :cond_5
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    .line 1105
    if-ne p1, v5, :cond_6

    .line 1106
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 1107
    :cond_6
    if-ne p1, v2, :cond_7

    .line 1108
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto/16 :goto_0

    .line 1109
    :cond_7
    if-ne p1, v3, :cond_8

    .line 1110
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto/16 :goto_0

    .line 1111
    :cond_8
    if-ne p1, v4, :cond_0

    .line 1112
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto/16 :goto_0
.end method

.method private finalizeIfPossible()V
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-nez v0, :cond_0

    .line 942
    :goto_0
    return-void

    .line 940
    :cond_0
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V

    goto :goto_0
.end method

.method private finalizeMotionEngine()V
    .locals 4

    .prologue
    .line 424
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    if-nez v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->orientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener;->disable()V

    .line 428
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionService;->sensorLogEnd()V

    .line 429
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEnableAccINT:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 431
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mPollThread:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 433
    :cond_2
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    .line 435
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->enableAllSensors(Z)V

    .line 436
    const-string v0, "MotionRecognitionService"

    const-string v2, "  .finalizeMotionEngine"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    sget v0, Landroid/hardware/motion/MotionRecognitionService;->mDefaultAppId:I

    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->native_finalize_motionengine(I)V

    .line 438
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSettingMotionSensitivity(II)I
    .locals 3
    .parameter "motion"
    .parameter "type"

    .prologue
    const/4 v1, 0x5

    .line 729
    const/4 v0, 0x0

    .line 730
    .local v0, setting:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 738
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 739
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 742
    :cond_1
    return v1

    .line 731
    :sswitch_0
    const-string v0, "motion_zooming_sensitivity"

    goto :goto_0

    .line 733
    :sswitch_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    const-string v0, "motion_panning_sensitivity"

    goto :goto_0

    .line 734
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const-string v0, "motion_pan_to_browse_image_sensitivity"

    goto :goto_0

    .line 730
    nop

    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_1
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method private initializeMotionEngine()V
    .locals 3

    .prologue
    .line 246
    iget-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    if-nez v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-nez v1, :cond_0

    .line 249
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->checkSettingEngineEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const-string v1, "MotionRecognitionService"

    const-string v2, "  .initializeMotionEngine"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->orientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v1}, Landroid/view/WindowOrientationListener;->enable()V

    .line 254
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->orientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v1}, Landroid/view/WindowOrientationListener;->getProposedRotation()I

    move-result v0

    .line 255
    .local v0, currRotate:I
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->orientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v1, v0}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 256
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionService;->sensorLogStart()V

    .line 258
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v2

    .line 259
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    .line 260
    sget v1, Landroid/hardware/motion/MotionRecognitionService;->mDefaultAppId:I

    invoke-direct {p0, v1}, Landroid/hardware/motion/MotionRecognitionService;->native_initialize_motionengine(I)V

    .line 261
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/hardware/motion/MotionRecognitionService;->enableAllSensors(Z)V

    .line 262
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isSensorEnabled(I)Z
    .locals 2
    .parameter "motion_sensor"

    .prologue
    const/4 v0, 0x0

    .line 1051
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSensorUsed(I)Z
    .locals 2
    .parameter "motion_sensor"

    .prologue
    const/4 v0, 0x0

    .line 1042
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private native native_clear_scenario_result(I)V
.end method

.method private native native_finalize_motionengine(I)V
.end method

.method private native native_get_panning_dx()I
.end method

.method private native native_get_panning_dy()I
.end method

.method private native native_get_panning_dz()I
.end method

.method private native native_get_walking_status()I
.end method

.method private native native_getscenario_id(DDDDDDSIZII)I
.end method

.method private native native_initialize_motionengine(I)V
.end method

.method private native native_motionengine_getfd_accint()I
.end method

.method private native native_motionengine_is_available()I
.end method

.method private native native_motionengine_poll_accint(I)I
.end method

.method private native native_reset_motionengine()I
.end method

.method private native native_set_motion_angle(I)V
.end method

.method private native native_set_tilt_level(IIIIII)V
.end method

.method private native native_volume_changed(I)V
.end method

.method private sendBroadcastIntent(I)V
    .locals 0
    .parameter "motion"

    .prologue
    .line 658
    return-void
.end method

.method private sendMotionEvent(I)V
    .locals 25
    .parameter "motion"

    .prologue
    .line 475
    move/from16 v5, p1

    .line 476
    .local v5, motionOrigin:I
    const/4 v6, 0x0

    .line 477
    .local v6, panningDx:I
    const/4 v8, 0x0

    .line 478
    .local v8, panningDy:I
    const/4 v10, 0x0

    .line 479
    .local v10, panningDz:I
    const/16 v20, 0x0

    .line 480
    .local v20, walkingStatus:I
    const/4 v3, 0x0

    .line 482
    .local v3, bSendMotion:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 484
    const-string v21, "MotionRecognitionService"

    const-string v22, "  skip sendMotionEvent because mrengine was disabled."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 489
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->native_get_panning_dx()I

    move-result v6

    .line 490
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->native_get_panning_dy()I

    move-result v8

    .line 491
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->native_get_panning_dz()I

    move-result v10

    .line 492
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->native_get_walking_status()I

    move-result v20

    .line 493
    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    if-lez p1, :cond_3

    const/16 v21, 0x63

    move/from16 v0, p1

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 497
    sparse-switch p1, :sswitch_data_0

    .line 512
    :goto_1
    move/from16 v0, p1

    if-eq v5, v0, :cond_2

    .line 517
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 576
    :goto_2
    :sswitch_0
    if-eqz v3, :cond_3

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->obtain()Landroid/hardware/motion/MREvent;

    move-result-object v4

    .line 578
    .local v4, motionEvent:Landroid/hardware/motion/MREvent;
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 587
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V

    .line 597
    .end local v4           #motionEvent:Landroid/hardware/motion/MREvent;
    :cond_3
    if-nez v6, :cond_4

    if-eqz v8, :cond_0

    .line 598
    :cond_4
    const/16 v16, 0x0

    .line 599
    .local v16, tilt:I
    move v7, v6

    .line 600
    .local v7, panningDxImage:I
    move v9, v8

    .line 601
    .local v9, panningDyImage:I
    move v11, v10

    .line 603
    .local v11, panningDzImage:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 608
    move/from16 v16, v8

    .line 613
    :goto_3
    const/16 v21, 0x3d

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionService;->getSettingMotionSensitivity(II)I

    move-result v13

    .line 614
    .local v13, sensitivityPanningIcon:I
    const/16 v21, 0x3d

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionService;->getSettingMotionSensitivity(II)I

    move-result v14

    .line 615
    .local v14, sensitivityPanningImage:I
    const/16 v21, 0x48

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionService;->getSettingMotionSensitivity(II)I

    move-result v15

    .line 617
    .local v15, sensitivityTilt:I
    add-int/lit8 v21, v13, -0x5

    mul-int v21, v21, v6

    div-int/lit8 v21, v21, 0xa

    add-int v6, v6, v21

    .line 618
    add-int/lit8 v21, v13, -0x5

    mul-int v21, v21, v8

    div-int/lit8 v21, v21, 0xa

    add-int v8, v8, v21

    .line 619
    add-int/lit8 v21, v13, -0x5

    mul-int v21, v21, v10

    div-int/lit8 v21, v21, 0xa

    add-int v10, v10, v21

    .line 620
    add-int/lit8 v21, v14, -0x5

    mul-int v21, v21, v6

    div-int/lit8 v21, v21, 0xa

    add-int v7, v7, v21

    .line 621
    add-int/lit8 v21, v14, -0x5

    mul-int v21, v21, v8

    div-int/lit8 v21, v21, 0xa

    add-int v9, v9, v21

    .line 622
    add-int/lit8 v21, v14, -0x5

    mul-int v21, v21, v10

    div-int/lit8 v21, v21, 0xa

    add-int v11, v11, v21

    .line 623
    add-int/lit8 v21, v15, -0x5

    mul-int v21, v21, v16

    div-int/lit8 v21, v21, 0xa

    add-int v16, v16, v21

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->obtain()Landroid/hardware/motion/MREvent;

    move-result-object v12

    .line 627
    .local v12, panningEvent:Landroid/hardware/motion/MREvent;
    const/16 v21, 0x3d

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 628
    invoke-virtual {v12, v6}, Landroid/hardware/motion/MREvent;->setPanningDx(I)V

    .line 629
    invoke-virtual {v12, v8}, Landroid/hardware/motion/MREvent;->setPanningDy(I)V

    .line 630
    invoke-virtual {v12, v10}, Landroid/hardware/motion/MREvent;->setPanningDz(I)V

    .line 631
    invoke-virtual {v12, v7}, Landroid/hardware/motion/MREvent;->setPanningDxImage(I)V

    .line 632
    invoke-virtual {v12, v9}, Landroid/hardware/motion/MREvent;->setPanningDyImage(I)V

    .line 633
    invoke-virtual {v12, v11}, Landroid/hardware/motion/MREvent;->setPanningDzImage(I)V

    .line 636
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V

    .line 638
    if-eqz v16, :cond_0

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->obtain()Landroid/hardware/motion/MREvent;

    move-result-object v17

    .line 640
    .local v17, tiltEvent:Landroid/hardware/motion/MREvent;
    const/16 v21, 0x48

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 641
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setTilt(I)V

    .line 642
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setWalkingStatus(I)V

    .line 643
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V

    goto/16 :goto_0

    .line 493
    .end local v7           #panningDxImage:I
    .end local v9           #panningDyImage:I
    .end local v11           #panningDzImage:I
    .end local v12           #panningEvent:Landroid/hardware/motion/MREvent;
    .end local v13           #sensitivityPanningIcon:I
    .end local v14           #sensitivityPanningImage:I
    .end local v15           #sensitivityTilt:I
    .end local v16           #tilt:I
    .end local v17           #tiltEvent:Landroid/hardware/motion/MREvent;
    :catchall_0
    move-exception v21

    :try_start_1
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v21

    .line 499
    :sswitch_1
    const/16 p1, 0x1

    .line 500
    goto/16 :goto_1

    .line 504
    :sswitch_2
    const/16 p1, 0x2

    .line 505
    goto/16 :goto_1

    .line 509
    :sswitch_3
    const/16 p1, 0x3

    goto/16 :goto_1

    .line 523
    :sswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mPowerTime:J

    move-wide/from16 v23, v0

    sub-long v18, v21, v23

    .line 524
    .local v18, time:J
    const-wide/16 v21, 0x0

    cmp-long v21, v18, v21

    if-lez v21, :cond_5

    const-wide/16 v21, 0x7d0

    cmp-long v21, v18, v21

    if-gez v21, :cond_5

    .line 526
    const-string v21, "MotionRecognitionService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "  .sendMotionEvent : ignore TWO_TAPPING. (time="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 564
    .end local v18           #time:J
    :cond_5
    :sswitch_5
    const/4 v3, 0x1

    .line 565
    goto/16 :goto_2

    .line 604
    .restart local v7       #panningDxImage:I
    .restart local v9       #panningDyImage:I
    .restart local v11       #panningDzImage:I
    .restart local v16       #tilt:I
    :pswitch_0
    move/from16 v16, v6

    goto/16 :goto_3

    .line 605
    :pswitch_1
    neg-int v0, v8

    move/from16 v16, v0

    goto/16 :goto_3

    .line 606
    :pswitch_2
    neg-int v0, v6

    move/from16 v16, v0

    goto/16 :goto_3

    .line 497
    :sswitch_data_0
    .sparse-switch
        0x2f -> :sswitch_2
        0x30 -> :sswitch_3
        0x3f -> :sswitch_1
    .end sparse-switch

    .line 517
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0xa -> :sswitch_5
        0x23 -> :sswitch_5
        0x24 -> :sswitch_5
        0x3d -> :sswitch_0
        0x43 -> :sswitch_5
        0x44 -> :sswitch_5
        0x46 -> :sswitch_5
        0x47 -> :sswitch_5
        0x49 -> :sswitch_5
        0x4a -> :sswitch_5
        0x4b -> :sswitch_5
        0x4c -> :sswitch_5
        0x4d -> :sswitch_5
        0x4e -> :sswitch_5
        0x4f -> :sswitch_5
        0x50 -> :sswitch_5
        0x51 -> :sswitch_5
        0x52 -> :sswitch_5
        0x53 -> :sswitch_5
        0x54 -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x5c -> :sswitch_5
        0x5d -> :sswitch_5
        0x5e -> :sswitch_5
        0x5f -> :sswitch_5
        0x60 -> :sswitch_5
        0x61 -> :sswitch_5
        0x62 -> :sswitch_5
    .end sparse-switch

    .line 603
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendMotionEvent(Landroid/hardware/motion/MREvent;)V
    .locals 4
    .parameter "motionEvent"

    .prologue
    const/4 v3, 0x0

    .line 443
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 444
    .local v0, motion:I
    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->checkSettingMotionEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 453
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 454
    .local v1, msg:Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 455
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 457
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 459
    const/16 v2, 0x43

    if-ne v0, v2, :cond_2

    .line 460
    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mFlatEvent:Z

    .line 461
    const-string v2, "MotionRecognitionService"

    const-string v3, "send pick up event ~~"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_2
    const/16 v2, 0x62

    if-ne v0, v2, :cond_3

    .line 464
    const-string v2, "MotionRecognitionService"

    const-string v3, "send pick up tutorial event ~~"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_3
    const/16 v2, 0x47

    if-ne v0, v2, :cond_0

    .line 467
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mFlatEvent:Z

    .line 468
    const-string v2, "MotionRecognitionService"

    const-string v3, "send flat event ~~"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private useSensor(IZ)V
    .locals 2
    .parameter "motion_sensor"
    .parameter "used"

    .prologue
    .line 1060
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1063
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 1064
    if-eqz p2, :cond_2

    .line 1065
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    goto :goto_0

    .line 1067
    :cond_2
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    goto :goto_0
.end method


# virtual methods
.method public disableAccINT()V
    .locals 7

    .prologue
    .line 390
    const-string v4, "MotionRecognitionService"

    const-string v5, "disableAccINT "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v5

    .line 392
    const/4 v2, 0x0

    .line 395
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v6, "/sys/class/sensors/accelerometer_sensor/reactive_alert"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    move-object v2, v3

    .line 400
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_0
    if-nez v2, :cond_1

    .line 401
    :try_start_1
    const-string v4, "MotionRecognitionService"

    const-string v6, "Output file is null!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 419
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 420
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v4, "MotionRecognitionService"

    const-string v6, "File not found!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 408
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 409
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 410
    if-eqz v2, :cond_0

    .line 412
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 417
    :cond_0
    :goto_2
    :try_start_6
    const-string v4, "MotionRecognitionService"

    const-string v6, "File write fail!!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 419
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 403
    :cond_1
    const/16 v4, 0x30

    :try_start_7
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 404
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 405
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mEnableAccINT:Z

    .line 406
    const-string v4, "MotionRecognitionService"

    const-string v6, "disableAccINT Complete!!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 413
    .restart local v0       #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 414
    .local v1, err:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 947
    .local v5, time:J
    const-string v7, "motion_recognition"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " : mEngineInitialized="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mEngineIsAvailable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " : mSensorsUsed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSensorsEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " : currentTimeMillis="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", lastSensorEventTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", diff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    sub-long v8, v5, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 953
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " : listener count="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 955
    const/4 v1, 0x0

    .line 956
    .local v1, i:I
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 957
    .local v4, listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   mListeners["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "] = mMotionSensors="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", mUseAlways="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mUseAlways:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    :try_start_1
    iget-object v7, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v7}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 960
    .local v0, cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "                   "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :goto_1
    move v2, v1

    .line 962
    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 964
    .end local v4           #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_0
    :try_start_2
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 965
    monitor-exit v8

    .line 966
    return-void

    .line 965
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 961
    .restart local v1       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public enableAccINT()V
    .locals 7

    .prologue
    .line 357
    const-string v4, "MotionRecognitionService"

    const-string v5, "enableAccINT "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v5

    .line 359
    const/4 v2, 0x0

    .line 362
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v6, "/sys/class/sensors/accelerometer_sensor/reactive_alert"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    move-object v2, v3

    .line 367
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_0
    if-nez v2, :cond_1

    .line 368
    :try_start_1
    const-string v4, "MotionRecognitionService"

    const-string v6, "Output file is null!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 386
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v4, "MotionRecognitionService"

    const-string v6, "File not found!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 375
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 376
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 377
    if-eqz v2, :cond_0

    .line 379
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 384
    :cond_0
    :goto_2
    :try_start_6
    const-string v4, "MotionRecognitionService"

    const-string v6, "File write fail!!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 386
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 370
    :cond_1
    const/16 v4, 0x31

    :try_start_7
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 371
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 372
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mEnableAccINT:Z

    .line 373
    const-string v4, "MotionRecognitionService"

    const-string v6, "enableAccINT Complete!!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 380
    .restart local v0       #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 381
    .local v1, err:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method

.method public getSSPstatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 745
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.sensor.hub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    .line 746
    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ssp status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    return v0
.end method

.method public registerCallback(Landroid/os/IBinder;I)V
    .locals 13
    .parameter "binder"
    .parameter "motion_sensors"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 751
    iget-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    if-nez v8, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    const/4 v4, 0x0

    .line 756
    .local v4, l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    if-eqz p2, :cond_2

    .line 757
    or-int/lit8 p2, p2, 0x1

    .line 759
    :cond_2
    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v9

    .line 760
    :try_start_0
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 761
    .local v6, listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v8, v6, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v8, :cond_3

    .line 762
    monitor-exit v9

    goto :goto_0

    .line 789
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catchall_0
    move-exception v8

    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 766
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    if-nez v4, :cond_7

    .line 767
    :try_start_1
    new-instance v5, Landroid/hardware/motion/MotionRecognitionService$Listener;

    invoke-direct {v5, p0, p1, p2}, Landroid/hardware/motion/MotionRecognitionService$Listener;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
    .end local v4           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    .local v5, l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    const/4 v8, 0x0

    :try_start_2
    invoke-interface {p1, v5, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 769
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 773
    .local v1, client:Ljava/lang/String;
    :try_start_3
    invoke-static {p1}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 774
    .local v0, cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    .line 777
    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :goto_2
    :try_start_4
    const-string v8, "MotionRecognitionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  .registerCallback : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", motion_sensors="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", client="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    sget v8, Landroid/hardware/motion/MotionRecognitionService;->mDefaultAppId:I

    invoke-direct {p0, v8}, Landroid/hardware/motion/MotionRecognitionService;->native_initialize_motionengine(I)V

    .line 779
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 781
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->checkSettingEngineEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    if-nez v8, :cond_6

    .line 782
    const-string v8, "com.android.motionservicetestGyro"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "com.android.server.NotificationManagerService"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 784
    :cond_5
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionService;->enableAccINT()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_6
    move-object v4, v5

    .line 789
    .end local v1           #client:Ljava/lang/String;
    .end local v5           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    .restart local v4       #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_7
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 793
    iget-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-nez v8, :cond_8

    iget-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    if-eqz v8, :cond_8

    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V

    .line 795
    :cond_8
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    const/4 v8, 0x6

    if-ge v2, v8, :cond_0

    .line 796
    shl-int v7, v12, v2

    .line 797
    .local v7, motion_sensor:I
    and-int v8, v7, p2

    if-eqz v8, :cond_a

    .line 798
    invoke-direct {p0, v7, v12}, Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V

    .line 799
    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v9

    .line 800
    :try_start_6
    iget-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v8, :cond_9

    .line 801
    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V

    .line 802
    :cond_9
    monitor-exit v9

    .line 795
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 802
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v8

    .line 789
    .end local v2           #i:I
    .end local v4           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    .end local v7           #motion_sensor:I
    .restart local v5       #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    .restart local v4       #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    goto/16 :goto_1

    .line 775
    .end local v4           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    .restart local v1       #client:Ljava/lang/String;
    .restart local v5       #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catch_0
    move-exception v8

    goto/16 :goto_2
.end method

.method public resetMotionEngine()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 916
    const-string v0, "MotionRecognitionService"

    const-string v1, "  .resetMotionEngine"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->native_reset_motionengine()I

    move-result v0

    return v0
.end method

.method sensorLogEnd()V
    .locals 2

    .prologue
    .line 1029
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    monitor-enter v1

    .line 1030
    :try_start_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 1032
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    .line 1034
    :cond_0
    monitor-exit v1

    .line 1035
    return-void

    .line 1034
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sensorLogStart()V
    .locals 8

    .prologue
    .line 978
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 979
    const-string v3, "log.path.motion.sensor"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    .line 981
    :cond_0
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1005
    :cond_1
    :goto_0
    return-void

    .line 985
    :cond_2
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    monitor-enter v4

    .line 986
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    .local v2, logFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 989
    .local v1, logDir:Ljava/io/File;
    if-eqz v1, :cond_4

    .line 990
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 991
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1fd

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v3, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 994
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 995
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 996
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1b6

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v3, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 998
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    .line 999
    const-string v3, "MotionRecognitionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .sensorLogStart : started - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1004
    .end local v1           #logDir:Ljava/io/File;
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v2           #logFile:Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1000
    .restart local v2       #logFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1001
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v3, "MotionRecognitionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .sensorLogStart : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method sensorLogWrite()V
    .locals 11

    .prologue
    .line 1008
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1009
    .local v3, time:J
    iget-wide v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    sub-long v1, v3, v5

    .line 1010
    .local v1, t:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-ltz v5, :cond_0

    const-wide/16 v5, 0x3e8

    cmp-long v5, v1, v5

    if-lez v5, :cond_1

    .line 1011
    :cond_0
    const-wide/16 v1, 0x0

    .line 1012
    :cond_1
    iput-wide v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    .line 1014
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    monitor-enter v6

    .line 1015
    :try_start_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    if-eqz v5, :cond_2

    .line 1016
    const-string v5, "%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%h\t%d\t%B\t%d\r\n"

    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D

    const/4 v10, 0x1

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D

    const/4 v10, 0x2

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D

    const/4 v10, 0x1

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D

    const/4 v10, 0x2

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    iget-short v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostProxVal:S

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostLightVal:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    iget-boolean v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostTouch:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, logStr:Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1025
    .end local v0           #logStr:Ljava/lang/String;
    :cond_2
    monitor-exit v6

    .line 1026
    return-void

    .line 1025
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 969
    if-nez p1, :cond_0

    .line 970
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    .line 974
    :goto_0
    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  .setLogPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void

    .line 972
    :cond_0
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMotionAngle(Landroid/os/IBinder;I)V
    .locals 9
    .parameter "binder"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 880
    iget-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    if-nez v5, :cond_0

    .line 905
    :goto_0
    return-void

    .line 881
    :cond_0
    const/4 v3, 0x0

    .line 883
    .local v3, l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 884
    :try_start_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 885
    .local v4, listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v5, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v5, :cond_1

    .line 886
    move-object v3, v4

    .line 891
    .end local v4           #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_2
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    .local v1, client:Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 894
    .local v0, cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 898
    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :goto_1
    if-eqz v3, :cond_3

    .line 899
    :try_start_2
    invoke-direct {p0, p2}, Landroid/hardware/motion/MotionRecognitionService;->native_set_motion_angle(I)V

    .line 900
    const-string v5, "MotionRecognitionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  .setMotionAngle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", client="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_3
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 904
    monitor-exit v6

    goto :goto_0

    .end local v1           #client:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 895
    .restart local v1       #client:Ljava/lang/String;
    .restart local v2       #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public setMotionTiltLevel(IIIIII)V
    .locals 3
    .parameter "stopUp"
    .parameter "level1Up"
    .parameter "level2Up"
    .parameter "stopDown"
    .parameter "level1Down"
    .parameter "level2Down"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 908
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    if-nez v0, :cond_0

    .line 913
    :goto_0
    return-void

    .line 910
    :cond_0
    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-direct/range {p0 .. p6}, Landroid/hardware/motion/MotionRecognitionService;->native_set_tilt_level(IIIIII)V

    .line 912
    const-string v0, "MotionRecognitionService"

    const-string v1, "  .setMotionTiltLevel : 2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/os/IBinder;)V
    .locals 9
    .parameter "binder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 808
    iget-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    if-nez v5, :cond_0

    .line 848
    :goto_0
    return-void

    .line 809
    :cond_0
    const/4 v3, 0x0

    .line 810
    .local v3, l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    const-string v1, ""

    .line 812
    .local v1, client:Ljava/lang/String;
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 813
    :try_start_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 814
    .local v4, listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v5, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v5, :cond_1

    .line 815
    move-object v3, v4

    .line 820
    .end local v4           #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_2
    if-eqz v3, :cond_3

    .line 821
    const/4 v5, 0x0

    invoke-interface {p1, v3, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 822
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    :try_start_1
    invoke-static {p1}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 826
    .local v0, cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 829
    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :goto_1
    :try_start_2
    const-string v5, "MotionRecognitionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  .unregisterCallback : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", client="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 833
    :cond_3
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->disableUnusedSensors()V

    .line 835
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->checkSettingEngineEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    if-nez v5, :cond_5

    .line 836
    const-string v5, "com.android.motionservicetestGyro"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "com.android.server.NotificationManagerService"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 838
    :cond_4
    iget-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mEnableAccINT:Z

    if-eqz v5, :cond_5

    .line 839
    const-string v5, "MotionRecognitionService"

    const-string v7, " Cancel reactive alert mode "

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionService;->disableAccINT()V

    .line 841
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mFlatEvent:Z

    .line 846
    :cond_5
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_6

    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->finalizeIfPossible()V

    .line 847
    :cond_6
    monitor-exit v6

    goto/16 :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 827
    .restart local v2       #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public useMotionAlways(Landroid/os/IBinder;Z)V
    .locals 9
    .parameter "binder"
    .parameter "bUseAlways"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 851
    iget-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    if-nez v5, :cond_0

    .line 877
    :goto_0
    return-void

    .line 852
    :cond_0
    const/4 v3, 0x0

    .line 854
    .local v3, l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 855
    :try_start_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 856
    .local v4, listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v5, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v5, :cond_1

    .line 857
    move-object v3, v4

    .line 862
    .end local v4           #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_2
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    .local v1, client:Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 865
    .local v0, cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 869
    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :goto_1
    if-eqz v3, :cond_3

    .line 870
    :try_start_2
    iput-boolean p2, v3, Landroid/hardware/motion/MotionRecognitionService$Listener;->mUseAlways:Z

    .line 871
    const-string v5, "MotionRecognitionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  .useMotionAlways : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v3, Landroid/hardware/motion/MotionRecognitionService$Listener;->mUseAlways:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", client="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :goto_2
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 876
    monitor-exit v6

    goto :goto_0

    .end local v1           #client:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 873
    .restart local v1       #client:Ljava/lang/String;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_3
    const-string v5, "MotionRecognitionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  .useMotionAlways : unregistered client, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 866
    :catch_0
    move-exception v5

    goto :goto_1
.end method
