.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final is3LMAllowed:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1948
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1950
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1954
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1958
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 212
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    return-void
.end method

.method private addClipServiceExtra()V
    .locals 2

    .prologue
    const-string v0, "miui.clipserviceext"

    new-instance v1, Lcom/miui/server/ClipServiceExtra;

    invoke-direct {v1}, Lcom/miui/server/ClipServiceExtra;-><init>()V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public run()V
    .locals 145

    .prologue
    .line 222
    const-string v3, "SystemServer"

    const-string v9, "!@SystemServer Thread begins..."

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 228
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 231
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 236
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 238
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 245
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v117

    .line 249
    .local v117, shutdownAction:Ljava/lang/String;
    if-eqz v117, :cond_0

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 251
    const/4 v3, 0x0

    move-object/from16 v0, v117

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_17

    const/16 v111, 0x1

    .line 256
    .local v111, reboot:Z
    :goto_0
    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_18

    .line 258
    const/4 v3, 0x1

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v117

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v110

    .line 267
    .local v110, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v111

    move-object/from16 v1, v110

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 274
    .end local v110           #reason:Ljava/lang/String;
    .end local v111           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    .line 276
    .local v81, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v81

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/16 v80, 0x0

    .line 280
    .local v80, factoryTest:I
    :goto_2
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 283
    .local v16, headless:Z
    const/16 v88, 0x0

    .line 285
    .local v88, lights:Lcom/android/server/LightsService;
    const/16 v109, 0x0

    .line 287
    .local v109, power:Lcom/android/server/PowerManagerService;
    const/16 v51, 0x0

    .line 289
    .local v51, battery:Lcom/android/server/BatteryService;
    const/16 v132, 0x0

    .line 291
    .local v132, vibrator:Lcom/android/server/VibratorService;
    const/16 v44, 0x0

    .line 293
    .local v44, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 295
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 297
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v100, 0x0

    .line 299
    .local v100, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v60, 0x0

    .line 301
    .local v60, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v142, 0x0

    .line 303
    .local v142, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v139, 0x0

    .line 306
    .local v139, wifi:Lcom/android/server/WifiService;
    const/16 v141, 0x0

    .line 309
    .local v141, wifiOffloadService:Lcom/android/server/WifiOffloadService;
    const/16 v116, 0x0

    .line 311
    .local v116, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v137, 0x0

    .line 313
    .local v137, wfd:Lcom/samsung/wfd/WfdService;
    const/16 v108, 0x0

    .line 315
    .local v108, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 317
    .local v4, context:Landroid/content/Context;
    const/16 v144, 0x0

    .line 319
    .local v144, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v52, 0x0

    .line 321
    .local v52, bluetooth:Landroid/server/BluetoothService;
    const/16 v54, 0x0

    .line 322
    .local v54, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v48, 0x0

    .line 323
    .local v48, avrcp:Landroid/server/AvrcpStubService;
    const/16 v73, 0x0

    .line 324
    .local v73, dock:Lcom/android/server/DockObserver;
    const/16 v120, 0x0

    .line 325
    .local v120, thermistor:Lcom/android/server/ThermistorObserver;
    const/16 v130, 0x0

    .line 327
    .local v130, usb:Lcom/android/server/usb/UsbService;
    const/16 v114, 0x0

    .line 329
    .local v114, serial:Lcom/android/server/SerialService;
    const/16 v128, 0x0

    .line 331
    .local v128, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v112, 0x0

    .line 333
    .local v112, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v122, 0x0

    .line 335
    .local v122, throttle:Lcom/android/server/ThrottleService;
    const/16 v102, 0x0

    .line 337
    .local v102, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v70, 0x0

    .line 340
    .local v70, deviceManager:Lcom/android/server/DeviceManager3LMService;
    const/16 v57, 0x0

    .line 342
    .local v57, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v86, 0x0

    .line 343
    .local v86, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v66, 0x0

    .line 347
    .local v66, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    const/16 v68, 0x0

    .line 354
    .local v68, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 359
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5d

    .line 363
    .end local v109           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 374
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static/range {v80 .. v80}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 379
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 391
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 398
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 401
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .line 407
    .local v65, cryptState:Ljava/lang/String;
    const/16 v106, 0x0

    .line 409
    .local v106, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v65

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 411
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/16 v106, 0x1

    .line 423
    :cond_1
    :goto_3
    const-string v3, "SystemServer"

    const-string v9, "!@beginofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-eqz v80, :cond_1b

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v106

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v108

    .line 429
    const-string v3, "SystemServer"

    const-string v9, "!@endofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 430
    const/16 v82, 0x0

    .line 434
    .local v82, firstBoot:Z
    :try_start_2
    invoke-interface/range {v108 .. v108}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_43
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v82

    .line 441
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 444
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 451
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 463
    :goto_6
    :try_start_5
    const-string v3, ""

    const-string v9, "KT"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v3

    if-eqz v3, :cond_2

    .line 465
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "KT UCA Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v3, "ktuca"

    new-instance v9, Landroid/ktuca/KtUcaService;

    invoke-direct {v9, v4}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 473
    :cond_2
    :goto_7
    :try_start_7
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v3, 0x1

    move/from16 v0, v80

    if-ne v0, v3, :cond_1c

    const/4 v3, 0x1

    :goto_8
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 486
    new-instance v69, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v69

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 490
    .end local v68           #dEncService:Lcom/android/server/DirEncryptService;
    .local v69, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_8
    sget-boolean v3, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v3, :cond_3

    .line 492
    const-string v3, "DirEncryptService"

    move-object/from16 v0, v69

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5e

    :cond_3
    move-object/from16 v68, v69

    .line 504
    .end local v69           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v68       #dEncService:Lcom/android/server/DirEncryptService;
    :goto_9
    if-eqz v68, :cond_4

    .line 506
    :try_start_9
    const-string v3, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual/range {v68 .. v68}, Lcom/android/server/DirEncryptService;->systemReady()V

    .line 515
    :cond_4
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v89, Lcom/android/server/MiuiLightsService;

    move-object/from16 v0, v89

    invoke-direct {v0, v4}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 525
    .end local v88           #lights:Lcom/android/server/LightsService;
    .local v89, lights:Lcom/android/server/LightsService;
    :try_start_a
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v89

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5f

    .line 529
    .end local v51           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_b
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 532
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v133, Lcom/android/server/VibratorService;

    move-object/from16 v0, v133

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_60

    .line 536
    .end local v132           #vibrator:Lcom/android/server/VibratorService;
    .local v133, vibrator:Lcom/android/server/VibratorService;
    :try_start_c
    const-string v3, "vibrator"

    move-object/from16 v0, v133

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 543
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v89

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 546
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_61

    .line 550
    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_d
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 553
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 559
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v9, "android.hardware.sensor.hub"

    invoke-virtual {v3, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 560
    const-string v3, "SystemServer"

    const-string v9, "Context Aware Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v3, "context_aware"

    new-instance v9, Landroid/hardware/contextaware/ContextAwareService;

    invoke-direct {v9, v4}, Landroid/hardware/contextaware/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 563
    const-string v3, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v3, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v4}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 567
    :cond_5
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v3, 0x1

    move/from16 v0, v80

    if-eq v0, v3, :cond_1d

    const/4 v3, 0x1

    move v9, v3

    :goto_a
    if-nez v82, :cond_1e

    const/4 v3, 0x1

    :goto_b
    move/from16 v0, v106

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v144

    .line 575
    const-string v3, "window"

    move-object/from16 v0, v144

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 577
    invoke-virtual/range {v144 .. v144}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v86

    .line 579
    const-string v3, "input"

    move-object/from16 v0, v86

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 582
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v144

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 586
    new-instance v3, Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {v3, v4}, Lcom/android/server/am/MultiWindowManagerService;-><init>(Landroid/content/Context;)V

    .line 595
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 597
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4

    :goto_c
    move-object/from16 v132, v133

    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v132       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v88, v89

    .line 650
    .end local v65           #cryptState:Ljava/lang/String;
    .end local v82           #firstBoot:Z
    .end local v89           #lights:Lcom/android/server/LightsService;
    .end local v106           #onlyCore:Z
    .restart local v88       #lights:Lcom/android/server/LightsService;
    :goto_d
    const/16 v71, 0x0

    .line 652
    .local v71, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v78, 0x0

    .line 654
    .local v78, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v118, 0x0

    .line 656
    .local v118, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v84, 0x0

    .line 658
    .local v84, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v45, 0x0

    .line 660
    .local v45, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v104, 0x0

    .line 662
    .local v104, notification:Lcom/android/server/NotificationManagerService;
    const/16 v135, 0x0

    .line 664
    .local v135, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v90, 0x0

    .line 666
    .local v90, location:Lcom/android/server/LocationManagerService;
    const/16 v63, 0x0

    .line 668
    .local v63, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v124, 0x0

    .line 670
    .local v124, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v92, 0x0

    .line 672
    .local v92, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v75, 0x0

    .line 677
    .local v75, dreamy:Landroid/service/dreams/DreamManagerService;
    const/4 v3, 0x1

    move/from16 v0, v80

    if-eq v0, v3, :cond_6

    .line 681
    :try_start_e
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v85, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v85

    move-object/from16 v1, v144

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 685
    .end local v84           #imm:Lcom/android/server/InputMethodManagerService;
    .local v85, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_f
    const-string v3, "input_method"

    move-object/from16 v0, v85

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5c

    move-object/from16 v84, v85

    .line 696
    .end local v85           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v84       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_e
    :try_start_10
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    .line 712
    :cond_6
    :goto_f
    :try_start_11
    const-string v3, "SystemServer"

    const-string v9, "CustomeFrequencyManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    new-instance v67, Lcom/android/server/CustomFrequencyManagerService;

    move-object/from16 v0, v67

    invoke-direct {v0, v4}, Lcom/android/server/CustomFrequencyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    .line 714
    .end local v66           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .local v67, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :try_start_12
    const-string v3, "CustomFrequencyManagerService"

    move-object/from16 v0, v67

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5b

    move-object/from16 v66, v67

    .line 721
    .end local v67           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v66       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :goto_10
    :try_start_13
    invoke-virtual/range {v144 .. v144}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8

    .line 732
    :goto_11
    :try_start_14
    invoke-interface/range {v108 .. v108}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9

    .line 743
    :goto_12
    :try_start_15
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10404e4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_5a

    .line 756
    :goto_13
    const/4 v3, 0x1

    move/from16 v0, v80

    if-eq v0, v3, :cond_24

    .line 758
    const/16 v98, 0x0

    .line 760
    .local v98, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 772
    :try_start_16
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    new-instance v99, Lcom/android/server/MountService;

    move-object/from16 v0, v99

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a

    .line 776
    .end local v98           #mountService:Lcom/android/server/MountService;
    .local v99, mountService:Lcom/android/server/MountService;
    :try_start_17
    const-string v3, "mount"

    move-object/from16 v0, v99

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_59

    move-object/from16 v98, v99

    .line 789
    .end local v99           #mountService:Lcom/android/server/MountService;
    .restart local v98       #mountService:Lcom/android/server/MountService;
    :cond_7
    :goto_14
    :try_start_18
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v93, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v93

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b

    .line 793
    .end local v92           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v93, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_19
    const-string v3, "lock_settings"

    move-object/from16 v0, v93

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_58

    move-object/from16 v92, v93

    .line 804
    .end local v93           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v92       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_15
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    new-instance v72, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v72

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_c

    .line 808
    .end local v71           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v72, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1b
    const-string v3, "device_policy"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_57

    move-object/from16 v71, v72

    .line 818
    .end local v72           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v71       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_16
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    new-instance v79, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v108

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v3, v0

    move-object/from16 v0, v79

    invoke-direct {v0, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d

    .line 820
    .end local v78           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v79, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_1d
    const-string v3, "enterprise_policy"

    move-object/from16 v0, v79

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 821
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_56

    move-object/from16 v78, v79

    .line 831
    .end local v79           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v78       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :goto_17
    :try_start_1e
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance v119, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v119

    move-object/from16 v1, v144

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_e

    .line 835
    .end local v118           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v119, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1f
    const-string v3, "statusbar"

    move-object/from16 v0, v119

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_55

    move-object/from16 v118, v119

    .line 846
    .end local v119           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v118       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_18
    :try_start_20
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ServerThread;->addClipServiceExtra()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_f

    .line 867
    :goto_19
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string v3, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v4}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_10

    .line 882
    :goto_1a
    :try_start_22
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 886
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    .line 897
    :goto_1b
    :try_start_23
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    new-instance v125, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v125

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12

    .line 901
    .end local v124           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v125, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_24
    const-string v3, "textservices"

    move-object/from16 v0, v125

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_54

    move-object/from16 v124, v125

    .line 912
    .end local v125           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v124       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_1c
    :try_start_25
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    new-instance v101, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v101

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_13

    .line 916
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v101, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_26
    const-string v3, "netstats"

    move-object/from16 v0, v101

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_53

    move-object/from16 v12, v101

    .line 927
    .end local v101           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_1d
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_14

    .line 935
    .end local v100           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_28
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_52

    .line 946
    :goto_1e
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    new-instance v143, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v143

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_15

    .line 950
    .end local v142           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v143, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2a
    const-string v3, "wifip2p"

    move-object/from16 v0, v143

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_51

    move-object/from16 v142, v143

    .line 961
    .end local v143           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v142       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1f
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    new-instance v140, Lcom/android/server/WifiService;

    move-object/from16 v0, v140

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_16

    .line 965
    .end local v139           #wifi:Lcom/android/server/WifiService;
    .local v140, wifi:Lcom/android/server/WifiService;
    :try_start_2c
    const-string v3, "wifi"

    move-object/from16 v0, v140

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_50

    move-object/from16 v139, v140

    .line 996
    .end local v140           #wifi:Lcom/android/server/WifiService;
    .restart local v139       #wifi:Lcom/android/server/WifiService;
    :goto_20
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Display Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v138, Lcom/samsung/wfd/WfdService;

    move-object/from16 v0, v138

    invoke-direct {v0, v4}, Lcom/samsung/wfd/WfdService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_17

    .line 1000
    .end local v137           #wfd:Lcom/samsung/wfd/WfdService;
    .local v138, wfd:Lcom/samsung/wfd/WfdService;
    :try_start_2e
    const-string v3, "wfd"

    move-object/from16 v0, v138

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_4f

    move-object/from16 v137, v138

    .line 1011
    .end local v138           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v137       #wfd:Lcom/samsung/wfd/WfdService;
    :goto_21
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    new-instance v61, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v61

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_18

    .line 1017
    .end local v60           #connectivity:Lcom/android/server/ConnectivityService;
    .local v61, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_30
    const-string v3, "connectivity"

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1019
    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1021
    move-object/from16 v0, v61

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1023
    invoke-virtual/range {v139 .. v139}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 1025
    invoke-virtual/range {v142 .. v142}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_4e

    move-object/from16 v60, v61

    .line 1036
    .end local v61           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v60       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_22
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v116

    .line 1040
    const-string v3, "servicediscovery"

    move-object/from16 v0, v116

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_19

    .line 1053
    :goto_23
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    new-instance v123, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v123

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1a

    .line 1057
    .end local v122           #throttle:Lcom/android/server/ThrottleService;
    .local v123, throttle:Lcom/android/server/ThrottleService;
    :try_start_33
    const-string v3, "throttle"

    move-object/from16 v0, v123

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_4d

    move-object/from16 v122, v123

    .line 1070
    .end local v123           #throttle:Lcom/android/server/ThrottleService;
    .restart local v122       #throttle:Lcom/android/server/ThrottleService;
    :goto_24
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1b

    .line 1093
    :goto_25
    if-eqz v98, :cond_8

    .line 1095
    const-string v3, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "trigger_restart_min_framework"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1097
    invoke-virtual/range {v98 .. v98}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 1103
    :cond_8
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    new-instance v105, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v105

    move-object/from16 v1, v118

    move-object/from16 v2, v88

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1c

    .line 1107
    .end local v104           #notification:Lcom/android/server/NotificationManagerService;
    .local v105, notification:Lcom/android/server/NotificationManagerService;
    :try_start_36
    const-string v3, "notification"

    move-object/from16 v0, v105

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1109
    move-object/from16 v0, v105

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_4c

    move-object/from16 v104, v105

    .line 1120
    .end local v105           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v104       #notification:Lcom/android/server/NotificationManagerService;
    :goto_26
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/ServerThread$Injector;->setMemoryLowThresholdProperty()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1d

    .line 1135
    :goto_27
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    new-instance v91, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v91

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1e

    .line 1139
    .end local v90           #location:Lcom/android/server/LocationManagerService;
    .local v91, location:Lcom/android/server/LocationManagerService;
    :try_start_39
    const-string v3, "location"

    move-object/from16 v0, v91

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_4b

    move-object/from16 v90, v91

    .line 1149
    .end local v91           #location:Lcom/android/server/LocationManagerService;
    .restart local v90       #location:Lcom/android/server/LocationManagerService;
    :goto_28
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    new-instance v64, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1f

    .line 1153
    .end local v63           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v64, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3b
    const-string v3, "country_detector"

    move-object/from16 v0, v64

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_4a

    move-object/from16 v63, v64

    .line 1164
    .end local v64           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v63       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_29
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_20

    .line 1177
    :goto_2a
    :try_start_3d
    const-string v3, "com.sec.feature.spell_manager_service"

    move-object/from16 v0, v108

    invoke-interface {v0, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1178
    const-string v3, "SystemServer"

    const-string v9, "Spell Manager Service starting..."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const-string v3, "spell"

    new-instance v9, Landroid/server/spell/SpellManagerService;

    invoke-direct {v9, v4}, Landroid/server/spell/SpellManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_21

    .line 1190
    :goto_2b
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_22

    .line 1203
    :goto_2c
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110025

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1209
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    if-nez v16, :cond_9

    .line 1213
    new-instance v136, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v136

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_23

    .line 1215
    .end local v135           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v136, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_40
    const-string v3, "wallpaper"

    move-object/from16 v0, v136

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_49

    move-object/from16 v135, v136

    .line 1228
    .end local v136           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v135       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_9
    :goto_2d
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1232
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_24

    .line 1243
    :cond_a
    :goto_2e
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    new-instance v74, Lcom/android/server/DockObserver;

    move-object/from16 v0, v74

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_25

    .end local v73           #dock:Lcom/android/server/DockObserver;
    .local v74, dock:Lcom/android/server/DockObserver;
    move-object/from16 v73, v74

    .line 1251
    .end local v74           #dock:Lcom/android/server/DockObserver;
    .restart local v73       #dock:Lcom/android/server/DockObserver;
    :goto_2f
    :try_start_43
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_26

    .line 1259
    :goto_30
    :try_start_44
    const-string v3, "SystemServer"

    const-string v9, "Thermistor Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    new-instance v121, Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, v121

    invoke-direct {v0, v4, v6}, Lcom/android/server/ThermistorObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_27

    .end local v120           #thermistor:Lcom/android/server/ThermistorObserver;
    .local v121, thermistor:Lcom/android/server/ThermistorObserver;
    move-object/from16 v120, v121

    .line 1267
    .end local v121           #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v120       #thermistor:Lcom/android/server/ThermistorObserver;
    :goto_31
    :try_start_45
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    new-instance v131, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v131

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_28

    .line 1270
    .end local v130           #usb:Lcom/android/server/usb/UsbService;
    .local v131, usb:Lcom/android/server/usb/UsbService;
    :try_start_46
    const-string v3, "usb"

    move-object/from16 v0, v131

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_48

    move-object/from16 v130, v131

    .line 1275
    .end local v131           #usb:Lcom/android/server/usb/UsbService;
    .restart local v130       #usb:Lcom/android/server/usb/UsbService;
    :goto_32
    const-string v3, "security"

    new-instance v9, Lcom/miui/server/SecurityManagerService;

    invoke-direct {v9, v4}, Lcom/miui/server/SecurityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_start_47
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    new-instance v115, Lcom/android/server/SerialService;

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_29

    .line 1278
    .end local v114           #serial:Lcom/android/server/SerialService;
    .local v115, serial:Lcom/android/server/SerialService;
    :try_start_48
    const-string v3, "serial"

    move-object/from16 v0, v115

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_47

    move-object/from16 v114, v115

    .line 1284
    .end local v115           #serial:Lcom/android/server/SerialService;
    .restart local v114       #serial:Lcom/android/server/SerialService;
    :goto_33
    :try_start_49
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    new-instance v129, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v129

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2a

    .end local v128           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v129, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v128, v129

    .line 1295
    .end local v129           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v128       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_34
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v9, "CscFeature_Common_EnableSUA"

    invoke-virtual {v3, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1298
    :try_start_4a
    const-string v3, "SystemServer"

    const-string v9, "KiesUsb Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const-string v3, "kiesusb"

    new-instance v9, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v9, v4}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2b

    .line 1308
    :cond_b
    :goto_35
    :try_start_4b
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2c

    .line 1323
    :goto_36
    :try_start_4c
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    new-instance v46, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v46

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2d

    .line 1327
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .local v46, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4d
    const-string v3, "appwidget"

    move-object/from16 v0, v46

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_46

    move-object/from16 v45, v46

    .line 1338
    .end local v46           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_37
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    new-instance v113, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v113

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2e

    .end local v112           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v113, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v112, v113

    .line 1351
    .end local v113           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v112       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_38
    :try_start_4f
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2f

    .line 1372
    :goto_39
    :try_start_50
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_30

    .line 1387
    :goto_3a
    :try_start_51
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    new-instance v103, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v103

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_31

    .end local v102           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v103, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v102, v103

    .line 1419
    .end local v103           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v102       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_3b
    const-string v3, "ro.tvout.enable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v126

    .line 1421
    .local v126, tvoutEnable:Ljava/lang/String;
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tvout Service ro.tvout.enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v126

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    const-string v3, "false"

    move-object/from16 v0, v126

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1429
    :try_start_52
    const-string v3, "SystemServer"

    const-string v9, "Starting Tvout Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const/16 v127, 0x0

    .line 1433
    .local v127, tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "com.android.server.TvoutService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v127

    .line 1435
    if-nez v127, :cond_22

    .line 1437
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service not exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_32

    .line 1466
    .end local v127           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_c
    :goto_3c
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v107

    .line 1468
    .local v107, packageMgr:Landroid/content/pm/PackageManager;
    const-string v3, "com.sec.feature.irda_service"

    move-object/from16 v0, v107

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1470
    :try_start_53
    const-string v3, "SystemServer"

    const-string v9, "Enable the IRDA service!!"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    new-instance v87, Landroid/app/IrdaService;

    move-object/from16 v0, v87

    invoke-direct {v0, v4}, Landroid/app/IrdaService;-><init>(Landroid/content/Context;)V

    .line 1472
    .local v87, irda:Landroid/app/IrdaService;
    const-string v3, "irda"

    move-object/from16 v0, v87

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_33

    .line 1478
    .end local v87           #irda:Landroid/app/IrdaService;
    :cond_d
    :goto_3d
    const-string v3, "com.sec.feature.minimode"

    move-object/from16 v0, v107

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1482
    :try_start_54
    const-string v3, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const-string v95, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    .line 1487
    .local v95, minimodeFrameworkDexPath:Ljava/lang/String;
    const-string v97, "/data/dalvik-cache/minimode.dex"

    .line 1490
    .local v97, minimodeGenDexPath:Ljava/lang/String;
    new-instance v83, Landroid/os/FileUtils$FileStatus;

    invoke-direct/range {v83 .. v83}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .line 1492
    .local v83, fs:Landroid/os/FileUtils$FileStatus;
    move-object/from16 v0, v95

    move-object/from16 v1, v83

    invoke-static {v0, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1494
    const-string v3, "SystemServer"

    const-string v9, "This escaping dexopt of minimode.jar is only for eng build"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v95

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v97

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1498
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v97

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is copied from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v95

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    new-instance v96, Ljava/io/File;

    invoke-direct/range {v96 .. v97}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1502
    .local v96, minimodeGenDexFile:Ljava/io/File;
    move-object/from16 v0, v83

    iget-wide v9, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    move-object/from16 v0, v96

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1504
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastModfied time of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v97

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v83

    iget-wide v10, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    .end local v96           #minimodeGenDexFile:Ljava/io/File;
    :cond_e
    new-instance v56, Ldalvik/system/DexClassLoader;

    const-string v3, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, v56

    invoke-direct {v0, v3, v9, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1518
    .local v56, cl:Ljava/lang/ClassLoader;
    const-string v3, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v42

    .line 1520
    .local v42, MiniModeAppManagerServiceClass:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v3, v9

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v43

    .line 1524
    .local v43, MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    const-string v9, "mini_mode_app_manager"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v9, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_34

    .line 1537
    .end local v42           #MiniModeAppManagerServiceClass:Ljava/lang/Class;
    .end local v43           #MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    .end local v56           #cl:Ljava/lang/ClassLoader;
    .end local v83           #fs:Landroid/os/FileUtils$FileStatus;
    .end local v95           #minimodeFrameworkDexPath:Ljava/lang/String;
    .end local v97           #minimodeGenDexPath:Ljava/lang/String;
    :cond_f
    :goto_3e
    const-string v3, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v107

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1539
    :try_start_55
    const-string v3, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    new-instance v50, Landroid/app/BarBeamService;

    move-object/from16 v0, v50

    invoke-direct {v0, v4}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 1542
    .local v50, barbeam:Landroid/app/BarBeamService;
    const-string v3, "barbeam"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_35

    .line 1554
    .end local v50           #barbeam:Landroid/app/BarBeamService;
    :cond_10
    :goto_3f
    :try_start_56
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    new-instance v58, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v58

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_36

    .line 1558
    .end local v57           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v58, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_57
    const-string v3, "commontime_management"

    move-object/from16 v0, v58

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_45

    move-object/from16 v57, v58

    .line 1571
    .end local v58           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v57       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_40
    :try_start_58
    const-string v3, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    const-string v3, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v4}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_37

    .line 1585
    :goto_41
    :try_start_59
    const-string v3, "samsung.facedetection_service"

    new-instance v9, Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-direct {v9, v4}, Lcom/sec/android/facedetection/FaceDetectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_38

    .line 1593
    :goto_42
    :try_start_5a
    const-string v3, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const-string v3, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v4}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_39

    .line 1607
    :goto_43
    const-string v3, "SystemServer"

    const-string v9, "SEC_PRODUCT_FEATURE_SUPPORT_FMRADIO_SILICON - true"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :try_start_5b
    const-string v3, "SystemServer"

    const-string v9, "FM_RADIO_SERVICE"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const-string v3, "FMPlayer"

    new-instance v9, Lcom/android/server/FMRadioService;

    invoke-direct {v9, v4}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1615
    const-string v3, "SystemServer"

    const-string v9, "[FMPlayer]FMRadio service added.."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_3a

    .line 1631
    :goto_44
    :try_start_5c
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3b

    .line 1643
    :goto_45
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110039

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1649
    :try_start_5d
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    new-instance v76, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v76

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3c

    .line 1655
    .end local v75           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v76, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_5e
    const-string v3, "dreams"

    move-object/from16 v0, v76

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_44

    move-object/from16 v75, v76

    .line 1672
    .end local v76           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v98           #mountService:Lcom/android/server/MountService;
    .end local v107           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v126           #tvoutEnable:Ljava/lang/String;
    .restart local v75       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_11
    :goto_46
    invoke-virtual/range {v144 .. v144}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v29

    .line 1674
    .local v29, safeMode:Z
    if-eqz v29, :cond_23

    .line 1676
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1680
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1684
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1700
    :goto_47
    :try_start_5f
    invoke-virtual/range {v132 .. v132}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_3d

    .line 1709
    :goto_48
    :try_start_60
    invoke-virtual/range {v92 .. v92}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3e

    .line 1714
    :goto_49
    if-eqz v71, :cond_12

    .line 1718
    :try_start_61
    invoke-virtual/range {v71 .. v71}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3f

    .line 1730
    :cond_12
    :goto_4a
    if-eqz v78, :cond_13

    .line 1731
    invoke-virtual/range {v78 .. v78}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 1732
    const-string v3, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :cond_13
    if-eqz v104, :cond_14

    .line 1740
    :try_start_62
    invoke-virtual/range {v104 .. v104}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_40

    .line 1751
    :cond_14
    :goto_4b
    :try_start_63
    invoke-virtual/range {v144 .. v144}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_41

    .line 1756
    :goto_4c
    if-eqz v29, :cond_15

    .line 1757
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1763
    :cond_15
    invoke-virtual/range {v144 .. v144}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v59

    .line 1764
    .local v59, config:Landroid/content/res/Configuration;
    new-instance v94, Landroid/util/DisplayMetrics;

    invoke-direct/range {v94 .. v94}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1765
    .local v94, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v134

    check-cast v134, Landroid/view/WindowManager;

    .line 1766
    .local v134, w:Landroid/view/WindowManager;
    invoke-interface/range {v134 .. v134}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v94

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1767
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v59

    move-object/from16 v1, v94

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1769
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 1771
    :try_start_64
    invoke-interface/range {v108 .. v108}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_42

    .line 1777
    :goto_4d
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/LightsService;->systemReady()V

    .line 1780
    move-object/from16 v17, v4

    .line 1781
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 1782
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 1783
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 1784
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 1785
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v60

    .line 1786
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v73

    .line 1787
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v120

    .line 1788
    .local v24, thermistorF:Lcom/android/server/ThermistorObserver;
    move-object/from16 v25, v130

    .line 1789
    .local v25, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v35, v122

    .line 1790
    .local v35, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v26, v128

    .line 1791
    .local v26, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v28, v45

    .line 1792
    .local v28, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v30, v135

    .line 1793
    .local v30, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v31, v84

    .line 1794
    .local v31, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v27, v112

    .line 1795
    .local v27, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v33, v90

    .line 1796
    .local v33, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v34, v63

    .line 1797
    .local v34, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v36, v102

    .line 1798
    .local v36, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v37, v57

    .line 1799
    .local v37, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v38, v124

    .line 1800
    .local v38, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v32, v118

    .line 1801
    .local v32, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v39, v75

    .line 1802
    .local v39, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v40, v86

    .line 1803
    .local v40, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v41, v52

    .line 1810
    .local v41, bluetoothF:Landroid/server/BluetoothService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v41}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/ThermistorObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1932
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1934
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    :cond_16
    const-string v3, "SystemServer"

    const-string v9, "!@End of System ServerThread"

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1941
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    return-void

    .line 251
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #thermistorF:Lcom/android/server/ThermistorObserver;
    .end local v25           #usbF:Lcom/android/server/usb/UsbService;
    .end local v26           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v27           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v28           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v29           #safeMode:Z
    .end local v30           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v31           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v32           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v33           #locationF:Lcom/android/server/LocationManagerService;
    .end local v34           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v35           #throttleF:Lcom/android/server/ThrottleService;
    .end local v36           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v37           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v38           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v39           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v40           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v41           #bluetoothF:Landroid/server/BluetoothService;
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v48           #avrcp:Landroid/server/AvrcpStubService;
    .end local v52           #bluetooth:Landroid/server/BluetoothService;
    .end local v54           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v57           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v59           #config:Landroid/content/res/Configuration;
    .end local v60           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v63           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v66           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .end local v68           #dEncService:Lcom/android/server/DirEncryptService;
    .end local v70           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v71           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v73           #dock:Lcom/android/server/DockObserver;
    .end local v75           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v78           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v80           #factoryTest:I
    .end local v81           #factoryTestStr:Ljava/lang/String;
    .end local v84           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v86           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .end local v90           #location:Lcom/android/server/LocationManagerService;
    .end local v92           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v94           #metrics:Landroid/util/DisplayMetrics;
    .end local v102           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v104           #notification:Lcom/android/server/NotificationManagerService;
    .end local v108           #pm:Landroid/content/pm/IPackageManager;
    .end local v112           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v114           #serial:Lcom/android/server/SerialService;
    .end local v116           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v118           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v120           #thermistor:Lcom/android/server/ThermistorObserver;
    .end local v122           #throttle:Lcom/android/server/ThrottleService;
    .end local v124           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v128           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v130           #usb:Lcom/android/server/usb/UsbService;
    .end local v132           #vibrator:Lcom/android/server/VibratorService;
    .end local v134           #w:Landroid/view/WindowManager;
    .end local v135           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v137           #wfd:Lcom/samsung/wfd/WfdService;
    .end local v139           #wifi:Lcom/android/server/WifiService;
    .end local v141           #wifiOffloadService:Lcom/android/server/WifiOffloadService;
    .end local v142           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v144           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_17
    const/16 v111, 0x0

    goto/16 :goto_0

    .line 262
    .restart local v111       #reboot:Z
    :cond_18
    const/16 v110, 0x0

    .restart local v110       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 276
    .end local v110           #reason:Ljava/lang/String;
    .end local v111           #reboot:Z
    .restart local v81       #factoryTestStr:Ljava/lang/String;
    :cond_19
    invoke-static/range {v81 .. v81}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v80

    goto/16 :goto_2

    .line 415
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v48       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v51       #battery:Lcom/android/server/BatteryService;
    .restart local v52       #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v57       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v60       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v65       #cryptState:Ljava/lang/String;
    .restart local v66       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v68       #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v70       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v73       #dock:Lcom/android/server/DockObserver;
    .restart local v80       #factoryTest:I
    .restart local v86       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    .restart local v100       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v102       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v106       #onlyCore:Z
    .restart local v108       #pm:Landroid/content/pm/IPackageManager;
    .restart local v112       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v114       #serial:Lcom/android/server/SerialService;
    .restart local v116       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v120       #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v122       #throttle:Lcom/android/server/ThrottleService;
    .restart local v128       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v130       #usb:Lcom/android/server/usb/UsbService;
    .restart local v132       #vibrator:Lcom/android/server/VibratorService;
    .restart local v137       #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v139       #wifi:Lcom/android/server/WifiService;
    .restart local v141       #wifiOffloadService:Lcom/android/server/WifiOffloadService;
    .restart local v142       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v144       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_1a
    :try_start_65
    const-string v3, "1"

    move-object/from16 v0, v65

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 417
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/16 v106, 0x1

    goto/16 :goto_3

    .line 424
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 457
    .restart local v82       #firstBoot:Z
    :catch_0
    move-exception v77

    .line 459
    .local v77, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v77

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_65} :catch_1

    goto/16 :goto_6

    .line 641
    .end local v65           #cryptState:Ljava/lang/String;
    .end local v77           #e:Ljava/lang/Throwable;
    .end local v82           #firstBoot:Z
    .end local v106           #onlyCore:Z
    :catch_1
    move-exception v77

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v51

    .line 643
    .end local v51           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v77, e:Ljava/lang/RuntimeException;
    :goto_4e
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v77

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 467
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v77           #e:Ljava/lang/RuntimeException;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v51       #battery:Lcom/android/server/BatteryService;
    .restart local v65       #cryptState:Ljava/lang/String;
    .restart local v82       #firstBoot:Z
    .restart local v106       #onlyCore:Z
    :catch_2
    move-exception v77

    .line 468
    .local v77, e:Ljava/lang/Throwable;
    :try_start_66
    const-string v3, "SystemServer"

    const-string v9, "Failure starting KT UCA Service"

    move-object/from16 v0, v77

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_66} :catch_1

    goto/16 :goto_7

    .line 475
    .end local v77           #e:Ljava/lang/Throwable;
    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 496
    .end local v68           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v69       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_3
    move-exception v77

    .line 498
    .restart local v77       #e:Ljava/lang/Throwable;
    :try_start_67
    const-string v3, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v77

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_67} :catch_5e

    .line 500
    const/16 v68, 0x0

    .end local v69           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v68       #dEncService:Lcom/android/server/DirEncryptService;
    goto/16 :goto_9

    .line 569
    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v51           #battery:Lcom/android/server/BatteryService;
    .end local v77           #e:Ljava/lang/Throwable;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .end local v132           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    :cond_1d
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_a

    :cond_1e
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 599
    :cond_1f
    const/4 v3, 0x1

    move/from16 v0, v80

    if-ne v0, v3, :cond_20

    .line 601
    :try_start_68
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 641
    :catch_4
    move-exception v77

    move-object/from16 v132, v133

    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v132       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v88, v89

    .end local v89           #lights:Lcom/android/server/LightsService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    goto :goto_4e

    .line 605
    .end local v88           #lights:Lcom/android/server/LightsService;
    .end local v132           #vibrator:Lcom/android/server/VibratorService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    :cond_20
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v53, Landroid/server/BluetoothService;

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_68} :catch_4

    .line 609
    .end local v52           #bluetooth:Landroid/server/BluetoothService;
    .local v53, bluetooth:Landroid/server/BluetoothService;
    :try_start_69
    const-string v3, "bluetooth"

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 611
    invoke-virtual/range {v53 .. v53}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 614
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 616
    new-instance v55, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v55

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_69} :catch_62

    .line 618
    .end local v54           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v55, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_6a
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v55

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 621
    const-string v3, "SystemServer"

    const-string v9, "AvrcpStubService -->"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    new-instance v49, Landroid/server/AvrcpStubService;

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Landroid/server/AvrcpStubService;-><init>(Landroid/content/Context;)V
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6a} :catch_63

    .line 623
    .end local v48           #avrcp:Landroid/server/AvrcpStubService;
    .local v49, avrcp:Landroid/server/AvrcpStubService;
    :try_start_6b
    const-string v3, "bluetooth_avrcp"

    move-object/from16 v0, v49

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 624
    invoke-virtual/range {v53 .. v53}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_6b
    .catch Ljava/lang/RuntimeException; {:try_start_6b .. :try_end_6b} :catch_64

    move-object/from16 v48, v49

    .end local v49           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v48       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v54, v55

    .end local v55           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v54       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v52, v53

    .end local v53           #bluetooth:Landroid/server/BluetoothService;
    .restart local v52       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_c

    .line 687
    .end local v65           #cryptState:Ljava/lang/String;
    .end local v82           #firstBoot:Z
    .end local v89           #lights:Lcom/android/server/LightsService;
    .end local v106           #onlyCore:Z
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v63       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v71       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v75       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v78       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v84       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    .restart local v90       #location:Lcom/android/server/LocationManagerService;
    .restart local v92       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v104       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v118       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v124       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v132       #vibrator:Lcom/android/server/VibratorService;
    .restart local v135       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_5
    move-exception v77

    .line 689
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 702
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v77

    .line 704
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 715
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v77

    .line 716
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "SystemServer"

    const-string v9, "Failure starting CustomFrequencyManagerService Service"

    move-object/from16 v0, v77

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 723
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v77

    .line 725
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 734
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v77

    .line 736
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 778
    .end local v77           #e:Ljava/lang/Throwable;
    .restart local v98       #mountService:Lcom/android/server/MountService;
    :catch_a
    move-exception v77

    .line 780
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 795
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v77

    .line 797
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 810
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v77

    .line 812
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 822
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v77

    .line 823
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v77

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 837
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v77

    .line 839
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 852
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v77

    .line 854
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 873
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v77

    .line 875
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 888
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v77

    .line 890
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 903
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v77

    .line 905
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 918
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v77

    .line 920
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 937
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v77

    move-object/from16 v8, v100

    .line 939
    .end local v100           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 952
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v77

    .line 954
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 967
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v77

    .line 969
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 1002
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v77

    .line 1004
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v3, "starting Wi-Fi Display Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 1027
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v77

    .line 1029
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1044
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v77

    .line 1046
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 1061
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v77

    .line 1063
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1076
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v77

    .line 1078
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1111
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v77

    .line 1113
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1126
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v77

    .line 1128
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1141
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v77

    .line 1143
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1155
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v77

    .line 1157
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1170
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v77

    .line 1172
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1182
    .end local v77           #e:Ljava/lang/Throwable;
    :cond_21
    :try_start_6c
    const-string v3, "SystemServer"

    const-string v9, "Spell Manager Service disabled"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_21

    goto/16 :goto_2b

    .line 1184
    :catch_21
    move-exception v77

    .line 1185
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "starting Spell Service failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v77

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1196
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v77

    .line 1198
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1219
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v77

    .line 1221
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1236
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v77

    .line 1238
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1246
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v77

    .line 1247
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1254
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v77

    .line 1255
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1262
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v77

    .line 1263
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting ThermistorObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1271
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v77

    .line 1272
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_62
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1279
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v77

    .line 1280
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_63
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v77

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 1288
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v77

    .line 1290
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1300
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v77

    .line 1301
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 1314
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v77

    .line 1316
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v77

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    .line 1329
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v77

    .line 1331
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_64
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 1342
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v77

    .line 1344
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1355
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v77

    .line 1357
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1378
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v77

    .line 1380
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1391
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v77

    .line 1393
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 1445
    .end local v77           #e:Ljava/lang/Throwable;
    .restart local v126       #tvoutEnable:Ljava/lang/String;
    .restart local v127       #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_22
    :try_start_6d
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    move-object/from16 v47, v0

    .line 1449
    .local v47, arg:[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v47, v3

    .line 1451
    move-object/from16 v0, v127

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v62

    .line 1453
    .local v62, constructor:Ljava/lang/reflect/Constructor;
    const-string v9, "tvoutservice"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    move-object/from16 v0, v62

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v9, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_32

    goto/16 :goto_3c

    .line 1457
    .end local v47           #arg:[Ljava/lang/Class;
    .end local v62           #constructor:Ljava/lang/reflect/Constructor;
    .end local v127           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_32
    move-exception v77

    .line 1459
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Tvout Service"

    move-object/from16 v0, v77

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c

    .line 1473
    .end local v77           #e:Ljava/lang/Throwable;
    .restart local v107       #packageMgr:Landroid/content/pm/PackageManager;
    :catch_33
    move-exception v77

    .line 1474
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting IRDA Service"

    move-object/from16 v0, v77

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .line 1530
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v77

    .line 1532
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v77

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3e

    .line 1543
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v77

    .line 1544
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v77

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f

    .line 1560
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v77

    .line 1562
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_65
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1575
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v77

    .line 1577
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 1586
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v77

    .line 1587
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "Fail to start face detection service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 1597
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v77

    .line 1599
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v77

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_43

    .line 1617
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v77

    .line 1619
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting FM Radio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1635
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v77

    .line 1637
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1657
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_3c
    move-exception v77

    .line 1659
    .restart local v77       #e:Ljava/lang/Throwable;
    :goto_66
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1690
    .end local v77           #e:Ljava/lang/Throwable;
    .end local v98           #mountService:Lcom/android/server/MountService;
    .end local v107           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v126           #tvoutEnable:Ljava/lang/String;
    .restart local v29       #safeMode:Z
    :cond_23
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_47

    .line 1702
    :catch_3d
    move-exception v77

    .line 1704
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1710
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_3e
    move-exception v77

    .line 1711
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1720
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_3f
    move-exception v77

    .line 1722
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1742
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_40
    move-exception v77

    .line 1744
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1752
    .end local v77           #e:Ljava/lang/Throwable;
    :catch_41
    move-exception v77

    .line 1753
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 1772
    .end local v77           #e:Ljava/lang/Throwable;
    .restart local v59       #config:Landroid/content/res/Configuration;
    .restart local v94       #metrics:Landroid/util/DisplayMetrics;
    .restart local v134       #w:Landroid/view/WindowManager;
    :catch_42
    move-exception v77

    .line 1773
    .restart local v77       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 436
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #safeMode:Z
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v59           #config:Landroid/content/res/Configuration;
    .end local v63           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v71           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v75           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v77           #e:Ljava/lang/Throwable;
    .end local v78           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v84           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v90           #location:Lcom/android/server/LocationManagerService;
    .end local v92           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v94           #metrics:Landroid/util/DisplayMetrics;
    .end local v104           #notification:Lcom/android/server/NotificationManagerService;
    .end local v118           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v124           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v134           #w:Landroid/view/WindowManager;
    .end local v135           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v51       #battery:Lcom/android/server/BatteryService;
    .restart local v65       #cryptState:Ljava/lang/String;
    .restart local v82       #firstBoot:Z
    .restart local v100       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v106       #onlyCore:Z
    :catch_43
    move-exception v3

    goto/16 :goto_5

    .line 1657
    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v51           #battery:Lcom/android/server/BatteryService;
    .end local v65           #cryptState:Ljava/lang/String;
    .end local v82           #firstBoot:Z
    .end local v100           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v106           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v63       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v71       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v76       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v78       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v84       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #location:Lcom/android/server/LocationManagerService;
    .restart local v92       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v98       #mountService:Lcom/android/server/MountService;
    .restart local v104       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v107       #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v118       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v124       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v126       #tvoutEnable:Ljava/lang/String;
    .restart local v135       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_44
    move-exception v77

    move-object/from16 v75, v76

    .end local v76           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v75       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_66

    .line 1560
    .end local v57           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v58       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_45
    move-exception v77

    move-object/from16 v57, v58

    .end local v58           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v57       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_65

    .line 1329
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v107           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v126           #tvoutEnable:Ljava/lang/String;
    .restart local v46       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_46
    move-exception v77

    move-object/from16 v45, v46

    .end local v46           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_64

    .line 1279
    .end local v114           #serial:Lcom/android/server/SerialService;
    .restart local v115       #serial:Lcom/android/server/SerialService;
    :catch_47
    move-exception v77

    move-object/from16 v114, v115

    .end local v115           #serial:Lcom/android/server/SerialService;
    .restart local v114       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_63

    .line 1271
    .end local v130           #usb:Lcom/android/server/usb/UsbService;
    .restart local v131       #usb:Lcom/android/server/usb/UsbService;
    :catch_48
    move-exception v77

    move-object/from16 v130, v131

    .end local v131           #usb:Lcom/android/server/usb/UsbService;
    .restart local v130       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_62

    .line 1219
    .end local v135           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v136       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_49
    move-exception v77

    move-object/from16 v135, v136

    .end local v136           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v135       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_61

    .line 1155
    .end local v63           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v64       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_4a
    move-exception v77

    move-object/from16 v63, v64

    .end local v64           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v63       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_60

    .line 1141
    .end local v90           #location:Lcom/android/server/LocationManagerService;
    .restart local v91       #location:Lcom/android/server/LocationManagerService;
    :catch_4b
    move-exception v77

    move-object/from16 v90, v91

    .end local v91           #location:Lcom/android/server/LocationManagerService;
    .restart local v90       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_5f

    .line 1111
    .end local v104           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v105       #notification:Lcom/android/server/NotificationManagerService;
    :catch_4c
    move-exception v77

    move-object/from16 v104, v105

    .end local v105           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v104       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_5e

    .line 1061
    .end local v122           #throttle:Lcom/android/server/ThrottleService;
    .restart local v123       #throttle:Lcom/android/server/ThrottleService;
    :catch_4d
    move-exception v77

    move-object/from16 v122, v123

    .end local v123           #throttle:Lcom/android/server/ThrottleService;
    .restart local v122       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_5d

    .line 1027
    .end local v60           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v61       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_4e
    move-exception v77

    move-object/from16 v60, v61

    .end local v61           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v60       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_5c

    .line 1002
    .end local v137           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v138       #wfd:Lcom/samsung/wfd/WfdService;
    :catch_4f
    move-exception v77

    move-object/from16 v137, v138

    .end local v138           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v137       #wfd:Lcom/samsung/wfd/WfdService;
    goto/16 :goto_5b

    .line 967
    .end local v139           #wifi:Lcom/android/server/WifiService;
    .restart local v140       #wifi:Lcom/android/server/WifiService;
    :catch_50
    move-exception v77

    move-object/from16 v139, v140

    .end local v140           #wifi:Lcom/android/server/WifiService;
    .restart local v139       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_5a

    .line 952
    .end local v142           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v143       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_51
    move-exception v77

    move-object/from16 v142, v143

    .end local v143           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v142       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_59

    .line 937
    :catch_52
    move-exception v77

    goto/16 :goto_58

    .line 918
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v100       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v101       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_53
    move-exception v77

    move-object/from16 v12, v101

    .end local v101           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_57

    .line 903
    .end local v124           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v125       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_54
    move-exception v77

    move-object/from16 v124, v125

    .end local v125           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v124       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_56

    .line 837
    .end local v118           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v119       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_55
    move-exception v77

    move-object/from16 v118, v119

    .end local v119           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v118       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_55

    .line 822
    .end local v78           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v79       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_56
    move-exception v77

    move-object/from16 v78, v79

    .end local v79           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v78       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_54

    .line 810
    .end local v71           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v72       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_57
    move-exception v77

    move-object/from16 v71, v72

    .end local v72           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v71       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_53

    .line 795
    .end local v92           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v93       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_58
    move-exception v77

    move-object/from16 v92, v93

    .end local v93           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v92       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_52

    .line 778
    .end local v98           #mountService:Lcom/android/server/MountService;
    .restart local v99       #mountService:Lcom/android/server/MountService;
    :catch_59
    move-exception v77

    move-object/from16 v98, v99

    .end local v99           #mountService:Lcom/android/server/MountService;
    .restart local v98       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_51

    .line 751
    .end local v98           #mountService:Lcom/android/server/MountService;
    :catch_5a
    move-exception v3

    goto/16 :goto_13

    .line 715
    .end local v66           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v67       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :catch_5b
    move-exception v77

    move-object/from16 v66, v67

    .end local v67           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v66       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    goto/16 :goto_50

    .line 687
    .end local v84           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v85       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_5c
    move-exception v77

    move-object/from16 v84, v85

    .end local v85           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v84       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_4f

    .line 641
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v63           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v71           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v75           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v78           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v84           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v90           #location:Lcom/android/server/LocationManagerService;
    .end local v92           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v104           #notification:Lcom/android/server/NotificationManagerService;
    .end local v118           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v124           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v135           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v51       #battery:Lcom/android/server/BatteryService;
    .restart local v109       #power:Lcom/android/server/PowerManagerService;
    :catch_5d
    move-exception v77

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v51

    .end local v51           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v109

    .end local v109           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_4e

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v68           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v51       #battery:Lcom/android/server/BatteryService;
    .restart local v65       #cryptState:Ljava/lang/String;
    .restart local v69       #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v82       #firstBoot:Z
    .restart local v106       #onlyCore:Z
    :catch_5e
    move-exception v77

    move-object/from16 v68, v69

    .end local v69           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v68       #dEncService:Lcom/android/server/DirEncryptService;
    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v51

    .end local v51           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_4e

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v51       #battery:Lcom/android/server/BatteryService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    :catch_5f
    move-exception v77

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v51

    .end local v51           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v88, v89

    .end local v89           #lights:Lcom/android/server/LightsService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4e

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    :catch_60
    move-exception v77

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v88, v89

    .end local v89           #lights:Lcom/android/server/LightsService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4e

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .end local v132           #vibrator:Lcom/android/server/VibratorService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    :catch_61
    move-exception v77

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v132, v133

    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v132       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v88, v89

    .end local v89           #lights:Lcom/android/server/LightsService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4e

    .end local v52           #bluetooth:Landroid/server/BluetoothService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .end local v132           #vibrator:Lcom/android/server/VibratorService;
    .restart local v53       #bluetooth:Landroid/server/BluetoothService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    :catch_62
    move-exception v77

    move-object/from16 v52, v53

    .end local v53           #bluetooth:Landroid/server/BluetoothService;
    .restart local v52       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v132, v133

    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v132       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v88, v89

    .end local v89           #lights:Lcom/android/server/LightsService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4e

    .end local v52           #bluetooth:Landroid/server/BluetoothService;
    .end local v54           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .end local v132           #vibrator:Lcom/android/server/VibratorService;
    .restart local v53       #bluetooth:Landroid/server/BluetoothService;
    .restart local v55       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    :catch_63
    move-exception v77

    move-object/from16 v54, v55

    .end local v55           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v54       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v52, v53

    .end local v53           #bluetooth:Landroid/server/BluetoothService;
    .restart local v52       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v132, v133

    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v132       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v88, v89

    .end local v89           #lights:Lcom/android/server/LightsService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4e

    .end local v48           #avrcp:Landroid/server/AvrcpStubService;
    .end local v52           #bluetooth:Landroid/server/BluetoothService;
    .end local v54           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .end local v132           #vibrator:Lcom/android/server/VibratorService;
    .restart local v49       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v53       #bluetooth:Landroid/server/BluetoothService;
    .restart local v55       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    :catch_64
    move-exception v77

    move-object/from16 v48, v49

    .end local v49           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v48       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v54, v55

    .end local v55           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v54       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v52, v53

    .end local v53           #bluetooth:Landroid/server/BluetoothService;
    .restart local v52       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v132, v133

    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v132       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v88, v89

    .end local v89           #lights:Lcom/android/server/LightsService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4e

    .end local v65           #cryptState:Ljava/lang/String;
    .end local v82           #firstBoot:Z
    .end local v106           #onlyCore:Z
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v63       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v71       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v75       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v78       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v84       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #location:Lcom/android/server/LocationManagerService;
    .restart local v92       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v104       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v118       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v124       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v135       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_24
    move-object/from16 v8, v100

    .end local v100           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_46

    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v52           #bluetooth:Landroid/server/BluetoothService;
    .end local v63           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v71           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v75           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v78           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v84           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .end local v90           #location:Lcom/android/server/LocationManagerService;
    .end local v92           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v104           #notification:Lcom/android/server/NotificationManagerService;
    .end local v118           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v124           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v132           #vibrator:Lcom/android/server/VibratorService;
    .end local v135           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v53       #bluetooth:Landroid/server/BluetoothService;
    .restart local v65       #cryptState:Ljava/lang/String;
    .restart local v82       #firstBoot:Z
    .restart local v89       #lights:Lcom/android/server/LightsService;
    .restart local v100       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v106       #onlyCore:Z
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    :cond_25
    move-object/from16 v52, v53

    .end local v53           #bluetooth:Landroid/server/BluetoothService;
    .restart local v52       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_c
.end method
