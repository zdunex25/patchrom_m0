.class public Lcom/android/server/enterprise/ApplicationPolicy;
.super Landroid/app/enterprise/IApplicationPolicy$Stub;
.source "ApplicationPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ApplicationPolicy$4;,
        Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;,
        Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;,
        Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;,
        Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;
    }
.end annotation


# static fields
.field private static ALL_PACKAGES:Ljava/lang/String; = null

.field private static final BACKUP_RESTORE_TIMEOUT:J = 0x7530L

.field private static final CPU_ELAPSED_TIME:I = 0x3e8

.field private static final CPU_IDLE_TIME:I = 0x4

.field private static final CPU_IO_WAIT_TIME:I = 0x5

.field private static final CPU_IRQ_TIME:I = 0x6

.field private static final CPU_NICE_TIME:I = 0x2

.field private static final CPU_SOFT_IRQ_TIME:I = 0x7

.field private static final CPU_SYSTEM_TIME:I = 0x3

.field private static final CPU_USER_TIME:I = 0x1

.field private static final EXTRA_APPSTATE:Ljava/lang/String; = "application_state_disable_enable"

.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final PERMISSION_INSTALLATION_BLACKLIST:Ljava/lang/String; = "PermissionInstallationBlacklist"

.field private static final PKGNAME_INSTALLATION_BLACKLIST:Ljava/lang/String; = "PackageNameInstallationBlacklist"

.field private static final PKGNAME_INSTALLATION_WHITELIST:Ljava/lang/String; = "PackageNameInstallationWhitelist"

.field private static final PKGNAME_NOTIFICATION_BLACKLIST:Ljava/lang/String; = "PackageNameNotificationBlacklist"

.field private static final PKGNAME_NOTIFICATION_WHITELIST:Ljava/lang/String; = "PackageNameNotificationWhitelist"

.field private static final PKGNAME_STOP_BLACKLIST:Ljava/lang/String; = "PackageNameStopBlacklist"

.field private static final PKGNAME_STOP_WHITELIST:Ljava/lang/String; = "PackageNameStopWhitelist"

.field private static final PKGNAME_WIDGET_BLACKLIST:Ljava/lang/String; = "PackageNameWidgetBlacklist"

.field private static final PKGNAME_WIDGET_WHITELIST:Ljava/lang/String; = "PackageNameWidgetWhitelist"

.field private static final PROCESS_SYSTEM_TIME:I = 0xe

.field private static final PROCESS_USER_TIME:I = 0xd

.field private static final SIGNATURE_INSTALLATION_BLACKLIST:Ljava/lang/String; = "SignatureInstallationBlacklist"

.field private static final TAG:Ljava/lang/String; = "ApplicationPolicy"

.field private static final UNINSTALLATION_BLACKLIST:Ljava/lang/String; = "UninstallationBlacklist"

.field private static final UNINSTALLATION_WHITELIST:Ljava/lang/String; = "UninstallationWhitelist"

.field private static final UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"

.field private static mAppControlState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static mAppIconChangedPkgNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mBackupRestoreReceiver:Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;

.field private static volatile packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private volatile isBackupRunning:Z

.field private volatile isRestoreRunning:Z

.field private mAppControlPolicy:Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;

.field private mAppNetworkStatsTracker:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBackupData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field final mBackupLock:Ljava/lang/Object;

.field private mBackupReturnCode:I

.field mContext:Landroid/content/Context;

.field private mCurrentBackupPackage:Ljava/lang/String;

.field private mCurrentRestorePackage:Ljava/lang/String;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mNotificationMode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRestoreData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field final mRestoreLock:Ljava/lang/Object;

.field private mRestoreReturnCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 157
    sput-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    sput-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    .line 213
    sput-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    .line 245
    sput-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;

    .line 253
    const-string v0, "*"

    sput-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->ALL_PACKAGES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 277
    invoke-direct {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;-><init>()V

    .line 159
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlPolicy:Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;

    .line 207
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 209
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 239
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 240
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    .line 241
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    .line 242
    iput-boolean v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    .line 243
    iput-boolean v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    .line 246
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupData:Ljava/util/Map;

    .line 247
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreData:Ljava/util/Map;

    .line 250
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    .line 251
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    .line 252
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    .line 278
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 279
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 280
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 281
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->registerPackageChangeReceiver()V

    .line 282
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationIconDb;->getApplicationIconChangedList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    .line 283
    new-instance v1, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 286
    new-instance v1, Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Lcom/android/server/enterprise/ApplicationPolicy$1;)V

    sput-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;

    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "edm.intent.action.backup.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v1, "edm.intent.action.restore.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->registerWidgetChangedListener()V

    .line 293
    return-void
.end method

.method private _installApplication(ILjava/lang/String;Z)Z
    .locals 12
    .parameter "callingUid"
    .parameter "apkFilePath"
    .parameter "installOnSDCard"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 1393
    const/4 v4, 0x0

    .line 1395
    .local v4, success:Z
    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1396
    const-string v7, "installApplication : External Storage Emulated"

    invoke-static {v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 1397
    const/4 v7, 0x0

    .line 1452
    :goto_0
    return v7

    .line 1400
    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1402
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    move v7, v4

    .line 1403
    goto :goto_0

    .line 1405
    :cond_2
    const/4 v2, 0x2

    .line 1407
    .local v2, installFlags:I
    if-eqz p3, :cond_4

    .line 1408
    or-int/lit8 v2, v2, 0x8

    .line 1412
    :goto_1
    new-instance v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 1414
    .local v3, obs:Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1417
    .local v5, token:J
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1418
    .local v0, apkFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1419
    new-instance v7, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ApplicationPolicy: Not a valid file \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    .end local v0           #apkFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1441
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1444
    if-eqz v4, :cond_3

    if-eq p1, v11, :cond_3

    .line 1447
    iget-object v7, v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1448
    iget-object v7, v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->setInstallSoureMDM(ILjava/lang/String;Z)V

    .line 1450
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v4

    .line 1452
    goto :goto_0

    .line 1410
    .end local v3           #obs:Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;
    .end local v5           #token:J
    :cond_4
    or-int/lit8 v2, v2, 0x10

    goto :goto_1

    .line 1421
    .restart local v0       #apkFile:Ljava/io/File;
    .restart local v3       #obs:Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;
    .restart local v5       #token:J
    :cond_5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/ApplicationPolicy;->canRead(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1422
    new-instance v7, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ApplicationPolicy: Permission denied - Unable to open file \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1444
    .end local v0           #apkFile:Ljava/io/File;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_6

    if-eq p1, v11, :cond_6

    .line 1447
    iget-object v8, v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v8, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1448
    iget-object v8, v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v8, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->setInstallSoureMDM(ILjava/lang/String;Z)V

    .line 1450
    :cond_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1444
    throw v7

    .line 1425
    .restart local v0       #apkFile:Ljava/io/File;
    :cond_7
    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v3, v2, v9}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 1427
    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1428
    :goto_3
    :try_start_4
    iget-boolean v7, v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->finished:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v7, :cond_8

    .line 1430
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 1431
    :catch_1
    move-exception v7

    goto :goto_3

    .line 1434
    :cond_8
    :try_start_6
    iget v7, v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->result:I

    if-ne v7, v10, :cond_9

    .line 1435
    const/4 v4, 0x1

    .line 1439
    :goto_4
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1444
    if-eqz v4, :cond_3

    if-eq p1, v11, :cond_3

    .line 1447
    iget-object v7, v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1448
    iget-object v7, v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->setInstallSoureMDM(ILjava/lang/String;Z)V

    goto :goto_2

    .line 1437
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 1439
    :catchall_1
    move-exception v7

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method private _setApplicationInstallationDisabled(ILjava/lang/String;Z)V
    .locals 3
    .parameter "callingUid"
    .parameter "packageName"
    .parameter "disableAppInstallation"

    .prologue
    .line 1695
    invoke-static {p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1696
    if-eqz p2, :cond_0

    .line 1698
    const/4 v1, 0x4

    :try_start_0
    invoke-direct {p0, p2, p1, v1, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 1701
    const/16 v2, 0x8

    if-nez p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1716
    :cond_0
    :goto_1
    return-void

    .line 1701
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1712
    :catch_0
    move-exception v0

    .line 1713
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private _setApplicationUninstallationDisabled(ILjava/lang/String;Z)V
    .locals 3
    .parameter "callingUid"
    .parameter "packageName"
    .parameter "disableAppUninstallation"

    .prologue
    const/4 v1, 0x1

    .line 1886
    invoke-static {p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1887
    if-eqz p2, :cond_0

    .line 1889
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p2, p1, v2, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 1891
    const/16 v2, 0x400

    if-nez p3, :cond_1

    :goto_0
    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1897
    :cond_0
    :goto_1
    return-void

    .line 1891
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1893
    :catch_0
    move-exception v0

    .line 1894
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private _uninstallApplication(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "packageName"
    .parameter "keepDataAndCache"

    .prologue
    .line 1536
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1537
    if-nez p1, :cond_0

    .line 1538
    const/4 v5, 0x0

    .line 1568
    :goto_0
    return v5

    .line 1539
    :cond_0
    const/4 v4, 0x0

    .line 1540
    .local v4, unInstallFlags:I
    if-eqz p2, :cond_1

    .line 1541
    const/4 v4, 0x1

    .line 1544
    :cond_1
    new-instance v1, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 1546
    .local v1, obs:Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1549
    .local v2, token:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1, v1, v4}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 1551
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1552
    :goto_1
    :try_start_1
    iget-boolean v5, v1, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    .line 1554
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1555
    :catch_0
    move-exception v5

    goto :goto_1

    .line 1558
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1566
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1568
    iget-boolean v5, v1, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;->result:Z

    goto :goto_0

    .line 1558
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1559
    :catch_1
    move-exception v0

    .line 1560
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 1566
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;IIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getProvidersFromPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/ApplicationPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/enterprise/ApplicationPolicy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput p1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupReturnCode:I

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/enterprise/ApplicationPolicy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput p1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreReturnCode:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/ApplicationPolicy;)Lcom/android/server/enterprise/EdmStorageProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z
    .locals 6
    .parameter "key"
    .parameter "bitMask"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3904
    .local p3, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 3905
    .local v0, callingUid:I
    const/4 v4, 0x1

    .line 3907
    .local v4, result:Z
    if-eqz p3, :cond_1

    .line 3908
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3909
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3910
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3911
    .local v3, pkg:Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->ALL_PACKAGES:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3912
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3904
    .end local v0           #callingUid:I
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #pkg:Ljava/lang/String;
    .end local v4           #result:Z
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 3917
    .restart local v0       #callingUid:I
    .restart local v4       #result:Z
    :cond_1
    if-eqz p3, :cond_2

    .line 3918
    :try_start_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3919
    .restart local v3       #pkg:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-direct {p0, v3, v0, p2, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    and-int/2addr v4, v5

    goto :goto_1

    .line 3923
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #pkg:Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return v4
.end method

.method private canRead(Ljava/lang/String;)Z
    .locals 5
    .parameter "filepath"

    .prologue
    .line 1471
    const/4 v0, 0x0

    .line 1473
    .local v0, canread:Z
    :try_start_0
    const-string v3, "\\\\"

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1474
    const-string v3, "/"

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1475
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1476
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1477
    :cond_0
    const/4 v3, 0x3

    new-array v2, v3, [I

    .line 1478
    .local v2, mOutPermissions:[I
    invoke-static {p1, v2}, Landroid/os/FileUtils;->getPermissions(Ljava/lang/String;[I)I

    .line 1479
    const/4 v3, 0x4

    const/4 v4, 0x0

    aget v4, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_1

    .line 1480
    const/4 v0, 0x1

    .line 1485
    .end local v2           #mOutPermissions:[I
    :cond_1
    :goto_0
    return v0

    .line 1482
    :catch_0
    move-exception v1

    .line 1483
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .locals 2
    .parameter "regex"

    .prologue
    .line 2942
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2947
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 2943
    :catch_0
    move-exception v0

    .line 2944
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2945
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private cleanCmdline(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "aRawData"

    .prologue
    .line 3664
    if-nez p1, :cond_1

    .line 3665
    const-string p1, "<invalid>"

    .line 3672
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 3667
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3668
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3669
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3667
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private clearApplicationCacheFiles(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    .line 1185
    const/4 v2, 0x0

    .line 1186
    .local v2, success:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1187
    if-eqz p1, :cond_1

    .line 1188
    new-instance v0, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Lcom/android/server/enterprise/ApplicationPolicy$1;)V

    .line 1190
    .local v0, clearCacheObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, v0}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 1192
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1193
    :goto_0
    :try_start_1
    iget-boolean v3, v0, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 1195
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1196
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1199
    :cond_0
    const/4 v3, 0x1

    :try_start_3
    iget-boolean v4, v0, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;->success:Z

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1201
    const/4 v2, 0x1

    .line 1205
    :goto_1
    monitor-exit v0

    .line 1211
    .end local v0           #clearCacheObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;
    :cond_1
    :goto_2
    return v2

    .line 1203
    .restart local v0       #clearCacheObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1205
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1206
    :catch_1
    move-exception v1

    .line 1207
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1208
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private clearUserData(Ljava/lang/String;)Z
    .locals 7
    .parameter "packageName"

    .prologue
    .line 1230
    const/4 v4, 0x0

    .line 1231
    .local v4, success:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1232
    if-eqz p1, :cond_0

    .line 1233
    new-instance v1, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Lcom/android/server/enterprise/ApplicationPolicy$1;)V

    .line 1235
    .local v1, clearDataObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1237
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v3

    .line 1238
    .local v3, res:Z
    if-nez v3, :cond_1

    .line 1241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t clear application user data for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 1264
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #clearDataObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;
    .end local v3           #res:Z
    :cond_0
    :goto_0
    return v4

    .line 1244
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #clearDataObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;
    .restart local v3       #res:Z
    :cond_1
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1245
    :goto_1
    :try_start_1
    iget-boolean v5, v1, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    .line 1247
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1248
    :catch_0
    move-exception v5

    goto :goto_1

    .line 1251
    :cond_2
    const/4 v5, 0x1

    :try_start_3
    iget-boolean v6, v1, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;->success:Z

    if-ne v5, v6, :cond_3

    iget-object v5, v1, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1253
    const/4 v4, 0x1

    .line 1257
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1259
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v3           #res:Z
    :catch_1
    move-exception v2

    .line 1260
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 1261
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1255
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v3       #res:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private declared-synchronized createAdminMap(I)V
    .locals 3
    .parameter "adminUid"

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 469
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 470
    .local v0, adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v1, "PackageNameInstallationBlacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v1, "PackageNameInstallationWhitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v1, "PermissionInstallationBlacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v1, "SignatureInstallationBlacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v1, "UninstallationBlacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string v1, "UninstallationWhitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v1, "PackageNameStopBlacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v1, "PackageNameStopWhitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v1, "PackageNameWidgetBlacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v1, "PackageNameWidgetWhitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v1, "PackageNameNotificationBlacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string v1, "PackageNameNotificationWhitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    .end local v0           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 467
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private enforceAppPermission()I
    .locals 2

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getActualApplicationStateEnabled(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    .line 1105
    const/4 v1, 0x0

    .line 1106
    .local v1, enabled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1108
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1121
    :goto_0
    return v3

    .line 1111
    :cond_0
    if-eqz p1, :cond_1

    .line 1113
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1114
    .local v2, value:I
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    move v1, v3

    .line 1120
    .end local v2           #value:I
    :cond_1
    :goto_1
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActualApplicationStateEnabled() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    .line 1121
    goto :goto_0

    .line 1114
    .restart local v2       #value:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1115
    .end local v2           #value:I
    :catch_0
    move-exception v0

    .line 1116
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 3113
    const/4 v1, 0x0

    .line 3114
    .local v1, mAppInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3115
    if-eqz p1, :cond_0

    .line 3117
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3124
    :cond_0
    :goto_0
    return-object v1

    .line 3119
    :catch_0
    move-exception v0

    .line 3120
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfo() : Exception when retrieving package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized getApplicationControlState(Ljava/lang/String;II)Z
    .locals 7
    .parameter "pkgName"
    .parameter "callingUid"
    .parameter "controlStateMask"

    .prologue
    .line 666
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    const-string v5, "controlState"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 673
    .local v6, controlState:I
    and-int v0, v6, p3

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 666
    .end local v6           #controlState:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getApplicationPackageInfo(Ljava/lang/String;Landroid/net/Uri;)Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;
    .locals 11
    .parameter "packageName"
    .parameter "packageUri"

    .prologue
    .line 2175
    new-instance v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 2177
    .local v4, pkg:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;
    if-eqz p2, :cond_2

    .line 2179
    :try_start_0
    invoke-static {p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 2180
    .local v6, pkgInst:Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    .line 2181
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 2182
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 2183
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 2184
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    .line 2185
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_1

    .line 2186
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 2187
    .local v7, sig:Landroid/content/pm/Signature;
    iget-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2190
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v6           #pkgInst:Landroid/content/pm/PackageParser$Package;
    .end local v7           #sig:Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 2191
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "ApplicationPolicy"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v4

    .line 2196
    :cond_2
    if-nez p1, :cond_4

    const-string p1, ""

    .line 2197
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 2199
    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x1040

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 2201
    .local v5, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_1

    .line 2202
    iput-object p1, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 2203
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v8, :cond_3

    .line 2204
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 2205
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    .line 2206
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .restart local v0       #arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 2207
    .restart local v7       #sig:Landroid/content/pm/Signature;
    iget-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2206
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2196
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v7           #sig:Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 2210
    :catch_1
    move-exception v1

    .line 2211
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2212
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 6
    .parameter "packageName"

    .prologue
    .line 2660
    const/4 v1, 0x0

    .line 2661
    .local v1, pkgst:Landroid/content/pm/PackageStats;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2662
    if-eqz p1, :cond_1

    .line 2663
    new-instance v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 2664
    .local v0, obs:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2666
    .local v2, token:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 2667
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2668
    :goto_0
    :try_start_1
    iget-boolean v4, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    .line 2670
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2671
    :catch_0
    move-exception v4

    goto :goto_0

    .line 2674
    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2676
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2677
    iget-boolean v4, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v4, :cond_1

    .line 2678
    iget-object v1, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .line 2682
    .end local v0           #obs:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    .end local v2           #token:J
    :cond_1
    return-object v1

    .line 2674
    .restart local v0       #obs:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    .restart local v2       #token:J
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2676
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2677
    iget-boolean v5, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v5, :cond_2

    .line 2678
    iget-object v1, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .line 2676
    :cond_2
    throw v4
.end method

.method private declared-synchronized getApplicationStateList(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3951
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3952
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 3953
    .local v5, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v8, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 3955
    .local v7, uids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_1

    .line 3956
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3957
    .local v6, uid:I
    sget-object v8, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3958
    .local v0, adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    .line 3959
    sget-object v8, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 3960
    .local v3, packages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3961
    .local v4, pkg:Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3951
    .end local v0           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #packages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #pkg:Ljava/lang/String;
    .end local v5           #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #uid:I
    .end local v7           #uids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 3967
    .restart local v5       #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7       #uids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v8
.end method

.method private getApplicationsList(Ljava/lang/String;I)[Landroid/app/enterprise/ManagedAppInfo;
    .locals 11
    .parameter "pkg"
    .parameter "callingUid"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2052
    const/4 v7, 0x0

    .line 2053
    .local v7, appInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2054
    const/4 v0, 0x6

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "packageName"

    aput-object v0, v5, v9

    const-string v0, "applicationInstallationCount"

    aput-object v0, v5, v10

    const/4 v0, 0x2

    const-string v1, "applicationUninstallationCount"

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string v1, "managedApp"

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string v1, "install_sourceMDM"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    const-string v1, "controlState"

    aput-object v1, v5, v0

    .line 2059
    .local v5, columns:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2062
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 2063
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #appInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2064
    .restart local v7       #appInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2065
    new-instance v6, Landroid/app/enterprise/ManagedAppInfo;

    invoke-direct {v6}, Landroid/app/enterprise/ManagedAppInfo;-><init>()V

    .line 2066
    .local v6, appInfo:Landroid/app/enterprise/ManagedAppInfo;
    const-string v0, "packageName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    .line 2068
    const-string v0, "applicationInstallationCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    .line 2070
    const-string v0, "applicationUninstallationCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallCount:I

    .line 2072
    const-string v0, "managedApp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mIsEnterpriseApp:I

    .line 2074
    const-string v0, "install_sourceMDM"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mIsInstallSourceMDM:I

    .line 2076
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    :goto_1
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppDisabled:I

    .line 2079
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationInstallationEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v9

    :goto_2
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallationDisabled:I

    .line 2081
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v9

    :goto_3
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallationDisabled:I

    .line 2083
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v0, v10

    .line 2076
    goto :goto_1

    :cond_1
    move v0, v9

    goto :goto_1

    :cond_2
    move v0, v10

    .line 2079
    goto :goto_2

    :cond_3
    move v0, v10

    .line 2081
    goto :goto_3

    .line 2085
    .end local v6           #appInfo:Landroid/app/enterprise/ManagedAppInfo;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2088
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2089
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/enterprise/ManagedAppInfo;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/ManagedAppInfo;

    check-cast v0, [Landroid/app/enterprise/ManagedAppInfo;

    .line 2091
    :goto_4
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private getBackupAgentName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x0

    .line 4656
    const/16 v1, 0x40

    .line 4657
    .local v1, flags:I
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 4658
    .local v4, pkgInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 4659
    .local v3, pgkInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4660
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4662
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 4670
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v3           #pgkInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return-object v5

    .line 4666
    .restart local v0       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #pgkInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    goto :goto_0
.end method

.method private final getDebugMemoryInfo(ILandroid/app/ActivityManager;)J
    .locals 4
    .parameter "pid"
    .parameter "am"

    .prologue
    const/4 v3, 0x0

    .line 2612
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 2613
    .local v1, pidArray:[I
    aput p1, v1, v3

    .line 2614
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 2615
    .local v0, memInfoArray:[Landroid/os/Debug$MemoryInfo;
    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    return-wide v2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method static getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;
    .locals 6
    .parameter "packageURI"

    .prologue
    const/4 v5, 0x0

    .line 2222
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2223
    .local v0, archiveFilePath:Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 2224
    .local v2, packageParser:Landroid/content/pm/PackageParser;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2225
    .local v4, sourceFile:Ljava/io/File;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2226
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 2227
    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 2229
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_0

    .line 2230
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    .line 2234
    :cond_0
    const/4 v2, 0x0

    .line 2235
    return-object v3
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1125
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1126
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1127
    .local v0, pkg:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1126
    .end local v0           #pkg:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 5
    .parameter "uid"

    .prologue
    .line 3894
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3896
    .local v1, pkgName:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3897
    .local v0, compName:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getPidList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3681
    new-instance v3, Ljava/io/File;

    const-string v4, "/proc/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3682
    .local v3, lProcDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 3683
    .local v1, lFiles:[Ljava/lang/String;
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPidList: process count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3685
    .local v2, lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 3687
    const/4 v4, 0x1

    aget-object v5, v1, v0

    const-string v6, "[0-9]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-ne v4, v5, :cond_0

    .line 3688
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3685
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3692
    :cond_1
    return-object v2
.end method

.method private getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 3131
    const/4 v1, 0x0

    .line 3132
    .local v1, mpkgInfo:Landroid/content/pm/PackageInfo;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3133
    if-eqz p1, :cond_0

    .line 3135
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3142
    :cond_0
    :goto_0
    return-object v1

    .line 3137
    :catch_0
    move-exception v0

    .line 3138
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfo() : Exception when retrieving package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getProvidersFromPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4168
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4169
    .local v4, ret:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4170
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4171
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 4174
    .local v1, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 4175
    .local v0, N:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 4176
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 4177
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4175
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4174
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 4180
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_1
    return-object v4
.end method

.method private getSamsungWidgets()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4201
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4202
    .local v4, retList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4203
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4204
    const-string v5, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4205
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 4206
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 4207
    .local v3, r:Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4209
    .end local v3           #r:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v4
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 3162
    if-nez p0, :cond_1

    .line 3166
    :cond_0
    :goto_0
    return-object v1

    .line 3162
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 3163
    :catch_0
    move-exception v0

    .line 3164
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getWidgetProviderDisabledList()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4293
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 4294
    .local v6, ret:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "disabledWidgetComponents"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4296
    .local v5, list:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 4297
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4298
    .local v2, components:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 4299
    .local v1, component:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4300
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4298
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4304
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #component:Ljava/lang/String;
    .end local v2           #components:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-object v6
.end method

.method private isActiveAdmin(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3882
    if-nez p1, :cond_1

    .line 3890
    :cond_0
    :goto_0
    return v0

    .line 3886
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 3887
    goto :goto_0
.end method

.method private declared-synchronized isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "keyBlack"
    .parameter "keyWhite"
    .parameter "packageName"

    .prologue
    .line 3982
    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    .line 3983
    const/4 v0, 0x0

    .line 4009
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 3985
    :cond_1
    :try_start_1
    sget-object v9, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 3986
    .local v8, uids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 3987
    .local v0, blocked:Z
    if-eqz v8, :cond_0

    .line 3990
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3991
    .local v7, uid:I
    sget-object v9, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 3992
    .local v3, packagesBlack:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 3993
    .local v4, packagesWhite:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3994
    .local v5, pkgB:Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/ApplicationPolicy;->ALL_PACKAGES:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3996
    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3997
    .local v6, pkgW:Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/ApplicationPolicy;->ALL_PACKAGES:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {p3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_5

    .line 3998
    :cond_6
    const/4 v0, 0x0

    .line 3999
    goto :goto_1

    .line 4003
    .end local v6           #pkgW:Ljava/lang/String;
    :cond_7
    const/4 v0, 0x1

    .line 4004
    goto/16 :goto_0

    .line 3982
    .end local v0           #blocked:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #packagesBlack:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #packagesWhite:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #pkgB:Ljava/lang/String;
    .end local v7           #uid:I
    .end local v8           #uids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private declared-synchronized loadApplicationBlacklistWhitelist()V
    .locals 17

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sput-object v12, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    .line 328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v13, "ADMIN"

    const-string v14, "adminUid"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 333
    .local v11, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v12, 0x2

    new-array v2, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "packageName"

    aput-object v13, v2, v12

    const/4 v12, 0x1

    const-string v13, "controlState"

    aput-object v13, v2, v12

    .line 338
    .local v2, columns:[Ljava/lang/String;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    .line 341
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 343
    .local v10, storedUid:I
    const/4 v8, 0x1

    .line 347
    .local v8, isAdminUsesAppPolicy:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v13, "ADMIN"

    const-string v14, "adminName"

    invoke-virtual {v12, v10, v13, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 349
    .local v9, pkgName:Ljava/lang/String;
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 351
    .local v3, compName:Landroid/content/ComponentName;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v12

    const/16 v13, 0x15

    invoke-virtual {v12, v3, v13}, Landroid/app/enterprise/EnterpriseDeviceManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 356
    .end local v3           #compName:Landroid/content/ComponentName;
    .end local v9           #pkgName:Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_0

    .line 358
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 359
    .local v1, adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v12, "PackageNameInstallationBlacklist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v12, "PackageNameInstallationWhitelist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v12, "PermissionInstallationBlacklist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v12, "SignatureInstallationBlacklist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v12, "UninstallationBlacklist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v12, "UninstallationWhitelist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v12, "PackageNameStopBlacklist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v12, "PackageNameStopWhitelist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v12, "PackageNameWidgetWhitelist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v12, "PackageNameWidgetBlacklist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v12, "PackageNameNotificationWhitelist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v12, "PackageNameNotificationBlacklist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v13, "APPLICATION"

    invoke-virtual {v12, v13, v10, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 377
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_c

    .line 378
    :cond_1
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 379
    const-string v12, "packageName"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 381
    .restart local v9       #pkgName:Ljava/lang/String;
    const-string v12, "controlState"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 384
    .local v4, controlState:I
    const/4 v12, 0x4

    and-int/lit8 v13, v4, 0x4

    if-ne v12, v13, :cond_2

    .line 385
    const-string v12, "PackageNameInstallationBlacklist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_2
    const/16 v12, 0x8

    and-int/lit8 v13, v4, 0x8

    if-ne v12, v13, :cond_3

    .line 388
    const-string v12, "PackageNameInstallationWhitelist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_3
    const/4 v12, 0x1

    and-int/lit8 v13, v4, 0x1

    if-ne v12, v13, :cond_4

    .line 391
    const-string v12, "UninstallationBlacklist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_4
    const/16 v12, 0x400

    and-int/lit16 v13, v4, 0x400

    if-ne v12, v13, :cond_5

    .line 394
    const-string v12, "UninstallationWhitelist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_5
    const/16 v12, 0x10

    and-int/lit8 v13, v4, 0x10

    if-ne v12, v13, :cond_6

    .line 399
    const-string v12, "PackageNameStopBlacklist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_6
    const/16 v12, 0x20

    and-int/lit8 v13, v4, 0x20

    if-ne v12, v13, :cond_7

    .line 402
    const-string v12, "PackageNameStopWhitelist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_7
    const/16 v12, 0x40

    and-int/lit8 v13, v4, 0x40

    if-ne v12, v13, :cond_8

    .line 405
    const-string v12, "PackageNameWidgetBlacklist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_8
    const/16 v12, 0x80

    and-int/lit16 v13, v4, 0x80

    if-ne v12, v13, :cond_9

    .line 409
    const-string v12, "PackageNameWidgetWhitelist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_9
    const/16 v12, 0x100

    and-int/lit16 v13, v4, 0x100

    if-ne v12, v13, :cond_a

    .line 413
    const-string v12, "PackageNameNotificationBlacklist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_a
    const/16 v12, 0x200

    and-int/lit16 v13, v4, 0x200

    if-ne v12, v13, :cond_1

    .line 417
    const-string v12, "PackageNameNotificationWhitelist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 326
    .end local v1           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2           #columns:[Ljava/lang/String;
    .end local v4           #controlState:I
    .end local v5           #cursor:Landroid/database/Cursor;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #isAdminUsesAppPolicy:Z
    .end local v9           #pkgName:Ljava/lang/String;
    .end local v10           #storedUid:I
    .end local v11           #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 421
    .restart local v1       #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v5       #cursor:Landroid/database/Cursor;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #isAdminUsesAppPolicy:Z
    .restart local v10       #storedUid:I
    .restart local v11       #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_b
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 425
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v13, "APPLICATION_PERMISSION"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "permission"

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v10, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 429
    if-eqz v5, :cond_e

    .line 430
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 431
    const-string v12, "PermissionInstallationBlacklist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "permission"

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 434
    :cond_d
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 438
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v13, "APPLICATION_SIGNATURE"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "signature"

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v10, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 442
    if-eqz v5, :cond_10

    .line 443
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 444
    const-string v12, "SignatureInstallationBlacklist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "signature"

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 447
    :cond_f
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 453
    :cond_10
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v15, "APPLICATION_MISC"

    const-string v16, "appNotificationMode"

    move-object/from16 v0, v16

    invoke-virtual {v14, v10, v15, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 460
    :goto_5
    :try_start_5
    sget-object v12, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 455
    :catch_0
    move-exception v7

    .line 456
    .local v7, ignore:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 464
    .end local v1           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5           #cursor:Landroid/database/Cursor;
    .end local v7           #ignore:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    .end local v8           #isAdminUsesAppPolicy:Z
    .end local v10           #storedUid:I
    :cond_11
    monitor-exit p0

    return-void

    .line 354
    .restart local v8       #isAdminUsesAppPolicy:Z
    .restart local v10       #storedUid:I
    :catch_1
    move-exception v12

    goto/16 :goto_1
.end method

.method private manageHomeShorcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .parameter "pkgName"
    .parameter "homePkgName"
    .parameter "action"

    .prologue
    .line 4419
    const/16 v16, 0x0

    .line 4421
    .local v16, ret:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 4422
    .local v12, pMgr:Landroid/content/pm/PackageManager;
    new-instance v13, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4423
    .local v13, pickAppShortcut:Landroid/content/Intent;
    const-string v18, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4424
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v13, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 4425
    .local v15, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v15, :cond_1

    .line 4426
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 4427
    .local v9, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 4428
    const/16 v16, 0x1

    .line 4435
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    if-eqz v16, :cond_6

    .line 4436
    const/4 v2, 0x0

    .line 4438
    .local v2, app:Landroid/content/pm/ApplicationInfo;
    const/16 v18, 0x80

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 4439
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    .line 4440
    .local v17, shortcutIntent:Landroid/content/Intent;
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4441
    .local v10, installAppShorcut:Landroid/content/Intent;
    const-string v18, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4442
    const-string v18, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 4444
    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4445
    .local v4, d:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    .line 4446
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 4447
    .local v3, bitmap:Landroid/graphics/Bitmap;
    const-string v18, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4449
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    const-string v18, "duplicate"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4450
    if-eqz p2, :cond_5

    .line 4451
    new-instance v7, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4452
    .local v7, homeIntent:Landroid/content/Intent;
    const-string v18, "android.intent.category.HOME"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 4454
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .line 4455
    .local v6, flag:Z
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 4456
    .local v14, rInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 4457
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4458
    const/4 v6, 0x1

    .line 4462
    .end local v14           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    if-nez v6, :cond_5

    .line 4463
    const/16 v18, 0x0

    .line 4471
    .end local v2           #app:Landroid/content/pm/ApplicationInfo;
    .end local v6           #flag:Z
    .end local v7           #homeIntent:Landroid/content/Intent;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #installAppShorcut:Landroid/content/Intent;
    .end local v11           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v17           #shortcutIntent:Landroid/content/Intent;
    :goto_0
    return v18

    .line 4465
    .restart local v2       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v10       #installAppShorcut:Landroid/content/Intent;
    .restart local v17       #shortcutIntent:Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #app:Landroid/content/pm/ApplicationInfo;
    .end local v10           #installAppShorcut:Landroid/content/Intent;
    .end local v17           #shortcutIntent:Landroid/content/Intent;
    :cond_6
    :goto_1
    move/from16 v18, v16

    .line 4471
    goto :goto_0

    .line 4466
    .restart local v2       #app:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v5

    .line 4467
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v18, "ApplicationPolicy"

    const-string v19, "something wrong here , package name not found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4468
    const/16 v16, 0x0

    goto :goto_1
.end method

.method private parseTopCommand(Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .locals 28
    .parameter "aOutput"
    .parameter "aAppCount"
    .parameter "bShowAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3381
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_1

    .line 3382
    :cond_0
    const-string v25, "ApplicationPolicy"

    const-string v26, "parseTopCommand: not a valid output "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    const/4 v13, 0x0

    .line 3469
    :goto_0
    return-object v13

    .line 3388
    :cond_1
    const-string v18, "\n"

    .line 3389
    .local v18, lNewLineDelim:Ljava/lang/String;
    new-instance v23, Ljava/util/StringTokenizer;

    const-string v25, "\n"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    .local v23, lSTokenizer:Ljava/util/StringTokenizer;
    const/4 v13, 0x0

    .line 3394
    .local v13, lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ge v9, v0, :cond_2

    .line 3395
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 3394
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3399
    :cond_2
    if-lez p2, :cond_3

    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, p2

    if-ge v0, v1, :cond_4

    .line 3400
    :cond_3
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p2

    .line 3403
    :cond_4
    const/4 v4, 0x0

    .line 3409
    .local v4, PID_INDEX:I
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0xa

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_5

    .line 3410
    const-string v25, "ApplicationPolicy"

    const-string v26, "HoneyComb : Set top parameters"

    invoke-static/range {v25 .. v26}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3411
    const/4 v3, 0x2

    .line 3412
    .local v3, CPU_USAGE_INDEX:I
    const/16 v6, 0xa

    .line 3413
    .local v6, TOTAL_TOKEN_COUNT_PER_LINE:I
    const/16 v5, 0x9

    .line 3420
    .local v5, PROCESS_NAME_INDEX:I
    :goto_2
    const/4 v11, 0x0

    .line 3421
    .local v11, lAppCount:I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3423
    .end local v13           #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    .local v14, lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    const/16 v16, 0x0

    .line 3424
    .local v16, lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_6

    .line 3425
    :try_start_1
    const-string v25, "ApplicationPolicy"

    const-string v26, "readAppMemoryInfo : show only installed application"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "activity"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 3428
    .local v7, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v7}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v22

    .line 3430
    .local v22, lRunningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v16, Ljava/util/ArrayList;

    .end local v16           #lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 3431
    .restart local v16       #lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3432
    .local v21, lRunningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 3463
    .end local v7           #activityManager:Landroid/app/ActivityManager;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v16           #lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v21           #lRunningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v22           #lRunningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v8

    move-object v13, v14

    .line 3464
    .end local v3           #CPU_USAGE_INDEX:I
    .end local v4           #PID_INDEX:I
    .end local v5           #PROCESS_NAME_INDEX:I
    .end local v6           #TOTAL_TOKEN_COUNT_PER_LINE:I
    .end local v11           #lAppCount:I
    .end local v14           #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    .local v8, e:Ljava/lang/Exception;
    .restart local v13       #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    :goto_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 3467
    .end local v8           #e:Ljava/lang/Exception;
    :goto_5
    const-string v25, "ApplicationPolicy"

    const-string v26, "parseTopCommand : cpu info"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3415
    .restart local v4       #PID_INDEX:I
    :cond_5
    const/4 v3, 0x1

    .line 3416
    .restart local v3       #CPU_USAGE_INDEX:I
    const/16 v6, 0x9

    .line 3417
    .restart local v6       #TOTAL_TOKEN_COUNT_PER_LINE:I
    const/16 v5, 0x8

    .restart local v5       #PROCESS_NAME_INDEX:I
    goto :goto_2

    .line 3436
    .end local v13           #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    .restart local v11       #lAppCount:I
    .restart local v14       #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    .restart local v16       #lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_6
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v25

    if-eqz v25, :cond_b

    move/from16 v0, p2

    if-ge v11, v0, :cond_b

    .line 3437
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 3438
    .local v17, lLine:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    const-string v26, "\\s+"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 3444
    .local v24, lVaues:[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v6, v0, :cond_a

    .line 3445
    const/16 v25, 0x0

    aget-object v19, v24, v25

    .line 3446
    .local v19, lPid:Ljava/lang/String;
    aget-object v20, v24, v5

    .line 3447
    .local v20, lProcessName:Ljava/lang/String;
    if-eqz v16, :cond_7

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_8

    :cond_7
    if-nez v16, :cond_9

    .line 3449
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 3450
    aget-object v25, v24, v3

    const-string v26, "%"

    const-string v27, ""

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    .line 3451
    .local v15, lCpuUsage:Ljava/lang/Float;
    new-instance v12, Landroid/app/enterprise/AppInfo;

    invoke-direct {v12}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 3452
    .local v12, lAppInfo:Landroid/app/enterprise/AppInfo;
    move-object/from16 v0, v20

    iput-object v0, v12, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 3453
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v12, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 3454
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3456
    .end local v12           #lAppInfo:Landroid/app/enterprise/AppInfo;
    .end local v15           #lCpuUsage:Ljava/lang/Float;
    :cond_9
    const-string v25, "ApplicationPolicy"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "parseTopCommand : package not included pid: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "name :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3460
    .end local v19           #lPid:Ljava/lang/String;
    .end local v20           #lProcessName:Ljava/lang/String;
    :cond_a
    const-string v25, "ApplicationPolicy"

    const-string v26, "some problem with top command output"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .end local v17           #lLine:Ljava/lang/String;
    .end local v24           #lVaues:[Ljava/lang/String;
    :cond_b
    move-object v13, v14

    .line 3465
    .end local v14           #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    .restart local v13       #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    goto/16 :goto_5

    .line 3463
    .end local v3           #CPU_USAGE_INDEX:I
    .end local v4           #PID_INDEX:I
    .end local v5           #PROCESS_NAME_INDEX:I
    .end local v6           #TOTAL_TOKEN_COUNT_PER_LINE:I
    .end local v11           #lAppCount:I
    .end local v16           #lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v8

    goto/16 :goto_4
.end method

.method private putWidgetProviderDisabledList(Ljava/util/Set;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4283
    .local p1, componentNames:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4284
    .local v2, list:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 4285
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4287
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "disabledWidgetComponents"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4289
    return-void
.end method

.method private readAppMemoryInfo(Z)Ljava/util/List;
    .locals 25
    .parameter "bShowAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3214
    const-string v22, "ApplicationPolicy"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "readAppMemoryInfo start bShowAllProcess:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 3218
    .local v21, lStats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "activity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 3220
    .local v4, activityManager:Landroid/app/ActivityManager;
    const/4 v14, 0x0

    .line 3222
    .local v14, lPidArray:[I
    if-nez p1, :cond_2

    .line 3223
    const-string v22, "ApplicationPolicy"

    const-string v23, "readAppMemoryInfo : show only installed application"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v20

    .line 3226
    .local v20, lRunningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v14, v0, [I

    .line 3227
    const/4 v8, 0x0

    .line 3228
    .local v8, k:I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    move v9, v8

    .end local v8           #k:I
    .local v9, k:I
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3229
    .local v19, lRunningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    add-int/lit8 v8, v9, 0x1

    .end local v9           #k:I
    .restart local v8       #k:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v22, v0

    aput v22, v14, v9

    move v9, v8

    .end local v8           #k:I
    .restart local v9       #k:I
    goto :goto_0

    .end local v19           #lRunningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    move v8, v9

    .line 3240
    .end local v9           #k:I
    .end local v20           #lRunningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v8       #k:I
    :goto_1
    invoke-virtual {v4, v14}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v12

    .line 3241
    .local v12, lMemInfoArray:[Landroid/os/Debug$MemoryInfo;
    const-string v22, "ApplicationPolicy"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "memory length : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v12

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "pids length"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v14

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_3

    .line 3244
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/proc/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v14, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/cmdline"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3245
    .local v16, lPkgName:Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 3246
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->cleanCmdline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3247
    .local v10, lCmdLine:Ljava/lang/String;
    aget-object v11, v12, v6

    .line 3248
    .local v11, lMemInfo:Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v11}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v22

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 3249
    .local v17, lRamSize:J
    new-instance v22, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3243
    .end local v10           #lCmdLine:Ljava/lang/String;
    .end local v11           #lMemInfo:Landroid/os/Debug$MemoryInfo;
    .end local v17           #lRamSize:J
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3232
    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #k:I
    .end local v12           #lMemInfoArray:[Landroid/os/Debug$MemoryInfo;
    .end local v16           #lPkgName:Ljava/lang/String;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getPidList()Ljava/util/ArrayList;

    move-result-object v15

    .line 3233
    .local v15, lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v14, v0, [I

    .line 3234
    const/4 v8, 0x0

    .line 3235
    .restart local v8       #k:I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    move v9, v8

    .end local v8           #k:I
    .restart local v9       #k:I
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 3236
    .local v13, lPid:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #k:I
    .restart local v8       #k:I
    aput v13, v14, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v8

    .end local v8           #k:I
    .restart local v9       #k:I
    goto :goto_3

    .line 3252
    .end local v4           #activityManager:Landroid/app/ActivityManager;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #k:I
    .end local v13           #lPid:I
    .end local v14           #lPidArray:[I
    .end local v15           #lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v5

    .line 3253
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 3256
    .end local v5           #e:Ljava/lang/Exception;
    :cond_3
    const-string v22, "ApplicationPolicy"

    const-string v23, "readAppMemoryInfo end"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    return-object v21

    .restart local v4       #activityManager:Landroid/app/ActivityManager;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #k:I
    .restart local v14       #lPidArray:[I
    .restart local v15       #lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    move v8, v9

    .end local v9           #k:I
    .restart local v8       #k:I
    goto/16 :goto_1
.end method

.method private readAppSizeInfo()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3302
    const-string v11, "ApplicationPolicy"

    const-string v12, "readAppSizeInfo start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    iget-object v11, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 3305
    .local v3, lPkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3306
    .local v6, lStats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3308
    .local v9, token:J
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 3309
    .local v2, lPkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3310
    .local v4, lPkgName:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 3311
    new-instance v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 3312
    .local v5, lPkgSizeObserver:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    iget-object v11, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v4, v5}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 3313
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3314
    :goto_1
    :try_start_1
    iget-boolean v11, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v11, :cond_1

    .line 3316
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3317
    :catch_0
    move-exception v11

    goto :goto_1

    .line 3320
    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3321
    :try_start_4
    iget-boolean v11, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v11, :cond_0

    .line 3322
    iget-object v11, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    if-eqz v11, :cond_0

    .line 3323
    iget-object v11, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v13, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v13, v13, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v11, v13

    iget-object v13, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v13, v13, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v7, v11, v13

    .line 3327
    .local v7, lTotalSize:J
    new-instance v11, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    invoke-direct {v11, p0, v4, v7, v8}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 3332
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #lPkgInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #lPkgName:Ljava/lang/String;
    .end local v5           #lPkgSizeObserver:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    .end local v7           #lTotalSize:J
    :catch_1
    move-exception v0

    .line 3333
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3335
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3338
    const-string v11, "ApplicationPolicy"

    const-string v12, "readAppSizeInfo end"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    return-object v6

    .line 3320
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #lPkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v4       #lPkgName:Ljava/lang/String;
    .restart local v5       #lPkgSizeObserver:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    :catchall_0
    move-exception v11

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 3335
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #lPkgInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #lPkgName:Ljava/lang/String;
    .end local v5           #lPkgSizeObserver:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    :catchall_1
    move-exception v11

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method private readCpuTime()J
    .locals 6

    .prologue
    .line 3604
    const-string v2, "ApplicationPolicy"

    const-string v3, "readCpuTime start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    const-string v2, "proc/stat"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3606
    .local v0, lCpuStat:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3607
    const-wide/16 v2, 0x0

    .line 3611
    :goto_0
    return-wide v2

    .line 3609
    :cond_0
    const-string v2, "[ ]+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3610
    .local v1, segs:[Ljava/lang/String;
    const-string v2, "ApplicationPolicy"

    const-string v3, "readCpuTime end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x4

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x5

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x6

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x7

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method private readData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "aFileName"

    .prologue
    const/4 v3, 0x0

    .line 3626
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3633
    .local v2, lFstream:Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x1f4

    invoke-direct {v1, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 3635
    .local v1, lBufReader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 3642
    if-eqz v2, :cond_0

    .line 3643
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 3644
    const/4 v2, 0x0

    .line 3646
    :cond_0
    if-eqz v1, :cond_1

    .line 3647
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 3648
    :goto_0
    const/4 v1, 0x0

    .line 3639
    .end local v1           #lBufReader:Ljava/io/BufferedReader;
    .end local v2           #lFstream:Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-object v3

    .line 3627
    :catch_0
    move-exception v0

    .line 3628
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3629
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File access error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3636
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #lBufReader:Ljava/io/BufferedReader;
    .restart local v2       #lFstream:Ljava/io/FileReader;
    :catch_1
    move-exception v0

    .line 3637
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3638
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read error on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3642
    if-eqz v2, :cond_2

    .line 3643
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 3644
    const/4 v2, 0x0

    .line 3646
    :cond_2
    if-eqz v1, :cond_1

    .line 3647
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 3650
    :catch_2
    move-exception v0

    .line 3651
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3641
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 3642
    if-eqz v2, :cond_3

    .line 3643
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 3644
    const/4 v2, 0x0

    .line 3646
    :cond_3
    if-eqz v1, :cond_4

    .line 3647
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 3648
    const/4 v1, 0x0

    .line 3641
    :cond_4
    :goto_3
    throw v3

    .line 3650
    :catch_3
    move-exception v0

    .line 3651
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 3650
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method private readProcInfo()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3569
    const-string v10, "ApplicationPolicy"

    const-string v11, "readProcInfo start"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3572
    .local v9, lStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getPidList()Ljava/util/ArrayList;

    move-result-object v3

    .line 3573
    .local v3, lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_1

    .line 3574
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3575
    .local v2, lPid:Ljava/lang/Integer;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/stat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3576
    .local v8, lStat:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 3580
    const-string v10, "[ ]+"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3581
    .local v7, lSegs:[Ljava/lang/String;
    const/16 v10, 0xd

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/16 v12, 0xe

    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long v5, v10, v12

    .line 3584
    .local v5, lRunTime:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/cmdline"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3585
    .local v4, lPkgName:Ljava/lang/String;
    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "package name"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    if-eqz v4, :cond_0

    .line 3587
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ApplicationPolicy;->cleanCmdline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3588
    .local v1, lCmdLine:Ljava/lang/String;
    new-instance v10, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    invoke-direct {v10, p0, v1, v5, v6}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3592
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #lCmdLine:Ljava/lang/String;
    .end local v2           #lPid:Ljava/lang/Integer;
    .end local v4           #lPkgName:Ljava/lang/String;
    .end local v5           #lRunTime:J
    .end local v7           #lSegs:[Ljava/lang/String;
    .end local v8           #lStat:Ljava/lang/String;
    :cond_1
    const-string v10, "ApplicationPolicy"

    const-string v11, "cannot open file "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    :cond_2
    const-string v10, "ApplicationPolicy"

    const-string v11, "readProcInfo end"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    return-object v9
.end method

.method private declared-synchronized refreshWidgetStatus()V
    .locals 20

    .prologue
    .line 4218
    monitor-enter p0

    :try_start_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4221
    .local v16, widgetProviders:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4223
    .local v12, providerInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v17, "appwidget"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v4

    .line 4224
    .local v4, aws:Lcom/android/internal/appwidget/IAppWidgetService;
    if-eqz v4, :cond_1

    .line 4225
    invoke-interface {v4}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProviders()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 4232
    .end local v4           #aws:Lcom/android/internal/appwidget/IAppWidgetService;
    :goto_0
    if-nez v12, :cond_2

    .line 4233
    :try_start_2
    const-string v17, "ApplicationPolicy"

    const-string v18, "providerInfoList == null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4279
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 4227
    .restart local v4       #aws:Lcom/android/internal/appwidget/IAppWidgetService;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 4229
    .end local v4           #aws:Lcom/android/internal/appwidget/IAppWidgetService;
    :catch_0
    move-exception v7

    .line 4230
    .local v7, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v17, "ApplicationPolicy"

    const-string v18, "error in getInstalledProviders"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4218
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v12           #providerInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v16           #widgetProviders:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 4237
    .restart local v12       #providerInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .restart local v16       #widgetProviders:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_2
    :try_start_4
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 4238
    .local v3, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v0, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4241
    .end local v3           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getSamsungWidgets()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4244
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getWidgetProviderDisabledList()Ljava/util/Set;

    move-result-object v6

    .line 4245
    .local v6, disabledList:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 4246
    .local v13, toRemove:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4247
    .local v5, cn:Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 4248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4249
    .local v14, token:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 4251
    invoke-interface {v13, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4252
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 4255
    .end local v5           #cn:Landroid/content/ComponentName;
    .end local v14           #token:J
    :cond_5
    invoke-interface {v6, v13}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 4257
    const/4 v8, 0x0

    .line 4259
    .local v8, hasDisabled:Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 4260
    .local v11, p:Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 4261
    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4263
    .restart local v14       #token:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 4265
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4266
    if-nez v8, :cond_6

    .line 4267
    const/4 v8, 0x1

    goto :goto_4

    .line 4272
    .end local v11           #p:Landroid/content/ComponentName;
    .end local v14           #token:J
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/ApplicationPolicy;->putWidgetProviderDisabledList(Ljava/util/Set;)V

    .line 4275
    if-eqz v8, :cond_0

    .line 4276
    new-instance v10, Landroid/content/Intent;

    const-string v17, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4277
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method private declared-synchronized refreshWidgetStatus(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4185
    .local p1, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4187
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getWidgetProviderDisabledList()Ljava/util/Set;

    move-result-object v0

    .line 4188
    .local v0, disabledList:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4189
    .local v2, p:Landroid/content/ComponentName;
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4190
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4191
    .local v3, token:J
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 4193
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4185
    .end local v0           #disabledList:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Landroid/content/ComponentName;
    .end local v3           #token:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 4195
    .restart local v0       #disabledList:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->putWidgetProviderDisabledList(Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4197
    .end local v0           #disabledList:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private registerPackageChangeReceiver()V
    .locals 4

    .prologue
    .line 1012
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 1013
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1015
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1016
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1017
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1019
    new-instance v2, Lcom/android/server/enterprise/ApplicationPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/ApplicationPolicy$1;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    sput-object v2, Lcom/android/server/enterprise/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1087
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1088
    const-string v2, "ApplicationPolicy"

    const-string v3, "registerPackageChangeReceiver() : Done"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 1090
    :catch_0
    move-exception v0

    .line 1091
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerWidgetChangedListener()V
    .locals 5

    .prologue
    .line 4138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4139
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4140
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4141
    const-string v4, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4142
    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4144
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 4145
    .local v1, filter2:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4147
    new-instance v2, Lcom/android/server/enterprise/ApplicationPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/ApplicationPolicy$2;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 4156
    .local v2, receiver:Landroid/content/BroadcastReceiver;
    new-instance v3, Lcom/android/server/enterprise/ApplicationPolicy$3;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/ApplicationPolicy$3;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 4162
    .local v3, receiver2:Landroid/content/BroadcastReceiver;
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4163
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4164
    return-void
.end method

.method private declared-synchronized removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z
    .locals 6
    .parameter "key"
    .parameter "bitMask"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3928
    .local p3, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 3929
    .local v0, callingUid:I
    const/4 v4, 0x1

    .line 3931
    .local v4, result:Z
    if-eqz p3, :cond_1

    .line 3932
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3933
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3934
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3935
    .local v3, pkg:Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->ALL_PACKAGES:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3936
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3928
    .end local v0           #callingUid:I
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #pkg:Ljava/lang/String;
    .end local v4           #result:Z
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 3941
    .restart local v0       #callingUid:I
    .restart local v4       #result:Z
    :cond_1
    if-eqz p3, :cond_2

    .line 3942
    :try_start_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3943
    .restart local v3       #pkg:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {p0, v3, v0, p2, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    and-int/2addr v4, v5

    goto :goto_1

    .line 3947
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #pkg:Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return v4
.end method

.method private declared-synchronized setApplicationPermissionControlState(Ljava/lang/String;IZ)Z
    .locals 4
    .parameter "permission"
    .parameter "callingUid"
    .parameter "add"

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->createAdminMap(I)V

    .line 620
    if-eqz p3, :cond_0

    .line 621
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "PermissionInstallationBlacklist"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 622
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 623
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "permission"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v1, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION_PERMISSION"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 629
    .end local v0           #cv:Landroid/content/ContentValues;
    :goto_0
    monitor-exit p0

    return v1

    .line 627
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "PermissionInstallationBlacklist"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 629
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION_PERMISSION"

    const-string v3, "permission"

    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    .locals 7
    .parameter "pkgName"
    .parameter "callingUid"
    .parameter "controlStateMask"
    .parameter "enableMask"

    .prologue
    .line 495
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    const-string v5, "controlState"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 500
    .local v6, controlState:I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    .line 501
    const/4 v6, 0x0

    .line 507
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->createAdminMap(I)V

    .line 510
    sparse-switch p3, :sswitch_data_0

    .line 588
    :goto_0
    if-eqz p4, :cond_b

    .line 589
    or-int/2addr v6, p3

    .line 601
    :goto_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 602
    .local v5, cv:Landroid/content/ContentValues;
    const-string v0, "controlState"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 605
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 513
    .end local v5           #cv:Landroid/content/ContentValues;
    :sswitch_0
    if-eqz p4, :cond_1

    .line 514
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameInstallationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 495
    .end local v6           #controlState:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 517
    .restart local v6       #controlState:I
    :cond_1
    :try_start_2
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameInstallationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    :sswitch_1
    if-eqz p4, :cond_2

    .line 523
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameInstallationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 526
    :cond_2
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameInstallationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 531
    :sswitch_2
    if-eqz p4, :cond_3

    .line 532
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "UninstallationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 535
    :cond_3
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "UninstallationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 540
    :sswitch_3
    if-eqz p4, :cond_4

    .line 541
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "UninstallationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 544
    :cond_4
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "UninstallationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 549
    :sswitch_4
    if-eqz p4, :cond_5

    .line 550
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameStopBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 552
    :cond_5
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameStopBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 555
    :sswitch_5
    if-eqz p4, :cond_6

    .line 556
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameStopWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 558
    :cond_6
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameStopWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 561
    :sswitch_6
    if-eqz p4, :cond_7

    .line 562
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameWidgetWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 564
    :cond_7
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameWidgetWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 567
    :sswitch_7
    if-eqz p4, :cond_8

    .line 568
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameWidgetBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 570
    :cond_8
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameWidgetBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 573
    :sswitch_8
    if-eqz p4, :cond_9

    .line 574
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameNotificationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 576
    :cond_9
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameNotificationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 580
    :sswitch_9
    if-eqz p4, :cond_a

    .line 581
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameNotificationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 583
    :cond_a
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameNotificationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 591
    :cond_b
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v6, v0

    goto/16 :goto_1

    .line 510
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_3
    .end sparse-switch
.end method

.method private declared-synchronized setApplicationSignatureControlState(Ljava/lang/String;IZ)Z
    .locals 4
    .parameter "signature"
    .parameter "callingUid"
    .parameter "add"

    .prologue
    .line 643
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->createAdminMap(I)V

    .line 645
    if-eqz p3, :cond_0

    .line 646
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "SignatureInstallationBlacklist"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 647
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 648
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "signature"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v1, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION_SIGNATURE"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 654
    .end local v0           #cv:Landroid/content/ContentValues;
    :goto_0
    monitor-exit p0

    return v1

    .line 652
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "SignatureInstallationBlacklist"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 654
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION_SIGNATURE"

    const-string v3, "signature"

    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 643
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setInstallSoureMDM(ILjava/lang/String;Z)V
    .locals 7
    .parameter "callingUid"
    .parameter "pkgName"
    .parameter "stateValue"

    .prologue
    const/4 v6, 0x1

    .line 1647
    if-ne p3, v6, :cond_0

    .line 1648
    .local v6, state:I
    :goto_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1649
    .local v5, cv:Landroid/content/ContentValues;
    const-string v0, "install_sourceMDM"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1650
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1654
    return-void

    .line 1647
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v6           #state:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private setManagedApp(ILjava/lang/String;Z)V
    .locals 7
    .parameter "callingUid"
    .parameter "pkgName"
    .parameter "stateValue"

    .prologue
    const/4 v6, 0x1

    .line 1637
    if-ne p3, v6, :cond_0

    .line 1638
    .local v6, state:I
    :goto_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1639
    .local v5, cv:Landroid/content/ContentValues;
    const-string v0, "managedApp"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1640
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1644
    return-void

    .line 1637
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v6           #state:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private updateCount(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "callingUid"
    .parameter "pkgName"
    .parameter "contentName"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1098
    .local v6, count:I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1099
    .local v5, cv:Landroid/content/ContentValues;
    if-gtz v6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1100
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1102
    return-void

    .line 1099
    :cond_0
    add-int/lit8 v0, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addAppNotificationBlackList(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4315
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationBlacklist"

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addAppNotificationWhiteList(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4338
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationWhitelist"

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addAppPackageNameToBlackList(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 2951
    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAppPackageNameToBlackList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2953
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2954
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2955
    const/4 v1, 0x0

    .line 2957
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_0
.end method

.method public addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 3002
    const-string v1, "ApplicationPolicy"

    const-string v2, "addAppPackageNameToWhiteList"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 3004
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3005
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3006
    const/4 v1, 0x0

    .line 3008
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_0
.end method

.method public addAppPermissionToBlackList(Ljava/lang/String;)Z
    .locals 2
    .parameter "appPermission"

    .prologue
    .line 2770
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2771
    .local v0, callingUid:I
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPermissionControlState(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public addAppSignatureToBlackList(Ljava/lang/String;)Z
    .locals 2
    .parameter "appSignature"

    .prologue
    .line 2847
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2848
    .local v0, callingUid:I
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public addHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"
    .parameter "homePkgName"

    .prologue
    .line 4409
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 4410
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->manageHomeShorcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToForceStopBlackList(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4016
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopBlacklist"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToForceStopWhiteList(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4036
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopWhitelist"

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToWidgetBlackList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4105
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetBlacklist"

    const/16 v2, 0x40

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 4107
    .local v0, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus()V

    .line 4108
    return v0
.end method

.method public addPackagesToWidgetWhiteList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4078
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetWhitelist"

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 4080
    .local v0, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus()V

    .line 4081
    return v0
.end method

.method public backupApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .locals 21
    .parameter "pkgName"
    .parameter "data"

    .prologue
    .line 4558
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v14

    .line 4559
    .local v14, uid:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4560
    .local v15, validPkgName:Ljava/lang/String;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/ApplicationPolicy;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v17

    if-eqz v17, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v17

    if-nez v17, :cond_1

    .line 4562
    :cond_0
    const/16 v17, -0x3

    .line 4631
    :goto_0
    return v17

    .line 4563
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 4565
    :cond_2
    const/16 v17, -0x4

    goto :goto_0

    .line 4566
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/ApplicationPolicy;->getBackupAgentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_4

    .line 4567
    const/16 v17, -0x2

    goto :goto_0

    .line 4570
    :cond_4
    :try_start_0
    new-instance v13, Ljava/lang/SecurityManager;

    invoke-direct {v13}, Ljava/lang/SecurityManager;-><init>()V

    .line 4571
    .local v13, sm:Ljava/lang/SecurityManager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 4578
    .local v3, adminPkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 4580
    const/16 v17, 0x1

    :try_start_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    .line 4581
    const/16 v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupReturnCode:I

    .line 4582
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    .line 4583
    new-instance v7, Landroid/content/Intent;

    const-string v17, "edm.intent.action.do.backup"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4584
    .local v7, i:Landroid/content/Intent;
    const-string v17, "pkgName"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4585
    const-string v17, "admin"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    const-wide/16 v19, 0x7530

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4596
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupReturnCode:I

    move/from16 v17, v0

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupData:Ljava/util/Map;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 4598
    new-instance v12, Landroid/app/backup/BackupDataOutput;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 4599
    .local v12, output:Landroid/app/backup/BackupDataOutput;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupData:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 4601
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    :goto_1
    :try_start_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 4602
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 4603
    .local v11, mEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 4604
    .local v10, key:Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 4605
    .local v16, value:[B
    move-object/from16 v0, v16

    array-length v4, v0

    .line 4606
    .local v4, dataSize:I
    invoke-virtual {v12, v10, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 4607
    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 4609
    .end local v4           #dataSize:I
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #mEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v16           #value:[B
    :catch_0
    move-exception v5

    .line 4610
    .local v5, e:Ljava/lang/Exception;
    :try_start_4
    const-string v17, "ApplicationPolicy"

    const-string v19, "backup data failed"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    new-instance v8, Landroid/content/Intent;

    const-string v17, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4613
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4614
    const/16 v17, -0x3

    .line 4616
    const/16 v19, 0x0

    :try_start_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    .line 4614
    monitor-exit v18

    goto/16 :goto_0

    .line 4632
    .end local v5           #e:Ljava/lang/Exception;
    .end local v7           #i:Landroid/content/Intent;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    .end local v12           #output:Landroid/app/backup/BackupDataOutput;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v17

    .line 4572
    .end local v3           #adminPkgName:Ljava/lang/String;
    .end local v13           #sm:Ljava/lang/SecurityManager;
    :catch_1
    move-exception v6

    .line 4573
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v17, "ApplicationPolicy"

    const-string v18, "can\'t write to file descriptor"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4574
    const/16 v17, -0x3

    goto/16 :goto_0

    .line 4588
    .end local v6           #ex:Ljava/lang/SecurityException;
    .restart local v3       #adminPkgName:Ljava/lang/String;
    .restart local v13       #sm:Ljava/lang/SecurityManager;
    :catch_2
    move-exception v5

    .line 4589
    .local v5, e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v17, "ApplicationPolicy"

    const-string v19, "backupApplicationData interrupted"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4590
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    .line 4592
    new-instance v8, Landroid/content/Intent;

    const-string v17, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4593
    .restart local v8       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4594
    const/16 v17, -0x3

    monitor-exit v18

    goto/16 :goto_0

    .line 4616
    .end local v5           #e:Ljava/lang/InterruptedException;
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v7       #i:Landroid/content/Intent;
    .restart local v9       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    .restart local v12       #output:Landroid/app/backup/BackupDataOutput;
    :catchall_1
    move-exception v17

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    throw v17

    .line 4618
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    .end local v12           #output:Landroid/app/backup/BackupDataOutput;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupData:Ljava/util/Map;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 4619
    const-string v17, "ApplicationPolicy"

    const-string v19, "Backup data null "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4620
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    .line 4622
    new-instance v8, Landroid/content/Intent;

    const-string v17, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4623
    .restart local v8       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4624
    const/16 v17, -0x3

    monitor-exit v18

    goto/16 :goto_0

    .line 4626
    .end local v8           #intent:Landroid/content/Intent;
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    .line 4629
    :goto_2
    new-instance v8, Landroid/content/Intent;

    const-string v17, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4630
    .restart local v8       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4631
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupReturnCode:I

    move/from16 v17, v0

    monitor-exit v18

    goto/16 :goto_0

    .line 4616
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v9       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    .restart local v12       #output:Landroid/app/backup/BackupDataOutput;
    :cond_7
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public changeApplicationIcon(Ljava/lang/String;[B)Z
    .locals 9
    .parameter "aPackageName"
    .parameter "aImageData"

    .prologue
    const/4 v5, 0x0

    .line 2697
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2698
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeApplicationIcon:packageName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "called from :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2700
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2701
    .local v3, token:J
    const/4 v1, 0x0

    .line 2703
    .local v1, success:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gez v6, :cond_1

    .line 2704
    :cond_0
    const-string v5, "ApplicationPolicy"

    const-string v6, "changeApplicationIcon: packageName can\'t be null :"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 2731
    .end local v1           #success:Z
    .local v2, success:I
    :goto_0
    return v2

    .line 2708
    .end local v2           #success:I
    .restart local v1       #success:Z
    :cond_1
    if-nez p2, :cond_6

    .line 2709
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/ApplicationIconDb;->deleteApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 2712
    :goto_1
    if-eqz v1, :cond_5

    .line 2714
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    if-nez v6, :cond_2

    .line 2715
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    .line 2717
    :cond_2
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    if-nez p2, :cond_7

    .line 2718
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2724
    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2725
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    if-eqz p1, :cond_4

    const-string v7, "package"

    invoke-static {v7, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :cond_4
    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2727
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2730
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 2731
    .restart local v2       #success:I
    goto :goto_0

    .line 2711
    .end local v2           #success:I
    :cond_6
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, p2}, Lcom/android/server/enterprise/ApplicationIconDb;->updateApplicationIcon(Landroid/content/Context;Ljava/lang/String;[B)Z

    move-result v1

    goto :goto_1

    .line 2719
    :cond_7
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz p2, :cond_3

    .line 2721
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public deleteHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"
    .parameter "homePkgName"

    .prologue
    .line 4414
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 4415
    const-string v0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->manageHomeShorcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteManagedAppInfo(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2102
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2103
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2105
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2134
    :goto_0
    return v1

    .line 2108
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2109
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 2111
    :cond_1
    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2113
    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2115
    invoke-direct {p0, p1, v0, v3, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2117
    const/16 v2, 0x400

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2120
    const/16 v2, 0x10

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2122
    const/16 v2, 0x20

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2124
    const/16 v2, 0x40

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2126
    const/16 v2, 0x80

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2128
    const/16 v2, 0x100

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2130
    const/16 v2, 0x200

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2132
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus()V

    .line 2134
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION"

    const-string v3, "packageName"

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public deletePackageFromAppUsageDb(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 3560
    new-instance v0, Lcom/android/server/enterprise/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/ApplicationUsage;->deletePackageFromDb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 2

    .prologue
    .line 3556
    new-instance v0, Lcom/android/server/enterprise/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/ApplicationUsage;->getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v0

    return-object v0
.end method

.method public getAllWidgets(Ljava/lang/String;)Ljava/util/Map;
    .locals 29
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4695
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 4696
    const/16 v22, 0x0

    .line 4699
    .local v22, ret:Ljava/util/Map;,"Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v7, "appwidget"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v11

    .line 4701
    .local v11, aws:Lcom/android/internal/appwidget/IAppWidgetService;
    if-eqz v11, :cond_0

    .line 4702
    const-wide/16 v23, 0x0

    .line 4703
    .local v23, token:J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 4704
    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllWidgets(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v22

    .line 4705
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4711
    .end local v11           #aws:Lcom/android/internal/appwidget/IAppWidgetService;
    .end local v23           #token:J
    :cond_0
    :goto_0
    if-nez v22, :cond_1

    .line 4712
    new-instance v22, Ljava/util/HashMap;

    .end local v22           #ret:Ljava/util/Map;,"Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 4715
    .restart local v22       #ret:Ljava/util/Map;,"Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p1, :cond_8

    const-string v7, "com.sec.android.app.launcher"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4717
    :cond_2
    const-string v7, "content://com.sec.android.app.launcher.settings/favorites?notify=false"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 4719
    .local v4, launcher_uri:Landroid/net/Uri;
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "appWidgetId"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "intent"

    aput-object v8, v5, v7

    .line 4722
    .local v5, projection:[Ljava/lang/String;
    const-string v6, "itemType = 900"

    .line 4723
    .local v6, selectionClause:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4724
    .local v3, contentResolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 4725
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_8

    .line 4726
    :cond_3
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4728
    new-instance v20, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v20 .. v20}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 4729
    .local v20, providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v7, 0x0

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 4730
    .local v26, widgetId:I
    const/4 v7, 0x1

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 4731
    .local v25, uri:Ljava/lang/String;
    const/16 v19, 0x0

    .line 4733
    .local v19, intent:Landroid/content/Intent;
    const/4 v7, 0x0

    :try_start_1
    move-object/from16 v0, v25

    invoke-static {v0, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 4738
    const/4 v13, 0x0

    .line 4740
    .local v13, ctx:Landroid/content/Context;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v13

    .line 4745
    :goto_2
    if-eqz v13, :cond_3

    .line 4748
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, v20

    iput-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 4751
    const/16 v21, 0x0

    .line 4752
    .local v21, resName:I
    :try_start_3
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "plug_in_name"

    const-string v27, "string"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v7, v8, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 4754
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v27, 0x80

    move/from16 v0, v27

    invoke-virtual {v7, v8, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 4756
    .local v9, aInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v21, :cond_5

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    move-object/from16 v0, v20

    iput-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 4764
    const/16 v17, 0x0

    .line 4765
    .local v17, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 4766
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/appwidget/AppWidgetProviderInfo;

    .line 4767
    .local v10, auxProvider:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v10, :cond_4

    iget-object v7, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v7, :cond_4

    iget-object v7, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4769
    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast v17, Ljava/util/ArrayList;

    .restart local v17       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_4

    .line 4707
    .end local v3           #contentResolver:Landroid/content/ContentResolver;
    .end local v4           #launcher_uri:Landroid/net/Uri;
    .end local v5           #projection:[Ljava/lang/String;
    .end local v6           #selectionClause:Ljava/lang/String;
    .end local v9           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v10           #auxProvider:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #ctx:Landroid/content/Context;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19           #intent:Landroid/content/Intent;
    .end local v20           #providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v21           #resName:I
    .end local v25           #uri:Ljava/lang/String;
    .end local v26           #widgetId:I
    :catch_0
    move-exception v14

    .line 4708
    .local v14, e:Landroid/os/RemoteException;
    const-string v7, "ApplicationPolicy"

    const-string v8, "error in getAllWidgets"

    invoke-static {v7, v8, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4734
    .end local v14           #e:Landroid/os/RemoteException;
    .restart local v3       #contentResolver:Landroid/content/ContentResolver;
    .restart local v4       #launcher_uri:Landroid/net/Uri;
    .restart local v5       #projection:[Ljava/lang/String;
    .restart local v6       #selectionClause:Ljava/lang/String;
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v19       #intent:Landroid/content/Intent;
    .restart local v20       #providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v25       #uri:Ljava/lang/String;
    .restart local v26       #widgetId:I
    :catch_1
    move-exception v14

    .line 4735
    .local v14, e:Ljava/net/URISyntaxException;
    goto/16 :goto_1

    .line 4742
    .end local v14           #e:Ljava/net/URISyntaxException;
    .restart local v13       #ctx:Landroid/content/Context;
    :catch_2
    move-exception v15

    .line 4743
    .local v15, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v15}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 4756
    .end local v15           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v21       #resName:I
    :cond_5
    :try_start_4
    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v7

    goto :goto_3

    .line 4758
    .end local v9           #aInfo:Landroid/content/pm/ActivityInfo;
    :catch_3
    move-exception v18

    .line 4759
    .local v18, ignore:Landroid/content/res/Resources$NotFoundException;
    goto/16 :goto_1

    .line 4760
    .end local v18           #ignore:Landroid/content/res/Resources$NotFoundException;
    :catch_4
    move-exception v18

    .line 4761
    .local v18, ignore:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_1

    .line 4773
    .end local v18           #ignore:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v17       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    if-nez v17, :cond_7

    .line 4774
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 4775
    .restart local v17       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4776
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 4778
    :cond_7
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4784
    .end local v3           #contentResolver:Landroid/content/ContentResolver;
    .end local v4           #launcher_uri:Landroid/net/Uri;
    .end local v5           #projection:[Ljava/lang/String;
    .end local v6           #selectionClause:Ljava/lang/String;
    .end local v9           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #ctx:Landroid/content/Context;
    .end local v17           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19           #intent:Landroid/content/Intent;
    .end local v20           #providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v21           #resName:I
    .end local v25           #uri:Ljava/lang/String;
    .end local v26           #widgetId:I
    :cond_8
    return-object v22
.end method

.method public getAppInstallToSdCard()Z
    .locals 7

    .prologue
    .line 3096
    const/4 v1, 0x0

    .line 3097
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "APPLICATION_GENERAL"

    const-string v6, "installToSdCard"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3099
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 3100
    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 3101
    move v1, v2

    .line 3105
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public declared-synchronized getAppInstallationMode()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1751
    monitor-enter p0

    :try_start_0
    const-string v3, "getAppInstallationMode :  mode start: "

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 1752
    const/4 v0, 0x1

    .line 1753
    .local v0, install:Z
    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 1772
    :goto_0
    monitor-exit p0

    return v3

    .line 1756
    :cond_1
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1758
    .local v2, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1759
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1762
    .local v1, uid:Ljava/lang/Integer;
    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "PackageNameInstallationBlacklist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v5, ".*"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "PackageNameInstallationWhitelist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v5, ".*"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1765
    const/4 v0, 0x0

    .line 1770
    .end local v1           #uid:Ljava/lang/Integer;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppInstallationMode :  mode"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1772
    if-eqz v0, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 1751
    .end local v0           #install:Z
    .end local v2           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getAppNotificationBlackList(Z)Ljava/util/List;
    .locals 1
    .parameter "allAdmins"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4331
    const-string v0, "PackageNameNotificationBlacklist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppNotificationWhiteList(Z)Ljava/util/List;
    .locals 1
    .parameter "allAdmins"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4354
    const-string v0, "PackageNameNotificationWhitelist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getAppPackageNamesAllBlackLists()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2974
    monitor-enter p0

    :try_start_0
    const-string v5, "ApplicationPolicy"

    const-string v6, "getAppPackageNamesAllBlackLists "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2976
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 2977
    :cond_0
    const/4 v1, 0x0

    .line 2998
    :cond_1
    monitor-exit p0

    return-object v1

    .line 2979
    :cond_2
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2982
    .local v4, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2984
    .local v1, blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2985
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2986
    .local v3, uid:Ljava/lang/Integer;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "PackageNameInstallationBlacklist"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2988
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 2989
    .local v0, aci:Landroid/app/enterprise/AppControlInfo;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 2990
    new-instance v6, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "PackageNameInstallationBlacklist"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 2992
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2993
    iget-object v5, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2974
    .end local v0           #aci:Landroid/app/enterprise/AppControlInfo;
    .end local v1           #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v2           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #uid:Ljava/lang/Integer;
    .end local v4           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2995
    .restart local v0       #aci:Landroid/app/enterprise/AppControlInfo;
    .restart local v1       #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v2       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #uid:Ljava/lang/Integer;
    .restart local v4       #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getAppPackageNamesAllWhiteLists()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3025
    monitor-enter p0

    :try_start_0
    const-string v5, "ApplicationPolicy"

    const-string v6, "getAppPackageNamesAllWhiteLists "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3027
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 3028
    :cond_0
    const/4 v4, 0x0

    .line 3049
    :cond_1
    monitor-exit p0

    return-object v4

    .line 3030
    :cond_2
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3033
    .local v3, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3035
    .local v4, whitelist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3036
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3037
    .local v2, uid:Ljava/lang/Integer;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "PackageNameInstallationWhitelist"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3039
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 3040
    .local v0, aci:Landroid/app/enterprise/AppControlInfo;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3041
    new-instance v6, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "PackageNameInstallationWhitelist"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 3043
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3044
    iget-object v5, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3025
    .end local v0           #aci:Landroid/app/enterprise/AppControlInfo;
    .end local v1           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #uid:Ljava/lang/Integer;
    .end local v3           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4           #whitelist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 3046
    .restart local v0       #aci:Landroid/app/enterprise/AppControlInfo;
    .restart local v1       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2       #uid:Ljava/lang/Integer;
    .restart local v3       #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v4       #whitelist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :cond_3
    :try_start_2
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getAppPermissionsAllBlackLists()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2818
    monitor-enter p0

    :try_start_0
    const-string v5, "ApplicationPolicy"

    const-string v6, "getAppPermissionAllBlackLists:"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2820
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 2821
    :cond_0
    const/4 v1, 0x0

    .line 2841
    :cond_1
    monitor-exit p0

    return-object v1

    .line 2823
    :cond_2
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2826
    .local v4, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2828
    .local v1, blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2829
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2830
    .local v3, uid:Ljava/lang/Integer;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "PermissionInstallationBlacklist"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2832
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 2833
    .local v0, aci:Landroid/app/enterprise/AppControlInfo;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 2834
    new-instance v6, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "PermissionInstallationBlacklist"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 2836
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2837
    iget-object v5, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2818
    .end local v0           #aci:Landroid/app/enterprise/AppControlInfo;
    .end local v1           #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v2           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #uid:Ljava/lang/Integer;
    .end local v4           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2839
    .restart local v0       #aci:Landroid/app/enterprise/AppControlInfo;
    .restart local v1       #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v2       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #uid:Ljava/lang/Integer;
    .restart local v4       #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getAppPermissionsBlackList()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 2793
    const-string v2, "ApplicationPolicy"

    const-string v3, "getAppPermissionsBlackList:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    const/4 v1, 0x0

    .line 2795
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "APPLICATION_PERMISSION"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "permission"

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2799
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 2800
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2801
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2802
    const-string v2, "permission"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2804
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2807
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2808
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 2810
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getAppSignatureBlackList()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 2863
    const-string v2, "ApplicationPolicy"

    const-string v3, "getAppSignatureBlackList()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    const/4 v1, 0x0

    .line 2865
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "APPLICATION_SIGNATURE"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "signature"

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2869
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 2870
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2871
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2872
    const-string v2, "signature"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2874
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2877
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2878
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 2880
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getAppSignaturesAllBlackLists()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2888
    monitor-enter p0

    :try_start_0
    const-string v5, "ApplicationPolicy"

    const-string v6, "getAppSignatureAllBlackLists:"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2890
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 2891
    :cond_0
    const/4 v1, 0x0

    .line 2911
    :cond_1
    monitor-exit p0

    return-object v1

    .line 2893
    :cond_2
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2896
    .local v4, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2898
    .local v1, blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2899
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2900
    .local v3, uid:Ljava/lang/Integer;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "SignatureInstallationBlacklist"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2902
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 2903
    .local v0, aci:Landroid/app/enterprise/AppControlInfo;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 2904
    new-instance v6, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "SignatureInstallationBlacklist"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 2906
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2907
    iget-object v5, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2888
    .end local v0           #aci:Landroid/app/enterprise/AppControlInfo;
    .end local v1           #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v2           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #uid:Ljava/lang/Integer;
    .end local v4           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2909
    .restart local v0       #aci:Landroid/app/enterprise/AppControlInfo;
    .restart local v1       #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v2       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #uid:Ljava/lang/Integer;
    .restart local v4       #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getApplicationCacheSize(Ljava/lang/String;)J
    .locals 4
    .parameter "packageName"

    .prologue
    .line 2551
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2552
    const-wide/16 v2, -0x1

    .line 2553
    .local v2, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2554
    if-eqz p1, :cond_0

    .line 2556
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 2557
    .local v1, pkgSt:Landroid/content/pm/PackageStats;
    iget-wide v2, v1, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2562
    .end local v1           #pkgSt:Landroid/content/pm/PackageStats;
    :cond_0
    :goto_0
    return-wide v2

    .line 2558
    :catch_0
    move-exception v0

    .line 2559
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationCodeSize(Ljava/lang/String;)J
    .locals 4
    .parameter "packageName"

    .prologue
    .line 2509
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2510
    const-wide/16 v2, -0x1

    .line 2511
    .local v2, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2512
    if-eqz p1, :cond_0

    .line 2514
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 2515
    .local v1, pkgSt:Landroid/content/pm/PackageStats;
    iget-wide v2, v1, Landroid/content/pm/PackageStats;->codeSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2520
    .end local v1           #pkgSt:Landroid/content/pm/PackageStats;
    :cond_0
    :goto_0
    return-wide v2

    .line 2516
    :catch_0
    move-exception v0

    .line 2517
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationCpuUsage(Ljava/lang/String;)J
    .locals 12
    .parameter "packageName"

    .prologue
    const-wide/16 v6, -0x1

    .line 2626
    iget-object v8, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.sec.MDM_APP_MGMT"

    const-string v10, "Application Policy"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    const-wide/16 v4, 0x0

    .line 2629
    .local v4, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2630
    if-eqz p1, :cond_3

    .line 2632
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2653
    :cond_0
    :goto_0
    return-wide v6

    .line 2637
    :cond_1
    const/4 v8, -0x1

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p0, v8, v9}, Lcom/android/server/enterprise/ApplicationPolicy;->getTopNCPUUsageAppFromTopCommand(IZ)Ljava/util/List;

    move-result-object v1

    .line 2638
    .local v1, appInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    if-eqz v1, :cond_0

    .line 2641
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/AppInfo;

    .line 2643
    .local v0, appInfo:Landroid/app/enterprise/AppInfo;
    iget-object v8, v0, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2644
    long-to-double v8, v4

    iget-wide v10, v0, Landroid/app/enterprise/AppInfo;->mUsage:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-double/2addr v8, v10

    double-to-long v4, v8

    goto :goto_1

    .line 2648
    .end local v0           #appInfo:Landroid/app/enterprise/AppInfo;
    .end local v1           #appInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 2649
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2650
    const-wide/16 v4, -0x1

    .line 2653
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-ltz v8, :cond_0

    move-wide v6, v4

    goto :goto_0
.end method

.method public getApplicationDataSize(Ljava/lang/String;)J
    .locals 4
    .parameter "packageName"

    .prologue
    .line 2530
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2531
    const-wide/16 v2, -0x1

    .line 2532
    .local v2, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2533
    if-eqz p1, :cond_0

    .line 2535
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 2536
    .local v1, pkgSt:Landroid/content/pm/PackageStats;
    iget-wide v2, v1, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2541
    .end local v1           #pkgSt:Landroid/content/pm/PackageStats;
    :cond_0
    :goto_0
    return-wide v2

    .line 2537
    :catch_0
    move-exception v0

    .line 2538
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;)[B
    .locals 3
    .parameter "aPackageName"

    .prologue
    .line 2741
    const/4 v0, 0x0

    .line 2744
    .local v0, lImg:[B
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2746
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2747
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/ApplicationIconDb;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 2756
    :cond_0
    return-object v0
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "aPacakageName"

    .prologue
    .line 2247
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public getApplicationMemoryUsage(Ljava/lang/String;)J
    .locals 14
    .parameter "packageName"

    .prologue
    const-wide/16 v8, -0x1

    .line 2572
    iget-object v10, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.sec.MDM_APP_MGMT"

    const-string v12, "Application Policy"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    const-wide/16 v6, 0x0

    .line 2575
    .local v6, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2576
    if-eqz p1, :cond_3

    .line 2579
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2608
    :cond_0
    :goto_0
    return-wide v8

    .line 2585
    :cond_1
    iget-object v10, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2587
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 2589
    .local v3, lRapi:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2592
    .local v5, rapi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 2595
    .local v4, pkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2596
    iget v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-direct {p0, v10, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getDebugMemoryInfo(ILandroid/app/ActivityManager;)J

    move-result-wide v10

    iget-object v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v12, v12

    int-to-long v12, v12

    div-long/2addr v10, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v6, v10

    goto :goto_1

    .line 2603
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #lRapi:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v4           #pkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #rapi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v1

    .line 2604
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2605
    const-wide/16 v6, -0x1

    .line 2608
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_0

    move-wide v8, v6

    goto :goto_0
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "packageName"

    .prologue
    .line 2443
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2444
    const/4 v1, 0x0

    .line 2445
    .local v1, appName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2446
    if-eqz p1, :cond_0

    .line 2448
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2449
    .local v3, mAppInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    .line 2450
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2455
    .end local v3           #mAppInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 2451
    :catch_0
    move-exception v2

    .line 2452
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationNotificationMode(Z)I
    .locals 5
    .parameter "allAdmins"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x2

    .line 4385
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 4387
    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4395
    :cond_0
    :goto_0
    return v0

    .line 4389
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 4390
    goto :goto_0

    .line 4391
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 4392
    goto :goto_0
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .locals 8
    .parameter "pkg"

    .prologue
    .line 1908
    const/4 v0, 0x1

    .line 1909
    .local v0, enabled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1911
    if-eqz p1, :cond_1

    .line 1912
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "APPLICATION"

    const-string v6, "packageName"

    const-string v7, "controlState"

    invoke-virtual {v4, v5, v6, p1, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1915
    .local v3, states:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1916
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1917
    .local v2, state:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_0

    .line 1919
    const/4 v4, 0x2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1922
    const/4 v0, 0x0

    .line 1929
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #state:Ljava/lang/Integer;
    .end local v3           #states:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    return v0
.end method

.method public getApplicationStateList(Z)[Ljava/lang/String;
    .locals 6
    .parameter "state"

    .prologue
    .line 3832
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3834
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApplicationStateList:state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3837
    .local v2, lAppList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getInstalledApplicationsIDList()[Ljava/lang/String;

    move-result-object v0

    .line 3839
    .local v0, appInstallList:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3853
    .end local v0           #appInstallList:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 3843
    .restart local v0       #appInstallList:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 3844
    aget-object v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, p1, :cond_1

    .line 3845
    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3843
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3849
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 3850
    const/4 v0, 0x0

    goto :goto_0

    .line 3853
    :cond_3
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    goto :goto_0
.end method

.method public getApplicationTotalSize(Ljava/lang/String;)J
    .locals 8
    .parameter "packageName"

    .prologue
    .line 2488
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2489
    const-wide/16 v2, -0x1

    .line 2490
    .local v2, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2491
    if-eqz p1, :cond_0

    .line 2493
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 2494
    .local v1, pkgSt:Landroid/content/pm/PackageStats;
    iget-wide v4, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v6, v1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v4, v6

    iget-wide v6, v1, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long v2, v4, v6

    .line 2499
    .end local v1           #pkgSt:Landroid/content/pm/PackageStats;
    :cond_0
    :goto_0
    return-wide v2

    .line 2495
    :catch_0
    move-exception v0

    .line 2496
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .locals 9
    .parameter "packageName"

    .prologue
    .line 2354
    monitor-enter p0

    const/4 v4, 0x1

    .line 2356
    .local v4, uninstall:Z
    :try_start_0
    const-string v6, "ApplicationPolicy"

    const-string v7, "getApplicationUninstallationEnabled"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v5, v4

    .line 2402
    .end local v4           #uninstall:Z
    .local v5, uninstall:I
    :goto_0
    monitor-exit p0

    return v5

    .line 2362
    .end local v5           #uninstall:I
    .restart local v4       #uninstall:Z
    :cond_1
    :try_start_1
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2364
    .local v3, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2365
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2369
    .local v2, uid:Ljava/lang/Integer;
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v7, "UninstallationBlacklist"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2372
    .local v1, strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2373
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2374
    const/4 v4, 0x0

    .line 2380
    :cond_4
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v7, "UninstallationWhitelist"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2382
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2383
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2384
    const/4 v4, 0x1

    .line 2388
    :cond_6
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isApplicationUninstallationEnabled :  Checking PKG WL - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2393
    if-nez v4, :cond_2

    move v5, v4

    .line 2394
    .restart local v5       #uninstall:I
    goto/16 :goto_0

    .line 2396
    .end local v1           #strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #uid:Ljava/lang/Integer;
    .end local v3           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v5           #uninstall:I
    :catch_0
    move-exception v0

    .line 2397
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2400
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getApplicationUninstallationEnabled :  enabled "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v5, v4

    .line 2402
    .restart local v5       #uninstall:I
    goto/16 :goto_0

    .line 2354
    .end local v5           #uninstall:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized getApplicationUninstallationMode()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1824
    monitor-enter p0

    :try_start_0
    const-string v3, "getApplicationUninstallationMode"

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 1825
    const/4 v2, 0x1

    .line 1826
    .local v2, uninstall:Z
    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 1843
    :goto_0
    monitor-exit p0

    return v3

    .line 1829
    :cond_1
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1831
    .local v1, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1832
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1835
    .local v0, uid:Ljava/lang/Integer;
    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "UninstallationBlacklist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v5, ".*"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1836
    const/4 v2, 0x0

    .line 1841
    .end local v0           #uid:Ljava/lang/Integer;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppInstallationMode :  mode"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1843
    if-eqz v2, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 1824
    .end local v1           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #uninstall:Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2465
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2466
    const/4 v0, 0x0

    .line 2467
    .local v0, appName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2468
    if-eqz p1, :cond_0

    .line 2470
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2471
    .local v2, mpkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 2472
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2477
    .end local v2           #mpkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 2473
    :catch_0
    move-exception v1

    .line 2474
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .locals 2
    .parameter "pkg"

    .prologue
    .line 2036
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2037
    .local v0, callingUid:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationsList(Ljava/lang/String;I)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v1

    return-object v1
.end method

.method public getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 2

    .prologue
    .line 3544
    new-instance v0, Lcom/android/server/enterprise/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/ApplicationUsage;->getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v0

    return-object v0
.end method

.method public getBackupData()Ljava/util/Map;
    .locals 2

    .prologue
    .line 4684
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 4685
    const/4 v0, 0x0

    .line 4687
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreData:Ljava/util/Map;

    goto :goto_0
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2412
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2413
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getInstalledApplicationsIDListExtended(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInstalledApplicationsIDListExtended(Z)[Ljava/lang/String;
    .locals 9
    .parameter "includeUninstalledDataPresent"

    .prologue
    .line 2417
    const/4 v6, 0x0

    .line 2419
    .local v6, packageNameList:[Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz p1, :cond_0

    const/16 v7, 0x2000

    :goto_0
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 2422
    .local v0, appinfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 2423
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 2424
    const/4 v4, 0x0

    .line 2425
    .local v4, index:I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    move v5, v4

    .end local v4           #index:I
    .local v5, index:I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 2426
    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_1

    .line 2419
    .end local v0           #appinfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #index:I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 2429
    :catch_0
    move-exception v2

    .line 2430
    .local v2, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 2431
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2433
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    return-object v6
.end method

.method public getInstalledManagedApplicationsList()[Ljava/lang/String;
    .locals 15

    .prologue
    .line 1974
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v2

    .line 1975
    .local v2, callingUid:I
    const/4 v0, 0x0

    .line 1977
    .local v0, appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 1978
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x2

    :try_start_0
    new-array v3, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "packageName"

    aput-object v14, v3, v13

    const/4 v13, 0x1

    const-string v14, "managedApp"

    aput-object v14, v3, v13

    .line 1981
    .local v3, columns:[Ljava/lang/String;
    iget-object v13, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "APPLICATION"

    invoke-virtual {v13, v14, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1983
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_4

    .line 1984
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1985
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1989
    const-string v13, "managedApp"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1991
    .local v12, state:I
    const/4 v13, 0x1

    and-int/lit8 v14, v12, 0x1

    if-ne v13, v14, :cond_2

    const/4 v9, 0x1

    .line 1992
    .local v9, isEnterpriseApp:Z
    :goto_1
    const/4 v13, 0x1

    if-ne v9, v13, :cond_0

    .line 1993
    const-string v13, "packageName"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2016
    .end local v9           #isEnterpriseApp:Z
    .end local v12           #state:I
    :catch_0
    move-exception v7

    move-object v10, v11

    .line 2017
    .end local v3           #columns:[Ljava/lang/String;
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v7, e:Ljava/lang/Exception;
    .restart local v10       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 2019
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_8

    .line 2020
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    check-cast v13, [Ljava/lang/String;

    .line 2022
    :goto_4
    return-object v13

    .line 1991
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #columns:[Ljava/lang/String;
    .restart local v4       #cursor:Landroid/database/Cursor;
    .restart local v11       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12       #state:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1997
    .end local v12           #state:I
    :cond_3
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v10, v11

    .line 1999
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    if-eqz v10, :cond_1

    :try_start_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_1

    .line 2000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2001
    .end local v0           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    :try_start_4
    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/ApplicationPolicy;->getInstalledApplicationsIDListExtended(Z)[Ljava/lang/String;

    move-result-object v5

    .line 2002
    .local v5, deviceApps:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2003
    .local v6, deviceInstalledAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_5

    array-length v13, v5

    if-lez v13, :cond_5

    .line 2004
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 2006
    :cond_5
    const/4 v8, 0x0

    .local v8, i:I
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_9

    .line 2007
    if-eqz v6, :cond_7

    .line 2008
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2009
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2006
    :cond_6
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2012
    :cond_7
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 2016
    .end local v5           #deviceApps:[Ljava/lang/String;
    .end local v6           #deviceInstalledAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #i:I
    :catch_1
    move-exception v7

    move-object v0, v1

    .end local v1           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0       #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    .line 2022
    .end local v3           #columns:[Ljava/lang/String;
    .end local v4           #cursor:Landroid/database/Cursor;
    :cond_8
    const/4 v13, 0x0

    goto :goto_4

    .line 2016
    :catch_2
    move-exception v7

    goto :goto_2

    .end local v0           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #columns:[Ljava/lang/String;
    .restart local v4       #cursor:Landroid/database/Cursor;
    .restart local v5       #deviceApps:[Ljava/lang/String;
    .restart local v6       #deviceInstalledAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #i:I
    :cond_9
    move-object v0, v1

    .end local v1           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0       #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3
.end method

.method public getNetworkStats()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 678
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->getAppLevelDataUsage()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkStats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getNetworkStats()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromForceStopBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4024
    const-string v0, "PackageNameStopBlacklist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromForceStopWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4041
    const-string v0, "PackageNameStopWhitelist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromWidgetBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4115
    const-string v0, "PackageNameWidgetBlacklist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromWidgetWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4088
    const-string v0, "PackageNameWidgetWhitelist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopNCPUUsageApp(I)Ljava/util/List;
    .locals 23
    .parameter "aAppCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3484
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3485
    const-string v19, "ApplicationPolicy"

    const-string v20, "getTopNCPUUsageApp start"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readProcInfo()Ljava/util/Map;

    move-result-object v17

    .line 3488
    .local v17, lPrevState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readCpuTime()J

    move-result-wide v15

    .line 3493
    .local v15, lPrevCpuTime:J
    const-wide/16 v19, 0x3e8

    :try_start_0
    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3499
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readProcInfo()Ljava/util/Map;

    move-result-object v11

    .line 3500
    .local v11, lCurrent:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readCpuTime()J

    move-result-wide v8

    .line 3502
    .local v8, lCPUTime:J
    sub-long v12, v8, v15

    .line 3504
    .local v12, lDeltaTime:J
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 3507
    .local v14, lPids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 3509
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 3511
    .local v18, lResults:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 3512
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3513
    .local v4, index:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->delta(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;J)Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3494
    .end local v4           #index:I
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v8           #lCPUTime:J
    .end local v11           #lCurrent:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    .end local v12           #lDeltaTime:J
    .end local v14           #lPids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v18           #lResults:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    :catch_0
    move-exception v2

    .line 3495
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 3515
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v5       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v8       #lCPUTime:J
    .restart local v11       #lCurrent:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    .restart local v12       #lDeltaTime:J
    .restart local v14       #lPids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v18       #lResults:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    :cond_0
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3518
    if-lez p1, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    .line 3519
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result p1

    .line 3523
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3524
    .local v7, lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    move/from16 v0, p1

    if-ge v3, v0, :cond_3

    .line 3525
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    .line 3526
    .local v10, lCpuInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    new-instance v6, Landroid/app/enterprise/AppInfo;

    invoke-direct {v6}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 3527
    .local v6, lAppInfo:Landroid/app/enterprise/AppInfo;
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1300(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v6, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 3529
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v10}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1400(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4024

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    iput-wide v0, v6, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 3530
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3524
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3533
    .end local v6           #lAppInfo:Landroid/app/enterprise/AppInfo;
    .end local v10           #lCpuInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    :cond_3
    const-string v19, "ApplicationPolicy"

    const-string v20, "getTopNCPUUsageApp end"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3534
    return-object v7
.end method

.method public getTopNCPUUsageAppFromTopCommand(IZ)Ljava/util/List;
    .locals 5
    .parameter "aAppCount"
    .parameter "bShowAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3353
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_APP_MGMT"

    const-string v4, "ApplicationPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3355
    const-string v2, "ApplicationPolicy"

    const-string v3, "getTopNCPUUsageAppFromTopCommand start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    sget-object v2, Lcom/android/server/enterprise/DeviceShell;->BASH_COMMANDS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/android/server/enterprise/DeviceShell;->setShell(Ljava/lang/String;)V

    .line 3358
    const-string v2, "top -n 1"

    invoke-static {v2}, Lcom/android/server/enterprise/DeviceShell;->getProcessOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3360
    .local v1, lOutput:Ljava/lang/String;
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->parseTopCommand(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 3361
    .local v0, lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    const-string v3, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopNCPUUsageAppFromTopCommand size :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    return-object v0

    .line 3361
    :cond_0
    const-string v2, "null"

    goto :goto_0
.end method

.method public getTopNDataUsageApp(I)Ljava/util/List;
    .locals 7
    .parameter "aAppCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3271
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3272
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNDataUsageApp start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readAppSizeInfo()Ljava/util/List;

    move-result-object v2

    .line 3275
    .local v2, lResults:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3276
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3279
    .local v4, lStorageInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    if-lez p1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, p1, :cond_1

    .line 3280
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    .line 3283
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 3284
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    .line 3285
    .local v1, lDataInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 3286
    .local v3, lStorageInfo:Landroid/app/enterprise/AppInfo;
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1300(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 3287
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1400(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v5

    long-to-double v5, v5

    iput-wide v5, v3, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 3288
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3292
    .end local v1           #lDataInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    .end local v3           #lStorageInfo:Landroid/app/enterprise/AppInfo;
    :cond_2
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNDataUsageApp end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    return-object v4
.end method

.method public getTopNMemoryUsageApp(IZ)Ljava/util/List;
    .locals 9
    .parameter "aAppCount"
    .parameter "bShowAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3183
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3184
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNMemoryUsageApp start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->readAppMemoryInfo(Z)Ljava/util/List;

    move-result-object v2

    .line 3187
    .local v2, lResults:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3188
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3190
    .local v4, lStorageInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    if-lez p1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, p1, :cond_1

    .line 3191
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    .line 3194
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 3195
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    .line 3196
    .local v1, lMemInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 3197
    .local v3, lStorageInfo:Landroid/app/enterprise/AppInfo;
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1300(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 3198
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1400(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v5

    long-to-double v5, v5

    iput-wide v5, v3, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 3199
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3200
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1300(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " memory usage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1400(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3202
    .end local v1           #lMemInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    .end local v3           #lStorageInfo:Landroid/app/enterprise/AppInfo;
    :cond_2
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNMemoryUsageApp end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    return-object v4
.end method

.method public installApplication(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "apkFilePath"
    .parameter "installOnSDCard"

    .prologue
    .line 1354
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1355
    .local v0, callingUid:I
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->_installApplication(ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public installApplicationBySystem(ILjava/lang/String;Z)Z
    .locals 3
    .parameter "uid"
    .parameter "apkFilePath"
    .parameter "installOnSDCard"

    .prologue
    .line 1371
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1372
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1373
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1375
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->_installApplication(ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "packageName"
    .parameter "showMsg"

    .prologue
    .line 4056
    const-string v1, "PackageNameStopBlacklist"

    const-string v2, "PackageNameStopWhitelist"

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4057
    const-string v1, "ApplicationPolicy"

    const-string v2, "isApplicationForceStopDisabled: matches"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4058
    if-eqz p2, :cond_0

    .line 4059
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4060
    .local v0, i:Landroid/content/Intent;
    const-string v1, "message"

    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v3, 0x10401f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4062
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4064
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    .line 4066
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 10
    .parameter "packageName"
    .parameter "packageUri"

    .prologue
    .line 2267
    monitor-enter p0

    const/4 v2, 0x1

    .line 2269
    .local v2, install:Z
    :try_start_0
    const-string v7, "ApplicationPolicy"

    const-string v8, "isApplicationInstallationEnabled"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v3, v2

    .line 2341
    .end local v2           #install:Z
    .local v3, install:I
    :goto_0
    monitor-exit p0

    return v3

    .line 2274
    .end local v3           #install:I
    .restart local v2       #install:Z
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageInfo(Ljava/lang/String;Landroid/net/Uri;)Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2277
    .local v0, appPkgInfo:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;
    :try_start_2
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2279
    .local v6, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2280
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2287
    .local v5, uid:Ljava/lang/Integer;
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "PackageNameInstallationBlacklist"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2290
    .local v4, strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2291
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2292
    const/4 v2, 0x0

    .line 2296
    :cond_4
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isApplicationInstallationEnabled :  Checking PKG BL - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "PermissionInstallationBlacklist"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2301
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2302
    iget-object v7, v0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2303
    const/4 v2, 0x0

    .line 2307
    :cond_6
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isApplicationInstallationEnabled :  Checking PERM BL - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "SignatureInstallationBlacklist"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2311
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2312
    iget-object v7, v0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2313
    const/4 v2, 0x0

    .line 2317
    :cond_8
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isApplicationInstallationEnabled :  Checking SIG BL - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "PackageNameInstallationWhitelist"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2323
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2324
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2325
    const/4 v2, 0x1

    .line 2329
    :cond_a
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isApplicationInstallationEnabled :  Checking PKG WL - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2332
    if-nez v2, :cond_2

    move v3, v2

    .line 2333
    .restart local v3       #install:I
    goto/16 :goto_0

    .line 2335
    .end local v3           #install:I
    .end local v4           #strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #uid:Ljava/lang/Integer;
    .end local v6           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 2336
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2337
    const-string v7, "ApplicationPolicy"

    const-string v8, "Could not retrieve permissions & signature for package"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    .end local v1           #e:Ljava/lang/Exception;
    :cond_b
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v2

    .line 2341
    .restart local v3       #install:I
    goto/16 :goto_0

    .line 2267
    .end local v0           #appPkgInfo:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;
    .end local v3           #install:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .locals 7
    .parameter "pkgName"

    .prologue
    .line 1289
    const/4 v4, 0x0

    .line 1290
    .local v4, isInstalled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1291
    if-eqz p1, :cond_1

    .line 1293
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 1294
    .local v0, appinfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1296
    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 1297
    const/4 v4, 0x1

    .line 1309
    .end local v0           #appinfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v4

    .line 1302
    :catch_0
    move-exception v2

    .line 1303
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 1304
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .locals 8
    .parameter "pkgName"

    .prologue
    .line 1319
    const/4 v3, 0x0

    .line 1320
    .local v3, isInstalled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1321
    if-eqz p1, :cond_1

    .line 1323
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1325
    .local v0, amgr:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 1327
    .local v4, runninAppinfList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1328
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1329
    .local v5, runningApplicationInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 1330
    const/4 v3, 0x1

    .line 1340
    .end local v0           #amgr:Landroid/app/ActivityManager;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #runninAppinfList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5           #runningApplicationInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    :goto_0
    return v3

    .line 1335
    :catch_0
    move-exception v1

    .line 1336
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1337
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1939
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentDisabled start :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    const/4 v1, 0x1

    .line 1942
    .local v1, isIntentEnabled:Z
    if-nez p1, :cond_0

    .line 1963
    :goto_0
    return v3

    .line 1947
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x200

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1949
    .local v2, lResolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentDisabled resolve info :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    if-eqz v2, :cond_2

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_2

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1955
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    move v1, v4

    .line 1962
    .end local v2           #lResolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    :goto_1
    const-string v6, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentDisabled return :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_4

    move v5, v4

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    if-nez v1, :cond_5

    :goto_3
    move v3, v4

    goto :goto_0

    .restart local v2       #lResolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    move v1, v3

    .line 1955
    goto :goto_1

    .line 1958
    .end local v2           #lResolveInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 1959
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    move v5, v3

    .line 1962
    goto :goto_2

    :cond_5
    move v4, v3

    .line 1963
    goto :goto_3
.end method

.method isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;
    .locals 7
    .parameter "aPkgName"
    .parameter "aManageAppInfoArray"
    .parameter "aCallingUid"

    .prologue
    const/4 v4, 0x0

    .line 2147
    if-nez p2, :cond_0

    .line 2148
    invoke-direct {p0, v4, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationsList(Ljava/lang/String;I)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object p2

    .line 2151
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2152
    move-object v0, p2

    .local v0, arr$:[Landroid/app/enterprise/ManagedAppInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 2153
    .local v2, lManagedAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    iget-object v5, v2, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2154
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsManagedAppInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    .end local v0           #arr$:[Landroid/app/enterprise/ManagedAppInfo;
    .end local v1           #i$:I
    .end local v2           #lManagedAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    .end local v3           #len$:I
    :goto_1
    return-object v2

    .line 2152
    .restart local v0       #arr$:[Landroid/app/enterprise/ManagedAppInfo;
    .restart local v1       #i$:I
    .restart local v2       #lManagedAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    .restart local v3       #len$:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #arr$:[Landroid/app/enterprise/ManagedAppInfo;
    .end local v1           #i$:I
    .end local v2           #lManagedAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    .end local v3           #len$:I
    :cond_2
    move-object v2, v4

    .line 2159
    goto :goto_1
.end method

.method public isStatusBarNotificationAllowed(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 4403
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStatusBarNotificationAllowed: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    const-string v0, "PackageNameNotificationBlacklist"

    const-string v1, "PackageNameNotificationWhitelist"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWidgetAllowed(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 4132
    const-string v0, "PackageNameWidgetBlacklist"

    const-string v1, "PackageNameWidgetWhitelist"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 298
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    .line 310
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus()V

    .line 312
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 317
    return-void
.end method

.method public removeAppNotificationBlackList(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4323
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationBlacklist"

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeAppNotificationWhiteList(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4346
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationWhitelist"

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeAppPackageNameFromBlackList(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 2962
    const-string v2, "ApplicationPolicy"

    const-string v3, "removeAppPackageNameFromBlackList "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2964
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2965
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2968
    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_0
.end method

.method public removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 3013
    const-string v2, "ApplicationPolicy"

    const-string v3, "removeAppPackageNameFromWhiteList"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 3015
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3016
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3019
    :goto_0
    return v1

    :cond_0
    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_0
.end method

.method public removeAppPermissionFromBlackList(Ljava/lang/String;)Z
    .locals 2
    .parameter "appPermission"

    .prologue
    .line 2784
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2785
    .local v0, callingUid:I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPermissionControlState(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public removeAppSignatureFromBlackList(Ljava/lang/String;)Z
    .locals 2
    .parameter "appSignature"

    .prologue
    .line 2854
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2855
    .local v0, callingUid:I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public removeManagedApplications(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1137
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 1138
    const/4 v3, 0x0

    .line 1139
    .local v3, removedAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1140
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #removedAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    .restart local v3       #removedAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1143
    .local v2, pkg:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1144
    if-eqz v2, :cond_0

    .line 1145
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/enterprise/ApplicationPolicy;->uninstallApplication(Ljava/lang/String;Z)Z

    .line 1147
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1149
    :catch_0
    move-exception v0

    .line 1150
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1154
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pkg:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public bridge synthetic removeManagedApplications(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->removeManagedApplications(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public removePackagesFromForceStopBlackList(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4031
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopBlacklist"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromForceStopWhiteList(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4048
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopWhitelist"

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromWidgetBlackList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4122
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetBlacklist"

    const/16 v2, 0x40

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 4124
    .local v0, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus()V

    .line 4125
    return v0
.end method

.method public removePackagesFromWidgetWhiteList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4095
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetWhitelist"

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 4097
    .local v0, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus()V

    .line 4098
    return v0
.end method

.method public restoreApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .locals 25
    .parameter "pkgName"
    .parameter "data"

    .prologue
    .line 4475
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v19

    .line 4476
    .local v19, uid:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4477
    .local v20, validPkgName:Ljava/lang/String;
    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v21

    if-eqz v21, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    if-nez v21, :cond_1

    .line 4479
    :cond_0
    const/16 v21, -0x3

    .line 4553
    :goto_0
    return v21

    .line 4480
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 4482
    :cond_2
    const/16 v21, -0x4

    goto :goto_0

    .line 4483
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->getBackupAgentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_4

    .line 4484
    const/16 v21, -0x2

    goto :goto_0

    .line 4487
    :cond_4
    :try_start_0
    new-instance v18, Ljava/lang/SecurityManager;

    invoke-direct/range {v18 .. v18}, Ljava/lang/SecurityManager;-><init>()V

    .line 4488
    .local v18, sm:Ljava/lang/SecurityManager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 4496
    .local v3, adminPkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 4498
    const/16 v21, 0x1

    :try_start_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    .line 4499
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    .line 4500
    const/16 v21, -0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreReturnCode:I

    .line 4501
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreData:Ljava/util/Map;

    .line 4503
    new-instance v11, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 4504
    .local v11, input:Landroid/app/backup/BackupDataInput;
    :goto_1
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 4505
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v14

    .line 4506
    .local v14, key:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v7

    .line 4507
    .local v7, dataSize:I
    new-array v6, v7, [B

    .line 4508
    .local v6, dataBuf:[B
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v6, v0, v7}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 4509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreData:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 4543
    .end local v6           #dataBuf:[B
    .end local v7           #dataSize:I
    .end local v11           #input:Landroid/app/backup/BackupDataInput;
    .end local v14           #key:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 4544
    .local v8, e:Ljava/lang/InterruptedException;
    const/16 v21, -0x3

    .line 4548
    const/16 v23, 0x0

    :try_start_2
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    .line 4550
    new-instance v12, Landroid/content/Intent;

    const-string v23, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4551
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4544
    monitor-exit v22

    goto/16 :goto_0

    .line 4554
    .end local v8           #e:Ljava/lang/InterruptedException;
    .end local v12           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v21

    .line 4489
    .end local v3           #adminPkgName:Ljava/lang/String;
    .end local v18           #sm:Ljava/lang/SecurityManager;
    :catch_1
    move-exception v9

    .line 4490
    .local v9, ex:Ljava/lang/SecurityException;
    const-string v21, "ApplicationPolicy"

    const-string v22, "can\'t read from file descriptor"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4491
    const/16 v21, -0x3

    goto/16 :goto_0

    .line 4512
    .end local v9           #ex:Ljava/lang/SecurityException;
    .restart local v3       #adminPkgName:Ljava/lang/String;
    .restart local v11       #input:Landroid/app/backup/BackupDataInput;
    .restart local v18       #sm:Ljava/lang/SecurityManager;
    :cond_5
    :try_start_3
    new-instance v10, Landroid/content/Intent;

    const-string v21, "edm.intent.action.do.restore"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4513
    .local v10, i:Landroid/content/Intent;
    const-string v21, "pkgName"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4514
    const-string v21, "adminPkgName"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreData:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v23, "packageAppVersionCode"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    move-object/from16 v0, v21

    check-cast v0, [B

    move-object v5, v0

    .line 4516
    .local v5, byteAppVersionCode:[B
    if-nez v5, :cond_6

    .line 4517
    const-string v21, "ApplicationPolicy"

    const-string v23, "byteAppVersionCode null"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 4518
    const/16 v21, -0x3

    .line 4548
    const/16 v23, 0x0

    :try_start_4
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    .line 4550
    new-instance v12, Landroid/content/Intent;

    const-string v23, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4551
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4518
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 4520
    .end local v12           #intent:Landroid/content/Intent;
    :cond_6
    const/16 v21, 0x4

    :try_start_5
    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    .line 4521
    .local v4, appVersionCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreData:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v23, "packageAppVersionCode"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4522
    const-string v21, "packageAppVersionCode"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4523
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4525
    .local v16, sigList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/Signature;>;"
    const/4 v13, 0x0

    .line 4526
    .local v13, k:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreData:Ljava/util/Map;

    move-object/from16 v21, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "packageAppSignature"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    move-object/from16 v0, v21

    check-cast v0, [B

    move-object v15, v0

    .line 4527
    .local v15, sigBytes:[B
    if-nez v15, :cond_7

    .line 4534
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v21

    if-eqz v21, :cond_8

    .line 4535
    const/16 v21, -0x3

    .line 4548
    const/16 v23, 0x0

    :try_start_6
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    .line 4550
    new-instance v12, Landroid/content/Intent;

    const-string v23, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4551
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4535
    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 4530
    .end local v12           #intent:Landroid/content/Intent;
    :cond_7
    :try_start_7
    new-instance v21, Landroid/content/pm/Signature;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Landroid/content/pm/Signature;-><init>([B)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreData:Ljava/util/Map;

    move-object/from16 v21, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "packageAppSignature"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4525
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 4536
    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    .line 4537
    .local v17, signatures:[Landroid/content/pm/Signature;
    const/4 v13, 0x0

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_9

    .line 4538
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/Signature;

    aput-object v21, v17, v13

    .line 4537
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 4540
    :cond_9
    const-string v21, "packageAppSignature"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    const-wide/16 v23, 0x7530

    move-object/from16 v0, v21

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 4548
    const/16 v21, 0x0

    :try_start_8
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    .line 4550
    new-instance v12, Landroid/content/Intent;

    const-string v21, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4551
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4553
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreReturnCode:I

    move/from16 v21, v0

    monitor-exit v22

    goto/16 :goto_0

    .line 4545
    .end local v4           #appVersionCode:I
    .end local v5           #byteAppVersionCode:[B
    .end local v10           #i:Landroid/content/Intent;
    .end local v11           #input:Landroid/app/backup/BackupDataInput;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v13           #k:I
    .end local v15           #sigBytes:[B
    .end local v16           #sigList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/Signature;>;"
    .end local v17           #signatures:[Landroid/content/pm/Signature;
    :catch_2
    move-exception v8

    .line 4546
    .local v8, e:Ljava/io/IOException;
    const/16 v21, -0x3

    .line 4548
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    .line 4550
    new-instance v12, Landroid/content/Intent;

    const-string v23, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4551
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4546
    monitor-exit v22

    goto/16 :goto_0

    .line 4548
    .end local v8           #e:Ljava/io/IOException;
    .end local v12           #intent:Landroid/content/Intent;
    :catchall_1
    move-exception v21

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    .line 4550
    new-instance v12, Landroid/content/Intent;

    const-string v23, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4551
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4548
    throw v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public setAppInstallToSdCard(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 3071
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 3073
    .local v0, callingUid:I
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3074
    const-string v3, "setAppInstallToSdCard : External Storage Emulated"

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 3082
    :goto_0
    return v2

    .line 3077
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "APPLICATION_GENERAL"

    const-string v5, "installToSdCard"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 3079
    :catch_0
    move-exception v1

    .line 3080
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppInstallationMode(I)Z
    .locals 3
    .parameter "aInstallationMode"

    .prologue
    .line 1726
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v1

    .line 1727
    .local v1, lCallingUid:I
    const/4 v0, 0x0

    .line 1729
    .local v0, bInstallationModeSet:Z
    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 1731
    const-string v2, ".*"

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->removeAppPackageNameFromBlackList(Ljava/lang/String;)Z

    move-result v0

    .line 1739
    :cond_0
    :goto_0
    return v0

    .line 1732
    :cond_1
    if-nez p1, :cond_0

    .line 1734
    const-string v2, ".*"

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->addAppPackageNameToBlackList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "disableAppInstallation"

    .prologue
    .line 1666
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1667
    .local v0, callingUid:I
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    .line 1668
    return-void
.end method

.method public setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V
    .locals 3
    .parameter "adminUid"
    .parameter "packageName"
    .parameter "disableAppInstallation"

    .prologue
    .line 1682
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1683
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1684
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1686
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    .line 1687
    return-void
.end method

.method public setApplicationNotificationMode(I)Z
    .locals 5
    .parameter "mode"

    .prologue
    .line 4358
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 4360
    .local v0, callingUid:I
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplicationNotificationMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4362
    packed-switch p1, :pswitch_data_0

    .line 4368
    const/4 v1, 0x0

    .line 4381
    :goto_0
    return v1

    .line 4371
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "APPLICATION_MISC"

    const-string v4, "appNotificationMode"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 4376
    .local v1, status:Z
    if-eqz v1, :cond_0

    .line 4377
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4380
    :cond_0
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplicationNotificationMode: status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4362
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setApplicationState(Ljava/lang/String;Z)Z
    .locals 13
    .parameter "packageName"
    .parameter "enableApp"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1593
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1594
    .local v0, callingUid:I
    const/4 v4, 0x0

    .line 1595
    .local v4, success:Z
    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setApplicationState :  pkgName :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " callingUid :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " enableApp :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1598
    if-eqz p1, :cond_3

    .line 1600
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1633
    :goto_0
    return v7

    .line 1603
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isActiveAdmin(Ljava/lang/String;)Z

    move-result v10

    if-ne v10, v8, :cond_1

    .line 1604
    const-string v7, "ApplicationPolicy"

    const-string v8, "setApplicationState() : can not disable Admin app"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v4

    .line 1605
    goto :goto_0

    .line 1608
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1611
    .local v5, token:J
    const/4 v10, 0x2

    if-nez p2, :cond_2

    move v7, v8

    :cond_2
    :try_start_0
    invoke-direct {p0, p1, v0, v10, v7}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 1614
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 1615
    .local v3, state:Z
    const-string v7, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "state : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    iget-object v10, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v3, :cond_4

    move v7, v8

    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v10, p1, v7, v8}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1619
    const/4 v4, 0x1

    .line 1620
    new-instance v2, Landroid/content/Intent;

    if-eqz v3, :cond_5

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    :goto_2
    const-string v8, "package"

    const/4 v9, 0x0

    invoke-static {v8, p1, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1623
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x800

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1624
    const-string v7, "android.intent.extra.REPLACING"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1625
    const-string v7, "application_state_disable_enable"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1626
    iget-object v7, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1630
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #state:Z
    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v5           #token:J
    :cond_3
    move v7, v4

    .line 1633
    goto :goto_0

    .restart local v3       #state:Z
    .restart local v5       #token:J
    :cond_4
    move v7, v9

    .line 1616
    goto :goto_1

    .line 1620
    :cond_5
    :try_start_1
    const-string v7, "android.intent.action.PACKAGE_REMOVED"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1627
    .end local v3           #state:Z
    :catch_0
    move-exception v1

    .line 1628
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1630
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 7
    .parameter "pkgList"
    .parameter "operation"

    .prologue
    .line 3858
    const/4 v0, 0x0

    .line 3859
    .local v0, appStateLst:[Ljava/lang/String;
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationStateList:operation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3861
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3863
    .local v2, lAppList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    array-length v4, p1

    if-gez v4, :cond_1

    :cond_0
    move-object v4, v0

    .line 3877
    :goto_0
    return-object v4

    .line 3866
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 3867
    aget-object v4, p1, v1

    invoke-virtual {p0, v4, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    move-result v3

    .line 3868
    .local v3, ret:Z
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 3869
    aget-object v4, p1, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3870
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationStateList:pkgList[i]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3866
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3874
    .end local v3           #ret:Z
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_4

    .line 3875
    const/4 v4, 0x0

    goto :goto_0

    .line 3877
    :cond_4
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "disableAppUninstallation"

    .prologue
    .line 1857
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1858
    .local v0, callingUid:I
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    .line 1859
    return-void
.end method

.method public setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V
    .locals 3
    .parameter "adminUid"
    .parameter "packageName"
    .parameter "disableAppUninstallation"

    .prologue
    .line 1873
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1874
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1875
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1877
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    .line 1878
    return-void
.end method

.method public setApplicationUninstallationMode(I)Z
    .locals 5
    .parameter "uninstallationMode"

    .prologue
    const/4 v4, 0x1

    .line 1797
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1798
    .local v0, callingUid:I
    const/4 v1, 0x0

    .line 1800
    .local v1, uninstallationModeSet:Z
    if-ne v4, p1, :cond_1

    .line 1802
    const-string v2, ".*"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v4, v3}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    .line 1810
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppInstallationMode : returns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 1812
    return v1

    .line 1804
    :cond_1
    if-nez p1, :cond_0

    .line 1806
    const-string v2, ".*"

    invoke-direct {p0, v2, v0, v4, v4}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_0
.end method

.method public setAsManagedApp(Ljava/lang/String;)Z
    .locals 8
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2915
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAsManagedApp():pkgName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2918
    .local v0, callingUid:I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2933
    :goto_0
    return v3

    .line 2922
    :cond_0
    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, v0, p1, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 2924
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v2

    .line 2925
    .local v2, mAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    if-eqz v2, :cond_1

    iget v5, v2, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    if-nez v5, :cond_1

    .line 2926
    const-string v5, "applicationInstallationCount"

    invoke-direct {p0, v0, p1, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    .line 2927
    const-string v5, "ApplicationPolicy"

    const-string v6, "App install count incremented"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v3, v4

    .line 2929
    goto :goto_0

    .line 2931
    .end local v2           #mAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    :catch_0
    move-exception v1

    .line 2932
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setBackupData(Ljava/util/Map;)Z
    .locals 2
    .parameter "data"

    .prologue
    .line 4674
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 4675
    const/4 v0, 0x0

    .line 4680
    :goto_0
    return v0

    .line 4677
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4678
    :try_start_0
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupData:Ljava/util/Map;

    .line 4679
    monitor-exit v1

    .line 4680
    const/4 v0, 0x1

    goto :goto_0

    .line 4679
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "pkgName"
    .parameter "className"

    .prologue
    .line 3800
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3801
    const/4 v3, 0x0

    .line 3802
    .local v3, result:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3803
    invoke-static {p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3804
    if-eqz p1, :cond_2

    .line 3805
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3806
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3809
    .local v4, token:J
    if-nez p2, :cond_0

    .line 3810
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3811
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 3812
    const/4 v6, 0x0

    .line 3824
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3828
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #token:J
    :goto_0
    return v6

    .line 3814
    .restart local v4       #token:J
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3815
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3816
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3818
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_1
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3819
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3820
    const/4 v3, 0x1

    .line 3824
    .end local v2           #intent:Landroid/content/Intent;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v4           #token:J
    :cond_2
    move v6, v3

    .line 3828
    goto :goto_0

    .line 3821
    .restart local v4       #token:J
    :catch_0
    move-exception v1

    .line 3822
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not start app"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3824
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public stopApp(Ljava/lang/String;)Z
    .locals 8
    .parameter "pkgName"

    .prologue
    .line 3770
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3771
    const/4 v2, 0x0

    .line 3772
    .local v2, result:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3773
    if-eqz p1, :cond_0

    .line 3774
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3777
    .local v3, token:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3779
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3780
    const/4 v2, 0x1

    .line 3784
    .end local v0           #am:Landroid/app/ActivityManager;
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3788
    .end local v3           #token:J
    :cond_0
    return v2

    .line 3781
    .restart local v3       #token:J
    :catch_0
    move-exception v1

    .line 3782
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not stop app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3784
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    .line 303
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 305
    return-void
.end method

.method public uninstallApplication(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "packageName"
    .parameter "keepDataAndCache"

    .prologue
    .line 1498
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1499
    .local v0, callingUid:I
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->_uninstallApplication(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public uninstallApplicationBySystem(ILjava/lang/String;Z)Z
    .locals 3
    .parameter "uid"
    .parameter "packageName"
    .parameter "keepDataAndCache"

    .prologue
    .line 1514
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1515
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1516
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1518
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->_uninstallApplication(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public updateDataUsageDb()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateNetworkUsageDb()V

    .line 683
    return-void
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 1164
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 1165
    const/4 v1, 0x0

    .line 1166
    .local v1, success:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1167
    if-eqz p1, :cond_1

    .line 1168
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1170
    .local v2, token:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->clearUserData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1171
    const/4 v1, 0x1

    .line 1172
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->clearApplicationCacheFiles(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1181
    .end local v2           #token:J
    :cond_1
    return v1

    .line 1174
    .restart local v2       #token:J
    :catch_0
    move-exception v0

    .line 1175
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1176
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1178
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
