.class public final Lcom/android/server/pm/ShutdownThread;
.super Lcom/android/server/pm/ShutdownThreadFeature;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShutdownThread$Led;,
        Lcom/android/server/pm/ShutdownThread$Log;,
        Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;,
        Lcom/android/server/pm/ShutdownThread$Injector;
    }
.end annotation


# static fields
.field public static LOG_BACKUP_FILE_NAME:Ljava/lang/String; = null

.field public static LOG_FILE_NAME:Ljava/lang/String; = null

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x7530

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static dlgAnim:Lcom/android/server/pm/ShutdownDialog;

.field private static mFakeShutdown:Z

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mSlient:Z

.field private static final sInstance:Lcom/android/server/pm/ShutdownThread;

.field private static sIsConfirming:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private mActionDoneMount:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private final mActionDoneSyncMount:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 107
    sput-boolean v2, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    .line 108
    sput-boolean v2, Lcom/android/server/pm/ShutdownThread;->sIsConfirming:Z

    .line 122
    new-instance v0, Lcom/android/server/pm/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/pm/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log/power_off_reset_reason.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->LOG_FILE_NAME:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log/power_off_reset_reason_backup.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->LOG_BACKUP_FILE_NAME:Ljava/lang/String;

    .line 159
    sput-boolean v2, Lcom/android/server/pm/ShutdownThread;->mSlient:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 140
    const-string v0, "ShutdownThread"

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShutdownThreadFeature;-><init>(Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public static IsShutDownConfirming()Z
    .locals 2

    .prologue
    .line 652
    sget-object v1, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 653
    :try_start_0
    sget-boolean v0, Lcom/android/server/pm/ShutdownThread;->sIsConfirming:Z

    monitor-exit v1

    return v0

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static IsShutDownStarted()Z
    .locals 3

    .prologue
    .line 640
    sget-object v1, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 641
    :try_start_0
    sget-boolean v0, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_0

    .line 642
    const-string v0, "ShutdownThread"

    const-string v2, "shut down already running , return true"

    invoke-static {v0, v2}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v0, 0x1

    monitor-exit v1

    .line 646
    :goto_0
    return v0

    .line 645
    :cond_0
    const-string v0, "ShutdownThread"

    const-string v2, "shut down is not started , return false"

    invoke-static {v0, v2}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Landroid/content/Context;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-static {p0, p1}, Lcom/android/server/pm/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    sput-boolean p0, Lcom/android/server/pm/ShutdownThread;->sIsConfirming:Z

    return p0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;Z)V
    .locals 11
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 338
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 339
    :try_start_0
    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_0

    .line 340
    const-string v4, "ShutdownThread"

    const-string v6, "!@Request to shutdown already running, returning."

    invoke-static {v4, v6}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    monitor-exit v5

    .line 462
    :goto_0
    return-void

    .line 343
    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    .line 344
    invoke-static {}, Lcom/android/server/pm/ShutdownThread$Log;->startState()V

    .line 345
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    const-string v4, "ShutdownThread"

    const-string v5, "beginShutdownSequence"

    invoke-static {v4, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    if-nez v4, :cond_4

    .line 349
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 351
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v4, "shutdown"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_1
    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->mSlient:Z

    if-eqz v4, :cond_5

    .line 401
    :goto_2
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iput-object p0, v4, Lcom/android/server/pm/ShutdownThread;->mContext:Landroid/content/Context;

    .line 402
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v5, Lcom/android/server/pm/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 405
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iput-object v10, v4, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 407
    :try_start_1
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/pm/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v6, 0x1

    const-string v7, "ShutdownThread-cpu"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 409
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 410
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 417
    :goto_3
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iput-object v10, v4, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 418
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/pm/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->mSlient:Z

    if-nez v4, :cond_1

    .line 420
    :try_start_2
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/pm/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v6, 0x1a

    const-string v7, "ShutdownThread-screen"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 422
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 423
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 431
    :cond_1
    :goto_4
    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->mSlient:Z

    if-eqz v4, :cond_7

    .line 432
    :cond_2
    sput-boolean v8, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    .line 446
    :cond_3
    :goto_5
    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    if-eqz v4, :cond_a

    .line 447
    const-string v4, "ShutdownThread"

    const-string v5, "mFakeShutdown, start"

    invoke-static {v4, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v2, Lcom/android/server/pm/FakeShutdown;

    sget-object v4, Lcom/android/server/pm/ShutdownThread;->dlgAnim:Lcom/android/server/pm/ShutdownDialog;

    invoke-direct {v2, p0, v4}, Lcom/android/server/pm/FakeShutdown;-><init>(Landroid/content/Context;Lcom/android/server/pm/ShutdownDialog;)V

    .line 449
    .local v2, fake:Lcom/android/server/pm/FakeShutdown;
    invoke-virtual {v2}, Lcom/android/server/pm/FakeShutdown;->start()V

    goto/16 :goto_0

    .line 345
    .end local v2           #fake:Lcom/android/server/pm/FakeShutdown;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 353
    :cond_4
    invoke-static {p0}, Lcom/android/server/pm/FakeShutdown;->updateBatteryState(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 374
    :cond_5
    invoke-static {}, Lcom/android/server/pm/ShutdownDialog;->existAnim()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 376
    new-instance v4, Lcom/android/server/pm/ShutdownDialog;

    invoke-direct {v4, p0}, Lcom/android/server/pm/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/server/pm/ShutdownThread;->dlgAnim:Lcom/android/server/pm/ShutdownDialog;

    .line 377
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->dlgAnim:Lcom/android/server/pm/ShutdownDialog;

    invoke-virtual {v4}, Lcom/android/server/pm/ShutdownDialog;->prepareShutdown()V

    .line 378
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->dlgAnim:Lcom/android/server/pm/ShutdownDialog;

    invoke-virtual {v4}, Lcom/android/server/pm/ShutdownDialog;->show()V

    goto/16 :goto_2

    .line 384
    :cond_6
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 385
    .local v3, pd:Landroid/app/ProgressDialog;
    const v4, 0x60c0026

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v4, 0x60c002c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 387
    invoke-virtual {v3, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 388
    invoke-virtual {v3, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 389
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 391
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 392
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 394
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 395
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x40

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 396
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    #invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V
    invoke-static {p0}, Lcom/android/server/pm/ShutdownThread$Injector;->createShutDownDialog(Landroid/content/Context;)V

    goto/16 :goto_2

    .end local v3           #pd:Landroid/app/ProgressDialog;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/SecurityException;
    const-string v4, "ShutdownThread"

    const-string v5, "!@No permission to acquire wake lock"

    invoke-static {v4, v5, v1}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 413
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iput-object v10, v4, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3

    .line 424
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 425
    .restart local v1       #e:Ljava/lang/SecurityException;
    const-string v4, "ShutdownThread"

    const-string v5, "!@No permission to acquire wake lock"

    invoke-static {v4, v5, v1}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 426
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iput-object v10, v4, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_4

    .line 433
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_7
    invoke-static {p0}, Lcom/android/server/pm/FakeShutdown;->needFake(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 434
    sput-boolean v9, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    .line 435
    if-nez p1, :cond_3

    .line 436
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const-string v5, "AutoPowerOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 437
    sput-boolean v9, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    goto/16 :goto_5

    .line 439
    :cond_8
    sput-boolean v8, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    goto/16 :goto_5

    .line 443
    :cond_9
    sput-boolean v8, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    goto/16 :goto_5

    .line 451
    :cond_a
    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->mSlient:Z

    if-eqz v4, :cond_b

    .line 453
    const-string v4, "ShutdownThread"

    const-string v5, "shutdown thread slient shutdown"

    invoke-static {v4, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    invoke-virtual {v4}, Lcom/android/server/pm/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 458
    :cond_b
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    new-instance v5, Lcom/android/server/pm/ShutdownThread$2;

    invoke-direct {v5}, Lcom/android/server/pm/ShutdownThread$2;-><init>()V

    iput-object v5, v4, Lcom/android/server/pm/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 460
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    invoke-virtual {v4}, Lcom/android/server/pm/ShutdownThread;->start()V

    goto/16 :goto_0
.end method

.method public static canGlobalActionsShow()Z
    .locals 1

    .prologue
    .line 634
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->IsShutDownConfirming()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fakeShutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    const/4 v3, 0x0

    .line 323
    sget-object v1, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_0
    sget-boolean v0, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_0

    .line 325
    const-string v0, "ShutdownThread"

    const-string v2, "!@fakeShutdown : shut down already running."

    invoke-static {v0, v2}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    monitor-exit v1

    .line 335
    :goto_0
    return-void

    .line 328
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    sput-boolean v3, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 330
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reboot reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sput-boolean v3, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    .line 332
    sput-object p1, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 333
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    .line 334
    invoke-static {p0, p2}, Lcom/android/server/pm/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getReasonforshutdownFileName()Ljava/io/File;
    .locals 8

    .prologue
    .line 687
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/android/server/pm/ShutdownThread;->LOG_FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 688
    .local v0, fname:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x2800

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 689
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/android/server/pm/ShutdownThread;->LOG_BACKUP_FILE_NAME:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 690
    .local v1, mBackupfname:Ljava/io/File;
    const-string v4, "ShutdownThread"

    const-string v5, "The size of power_off_reset_reason.txt is over than 10KB. Rename to power_off_reset_reason_backup.txt for backup."

    invoke-static {v4, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 693
    const-string v4, "ShutdownThread"

    const-string v5, "power_off_reset_reason_backup.txt file is already exist. So, delete it."

    invoke-static {v4, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 697
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 698
    .local v3, rename:Z
    if-eqz v3, :cond_1

    .line 699
    const-string v4, "ShutdownThread"

    const-string v5, "rename to power_off_reset_reason_backup.txt"

    invoke-static {v4, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/android/server/pm/ShutdownThread;->LOG_FILE_NAME:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 701
    .local v2, new_fname:Ljava/io/File;
    const-string v4, "ShutdownThread"

    const-string v5, "power_off_reset_reason.txt is re-created."

    invoke-static {v4, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .end local v1           #mBackupfname:Ljava/io/File;
    .end local v2           #new_fname:Ljava/io/File;
    .end local v3           #rename:Z
    :goto_0
    return-object v2

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    const/4 v3, 0x0

    .line 292
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 295
    :cond_0
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reboot reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 297
    sput-boolean v3, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    .line 298
    sput-object p1, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 299
    sput-boolean v3, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    .line 300
    invoke-static {p0, p2}, Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 5
    .parameter "reboot"
    .parameter "reason"

    .prologue
    .line 602
    if-eqz p0, :cond_1

    .line 603
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :try_start_0
    invoke-static {p1}, Lcom/android/server/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :cond_0
    :goto_0
    #calls: Lcom/android/server/pm/ShutdownThread$Led;->Off()V
    invoke-static {}, Lcom/android/server/pm/ShutdownThread$Led;->access$400()V

    .line 629
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Lcom/android/server/PowerManagerService;->lowLevelShutdown()V

    .line 631
    return-void

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "!@Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3, v0}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0

    .line 609
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->mSlient:Z

    if-nez v2, :cond_0

    .line 611
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    .line 613
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 621
    :goto_1
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 622
    :catch_1
    move-exception v2

    goto :goto_0

    .line 614
    :catch_2
    move-exception v0

    .line 616
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "!@Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_1
.end method

.method public static rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    const/4 v3, 0x1

    .line 311
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 314
    :cond_0
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reboot safe reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    const/4 v3, 0x0
    sput-boolean v3, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    invoke-static {p0, p2}, Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static resetVars()V
    .locals 2

    .prologue
    .line 710
    const-string v0, "ShutdownThread"

    const-string v1, "reset shutdown variables"

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    sget-object v1, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 713
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    .line 714
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 715
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 716
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->sIsConfirming:Z

    .line 717
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    .line 718
    monitor-exit v1

    .line 719
    return-void

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static saveReasonforshutdown(Ljava/lang/Exception;)V
    .locals 10
    .parameter "ex"

    .prologue
    .line 658
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v7

    if-eqz v7, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    const-string v7, "ShutdownThread"

    const-string v8, "ShutdownThread.saveReasonforshutdown"

    invoke-static {v7, v8}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->getReasonforshutdownFileName()Ljava/io/File;

    move-result-object v2

    .line 663
    .local v2, fname:Ljava/io/File;
    const/4 v4, 0x0

    .line 665
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v4           #out:Ljava/io/FileOutputStream;
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 667
    .local v6, pw:Ljava/io/PrintWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 668
    .local v3, formatter:Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, dateString:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 671
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 672
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 676
    if-eqz v5, :cond_2

    .line 678
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v4, v5

    .line 683
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 676
    .end local v0           #dateString:Ljava/lang/String;
    .end local v3           #formatter:Ljava/text/SimpleDateFormat;
    .end local v6           #pw:Ljava/io/PrintWriter;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v4, :cond_3

    .line 678
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 676
    :cond_3
    :goto_3
    throw v7

    .line 673
    :catch_0
    move-exception v7

    .line 676
    :goto_4
    if-eqz v4, :cond_0

    .line 678
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 679
    :catch_1
    move-exception v1

    .line 680
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 679
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 680
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 679
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v0       #dateString:Ljava/lang/String;
    .restart local v3       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    .restart local v6       #pw:Ljava/io/PrintWriter;
    :catch_3
    move-exception v1

    .line 680
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 676
    .end local v0           #dateString:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #formatter:Ljava/text/SimpleDateFormat;
    .end local v6           #pw:Ljava/io/PrintWriter;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 673
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v0, 0x0

    .line 152
    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 153
    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    .line 155
    invoke-static {p0, p1}, Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 156
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 13
    .parameter "aContext"
    .parameter "confirm"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 171
    sget-object v9, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v9

    .line 172
    :try_start_0
    sget-boolean v8, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    if-eqz v8, :cond_0

    .line 173
    const-string v8, "ShutdownThread"

    const-string v10, "!@Request to shutdown already running, returning."

    invoke-static {v8, v10}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :goto_0
    return-void

    .line 179
    :cond_0
    :try_start_1
    sget-boolean v8, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const-string v10, "GlobalActions restart"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 180
    :cond_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v7

    .line 181
    .local v7, rp:Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v7, :cond_2

    .line 182
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/sec/enterprise/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result v8

    if-nez v8, :cond_2

    .line 183
    const-string v8, "ShutdownThread"

    const-string v10, "Shutdown Disabled by Administrator"

    invoke-static {v8, v10}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    :try_start_2
    monitor-exit v9

    goto :goto_0

    .line 193
    .end local v7           #rp:Landroid/sec/enterprise/RestrictionPolicy;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 188
    :catch_0
    move-exception v8

    .line 192
    :cond_2
    const/4 v8, 0x1

    :try_start_3
    sput-boolean v8, Lcom/android/server/pm/ShutdownThread;->sIsConfirming:Z

    .line 193
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v9, 0x258

    if-lt v8, v9, :cond_3

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v8, 0x60d003a

    invoke-direct {v1, p0, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .local v1, context:Landroid/content/Context;
    :goto_1
    new-instance v3, Ljava/lang/Exception;

    const-string v8, "It is not an exception!! just save the trace for process which called shutdown thread!! ShutdownThread.shutdown"

    invoke-direct {v3, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 204
    .local v3, ex:Ljava/lang/Exception;
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThread;->saveReasonforshutdown(Ljava/lang/Exception;)V

    .line 206
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 210
    .local v5, longPressBehavior:I
    sget-boolean v8, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v8, :cond_4

    .line 211
    const v6, 0x1040191

    .line 220
    .local v6, resourceId:I
    :goto_2
    const-string v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!@Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-eqz p1, :cond_b

    .line 223
    const-string v8, "ShutdownThread"

    const-string v9, "!@########POWEROFF START WITH CONFIRM######"

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, v1}, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x1010355

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040013

    new-instance v10, Lcom/android/server/pm/ShutdownThread$1;

    invoke-direct {v10, v1, p1}, Lcom/android/server/pm/ShutdownThread$1;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040009

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .local v2, dialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Lcom/android/server/pm/ShutdownThread$Injector;->setDialogTitle(Landroid/app/Dialog;)V

    sget-boolean v8, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v8, :cond_8

    const v8, 0x1040190

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 242
    :goto_3
    iput-object v2, v0, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 243
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 244
    invoke-virtual {v2, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 245
    const-string v8, "keyguard"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 246
    .local v4, kgm:Landroid/app/KeyguardManager;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 247
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    :goto_4
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    invoke-static {v2}, Lcom/android/server/pm/ShutdownThread$Injector;->setDialogPositiveButtonText(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .end local v0           #closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v4           #kgm:Landroid/app/KeyguardManager;
    .end local v5           #longPressBehavior:I
    .end local v6           #resourceId:I
    :cond_3
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v8, 0x60d003a

    invoke-direct {v1, p0, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .restart local v1       #context:Landroid/content/Context;
    goto/16 :goto_1

    .line 212
    .restart local v3       #ex:Ljava/lang/Exception;
    .restart local v5       #longPressBehavior:I
    :cond_4
    sget-boolean v8, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    if-eqz v8, :cond_6

    .line 213
    if-ne v5, v12, :cond_5

    const v6, 0x104018f

    .restart local v6       #resourceId:I
    :goto_5
    goto/16 :goto_2

    .end local v6           #resourceId:I
    :cond_5
    const v6, 0x104018d

    goto :goto_5

    .line 216
    :cond_6
    if-ne v5, v12, :cond_7

    const v6, 0x104018e

    .restart local v6       #resourceId:I
    :goto_6
    goto/16 :goto_2

    .end local v6           #resourceId:I
    :cond_7
    const v6, 0x104018c

    goto :goto_6

    .line 237
    .restart local v0       #closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    .restart local v2       #dialog:Landroid/app/AlertDialog;
    .restart local v6       #resourceId:I
    :cond_8
    sget-boolean v8, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    if-eqz v8, :cond_9

    .line 238
    const v8, 0x1040197

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 240
    :cond_9
    const v8, 0x1040187

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 249
    .restart local v4       #kgm:Landroid/app/KeyguardManager;
    :cond_a
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d8

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    goto :goto_4

    .line 253
    .end local v0           #closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v4           #kgm:Landroid/app/KeyguardManager;
    :cond_b
    const-string v8, "ShutdownThread"

    const-string v9, "!@########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {v1, p1}, Lcom/android/server/pm/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    goto/16 :goto_0
.end method

.method public static silentShutdown(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 161
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mSlient:Z

    .line 162
    sput-boolean v1, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 163
    sput-boolean v1, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    .line 164
    sput-boolean v1, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    .line 165
    invoke-static {p0, v1}, Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 166
    return-void
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 465
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 466
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    .line 467
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 468
    monitor-exit v1

    .line 469
    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method actionDoneMount()V
    .locals 2

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v1

    .line 473
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneMount:Z

    .line 474
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v1

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 21

    .prologue
    .line 483
    #calls: Lcom/android/server/pm/ShutdownThread$Led;->On()V
    invoke-static {}, Lcom/android/server/pm/ShutdownThread$Led;->access$300()V

    .line 484
    new-instance v5, Lcom/android/server/pm/ShutdownThread$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/pm/ShutdownThread$3;-><init>(Lcom/android/server/pm/ShutdownThread;)V

    .line 491
    .local v5, br:Landroid/content/BroadcastReceiver;
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShutdownThread;->preShutdownRadios(I)V

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_5

    const-string v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 499
    .local v20, reason:Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    .line 507
    const-string v2, "persist.sys.safemode"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_0
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->dlgAnim:Lcom/android/server/pm/ShutdownDialog;

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->mSlient:Z

    if-nez v2, :cond_1

    .line 512
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->dlgAnim:Lcom/android/server/pm/ShutdownDialog;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShutdownDialog;->waitForAnimEnd(I)Z

    .line 515
    :cond_1
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 522
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v16, v2, v6

    .line 523
    .local v16, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 524
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_2

    .line 525
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v11, v16, v6

    .line 526
    .local v11, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v11, v6

    if-gtz v2, :cond_7

    .line 527
    const-string v2, "ShutdownThread"

    const-string v4, "!@Shutdown broadcast timed out"

    invoke-static {v2, v4}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v11           #delay:J
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    const-string v2, "ShutdownThread"

    const-string v3, "!@Shutting down activity manager..."

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v10

    .line 541
    .local v10, am:Landroid/app/IActivityManager;
    if-eqz v10, :cond_3

    .line 543
    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 549
    :cond_3
    :goto_3
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/ShutdownThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/ShutdownThread;->shutdownRadios(ILandroid/content/Context;)V

    .line 552
    new-instance v19, Lcom/android/server/pm/ShutdownThread$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/pm/ShutdownThread$4;-><init>(Lcom/android/server/pm/ShutdownThread;)V

    .line 559
    .local v19, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "!@Shutting down MountService"

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    .line 563
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x7530

    add-long v14, v2, v6

    .line 564
    .local v14, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v3

    .line 566
    :try_start_2
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v18

    .line 568
    .local v18, mount:Landroid/os/storage/IMountService;
    if-eqz v18, :cond_8

    .line 569
    invoke-interface/range {v18 .. v19}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 576
    .end local v18           #mount:Landroid/os/storage/IMountService;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneMount:Z

    if-nez v2, :cond_4

    .line 577
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v11, v14, v6

    .line 578
    .restart local v11       #delay:J
    const-string v2, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@MountService delay : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", systemTime : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-wide/16 v6, 0x0

    cmp-long v2, v11, v6

    if-gtz v2, :cond_9

    .line 580
    const-string v2, "ShutdownThread"

    const-string v4, "!@Shutdown wait timed out"

    invoke-static {v2, v4}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v11           #delay:J
    :cond_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 591
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 592
    return-void

    .line 498
    .end local v10           #am:Landroid/app/IActivityManager;
    .end local v14           #endShutTime:J
    .end local v16           #endTime:J
    .end local v19           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v20           #reason:Ljava/lang/String;
    :cond_5
    const-string v2, "0"

    goto/16 :goto_0

    :cond_6
    const-string v2, ""

    goto/16 :goto_1

    .line 531
    .restart local v11       #delay:J
    .restart local v16       #endTime:J
    .restart local v20       #reason:Ljava/lang/String;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 532
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 535
    .end local v11           #delay:J
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 571
    .restart local v10       #am:Landroid/app/IActivityManager;
    .restart local v14       #endShutTime:J
    .restart local v18       #mount:Landroid/os/storage/IMountService;
    .restart local v19       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_8
    :try_start_6
    const-string v2, "ShutdownThread"

    const-string v4, "!@MountService unavailable for shutdown"

    invoke-static {v2, v4}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 573
    .end local v18           #mount:Landroid/os/storage/IMountService;
    :catch_1
    move-exception v13

    .line 574
    .local v13, e:Ljava/lang/Exception;
    :try_start_7
    const-string v2, "ShutdownThread"

    const-string v4, "!@Exception during MountService shutdown"

    invoke-static {v2, v4, v13}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_4

    .line 589
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .line 584
    .restart local v11       #delay:J
    :cond_9
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 585
    :catch_2
    move-exception v13

    .line 586
    .local v13, e:Ljava/lang/InterruptedException;
    :try_start_9
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    .line 544
    .end local v11           #delay:J
    .end local v13           #e:Ljava/lang/InterruptedException;
    .end local v14           #endShutTime:J
    .end local v19           #observer:Landroid/os/storage/IMountShutdownObserver;
    :catch_3
    move-exception v2

    goto/16 :goto_3
.end method

.method static getIsStarted()Z
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sget-boolean v0, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    return v0
.end method

.method static getIsStartedGuard()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sget-object v0, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static getReboot()Z
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sget-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static setReboot(Z)V
    .locals 0
    .parameter "value"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sput-boolean p0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    return-void
.end method

.method static setRebootReason(Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sput-object p0, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-void
.end method
