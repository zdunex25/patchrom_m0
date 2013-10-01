.class Lcom/android/server/BackupManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    .line 1338
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1339
    .local v0, action:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1340
    .local v5, replacing:Z
    const/4 v1, 0x0

    .line 1341
    .local v1, added:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1342
    .local v2, extras:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 1343
    .local v3, pkgList:[Ljava/lang/String;
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1345
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 1346
    .local v7, uri:Landroid/net/Uri;
    if-nez v7, :cond_2

    .line 1386
    .end local v7           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 1349
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 1350
    .local v4, pkgName:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1351
    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    .end local v3           #pkgList:[Ljava/lang/String;
    aput-object v4, v3, v9

    .line 1353
    .restart local v3       #pkgList:[Ljava/lang/String;
    :cond_3
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1354
    const-string v8, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1363
    .end local v4           #pkgName:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_4
    :goto_1
    if-eqz v3, :cond_1

    array-length v8, v3

    if-eqz v8, :cond_1

    .line 1367
    const-string v8, "android.intent.extra.UID"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1368
    .local v6, uid:I
    if-eqz v1, :cond_8

    .line 1369
    iget-object v8, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v8, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v9

    .line 1370
    if-eqz v5, :cond_5

    .line 1373
    :try_start_0
    iget-object v8, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v8, v3, v6}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    .line 1375
    :cond_5
    iget-object v8, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v8, v3}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    .line 1376
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1355
    .end local v6           #uid:I
    :cond_6
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1356
    const/4 v1, 0x1

    .line 1357
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1358
    :cond_7
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1359
    const/4 v1, 0x0

    .line 1360
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1378
    .restart local v6       #uid:I
    :cond_8
    if-nez v5, :cond_1

    .line 1381
    iget-object v8, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v8, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v9

    .line 1382
    :try_start_1
    iget-object v8, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v8, v3, v6}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    .line 1383
    monitor-exit v9

    goto :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v8
.end method
