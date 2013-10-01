.class public Landroid/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncManager$SyncHandler;,
        Landroid/content/SyncManager$ServiceConnectionData;,
        Landroid/content/SyncManager$SyncTimeTracker;,
        Landroid/content/SyncManager$AccountSyncStats;,
        Landroid/content/SyncManager$AuthoritySyncStats;,
        Landroid/content/SyncManager$ActiveSyncContext;,
        Landroid/content/SyncManager$SyncAlarmIntentReceiver;,
        Landroid/content/SyncManager$SyncHandlerMessagePayload;
    }
.end annotation


# static fields
.field private static final ACTION_SYNC_ALARM:Ljava/lang/String; = "android.content.syncmanager.SYNC_ALARM"

.field private static final DEFAULT_MAX_SYNC_RETRY_TIME_IN_SECONDS:J = 0xe10L

.field private static final DELAY_RETRY_SYNC_IN_PROGRESS_IN_SECONDS:I = 0xa

.field private static final HANDLE_SYNC_ALARM_WAKE_LOCK:Ljava/lang/String; = "SyncManagerHandleSyncAlarm"

.field private static final INITIALIZATION_UNBIND_DELAY_MS:I = 0x1388

.field private static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser; = null

.field private static final INITIAL_SYNC_RETRY_TIME_IN_MS:J = 0x7530L

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_SYNC_DELAY:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MAX_SIMULTANEOUS_REGULAR_SYNCS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MAX_TIME_PER_SYNC:J = 0x0L

.field private static final SYNC_ALARM_TIMEOUT_MAX:J = 0x6ddd00L

.field private static final SYNC_ALARM_TIMEOUT_MIN:J = 0x7530L

.field private static final SYNC_LOOP_WAKE_LOCK:Ljava/lang/String; = "SyncLoopWakeLock"

#the value of this static final field might be set in the static constructor
.field private static final SYNC_NOTIFICATION_DELAY:J = 0x0L

.field private static final SYNC_WAKE_LOCK_PREFIX:Ljava/lang/String; = "*sync*"

.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field protected final mActiveSyncContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncManager$ActiveSyncContext;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmService:Landroid/app/AlarmManager;

.field private mBackgroundDataSettingChanged:Landroid/content/BroadcastReceiver;

.field private volatile mBootCompleted:Z

.field private mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private volatile mDataConnectionIsConnected:Z

.field private volatile mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNeedSyncActiveNotification:Z

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private volatile mRunningAccounts:[Landroid/accounts/AccountAndUser;

.field private mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mStorageIsLow:Z

.field protected mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field private final mSyncAlarmIntent:Landroid/app/PendingIntent;

.field private final mSyncHandler:Landroid/content/SyncManager$SyncHandler;

.field private volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mSyncQueue:Landroid/content/SyncQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSyncQueue"
    .end annotation
.end field

.field private mSyncRandomOffsetMillis:I

.field private mSyncStorageEngine:Landroid/content/SyncStorageEngine;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7530

    const/4 v1, 0x2

    .line 99
    invoke-static {}, Landroid/app/ActivityManager;->isLargeRAM()Z

    move-result v2

    .line 100
    .local v2, isLargeRAM:Z
    if-eqz v2, :cond_0

    const/4 v0, 0x5

    .line 101
    .local v0, defaultMaxInitSyncs:I
    :goto_0
    if-eqz v2, :cond_1

    .line 102
    .local v1, defaultMaxRegularSyncs:I
    :goto_1
    const-string/jumbo v3, "sync.max_init_syncs"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid/content/SyncManager;->MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I

    .line 104
    const-string/jumbo v3, "sync.max_regular_syncs"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid/content/SyncManager;->MAX_SIMULTANEOUS_REGULAR_SYNCS:I

    .line 106
    const-string/jumbo v3, "sync.local_sync_delay"

    invoke-static {v3, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Landroid/content/SyncManager;->LOCAL_SYNC_DELAY:J

    .line 108
    const-string/jumbo v3, "sync.max_time_per_sync"

    const-wide/32 v4, 0x493e0

    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Landroid/content/SyncManager;->MAX_TIME_PER_SYNC:J

    .line 110
    const-string/jumbo v3, "sync.notification_delay"

    invoke-static {v3, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Landroid/content/SyncManager;->SYNC_NOTIFICATION_DELAY:J

    .line 144
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/accounts/AccountAndUser;

    sput-object v3, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    return-void

    .end local v0           #defaultMaxInitSyncs:I
    .end local v1           #defaultMaxRegularSyncs:I
    :cond_0
    move v0, v1

    .line 100
    goto :goto_0

    .line 101
    .restart local v0       #defaultMaxInitSyncs:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    sget-object v0, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    iput-object v0, p0, Landroid/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 151
    iput-boolean v6, p0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 152
    iput-boolean v6, p0, Landroid/content/SyncManager;->mStorageIsLow:Z

    .line 155
    iput-object v4, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    .line 162
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 165
    iput-boolean v6, p0, Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z

    .line 174
    new-instance v0, Landroid/content/SyncManager$1;

    invoke-direct {v0, p0}, Landroid/content/SyncManager$1;-><init>(Landroid/content/SyncManager;)V

    iput-object v0, p0, Landroid/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    new-instance v0, Landroid/content/SyncManager$2;

    invoke-direct {v0, p0}, Landroid/content/SyncManager$2;-><init>(Landroid/content/SyncManager;)V

    iput-object v0, p0, Landroid/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    new-instance v0, Landroid/content/SyncManager$3;

    invoke-direct {v0, p0}, Landroid/content/SyncManager$3;-><init>(Landroid/content/SyncManager;)V

    iput-object v0, p0, Landroid/content/SyncManager;->mBackgroundDataSettingChanged:Landroid/content/BroadcastReceiver;

    .line 211
    new-instance v0, Landroid/content/SyncManager$4;

    invoke-direct {v0, p0}, Landroid/content/SyncManager$4;-><init>(Landroid/content/SyncManager;)V

    iput-object v0, p0, Landroid/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 277
    new-instance v0, Landroid/content/SyncManager$5;

    invoke-direct {v0, p0}, Landroid/content/SyncManager$5;-><init>(Landroid/content/SyncManager;)V

    iput-object v0, p0, Landroid/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    new-instance v0, Landroid/content/SyncManager$6;

    invoke-direct {v0, p0}, Landroid/content/SyncManager$6;-><init>(Landroid/content/SyncManager;)V

    iput-object v0, p0, Landroid/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 310
    new-instance v0, Landroid/content/SyncManager$7;

    invoke-direct {v0, p0}, Landroid/content/SyncManager$7;-><init>(Landroid/content/SyncManager;)V

    iput-object v0, p0, Landroid/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 330
    iput-boolean v6, p0, Landroid/content/SyncManager;->mBootCompleted:Z

    .line 349
    iput-object p1, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    .line 351
    invoke-static {p1}, Landroid/content/SyncStorageEngine;->init(Landroid/content/Context;)V

    .line 352
    invoke-static {}, Landroid/content/SyncStorageEngine;->getSingleton()Landroid/content/SyncStorageEngine;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    .line 353
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    new-instance v1, Landroid/content/SyncManager$8;

    invoke-direct {v1, p0}, Landroid/content/SyncManager$8;-><init>(Landroid/content/SyncManager;)V

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->setOnSyncRequestListener(Landroid/content/SyncStorageEngine$OnSyncRequestListener;)V

    .line 360
    new-instance v0, Landroid/content/SyncAdaptersCache;

    iget-object v1, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 361
    new-instance v0, Landroid/content/SyncQueue;

    iget-object v1, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v2, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-direct {v0, v1, v2}, Landroid/content/SyncQueue;-><init>(Landroid/content/SyncStorageEngine;Landroid/content/SyncAdaptersCache;)V

    iput-object v0, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    .line 363
    new-instance v11, Landroid/os/HandlerThread;

    const-string v0, "SyncHandlerThread"

    const/16 v1, 0xa

    invoke-direct {v11, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 365
    .local v11, syncThread:Landroid/os/HandlerThread;
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 366
    new-instance v0, Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/SyncManager$SyncHandler;-><init>(Landroid/content/SyncManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    .line 368
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    new-instance v1, Landroid/content/SyncManager$9;

    invoke-direct {v1, p0}, Landroid/content/SyncManager$9;-><init>(Landroid/content/SyncManager;)V

    iget-object v2, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 378
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.content.syncmanager.SYNC_ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;

    .line 381
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 382
    .local v3, intentFilter:Landroid/content/IntentFilter;
    iget-object v0, p0, Landroid/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 384
    if-nez p2, :cond_0

    .line 385
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 386
    .restart local v3       #intentFilter:Landroid/content/IntentFilter;
    iget-object v0, p0, Landroid/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 389
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 390
    .restart local v3       #intentFilter:Landroid/content/IntentFilter;
    iget-object v0, p0, Landroid/content/SyncManager;->mBackgroundDataSettingChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 393
    .restart local v3       #intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Landroid/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 397
    .restart local v3       #intentFilter:Landroid/content/IntentFilter;
    const/16 v0, 0x64

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 398
    iget-object v0, p0, Landroid/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 400
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 401
    .restart local v3       #intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string v0, "android.intent.action.USER_STARTING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string v0, "android.intent.action.USER_STOPPING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 407
    if-nez p2, :cond_2

    .line 408
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 410
    new-instance v0, Landroid/content/SyncManager$SyncAlarmIntentReceiver;

    invoke-direct {v0, p0}, Landroid/content/SyncManager$SyncAlarmIntentReceiver;-><init>(Landroid/content/SyncManager;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.content.syncmanager.SYNC_ALARM"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 415
    :goto_0
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Landroid/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 416
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    .line 422
    iget-object v0, p0, Landroid/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "SyncManagerHandleSyncAlarm"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 424
    iget-object v0, p0, Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 431
    iget-object v0, p0, Landroid/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "SyncLoopWakeLock"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 433
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 435
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    new-instance v1, Landroid/content/SyncManager$10;

    invoke-direct {v1, p0}, Landroid/content/SyncManager$10;-><init>(Landroid/content/SyncManager;)V

    invoke-virtual {v0, v7, v1}, Landroid/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 443
    if-nez p2, :cond_1

    .line 445
    iget-object v5, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 452
    :cond_1
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v0}, Landroid/content/SyncStorageEngine;->getSyncRandomOffset()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Landroid/content/SyncManager;->mSyncRandomOffsetMillis:I

    .line 453
    return-void

    .line 413
    :cond_2
    iput-object v4, p0, Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/content/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/content/SyncManager;->mStorageIsLow:Z

    return v0
.end method

.method static synthetic access$002(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Landroid/content/SyncManager;->mStorageIsLow:Z

    return p1
.end method

.method static synthetic access$100(Landroid/content/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/content/SyncManager;->sendCheckAlarmsMessage()V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/SyncManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->onUserStopping(I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/content/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/content/SyncManager;->sendSyncAlarmMessage()V

    return-void
.end method

.method static synthetic access$1400(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/content/SyncManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Landroid/content/SyncManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/content/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/content/SyncManager;->doDatabaseCleanup()V

    return-void
.end method

.method static synthetic access$2200(Landroid/content/SyncManager;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->isSyncStillActive(Landroid/content/SyncManager$ActiveSyncContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Landroid/content/SyncManager;)[Landroid/accounts/AccountAndUser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/content/SyncManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/content/SyncManager;->mSyncRandomOffsetMillis:I

    return v0
.end method

.method static synthetic access$2700(Landroid/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800()[Landroid/accounts/AccountAndUser;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/content/SyncManager;)Landroid/os/UserManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/SyncManager;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000()J
    .locals 2

    .prologue
    .line 86
    sget-wide v0, Landroid/content/SyncManager;->MAX_TIME_PER_SYNC:J

    return-wide v0
.end method

.method static synthetic access$3100()I
    .locals 1

    .prologue
    .line 86
    sget v0, Landroid/content/SyncManager;->MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I

    return v0
.end method

.method static synthetic access$3200()I
    .locals 1

    .prologue
    .line 86
    sget v0, Landroid/content/SyncManager;->MAX_SIMULTANEOUS_REGULAR_SYNCS:I

    return v0
.end method

.method static synthetic access$3300(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->increaseBackoffSetting(Landroid/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->clearBackoffSetting(Landroid/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/content/SyncManager;Landroid/content/SyncOperation;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/content/SyncManager;->setDelayUntilTime(Landroid/content/SyncOperation;J)V

    return-void
.end method

.method static synthetic access$3600(Landroid/content/SyncManager;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$3700()J
    .locals 2

    .prologue
    .line 86
    sget-wide v0, Landroid/content/SyncManager;->SYNC_NOTIFICATION_DELAY:J

    return-wide v0
.end method

.method static synthetic access$3800(Landroid/content/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z

    return v0
.end method

.method static synthetic access$3802(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z

    return p1
.end method

.method static synthetic access$3900(Landroid/content/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/content/SyncManager;->ensureAlarmService()V

    return-void
.end method

.method static synthetic access$400(Landroid/content/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    return v0
.end method

.method static synthetic access$4000(Landroid/content/SyncManager;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$402(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    return p1
.end method

.method static synthetic access$4100(Landroid/content/SyncManager;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/content/SyncManager;->readDataConnectionState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/content/SyncManager;)Landroid/content/SyncQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/SyncManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/SyncManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->onUserStarting(I)V

    return-void
.end method

.method private clearBackoffSetting(Landroid/content/SyncOperation;)V
    .locals 8
    .parameter "op"

    .prologue
    const-wide/16 v4, -0x1

    .line 722
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Landroid/content/SyncOperation;->userId:I

    iget-object v3, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-wide v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/SyncStorageEngine;->setBackoff(Landroid/accounts/Account;ILjava/lang/String;JJ)V

    .line 724
    iget-object v6, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v6

    .line 725
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Landroid/content/SyncOperation;->userId:I

    iget-object v3, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/SyncQueue;->onBackoffChanged(Landroid/accounts/Account;ILjava/lang/String;J)V

    .line 726
    monitor-exit v6

    .line 727
    return-void

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 3
    .parameter "accounts"
    .parameter "account"
    .parameter "userId"

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, found:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 237
    aget-object v2, p1, v1

    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v2, p3, :cond_1

    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    const/4 v0, 0x1

    .line 243
    :cond_0
    return v0

    .line 236
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private doDatabaseCleanup()V
    .locals 5

    .prologue
    .line 269
    iget-object v3, p0, Landroid/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 271
    .local v2, user:Landroid/content/pm/UserInfo;
    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v3, :cond_0

    .line 272
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManagerService;->getAccounts(I)[Landroid/accounts/Account;

    move-result-object v0

    .line 273
    .local v0, accountsForUser:[Landroid/accounts/Account;
    iget-object v3, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v0, v4}, Landroid/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    goto :goto_0

    .line 275
    .end local v0           #accountsForUser:[Landroid/accounts/Account;
    .end local v2           #user:Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V
    .locals 4
    .parameter "pw"
    .parameter "ds"

    .prologue
    .line 1262
    const-string v0, "Success ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1263
    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    if-lez v0, :cond_0

    .line 1264
    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1265
    const-string v0, " avg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    iget v2, p2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1267
    :cond_0
    const-string v0, ") Failure ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1268
    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    if-lez v0, :cond_1

    .line 1269
    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1270
    const-string v0, " avg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    iget v2, p2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1272
    :cond_1
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1273
    return-void
.end method

.method private dumpDayStatistics(Ljava/io/PrintWriter;)V
    .locals 12
    .parameter "pw"

    .prologue
    const/4 v11, 0x6

    const/4 v8, 0x0

    .line 1481
    iget-object v7, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v7}, Landroid/content/SyncStorageEngine;->getDayStatistics()[Landroid/content/SyncStorageEngine$DayStats;

    move-result-object v3

    .line 1482
    .local v3, dses:[Landroid/content/SyncStorageEngine$DayStats;
    if-eqz v3, :cond_6

    aget-object v7, v3, v8

    if-eqz v7, :cond_6

    .line 1483
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1484
    const-string v7, "Sync Statistics"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    const-string v7, "  Today:  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v7, v3, v8

    invoke-direct {p0, p1, v7}, Landroid/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V

    .line 1486
    aget-object v7, v3, v8

    iget v5, v7, Landroid/content/SyncStorageEngine$DayStats;->day:I

    .line 1491
    .local v5, today:I
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    if-gt v4, v11, :cond_0

    array-length v7, v3

    if-ge v4, v7, :cond_0

    .line 1492
    aget-object v2, v3, v4

    .line 1493
    .local v2, ds:Landroid/content/SyncStorageEngine$DayStats;
    if-nez v2, :cond_3

    .line 1502
    .end local v2           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_0
    move v6, v5

    .line 1503
    .local v6, weekDay:I
    :cond_1
    :goto_1
    array-length v7, v3

    if-ge v4, v7, :cond_6

    .line 1504
    const/4 v0, 0x0

    .line 1505
    .local v0, aggr:Landroid/content/SyncStorageEngine$DayStats;
    add-int/lit8 v6, v6, -0x7

    .line 1506
    :goto_2
    array-length v7, v3

    if-ge v4, v7, :cond_2

    .line 1507
    aget-object v2, v3, v4

    .line 1508
    .restart local v2       #ds:Landroid/content/SyncStorageEngine$DayStats;
    if-nez v2, :cond_4

    .line 1509
    array-length v4, v3

    .line 1524
    .end local v2           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_2
    if-eqz v0, :cond_1

    .line 1525
    const-string v7, "  Week-"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int v7, v5, v6

    div-int/lit8 v7, v7, 0x7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1526
    invoke-direct {p0, p1, v0}, Landroid/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V

    goto :goto_1

    .line 1494
    .end local v0           #aggr:Landroid/content/SyncStorageEngine$DayStats;
    .end local v6           #weekDay:I
    .restart local v2       #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_3
    iget v7, v2, Landroid/content/SyncStorageEngine$DayStats;->day:I

    sub-int v1, v5, v7

    .line 1495
    .local v1, delta:I
    if-gt v1, v11, :cond_0

    .line 1497
    const-string v7, "  Day-"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ":  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1498
    invoke-direct {p0, p1, v2}, Landroid/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V

    .line 1491
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1512
    .end local v1           #delta:I
    .restart local v0       #aggr:Landroid/content/SyncStorageEngine$DayStats;
    .restart local v6       #weekDay:I
    :cond_4
    iget v7, v2, Landroid/content/SyncStorageEngine$DayStats;->day:I

    sub-int v1, v6, v7

    .line 1513
    .restart local v1       #delta:I
    if-gt v1, v11, :cond_2

    .line 1514
    add-int/lit8 v4, v4, 0x1

    .line 1516
    if-nez v0, :cond_5

    .line 1517
    new-instance v0, Landroid/content/SyncStorageEngine$DayStats;

    .end local v0           #aggr:Landroid/content/SyncStorageEngine$DayStats;
    invoke-direct {v0, v6}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 1519
    .restart local v0       #aggr:Landroid/content/SyncStorageEngine$DayStats;
    :cond_5
    iget v7, v0, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    iget v8, v2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v7, v8

    iput v7, v0, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1520
    iget-wide v7, v0, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    iget-wide v9, v2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v7, v9

    iput-wide v7, v0, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1521
    iget v7, v0, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    iget v8, v2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v7, v8

    iput v7, v0, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1522
    iget-wide v7, v0, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    iget-wide v9, v2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v7, v9

    iput-wide v7, v0, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_2

    .line 1530
    .end local v0           #aggr:Landroid/content/SyncStorageEngine$DayStats;
    .end local v1           #delta:I
    .end local v2           #ds:Landroid/content/SyncStorageEngine$DayStats;
    .end local v4           #i:I
    .end local v5           #today:I
    .end local v6           #weekDay:I
    :cond_6
    return-void
.end method

.method private dumpRecentHistory(Ljava/io/PrintWriter;)V
    .locals 55
    .parameter "pw"

    .prologue
    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/content/SyncStorageEngine;->getSyncHistory()Ljava/util/ArrayList;

    move-result-object v26

    .line 1283
    .local v26, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$SyncHistoryItem;>;"
    if-eqz v26, :cond_f

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v50

    if-lez v50, :cond_f

    .line 1284
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    .line 1285
    .local v10, authorityMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/SyncManager$AuthoritySyncStats;>;"
    const-wide/16 v46, 0x0

    .line 1286
    .local v46, totalElapsedTime:J
    const-wide/16 v48, 0x0

    .line 1287
    .local v48, totalTimes:J
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1289
    .local v3, N:I
    const/16 v32, 0x0

    .line 1290
    .local v32, maxAuthority:I
    const/16 v31, 0x0

    .line 1291
    .local v31, maxAccount:I
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    .line 1292
    .local v25, item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v50, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/content/SyncStorageEngine;->getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    .line 1296
    .local v8, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v8, :cond_4

    .line 1297
    iget-object v11, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    .line 1298
    .local v11, authorityName:Ljava/lang/String;
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "/"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    iget-object v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " u"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    iget v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->userId:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1305
    .local v5, accountKey:Ljava/lang/String;
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v30

    .line 1306
    .local v30, length:I
    move/from16 v0, v30

    move/from16 v1, v32

    if-le v0, v1, :cond_0

    .line 1307
    move/from16 v32, v30

    .line 1309
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v30

    .line 1310
    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_1

    .line 1311
    move/from16 v31, v30

    .line 1314
    :cond_1
    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    move-wide/from16 v17, v0

    .line 1315
    .local v17, elapsedTime:J
    add-long v46, v46, v17

    .line 1316
    const-wide/16 v50, 0x1

    add-long v48, v48, v50

    .line 1317
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/SyncManager$AuthoritySyncStats;

    .line 1318
    .local v12, authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    if-nez v12, :cond_2

    .line 1319
    new-instance v12, Landroid/content/SyncManager$AuthoritySyncStats;

    .end local v12           #authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    const/16 v50, 0x0

    move-object/from16 v0, v50

    invoke-direct {v12, v11, v0}, Landroid/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;Landroid/content/SyncManager$1;)V

    .line 1320
    .restart local v12       #authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    :cond_2
    iget-wide v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    move-wide/from16 v50, v0

    add-long v50, v50, v17

    move-wide/from16 v0, v50

    iput-wide v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 1323
    iget v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->times:I

    move/from16 v50, v0

    add-int/lit8 v50, v50, 0x1

    move/from16 v0, v50

    iput v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->times:I

    .line 1324
    iget-object v6, v12, Landroid/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 1325
    .local v6, accountMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/SyncManager$AccountSyncStats;>;"
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SyncManager$AccountSyncStats;

    .line 1326
    .local v7, accountSyncStats:Landroid/content/SyncManager$AccountSyncStats;
    if-nez v7, :cond_3

    .line 1327
    new-instance v7, Landroid/content/SyncManager$AccountSyncStats;

    .end local v7           #accountSyncStats:Landroid/content/SyncManager$AccountSyncStats;
    const/16 v50, 0x0

    move-object/from16 v0, v50

    invoke-direct {v7, v5, v0}, Landroid/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;Landroid/content/SyncManager$1;)V

    .line 1328
    .restart local v7       #accountSyncStats:Landroid/content/SyncManager$AccountSyncStats;
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    :cond_3
    iget-wide v0, v7, Landroid/content/SyncManager$AccountSyncStats;->elapsedTime:J

    move-wide/from16 v50, v0

    add-long v50, v50, v17

    move-wide/from16 v0, v50

    iput-wide v0, v7, Landroid/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 1331
    iget v0, v7, Landroid/content/SyncManager$AccountSyncStats;->times:I

    move/from16 v50, v0

    add-int/lit8 v50, v50, 0x1

    move/from16 v0, v50

    iput v0, v7, Landroid/content/SyncManager$AccountSyncStats;->times:I

    goto/16 :goto_0

    .line 1301
    .end local v5           #accountKey:Ljava/lang/String;
    .end local v6           #accountMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/SyncManager$AccountSyncStats;>;"
    .end local v7           #accountSyncStats:Landroid/content/SyncManager$AccountSyncStats;
    .end local v11           #authorityName:Ljava/lang/String;
    .end local v12           #authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    .end local v17           #elapsedTime:J
    .end local v30           #length:I
    :cond_4
    const-string v11, "Unknown"

    .line 1302
    .restart local v11       #authorityName:Ljava/lang/String;
    const-string v5, "Unknown"

    .restart local v5       #accountKey:Ljava/lang/String;
    goto :goto_1

    .line 1335
    .end local v5           #accountKey:Ljava/lang/String;
    .end local v8           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v11           #authorityName:Ljava/lang/String;
    .end local v25           #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    :cond_5
    const-wide/16 v50, 0x0

    cmp-long v50, v46, v50

    if-lez v50, :cond_7

    .line 1336
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1337
    const-string v50, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    const-wide/16 v53, 0x3e8

    div-long v53, v46, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1341
    new-instance v40, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v50

    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1343
    .local v40, sortedAuthorities:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncManager$AuthoritySyncStats;>;"
    new-instance v50, Landroid/content/SyncManager$11;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/content/SyncManager$11;-><init>(Landroid/content/SyncManager;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1355
    add-int/lit8 v50, v31, 0x3

    move/from16 v0, v32

    move/from16 v1, v50

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 1356
    .local v33, maxLength:I
    add-int/lit8 v50, v33, 0x4

    add-int/lit8 v50, v50, 0x2

    add-int/lit8 v50, v50, 0xa

    add-int/lit8 v35, v50, 0xb

    .line 1357
    .local v35, padLength:I
    move/from16 v0, v35

    new-array v13, v0, [C

    .line 1358
    .local v13, chars:[C
    const/16 v50, 0x2d

    move/from16 v0, v50

    invoke-static {v13, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 1359
    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([C)V

    .line 1361
    .local v38, separator:Ljava/lang/String;
    const-string v50, "  %%-%ds: %%-9s  %%-11s\n"

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    add-int/lit8 v53, v33, 0x2

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1363
    .local v9, authorityFormat:Ljava/lang/String;
    const-string v50, "    %%-%ds:   %%-9s  %%-11s\n"

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1366
    .local v4, accountFormat:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .end local v23           #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/SyncManager$AuthoritySyncStats;

    .line 1368
    .restart local v12       #authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    iget-object v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 1374
    .local v34, name:Ljava/lang/String;
    iget-wide v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    move-wide/from16 v17, v0

    .line 1375
    .restart local v17       #elapsedTime:J
    iget v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->times:I

    move/from16 v44, v0

    .line 1376
    .local v44, times:I
    const-string v50, "%ds/%d%%"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    const-wide/16 v53, 0x3e8

    div-long v53, v17, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    const-wide/16 v53, 0x64

    mul-long v53, v53, v17

    div-long v53, v53, v46

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    .line 1379
    .local v43, timeStr:Ljava/lang/String;
    const-string v50, "%d/%d%%"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    mul-int/lit8 v53, v44, 0x64

    move/from16 v0, v53

    int-to-long v0, v0

    move-wide/from16 v53, v0

    div-long v53, v53, v48

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    .line 1382
    .local v45, timesStr:Ljava/lang/String;
    const/16 v50, 0x3

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object v34, v50, v51

    const/16 v51, 0x1

    aput-object v45, v50, v51

    const/16 v51, 0x2

    aput-object v43, v50, v51

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v9, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1384
    new-instance v39, Ljava/util/ArrayList;

    iget-object v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v50

    move-object/from16 v0, v39

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1387
    .local v39, sortedAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncManager$AccountSyncStats;>;"
    new-instance v50, Landroid/content/SyncManager$12;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/content/SyncManager$12;-><init>(Landroid/content/SyncManager;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1398
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_6

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/SyncManager$AccountSyncStats;

    .line 1399
    .local v41, stats:Landroid/content/SyncManager$AccountSyncStats;
    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/content/SyncManager$AccountSyncStats;->elapsedTime:J

    move-wide/from16 v17, v0

    .line 1400
    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/SyncManager$AccountSyncStats;->times:I

    move/from16 v44, v0

    .line 1401
    const-string v50, "%ds/%d%%"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    const-wide/16 v53, 0x3e8

    div-long v53, v17, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    const-wide/16 v53, 0x64

    mul-long v53, v53, v17

    div-long v53, v53, v46

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    .line 1404
    const-string v50, "%d/%d%%"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    mul-int/lit8 v53, v44, 0x64

    move/from16 v0, v53

    int-to-long v0, v0

    move-wide/from16 v53, v0

    div-long v53, v53, v48

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    .line 1407
    const/16 v50, 0x3

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    aput-object v52, v50, v51

    const/16 v51, 0x1

    aput-object v45, v50, v51

    const/16 v51, 0x2

    aput-object v43, v50, v51

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_3

    .line 1409
    .end local v41           #stats:Landroid/content/SyncManager$AccountSyncStats;
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1413
    .end local v4           #accountFormat:Ljava/lang/String;
    .end local v9           #authorityFormat:Ljava/lang/String;
    .end local v12           #authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    .end local v13           #chars:[C
    .end local v17           #elapsedTime:J
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v33           #maxLength:I
    .end local v34           #name:Ljava/lang/String;
    .end local v35           #padLength:I
    .end local v38           #separator:Ljava/lang/String;
    .end local v39           #sortedAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncManager$AccountSyncStats;>;"
    .end local v40           #sortedAuthorities:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncManager$AuthoritySyncStats;>;"
    .end local v43           #timeStr:Ljava/lang/String;
    .end local v44           #times:I
    .end local v45           #timesStr:Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1414
    const-string v50, "Recent Sync History"

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1415
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "  %-"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "s  %s\n"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1416
    .local v21, format:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v29

    .line 1418
    .local v29, lastTimeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/16 v22, 0x0

    .local v22, i:I
    :goto_4
    move/from16 v0, v22

    if-ge v0, v3, :cond_f

    .line 1419
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    .line 1420
    .restart local v25       #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v50, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/content/SyncStorageEngine;->getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    .line 1424
    .restart local v8       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v8, :cond_b

    .line 1425
    iget-object v11, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    .line 1426
    .restart local v11       #authorityName:Ljava/lang/String;
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "/"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    iget-object v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " u"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    iget v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->userId:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1432
    .restart local v5       #accountKey:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    move-wide/from16 v17, v0

    .line 1433
    .restart local v17       #elapsedTime:J
    new-instance v42, Landroid/text/format/Time;

    invoke-direct/range {v42 .. v42}, Landroid/text/format/Time;-><init>()V

    .line 1434
    .local v42, time:Landroid/text/format/Time;
    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    move-wide/from16 v19, v0

    .line 1435
    .local v19, eventTime:J
    move-object/from16 v0, v42

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1437
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "/"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1438
    .local v27, key:Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    .line 1440
    .local v28, lastEventTime:Ljava/lang/Long;
    if-nez v28, :cond_c

    .line 1441
    const-string v16, ""

    .line 1454
    .local v16, diffString:Ljava/lang/String;
    :goto_6
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    const-string v50, "  #%-3d: %s %8s  %5.1fs  %8s"

    const/16 v51, 0x5

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    add-int/lit8 v53, v22, 0x1

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    invoke-static/range {v19 .. v20}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x2

    sget-object v53, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    move/from16 v54, v0

    aget-object v53, v53, v54

    aput-object v53, v51, v52

    const/16 v52, 0x3

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v53, v0

    const/high16 v54, 0x447a

    div-float v53, v53, v54

    invoke-static/range {v53 .. v53}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x4

    aput-object v16, v51, v52

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1462
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object v5, v50, v51

    const/16 v51, 0x1

    aput-object v11, v50, v51

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1464
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v50, v0

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_8

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v50, v50, v52

    if-nez v50, :cond_8

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v50, v50, v52

    if-eqz v50, :cond_9

    .line 1467
    :cond_8
    const-string v50, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    const/16 v51, 0x3

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v53, v0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    move-wide/from16 v53, v0

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x2

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v53, v0

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1472
    :cond_9
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v50, v0

    if-eqz v50, :cond_a

    const-string/jumbo v50, "success"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_a

    .line 1474
    const-string v50, "    mesg=%s\n"

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v53, v0

    aput-object v53, v51, v52

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1418
    :cond_a
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 1429
    .end local v5           #accountKey:Ljava/lang/String;
    .end local v11           #authorityName:Ljava/lang/String;
    .end local v16           #diffString:Ljava/lang/String;
    .end local v17           #elapsedTime:J
    .end local v19           #eventTime:J
    .end local v27           #key:Ljava/lang/String;
    .end local v28           #lastEventTime:Ljava/lang/Long;
    .end local v42           #time:Landroid/text/format/Time;
    :cond_b
    const-string v11, "Unknown"

    .line 1430
    .restart local v11       #authorityName:Ljava/lang/String;
    const-string v5, "Unknown"

    .restart local v5       #accountKey:Ljava/lang/String;
    goto/16 :goto_5

    .line 1443
    .restart local v17       #elapsedTime:J
    .restart local v19       #eventTime:J
    .restart local v27       #key:Ljava/lang/String;
    .restart local v28       #lastEventTime:Ljava/lang/Long;
    .restart local v42       #time:Landroid/text/format/Time;
    :cond_c
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    sub-long v50, v50, v19

    const-wide/16 v52, 0x3e8

    div-long v14, v50, v52

    .line 1444
    .local v14, diff:J
    const-wide/16 v50, 0x3c

    cmp-long v50, v14, v50

    if-gez v50, :cond_d

    .line 1445
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #diffString:Ljava/lang/String;
    goto/16 :goto_6

    .line 1446
    .end local v16           #diffString:Ljava/lang/String;
    :cond_d
    const-wide/16 v50, 0xe10

    cmp-long v50, v14, v50

    if-gez v50, :cond_e

    .line 1447
    const-string v50, "%02d:%02d"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    const-wide/16 v53, 0x3c

    div-long v53, v14, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    const-wide/16 v53, 0x3c

    rem-long v53, v14, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #diffString:Ljava/lang/String;
    goto/16 :goto_6

    .line 1449
    .end local v16           #diffString:Ljava/lang/String;
    :cond_e
    const-wide/16 v50, 0xe10

    rem-long v36, v14, v50

    .line 1450
    .local v36, sec:J
    const-string v50, "%02d:%02d:%02d"

    const/16 v51, 0x3

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    const-wide/16 v53, 0xe10

    div-long v53, v14, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    const-wide/16 v53, 0x3c

    div-long v53, v36, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x2

    const-wide/16 v53, 0x3c

    rem-long v53, v36, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #diffString:Ljava/lang/String;
    goto/16 :goto_6

    .line 1478
    .end local v3           #N:I
    .end local v5           #accountKey:Ljava/lang/String;
    .end local v8           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v10           #authorityMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/SyncManager$AuthoritySyncStats;>;"
    .end local v11           #authorityName:Ljava/lang/String;
    .end local v14           #diff:J
    .end local v16           #diffString:Ljava/lang/String;
    .end local v17           #elapsedTime:J
    .end local v19           #eventTime:J
    .end local v21           #format:Ljava/lang/String;
    .end local v22           #i:I
    .end local v25           #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    .end local v27           #key:Ljava/lang/String;
    .end local v28           #lastEventTime:Ljava/lang/Long;
    .end local v29           #lastTimeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v31           #maxAccount:I
    .end local v32           #maxAuthority:I
    .end local v36           #sec:J
    .end local v42           #time:Landroid/text/format/Time;
    .end local v46           #totalElapsedTime:J
    .end local v48           #totalTimes:J
    :cond_f
    return-void
.end method

.method private dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7
    .parameter "pw"

    .prologue
    .line 1533
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1534
    invoke-direct {p0}, Landroid/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v4

    .line 1535
    .local v4, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v4, :cond_1

    .line 1536
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1537
    .local v3, user:Landroid/content/pm/UserInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync adapters for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1540
    iget-object v5, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1541
    .local v2, info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 1543
    .end local v2           #info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1544
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_0

    .line 1547
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #user:Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private dumpTimeSec(Ljava/io/PrintWriter;J)V
    .locals 4
    .parameter "pw"
    .parameter "time"

    .prologue
    .line 1257
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x64

    div-long v0, p2, v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1258
    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1259
    return-void
.end method

.method private ensureAlarmService()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    .line 477
    :cond_0
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 1075
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1076
    .local v0, tobj:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1077
    const-string v1, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAllUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Landroid/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 338
    :cond_0
    iget-object v0, p0, Landroid/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLastFailureMessage(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 1226
    packed-switch p1, :pswitch_data_0

    .line 1252
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 1228
    :pswitch_0
    const-string/jumbo v0, "sync already in progress"

    goto :goto_0

    .line 1231
    :pswitch_1
    const-string v0, "authentication error"

    goto :goto_0

    .line 1234
    :pswitch_2
    const-string v0, "I/O error"

    goto :goto_0

    .line 1237
    :pswitch_3
    const-string/jumbo v0, "parse error"

    goto :goto_0

    .line 1240
    :pswitch_4
    const-string v0, "conflict error"

    goto :goto_0

    .line 1243
    :pswitch_5
    const-string/jumbo v0, "too many deletions error"

    goto :goto_0

    .line 1246
    :pswitch_6
    const-string/jumbo v0, "too many retries error"

    goto :goto_0

    .line 1249
    :pswitch_7
    const-string v0, "internal error"

    goto :goto_0

    .line 1226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private increaseBackoffSetting(Landroid/content/SyncOperation;)V
    .locals 18
    .parameter "op"

    .prologue
    .line 732
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 734
    .local v11, now:J
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/SyncOperation;->userId:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v13

    .line 736
    .local v13, previousSettings:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v7, -0x1

    .line 737
    .local v7, newDelayInMs:J
    if-eqz v13, :cond_2

    .line 740
    iget-object v1, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v11, v1

    if-gez v1, :cond_1

    .line 741
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    const-string v2, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Still in backoff, do not increase it. Remaining: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v14, v11

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " seconds."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    iget-object v1, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    mul-long v7, v1, v3

    .line 750
    :cond_2
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-gtz v1, :cond_3

    .line 752
    const-wide/16 v1, 0x7530

    const-wide/32 v3, 0x80e8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/SyncManager;->jitterize(JJ)J

    move-result-wide v7

    .line 757
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sync_max_retry_delay_in_seconds"

    const-wide/16 v3, 0xe10

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    .line 760
    .local v9, maxSyncRetryTimeInSeconds:J
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, v9

    cmp-long v1, v7, v1

    if-lez v1, :cond_4

    .line 761
    const-wide/16 v1, 0x3e8

    mul-long v7, v9, v1

    .line 764
    :cond_4
    add-long v5, v11, v7

    .line 766
    .local v5, backoff:J
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/SyncOperation;->userId:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Landroid/content/SyncStorageEngine;->setBackoff(Landroid/accounts/Account;ILjava/lang/String;JJ)V

    .line 769
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Landroid/content/SyncOperation;->backoff:Ljava/lang/Long;

    .line 770
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncOperation;->updateEffectiveRunTime()V

    .line 772
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v14

    .line 773
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/SyncOperation;->userId:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/SyncQueue;->onBackoffChanged(Landroid/accounts/Account;ILjava/lang/String;J)V

    .line 774
    monitor-exit v14

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isSyncStillActive(Landroid/content/SyncManager$ActiveSyncContext;)Z
    .locals 3
    .parameter "activeSyncContext"

    .prologue
    .line 2625
    iget-object v2, p0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncManager$ActiveSyncContext;

    .line 2626
    .local v1, sync:Landroid/content/SyncManager$ActiveSyncContext;
    if-ne v1, p1, :cond_0

    .line 2627
    const/4 v2, 0x1

    .line 2630
    .end local v1           #sync:Landroid/content/SyncManager$ActiveSyncContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private jitterize(JJ)J
    .locals 5
    .parameter "minValue"
    .parameter "maxValue"

    .prologue
    .line 460
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 461
    .local v0, random:Ljava/util/Random;
    sub-long v1, p3, p1

    .line 462
    .local v1, spread:J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 463
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "the difference between the maxValue and the minValue must be less than 2147483647"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 466
    :cond_0
    long-to-int v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, p1

    return-wide v3
.end method

.method private onUserRemoved(I)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 932
    invoke-virtual {p0}, Landroid/content/SyncManager;->updateRunningAccounts()V

    .line 935
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/accounts/Account;

    invoke-virtual {v0, v1, p1}, Landroid/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    .line 936
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v1

    .line 937
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    invoke-virtual {v0, p1}, Landroid/content/SyncQueue;->removeUser(I)V

    .line 938
    monitor-exit v1

    .line 939
    return-void

    .line 938
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUserStarting(I)V
    .locals 12
    .parameter "userId"

    .prologue
    const/4 v3, 0x0

    .line 902
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManagerService;->validateAccounts(I)V

    .line 904
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1}, Landroid/content/SyncAdaptersCache;->invalidateCache(I)V

    .line 906
    invoke-virtual {p0}, Landroid/content/SyncManager;->updateRunningAccounts()V

    .line 908
    iget-object v2, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v2

    .line 909
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    invoke-virtual {v0, p1}, Landroid/content/SyncQueue;->addPendingOperations(I)V

    .line 910
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManagerService;->getAccounts(I)[Landroid/accounts/Account;

    move-result-object v8

    .line 914
    .local v8, accounts:[Landroid/accounts/Account;
    move-object v9, v8

    .local v9, arr$:[Landroid/accounts/Account;
    array-length v11, v9

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v1, v9, v10

    .line 915
    .local v1, account:Landroid/accounts/Account;
    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v7}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JZ)V

    .line 914
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 910
    .end local v1           #account:Landroid/accounts/Account;
    .end local v8           #accounts:[Landroid/accounts/Account;
    .end local v9           #arr$:[Landroid/accounts/Account;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 919
    .restart local v8       #accounts:[Landroid/accounts/Account;
    .restart local v9       #arr$:[Landroid/accounts/Account;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    :cond_0
    invoke-direct {p0}, Landroid/content/SyncManager;->sendCheckAlarmsMessage()V

    .line 920
    return-void
.end method

.method private onUserStopping(I)V
    .locals 1
    .parameter "userId"

    .prologue
    const/4 v0, 0x0

    .line 923
    invoke-virtual {p0}, Landroid/content/SyncManager;->updateRunningAccounts()V

    .line 925
    invoke-virtual {p0, v0, p1, v0}, Landroid/content/SyncManager;->cancelActiveSync(Landroid/accounts/Account;ILjava/lang/String;)V

    .line 929
    return-void
.end method

.method private readDataConnectionState()Z
    .locals 2

    .prologue
    .line 298
    invoke-direct {p0}, Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 299
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendCancelSyncsMessage(Landroid/accounts/Account;ILjava/lang/String;)V
    .locals 3
    .parameter "account"
    .parameter "userId"
    .parameter "authority"

    .prologue
    .line 696
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SyncManager"

    const-string/jumbo v2, "sending MESSAGE_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_0
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Landroid/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 698
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 699
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 700
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 701
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Landroid/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 702
    return-void
.end method

.method private sendCheckAlarmsMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 680
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string/jumbo v1, "sending MESSAGE_CHECK_ALARMS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v2}, Landroid/content/SyncManager$SyncHandler;->removeMessages(I)V

    .line 682
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v2}, Landroid/content/SyncManager$SyncHandler;->sendEmptyMessage(I)Z

    .line 683
    return-void
.end method

.method private sendSyncAlarmMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 675
    const-string v0, "SyncManager"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string/jumbo v1, "sending MESSAGE_SYNC_ALARM"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v2}, Landroid/content/SyncManager$SyncHandler;->sendEmptyMessage(I)Z

    .line 677
    return-void
.end method

.method private sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 3
    .parameter "syncContext"
    .parameter "syncResult"

    .prologue
    .line 687
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SyncManager"

    const-string/jumbo v2, "sending MESSAGE_SYNC_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Landroid/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 689
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 690
    new-instance v1, Landroid/content/SyncManager$SyncHandlerMessagePayload;

    invoke-direct {v1, p0, p1, p2}, Landroid/content/SyncManager$SyncHandlerMessagePayload;-><init>(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 691
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Landroid/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 692
    return-void
.end method

.method private setDelayUntilTime(Landroid/content/SyncOperation;J)V
    .locals 10
    .parameter "op"
    .parameter "delayUntilSeconds"

    .prologue
    .line 778
    const-wide/16 v0, 0x3e8

    mul-long v8, p2, v0

    .line 779
    .local v8, delayUntil:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 781
    .local v6, absoluteNow:J
    cmp-long v0, v8, v6

    if-lez v0, :cond_0

    .line 782
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v8, v6

    add-long v4, v0, v2

    .line 786
    .local v4, newDelayUntilTime:J
    :goto_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Landroid/content/SyncOperation;->userId:I

    iget-object v3, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->setDelayUntilTime(Landroid/accounts/Account;ILjava/lang/String;J)V

    .line 788
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v1

    .line 789
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    iget-object v2, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v3, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/SyncQueue;->onDelayUntilTimeChanged(Landroid/accounts/Account;Ljava/lang/String;J)V

    .line 790
    monitor-exit v1

    .line 791
    return-void

    .line 784
    .end local v4           #newDelayUntilTime:J
    :cond_0
    const-wide/16 v4, 0x0

    .restart local v4       #newDelayUntilTime:J
    goto :goto_0

    .line 790
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelActiveSync(Landroid/accounts/Account;ILjava/lang/String;)V
    .locals 0
    .parameter "account"
    .parameter "userId"
    .parameter "authority"

    .prologue
    .line 799
    invoke-direct {p0, p1, p2, p3}, Landroid/content/SyncManager;->sendCancelSyncsMessage(Landroid/accounts/Account;ILjava/lang/String;)V

    .line 800
    return-void
.end method

.method public clearScheduledSyncOperations(Landroid/accounts/Account;ILjava/lang/String;)V
    .locals 8
    .parameter "account"
    .parameter "userId"
    .parameter "authority"

    .prologue
    const-wide/16 v4, -0x1

    .line 832
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v1

    .line 833
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/SyncQueue;->remove(Landroid/accounts/Account;ILjava/lang/String;)V

    .line 834
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/SyncStorageEngine;->setBackoff(Landroid/accounts/Account;ILjava/lang/String;JJ)V

    .line 837
    return-void

    .line 834
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 1068
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1069
    .local v0, ipw:Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {p0, v0}, Landroid/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;)V

    .line 1070
    invoke-virtual {p0, v0}, Landroid/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    .line 1071
    invoke-direct {p0, v0}, Landroid/content/SyncManager;->dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1072
    return-void
.end method

.method protected dumpSyncHistory(Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "pw"

    .prologue
    .line 1276
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V

    .line 1277
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->dumpDayStatistics(Ljava/io/PrintWriter;)V

    .line 1278
    return-void
.end method

.method protected dumpSyncState(Ljava/io/PrintWriter;)V
    .locals 33
    .parameter "pw"

    .prologue
    .line 1081
    const-string v28, "data connected: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1082
    const-string v28, "auto sync: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1083
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v27

    .line 1084
    .local v27, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v27, :cond_1

    .line 1085
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/UserInfo;

    .line 1086
    .local v26, user:Landroid/content/pm/UserInfo;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "u"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1089
    .end local v26           #user:Landroid/content/pm/UserInfo;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1091
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v28, "memory low: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncManager;->mStorageIsLow:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1093
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v5

    .line 1095
    .local v5, accounts:[Landroid/accounts/AccountAndUser;
    const-string v28, "accounts: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1096
    sget-object v28, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    move-object/from16 v0, v28

    if-eq v5, v0, :cond_2

    .line 1097
    array-length v0, v5

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1101
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 1102
    .local v19, now:J
    const-string/jumbo v28, "now: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1103
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    const-string/jumbo v28, "offset: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncManager;->mSyncRandomOffsetMillis:I

    move/from16 v28, v0

    move/from16 v0, v28

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1105
    const-string v28, " (HH:MM:SS)"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    const-string/jumbo v28, "uptime: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v28, 0x3e8

    div-long v28, v19, v28

    invoke-static/range {v28 .. v29}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1107
    const-string v28, " (HH:MM:SS)"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1108
    const-string/jumbo v28, "time spent syncing: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1111
    const-string v28, " (HH:MM:SS), sync "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    const-string v28, ""

    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    const-string v28, "in progress"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v28, v0

    #getter for: Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v28 .. v28}, Landroid/content/SyncManager$SyncHandler;->access$1600(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v28

    if-eqz v28, :cond_4

    .line 1115
    const-string/jumbo v28, "next alarm time: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v28, v0

    #getter for: Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v28 .. v28}, Landroid/content/SyncManager$SyncHandler;->access$1600(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1116
    const-string v28, " ("

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v28, v0

    #getter for: Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v28 .. v28}, Landroid/content/SyncManager$SyncHandler;->access$1600(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    sub-long v28, v28, v19

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1118
    const-string v28, " (HH:MM:SS) from now)"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    :goto_3
    const-string/jumbo v28, "notification info: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1124
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 1125
    .local v22, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->toString(Ljava/lang/StringBuilder;)V

    .line 1126
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1128
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1129
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Active Syncs: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SyncManager$ActiveSyncContext;

    .line 1131
    .local v6, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    iget-wide v0, v6, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v28, v0

    sub-long v28, v19, v28

    const-wide/16 v30, 0x3e8

    div-long v8, v28, v30

    .line 1132
    .local v8, durationInSeconds:J
    const-string v28, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1133
    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1134
    const-string v28, " - "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1135
    iget-object v0, v6, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/content/SyncOperation;->dump(Z)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1136
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_4

    .line 1099
    .end local v6           #activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    .end local v8           #durationInSeconds:J
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v19           #now:J
    .end local v22           #sb:Ljava/lang/StringBuilder;
    :cond_2
    const-string/jumbo v28, "not known yet"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1112
    .restart local v19       #now:J
    :cond_3
    const-string/jumbo v28, "not "

    goto/16 :goto_2

    .line 1120
    :cond_4
    const-string/jumbo v28, "no alarm is scheduled (there had better not be any pending syncs)"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1139
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v22       #sb:Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 1140
    const/16 v28, 0x0

    :try_start_0
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/SyncQueue;->dump(Ljava/lang/StringBuilder;)V

    .line 1142
    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1143
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1144
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1147
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1148
    const-string v28, "Sync Status"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    move-object v7, v5

    .local v7, arr$:[Landroid/accounts/AccountAndUser;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .local v12, i$:I
    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_10

    aget-object v4, v7, v12

    .line 1150
    .local v4, account:Landroid/accounts/AccountAndUser;
    const-string v28, "  Account "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1151
    const-string v28, " u"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1152
    const-string v28, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1153
    const-string v28, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v28, v0

    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12           #i$:I
    .local v11, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1156
    .local v25, syncAdapterType:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/content/SyncAdapterType;

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v28, v0

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v29, v0

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v30, v0

    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v31, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/content/SyncAdapterType;

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/SyncStorageEngine;->getOrCreateAuthority(Landroid/accounts/Account;ILjava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v23

    .line 1163
    .local v23, settings:Landroid/content/SyncStorageEngine$AuthorityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatus(Landroid/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/SyncStatusInfo;

    move-result-object v24

    .line 1164
    .local v24, status:Landroid/content/SyncStatusInfo;
    const-string v28, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1165
    const-string v28, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1166
    const-string v28, "      settings:"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1167
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    move/from16 v28, v0

    if-lez v28, :cond_a

    const-string/jumbo v28, "syncable"

    :goto_7
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1170
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_c

    const-string v28, "enabled"

    :goto_8
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1171
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    move-wide/from16 v28, v0

    cmp-long v28, v28, v19

    if-lez v28, :cond_7

    .line 1172
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ", delay for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    move-wide/from16 v29, v0

    sub-long v29, v29, v19

    const-wide/16 v31, 0x3e8

    div-long v29, v29, v31

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " sec"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1175
    :cond_7
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    move-wide/from16 v28, v0

    cmp-long v28, v28, v19

    if-lez v28, :cond_8

    .line 1176
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ", backoff for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    move-wide/from16 v29, v0

    sub-long v29, v29, v19

    const-wide/16 v31, 0x3e8

    div-long v29, v29, v31

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " sec"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1179
    :cond_8
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-lez v28, :cond_9

    .line 1180
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ", the backoff increment is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x3e8

    div-long v29, v29, v31

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " sec"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1183
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1184
    const/16 v21, 0x0

    .line 1185
    .local v21, periodicIndex:I
    :goto_9
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    .line 1187
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 1188
    .local v13, info:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    move-result-wide v14

    .line 1189
    .local v14, lastPeriodicTime:J
    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    mul-long v28, v28, v30

    add-long v17, v14, v28

    .line 1190
    .local v17, nextPeriodicTime:J
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "      periodic period="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", extras="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", next="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static/range {v17 .. v18}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1186
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 1142
    .end local v4           #account:Landroid/accounts/AccountAndUser;
    .end local v7           #arr$:[Landroid/accounts/AccountAndUser;
    .end local v13           #info:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .end local v14           #lastPeriodicTime:J
    .end local v16           #len$:I
    .end local v17           #nextPeriodicTime:J
    .end local v21           #periodicIndex:I
    .end local v23           #settings:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v24           #status:Landroid/content/SyncStatusInfo;
    .end local v25           #syncAdapterType:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :catchall_0
    move-exception v28

    :try_start_1
    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v28

    .line 1167
    .restart local v4       #account:Landroid/accounts/AccountAndUser;
    .restart local v7       #arr$:[Landroid/accounts/AccountAndUser;
    .restart local v16       #len$:I
    .restart local v23       #settings:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v24       #status:Landroid/content/SyncStatusInfo;
    .restart local v25       #syncAdapterType:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_a
    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    move/from16 v28, v0

    if-nez v28, :cond_b

    const-string/jumbo v28, "not syncable"

    goto/16 :goto_7

    :cond_b
    const-string/jumbo v28, "not initialized"

    goto/16 :goto_7

    .line 1170
    :cond_c
    const-string v28, "disabled"

    goto/16 :goto_8

    .line 1194
    .restart local v21       #periodicIndex:I
    :cond_d
    const-string v28, "      count: local="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1195
    const-string v28, " poll="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1196
    const-string v28, " periodic="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1197
    const-string v28, " server="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1198
    const-string v28, " user="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1199
    const-string v28, " total="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1200
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1201
    const-string v28, "      total duration: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1202
    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_e

    .line 1204
    const-string v28, "      SUCCESS: source="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1205
    sget-object v28, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1206
    const-string v28, " time="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1207
    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1209
    :cond_e
    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_6

    .line 1210
    const-string v28, "      FAILURE: source="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1211
    sget-object v28, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1213
    const-string v28, " initialTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1214
    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1215
    const-string v28, " lastTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1216
    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1217
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v10

    .line 1218
    .local v10, errCode:I
    const-string v28, "      message: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/content/SyncManager;->getLastFailureMessage(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1149
    .end local v10           #errCode:I
    .end local v21           #periodicIndex:I
    .end local v23           #settings:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v24           #status:Landroid/content/SyncStatusInfo;
    .end local v25           #syncAdapterType:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_f
    add-int/lit8 v11, v12, 0x1

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .restart local v12       #i$:I
    goto/16 :goto_5

    .line 1223
    .end local v4           #account:Landroid/accounts/AccountAndUser;
    :cond_10
    return-void
.end method

.method public getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;
    .locals 6
    .parameter "userId"

    .prologue
    .line 664
    iget-object v5, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v5, p1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    .line 665
    .local v3, serviceInfos:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Landroid/content/SyncAdapterType;

    .line 666
    .local v4, types:[Landroid/content/SyncAdapterType;
    const/4 v0, 0x0

    .line 667
    .local v0, i:I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 668
    .local v2, serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v5, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncAdapterType;

    aput-object v5, v4, v0

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    .end local v2           #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_0
    return-object v4
.end method

.method public getSyncStorageEngine()Landroid/content/SyncStorageEngine;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-object v0
.end method

.method maybeRescheduleSync(Landroid/content/SyncResult;Landroid/content/SyncOperation;)V
    .locals 16
    .parameter "syncResult"
    .parameter "operation"

    .prologue
    .line 840
    const-string v1, "SyncManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    .line 841
    .local v14, isLoggable:Z
    if-eqz v14, :cond_0

    .line 842
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encountered error(s) during the sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_0
    new-instance v15, Landroid/content/SyncOperation;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Landroid/content/SyncOperation;-><init>(Landroid/content/SyncOperation;)V

    .line 850
    .end local p2
    .local v15, operation:Landroid/content/SyncOperation;
    iget-object v1, v15, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "ignore_backoff"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 851
    iget-object v1, v15, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "ignore_backoff"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 860
    :cond_1
    iget-object v1, v15, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "do_not_retry"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 861
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :goto_0
    return-void

    .line 863
    :cond_2
    iget-object v1, v15, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "upload"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v1, :cond_3

    .line 865
    iget-object v1, v15, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "upload"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 866
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto :goto_0

    .line 869
    :cond_3
    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v1, :cond_4

    .line 870
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because it retried too many times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 872
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 873
    if-eqz v14, :cond_5

    .line 874
    const-string v1, "SyncManager"

    const-string/jumbo v2, "retrying sync operation because even though it had an error it achieved some success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto :goto_0

    .line 878
    :cond_6
    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v1, :cond_8

    .line 879
    if-eqz v14, :cond_7

    .line 880
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation that failed because there was already a sync in progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_7
    new-instance v1, Landroid/content/SyncOperation;

    iget-object v2, v15, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v3, v15, Landroid/content/SyncOperation;->userId:I

    iget v4, v15, Landroid/content/SyncOperation;->syncSource:I

    iget-object v5, v15, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v6, v15, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-wide/16 v7, 0x2710

    iget-object v9, v15, Landroid/content/SyncOperation;->backoff:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, v15, Landroid/content/SyncOperation;->delayUntil:J

    iget-boolean v13, v15, Landroid/content/SyncOperation;->allowParallelSyncs:Z

    invoke-direct/range {v1 .. v13}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto/16 :goto_0

    .line 888
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 889
    if-eqz v14, :cond_9

    .line 890
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation because it encountered a soft error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto/16 :goto_0

    .line 895
    :cond_a
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because the error is a hard error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public scheduleLocalSync(Landroid/accounts/Account;ILjava/lang/String;)V
    .locals 8
    .parameter "account"
    .parameter "userId"
    .parameter "authority"

    .prologue
    .line 656
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 657
    .local v4, extras:Landroid/os/Bundle;
    const-string/jumbo v0, "upload"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 658
    sget-wide v5, Landroid/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JZ)V

    .line 660
    return-void
.end method

.method public scheduleSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JZ)V
    .locals 48
    .parameter "requestedAccount"
    .parameter "userId"
    .parameter "requestedAuthority"
    .parameter "extras"
    .parameter "delay"
    .parameter "onlyThoseWithUnkownSyncableState"

    .prologue
    .line 510
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v39

    .line 512
    .local v39, isLoggable:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/content/SyncManager;->mBootCompleted:Z

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    const/16 v31, 0x1

    .line 515
    .local v31, backgroundDataUsageAllowed:Z
    :goto_0
    if-nez p4, :cond_1

    new-instance p4, Landroid/os/Bundle;

    .end local p4
    invoke-direct/range {p4 .. p4}, Landroid/os/Bundle;-><init>()V

    .line 517
    .restart local p4
    :cond_1
    const-string v2, "expedited"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    .line 518
    .local v33, expedited:Ljava/lang/Boolean;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 519
    const-wide/16 p5, -0x1

    .line 523
    :cond_2
    if-eqz p1, :cond_6

    const/4 v2, -0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_6

    .line 524
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/accounts/AccountAndUser;

    move-object/from16 v29, v0

    const/4 v2, 0x0

    new-instance v3, Landroid/accounts/AccountAndUser;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v3, v0, v1}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    aput-object v3, v29, v2

    .line 537
    .local v29, accounts:[Landroid/accounts/AccountAndUser;
    :cond_3
    const-string/jumbo v2, "upload"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    .line 538
    .local v47, uploadOnly:Z
    const-string v2, "force"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 539
    .local v42, manualSync:Z
    if-eqz v42, :cond_4

    .line 540
    const-string v2, "ignore_backoff"

    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 541
    const-string v2, "ignore_settings"

    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 543
    :cond_4
    const-string v2, "ignore_settings"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 547
    .local v37, ignoreSettings:Z
    if-eqz v47, :cond_8

    .line 548
    const/4 v5, 0x1

    .line 559
    .local v5, source:I
    :goto_1
    move-object/from16 v30, v29

    .local v30, arr$:[Landroid/accounts/AccountAndUser;
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v41, v0

    .local v41, len$:I
    const/16 v35, 0x0

    .local v35, i$:I
    move/from16 v36, v35

    .end local v35           #i$:I
    .local v36, i$:I
    :goto_2
    move/from16 v0, v36

    move/from16 v1, v41

    if-ge v0, v1, :cond_7

    aget-object v28, v30, v36

    .line 562
    .local v28, account:Landroid/accounts/AccountAndUser;
    new-instance v46, Ljava/util/HashSet;

    invoke-direct/range {v46 .. v46}, Ljava/util/HashSet;-><init>()V

    .line 564
    .local v46, syncableAuthorities:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v0, v28

    iget v3, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .end local v36           #i$:I
    .local v35, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 565
    .local v43, syncAdapter:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v0, v43

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    iget-object v2, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 512
    .end local v5           #source:I
    .end local v28           #account:Landroid/accounts/AccountAndUser;
    .end local v29           #accounts:[Landroid/accounts/AccountAndUser;
    .end local v30           #arr$:[Landroid/accounts/AccountAndUser;
    .end local v31           #backgroundDataUsageAllowed:Z
    .end local v33           #expedited:Ljava/lang/Boolean;
    .end local v35           #i$:Ljava/util/Iterator;
    .end local v37           #ignoreSettings:Z
    .end local v41           #len$:I
    .end local v42           #manualSync:Z
    .end local v43           #syncAdapter:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v46           #syncableAuthorities:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v47           #uploadOnly:Z
    :cond_5
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 528
    .restart local v31       #backgroundDataUsageAllowed:Z
    .restart local v33       #expedited:Ljava/lang/Boolean;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    move-object/from16 v29, v0

    .line 529
    .restart local v29       #accounts:[Landroid/accounts/AccountAndUser;
    move-object/from16 v0, v29

    array-length v2, v0

    if-nez v2, :cond_3

    .line 530
    if-eqz v39, :cond_7

    .line 531
    const-string v2, "SyncManager"

    const-string/jumbo v3, "scheduleSync: no accounts configured, dropping"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_7
    return-void

    .line 549
    .restart local v37       #ignoreSettings:Z
    .restart local v42       #manualSync:Z
    .restart local v47       #uploadOnly:Z
    :cond_8
    if-eqz v42, :cond_9

    .line 550
    const/4 v5, 0x3

    .restart local v5       #source:I
    goto :goto_1

    .line 551
    .end local v5           #source:I
    :cond_9
    if-nez p3, :cond_a

    .line 552
    const/4 v5, 0x2

    .restart local v5       #source:I
    goto :goto_1

    .line 556
    .end local v5           #source:I
    :cond_a
    const/4 v5, 0x0

    .restart local v5       #source:I
    goto :goto_1

    .line 571
    .restart local v28       #account:Landroid/accounts/AccountAndUser;
    .restart local v30       #arr$:[Landroid/accounts/AccountAndUser;
    .restart local v35       #i$:Ljava/util/Iterator;
    .restart local v41       #len$:I
    .restart local v46       #syncableAuthorities:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_b
    if-eqz p3, :cond_c

    .line 572
    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v34

    .line 573
    .local v34, hasSyncAdapter:Z
    invoke-virtual/range {v46 .. v46}, Ljava/util/HashSet;->clear()V

    .line 574
    if-eqz v34, :cond_c

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 577
    .end local v34           #hasSyncAdapter:Z
    :cond_c
    invoke-virtual/range {v46 .. v46}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_d
    :goto_4
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 578
    .local v6, authority:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v28

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v40

    .line 580
    .local v40, isSyncable:I
    if-eqz v40, :cond_d

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v3

    move-object/from16 v0, v28

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v44

    .line 586
    .local v44, syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v44, :cond_d

    .line 589
    move-object/from16 v0, v44

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v14

    .line 590
    .local v14, allowParallelSyncs:Z
    move-object/from16 v0, v44

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    move-result v38

    .line 591
    .local v38, isAlwaysSyncable:Z
    if-gez v40, :cond_e

    if-eqz v38, :cond_e

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v28

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    const/4 v8, 0x1

    invoke-virtual {v2, v3, v4, v6, v8}, Landroid/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V

    .line 593
    const/16 v40, 0x1

    .line 595
    :cond_e
    if-eqz p7, :cond_f

    if-gez v40, :cond_d

    .line 598
    :cond_f
    move-object/from16 v0, v44

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v2

    if-nez v2, :cond_10

    if-nez v47, :cond_d

    .line 603
    :cond_10
    if-ltz v40, :cond_11

    if-nez v37, :cond_11

    if-eqz v31, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, v28

    iget v3, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v28

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    const/16 v45, 0x1

    .line 610
    .local v45, syncAllowed:Z
    :goto_5
    if-nez v45, :cond_13

    .line 611
    if-eqz v39, :cond_d

    .line 612
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleSync: sync of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not allowed, dropping request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 603
    .end local v45           #syncAllowed:Z
    :cond_12
    const/16 v45, 0x0

    goto :goto_5

    .line 618
    .restart local v45       #syncAllowed:Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v28

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v32

    .line 620
    .local v32, backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v28

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/SyncStorageEngine;->getDelayUntilTime(Landroid/accounts/Account;ILjava/lang/String;)J

    move-result-wide v12

    .line 622
    .local v12, delayUntil:J
    if-eqz v32, :cond_17

    move-object/from16 v0, v32

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 623
    .local v10, backoffTime:J
    :goto_6
    if-gez v40, :cond_15

    .line 624
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 625
    .local v7, newExtras:Landroid/os/Bundle;
    const-string v2, "initialize"

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 626
    if-eqz v39, :cond_14

    .line 627
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleSync: delay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", authority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extras "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_14
    new-instance v2, Landroid/content/SyncOperation;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v28

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    const-wide/16 v8, 0x0

    invoke-direct/range {v2 .. v14}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    .line 638
    .end local v7           #newExtras:Landroid/os/Bundle;
    :cond_15
    if-nez p7, :cond_d

    .line 639
    if-eqz v39, :cond_16

    .line 640
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleSync: delay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", authority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extras "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_16
    new-instance v15, Landroid/content/SyncOperation;

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v16, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v17, v0

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, p4

    move-wide/from16 v21, p5

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    move/from16 v27, v14

    invoke-direct/range {v15 .. v27}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto/16 :goto_4

    .line 622
    .end local v10           #backoffTime:J
    :cond_17
    const-wide/16 v10, 0x0

    goto/16 :goto_6

    .line 559
    .end local v6           #authority:Ljava/lang/String;
    .end local v12           #delayUntil:J
    .end local v14           #allowParallelSyncs:Z
    .end local v32           #backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v38           #isAlwaysSyncable:Z
    .end local v40           #isSyncable:I
    .end local v44           #syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v45           #syncAllowed:Z
    :cond_18
    add-int/lit8 v35, v36, 0x1

    .local v35, i$:I
    move/from16 v36, v35

    .end local v35           #i$:I
    .restart local v36       #i$:I
    goto/16 :goto_2
.end method

.method public scheduleSyncOperation(Landroid/content/SyncOperation;)V
    .locals 4
    .parameter "syncOperation"

    .prologue
    const/4 v3, 0x2

    .line 809
    iget-object v2, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v2

    .line 810
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    invoke-virtual {v1, p1}, Landroid/content/SyncQueue;->add(Landroid/content/SyncOperation;)Z

    move-result v0

    .line 811
    .local v0, queueChanged:Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    if-eqz v0, :cond_2

    .line 814
    const-string v1, "SyncManager"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleSyncOperation: enqueued "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_0
    invoke-direct {p0}, Landroid/content/SyncManager;->sendCheckAlarmsMessage()V

    .line 824
    :cond_1
    :goto_0
    return-void

    .line 811
    .end local v0           #queueChanged:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 819
    .restart local v0       #queueChanged:Z
    :cond_2
    const-string v1, "SyncManager"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 820
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleSyncOperation: dropping duplicate sync operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateRunningAccounts()V
    .locals 5

    .prologue
    .line 247
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManagerService;->getRunningAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v2

    iput-object v2, p0, Landroid/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 249
    iget-boolean v2, p0, Landroid/content/SyncManager;->mBootCompleted:Z

    if-eqz v2, :cond_0

    .line 250
    invoke-direct {p0}, Landroid/content/SyncManager;->doDatabaseCleanup()V

    .line 253
    :cond_0
    iget-object v2, p0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncManager$ActiveSyncContext;

    .line 254
    .local v0, currentSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    iget-object v2, p0, Landroid/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    iget-object v3, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v3, v3, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v4, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget v4, v4, Landroid/content/SyncOperation;->userId:I

    invoke-direct {p0, v2, v3, v4}, Landroid/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    const-string v2, "SyncManager"

    const-string v3, "canceling sync since the account is no longer running"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    goto :goto_0

    .line 265
    .end local v0           #currentSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    :cond_2
    invoke-direct {p0}, Landroid/content/SyncManager;->sendCheckAlarmsMessage()V

    .line 266
    return-void
.end method
