.class Lcom/android/server/AlarmManagerService$SyncScheduler;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncScheduler"
.end annotation


# instance fields
.field private final SYNC_COPRIME_VALUE:J

.field private final SYNC_MAX_VALUE:J

.field private final SYNC_MIN_VALUE:J

.field private final WHITELIST:Z

.field private gIntervalGcd:Ljava/math/BigInteger;

.field private final mAccountsPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter "context"

    .prologue
    const-wide/32 v5, 0xdbba00

    const/4 v4, 0x1

    .line 1164
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST:Z

    .line 1153
    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->SYNC_COPRIME_VALUE:J

    .line 1154
    const-wide/32 v1, 0x493e0

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->SYNC_MIN_VALUE:J

    .line 1155
    iput-wide v5, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->SYNC_MAX_VALUE:J

    .line 1157
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 1160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    .line 1161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    .line 1166
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const-string v3, "com.facebook.katana"

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1167
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    const-string v2, "com.twitter.android"

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1168
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    const/4 v2, 0x2

    const-string v3, "com.kakao.talk"

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1169
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    const/4 v2, 0x3

    const-string v3, "net.daum.android.air"

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1170
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    const/4 v2, 0x4

    const-string v3, "wongi.weather"

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1171
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    const/4 v2, 0x5

    const-string v3, "com.sec.chaton"

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1181
    const-string v1, "account"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 1182
    .local v0, am:Landroid/accounts/AccountManager;
    invoke-static {p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 1183
    return-void
.end method

.method private adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerService$Alarm;J)V
    .locals 16
    .parameter "alarm"
    .parameter "distance"

    .prologue
    .line 1278
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v14, :cond_2

    :cond_0
    const/4 v5, 0x1

    .line 1280
    .local v5, isRtc:Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1281
    .local v8, now:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1282
    .local v10, nowRtc:J
    if-eqz v5, :cond_3

    move-wide v3, v10

    .line 1283
    .local v3, curTime:J
    :goto_1
    if-eqz v5, :cond_4

    const-wide/16 v12, 0x0

    .line 1286
    .local v12, skew:J
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService$SyncScheduler;->timeToNextRepeatingAlarmLocked()J

    move-result-wide v6

    .line 1288
    .local v6, nextAlarmWhen:J
    const-wide v14, 0x7fffffffffffffffL

    cmp-long v14, v6, v14

    if-eqz v14, :cond_1

    cmp-long v14, v6, v10

    if-lez v14, :cond_1

    .line 1290
    sub-long/2addr v6, v12

    .line 1295
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v14, v6, v14

    if-gtz v14, :cond_5

    .line 1296
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v14, v6

    div-long v1, v14, p2

    .line 1297
    .local v1, count:J
    mul-long v14, p2, v1

    add-long/2addr v14, v6

    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1310
    .end local v1           #count:J
    :cond_1
    :goto_3
    return-void

    .line 1278
    .end local v3           #curTime:J
    .end local v5           #isRtc:Z
    .end local v6           #nextAlarmWhen:J
    .end local v8           #now:J
    .end local v10           #nowRtc:J
    .end local v12           #skew:J
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .restart local v5       #isRtc:Z
    .restart local v8       #now:J
    .restart local v10       #nowRtc:J
    :cond_3
    move-wide v3, v8

    .line 1282
    goto :goto_1

    .line 1283
    .restart local v3       #curTime:J
    :cond_4
    sub-long v12, v10, v8

    goto :goto_2

    .line 1302
    .restart local v6       #nextAlarmWhen:J
    .restart local v12       #skew:J
    :cond_5
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v14, v6, v14

    div-long v1, v14, p2

    .line 1303
    .restart local v1       #count:J
    const-wide/16 v14, 0x1

    add-long/2addr v1, v14

    .line 1304
    mul-long v14, p2, v1

    sub-long v14, v6, v14

    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_3
.end method

.method private calculateGcdOfRepeatIntervals(JJ)J
    .locals 8
    .parameter "interval_old"
    .parameter "interval_new"

    .prologue
    .line 1242
    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 1243
    .local v1, newRepeatInterval:Ljava/math/BigInteger;
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 1244
    .local v2, oldIntervalGcd:Ljava/math/BigInteger;
    move-object v0, v2

    .line 1245
    .local v0, newIntervalGcd:Ljava/math/BigInteger;
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1249
    .local v3, tempIntervalGcd:Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1250
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1251
    move-object v0, v3

    .line 1255
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method private lookForNonAdjustableAlarmLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;J)Z
    .locals 5
    .parameter
    .parameter "operation"
    .parameter "triggerAtTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Landroid/app/PendingIntent;",
            "J)Z"
        }
    .end annotation

    .prologue
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v2, 0x0

    .line 1336
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1350
    :cond_0
    :goto_0
    return v2

    .line 1341
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1343
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1344
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1345
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    cmp-long v3, v3, p3

    if-nez v3, :cond_2

    .line 1347
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, targetPackageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1355
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1368
    :cond_0
    :goto_0
    return v2

    .line 1360
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1362
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1363
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1364
    .local v1, targetPackage:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_2

    move v2, v3

    .line 1365
    goto :goto_0
.end method

.method private queryAccounts()V
    .locals 12

    .prologue
    .line 1390
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "account"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 1391
    .local v1, am:Landroid/accounts/AccountManager;
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 1393
    .local v0, ads:[Landroid/accounts/AuthenticatorDescription;
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1394
    :try_start_0
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1395
    move-object v2, v0

    .local v2, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v2, v4

    .line 1396
    .local v3, auth:Landroid/accounts/AuthenticatorDescription;
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v10, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_0

    .line 1397
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v10, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1401
    .end local v3           #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 1402
    .local v7, pkgs:[Ljava/lang/String;
    move-object v2, v7

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v6, v2, v4

    .line 1403
    .local v6, pkg:Ljava/lang/String;
    const-string v8, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<AccountsPackages> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1405
    .end local v6           #pkg:Ljava/lang/String;
    :cond_2
    monitor-exit v9

    .line 1406
    return-void

    .line 1405
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #pkgs:[Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method private recalculateGcdOfRepeatIntervalsLocked()V
    .locals 9

    .prologue
    .line 1259
    const-wide/32 v5, 0xdbba00

    .line 1260
    .local v5, newIntervalGcd:J
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 1262
    .local v1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v1, :cond_1

    .line 1263
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1264
    .local v2, almListSize:I
    if-lez v2, :cond_0

    .line 1265
    const/4 v3, 0x0

    .local v3, i:I
    move v4, v3

    .line 1266
    .end local v3           #i:I
    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 1267
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1268
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/server/AlarmManagerService$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v5

    move v4, v3

    .line 1269
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_0

    .line 1271
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v4           #i:I
    :cond_0
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1275
    .end local v2           #almListSize:I
    :cond_1
    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 1409
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler;->queryAccounts()V

    .line 1412
    :cond_0
    return-void
.end method

.method public removeRepeatingAlarmLocked(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "operation"

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->access$2500(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    #calls: Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$2600(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 1376
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 1378
    :cond_0
    return-void
.end method

.method public removeRepeatingAlarmLocked(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    #calls: Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$2500(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    #calls: Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$2700(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1385
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 1387
    :cond_0
    return-void
.end method

.method public schedulingRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 11
    .parameter "alarm"

    .prologue
    .line 1187
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    iget-object v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-wide v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/server/AlarmManagerService$SyncScheduler;->lookForNonAdjustableAlarmLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;J)Z

    move-result v4

    .line 1191
    .local v4, isNonAdjustableAlarm:Z
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 1193
    if-nez v4, :cond_0

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    iget-object v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/AlarmManagerService$SyncScheduler;->lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1196
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/32 v9, 0x493e0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_2

    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/32 v9, 0xdbba00

    cmp-long v7, v7, v9

    if-gtz v7, :cond_2

    .line 1198
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    iget-wide v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/server/AlarmManagerService$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1206
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v9

    rem-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 1207
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    invoke-direct {p0, p1, v7, v8}, Lcom/android/server/AlarmManagerService$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerService$Alarm;J)V

    .line 1208
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-direct {p0, p1, v7, v8}, Lcom/android/server/AlarmManagerService$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerService$Alarm;J)V

    goto :goto_0

    .line 1217
    :cond_2
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 1220
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1221
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v8, 0x1

    if-gt v7, v8, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1223
    .local v5, now:J
    :goto_1
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v0, v7, v5

    .line 1224
    .local v0, distanceToAlarm:J
    long-to-double v7, v0

    const-wide/high16 v9, 0x4059

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-long v7, v7

    const-wide/16 v9, 0x64

    mul-long v2, v7, v9

    .line 1229
    .local v2, distanceToAlarmRounded:J
    const-wide/32 v7, 0xdbba00

    cmp-long v7, v2, v7

    if-gtz v7, :cond_0

    const-wide/32 v7, 0x493e0

    cmp-long v7, v2, v7

    if-ltz v7, :cond_0

    const-wide/32 v7, 0x493e0

    rem-long v7, v2, v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 1232
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    invoke-direct {p0, v7, v8, v2, v3}, Lcom/android/server/AlarmManagerService$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v7

    invoke-direct {p0, p1, v7, v8}, Lcom/android/server/AlarmManagerService$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerService$Alarm;J)V

    .line 1234
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1221
    .end local v0           #distanceToAlarm:J
    .end local v2           #distanceToAlarmRounded:J
    .end local v5           #now:J
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    goto :goto_1
.end method

.method public timeToNextRepeatingAlarmLocked()J
    .locals 14

    .prologue
    .line 1313
    const-wide v6, 0x7fffffffffffffffL

    .line 1314
    .local v6, nextAlarm:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 1316
    .local v8, skew:J
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 1317
    .local v1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v1, :cond_5

    .line 1318
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1319
    .local v2, almListSize:I
    if-lez v2, :cond_5

    .line 1320
    const/4 v4, 0x0

    .local v4, j:I
    move v5, v4

    .line 1321
    .end local v4           #j:I
    .local v5, j:I
    :goto_0
    if-ge v5, v2, :cond_5

    .line 1322
    add-int/lit8 v4, v5, 0x1

    .end local v5           #j:I
    .restart local v4       #j:I
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1323
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    iget v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    iget v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v10, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 1324
    .local v3, isRtc:Z
    :goto_1
    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    if-eqz v3, :cond_3

    const-wide/16 v10, 0x0

    :goto_2
    add-long/2addr v10, v12

    cmp-long v10, v10, v6

    if-gez v10, :cond_1

    .line 1325
    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    if-eqz v3, :cond_4

    const-wide/16 v10, 0x0

    :goto_3
    add-long v6, v12, v10

    :cond_1
    move v5, v4

    .line 1327
    .end local v4           #j:I
    .restart local v5       #j:I
    goto :goto_0

    .line 1323
    .end local v3           #isRtc:Z
    .end local v5           #j:I
    .restart local v4       #j:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .restart local v3       #isRtc:Z
    :cond_3
    move-wide v10, v8

    .line 1324
    goto :goto_2

    :cond_4
    move-wide v10, v8

    .line 1325
    goto :goto_3

    .line 1331
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2           #almListSize:I
    .end local v3           #isRtc:Z
    .end local v4           #j:I
    :cond_5
    return-wide v6
.end method
