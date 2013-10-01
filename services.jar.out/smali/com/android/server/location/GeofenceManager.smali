.class public Lcom/android/server/location/GeofenceManager;
.super Ljava/lang/Object;
.source "GeofenceManager.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GeofenceManager$GeofenceHandler;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field private static final MAX_AGE_NANOS:J = 0x45d964b800L

.field private static final MAX_INTERVAL_MS:J = 0x6ddd00L

.field private static final MAX_SPEED_M_S:I = 0x64

.field private static final MIN_INTERVAL_MS:J = 0xea60L

.field private static final MSG_UPDATE_FENCES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GeofenceManager"


# instance fields
.field private final mBlacklist:Lcom/android/server/location/LocationBlacklist;

.field private final mContext:Landroid/content/Context;

.field private mFences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/location/GeofenceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

.field private mLastLocationUpdate:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateInterval:J

.field private mLock:Ljava/lang/Object;

.field private mPendingUpdate:Z

.field private mReceivingLocationUpdates:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V
    .locals 3
    .parameter "context"
    .parameter "blacklist"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    .line 81
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    .line 108
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    .line 109
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    .line 110
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 111
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "GeofenceManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 112
    new-instance v1, Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-direct {v1, p0}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;-><init>(Lcom/android/server/location/GeofenceManager;)V

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    .line 113
    iput-object p2, p0, Lcom/android/server/location/GeofenceManager;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GeofenceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateFences()V

    return-void
.end method

.method private getFreshLocationLocked()Landroid/location/Location;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 210
    iget-boolean v4, p0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    .line 211
    .local v0, location:Landroid/location/Location;
    :goto_0
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 212
    iget-object v4, p0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v4}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 216
    :cond_0
    if-nez v0, :cond_3

    move-object v0, v3

    .line 227
    .end local v0           #location:Landroid/location/Location;
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v3

    .line 210
    goto :goto_0

    .line 221
    .restart local v0       #location:Landroid/location/Location;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 222
    .local v1, now:J
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide v6, 0x45d964b800L

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    move-object v0, v3

    .line 223
    goto :goto_1
.end method

.method private removeExpiredFencesLocked()V
    .locals 6

    .prologue
    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 185
    .local v2, time:J
    iget-object v4, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 186
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GeofenceState;

    .line 188
    .local v1, state:Lcom/android/server/location/GeofenceState;
    iget-wide v4, v1, Lcom/android/server/location/GeofenceState;->mExpireAt:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    .line 189
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 192
    .end local v1           #state:Lcom/android/server/location/GeofenceState;
    :cond_1
    return-void
.end method

.method private scheduleUpdateFencesLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 195
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    if-nez v0, :cond_0

    .line 196
    iput-boolean v1, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    .line 197
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->sendEmptyMessage(I)Z

    .line 199
    :cond_0
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 9
    .parameter "pendingIntent"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 353
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    move-object v0, p1

    move-object v3, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v7

    .line 358
    .local v7, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {p0, v8, p1}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private sendIntentEnter(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "pendingIntent"

    .prologue
    .line 337
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 338
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "entering"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GeofenceManager;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 340
    return-void
.end method

.method private sendIntentExit(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "pendingIntent"

    .prologue
    .line 347
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 348
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "entering"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GeofenceManager;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 350
    return-void
.end method

.method private updateFences()V
    .locals 29

    .prologue
    .line 238
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 239
    .local v4, enterIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 241
    .local v6, exitIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 242
    const/16 v19, 0x0

    :try_start_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GeofenceManager;->removeExpiredFencesLocked()V

    .line 249
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GeofenceManager;->getFreshLocationLocked()Landroid/location/Location;

    move-result-object v13

    .line 253
    .local v13, location:Landroid/location/Location;
    const-wide v14, 0x7fefffffffffffffL

    .line 254
    .local v14, minFenceDistance:D
    const/16 v16, 0x0

    .line 255
    .local v16, needUpdates:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/location/GeofenceState;

    .line 256
    .local v18, state:Lcom/android/server/location/GeofenceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 264
    const/16 v16, 0x1

    .line 265
    if-eqz v13, :cond_0

    .line 266
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/location/GeofenceState;->processLocation(Landroid/location/Location;)I

    move-result v5

    .line 267
    .local v5, event:I
    and-int/lit8 v19, v5, 0x1

    if-eqz v19, :cond_1

    .line 268
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_1
    and-int/lit8 v19, v5, 0x2

    if-eqz v19, :cond_2

    .line 271
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/location/GeofenceState;->getDistanceToBoundary()D

    move-result-wide v7

    .line 277
    .local v7, fenceDistance:D
    cmpg-double v19, v7, v14

    if-gez v19, :cond_0

    .line 278
    move-wide v14, v7

    goto :goto_0

    .line 284
    .end local v5           #event:I
    .end local v7           #fenceDistance:D
    .end local v18           #state:Lcom/android/server/location/GeofenceState;
    :cond_3
    if-eqz v16, :cond_7

    .line 288
    if-eqz v13, :cond_6

    const-wide v21, 0x7fefffffffffffffL

    move-wide/from16 v0, v21

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v19

    if-eqz v19, :cond_6

    .line 289
    const-wide v21, 0x415b774000000000L

    const-wide v23, 0x40ed4c0000000000L

    const-wide v25, 0x408f400000000000L

    mul-double v25, v25, v14

    const-wide/high16 v27, 0x4059

    div-double v25, v25, v27

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->max(DD)D

    move-result-wide v23

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->min(DD)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-long v11, v0

    .line 294
    .local v11, intervalMs:J
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    move-wide/from16 v21, v0

    cmp-long v19, v21, v11

    if-eqz v19, :cond_5

    .line 295
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    .line 296
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    .line 297
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    .line 299
    new-instance v17, Landroid/location/LocationRequest;

    invoke-direct/range {v17 .. v17}, Landroid/location/LocationRequest;-><init>()V

    .line 300
    .local v17, request:Landroid/location/LocationRequest;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v19

    const-wide/16 v21, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 321
    .end local v11           #intervalMs:J
    .end local v17           #request:Landroid/location/LocationRequest;
    :cond_5
    :goto_2
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 325
    .local v10, intent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/location/GeofenceManager;->sendIntentExit(Landroid/app/PendingIntent;)V

    goto :goto_3

    .line 292
    .end local v10           #intent:Landroid/app/PendingIntent;
    :cond_6
    const-wide/32 v11, 0xea60

    .restart local v11       #intervalMs:J
    goto :goto_1

    .line 305
    .end local v11           #intervalMs:J
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 306
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    .line 307
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    .line 308
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_2

    .line 321
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v13           #location:Landroid/location/Location;
    .end local v14           #minFenceDistance:D
    .end local v16           #needUpdates:Z
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .line 327
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v13       #location:Landroid/location/Location;
    .restart local v14       #minFenceDistance:D
    .restart local v16       #needUpdates:Z
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 328
    .restart local v10       #intent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/location/GeofenceManager;->sendIntentEnter(Landroid/app/PendingIntent;)V

    goto :goto_4

    .line 330
    .end local v10           #intent:Landroid/app/PendingIntent;
    :cond_9
    return-void
.end method


# virtual methods
.method public addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 8
    .parameter "request"
    .parameter "geofence"
    .parameter "intent"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 123
    new-instance v0, Lcom/android/server/location/GeofenceState;

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v2

    move-object v1, p2

    move-object v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GeofenceState;-><init>(Landroid/location/Geofence;JLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 125
    .local v0, state:Lcom/android/server/location/GeofenceState;
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/location/GeofenceState;

    .line 129
    .local v7, w:Lcom/android/server/location/GeofenceState;
    iget-object v1, v7, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {p2, v1}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {p3, v1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 135
    .end local v7           #w:Lcom/android/server/location/GeofenceState;
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    .line 137
    monitor-exit v2

    .line 138
    return-void

    .line 127
    .restart local v7       #w:Lcom/android/server/location/GeofenceState;
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 137
    .end local v6           #i:I
    .end local v7           #w:Lcom/android/server/location/GeofenceState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "pw"

    .prologue
    .line 399
    const-string v2, "  Geofences:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GeofenceState;

    .line 402
    .local v1, state:Lcom/android/server/location/GeofenceState;
    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 403
    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 404
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 405
    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {v2}, Landroid/location/Geofence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 406
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 408
    .end local v1           #state:Lcom/android/server/location/GeofenceState;
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 368
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v0, :cond_0

    .line 369
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    .line 374
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->removeMessages(I)V

    .line 379
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateFences()V

    .line 381
    return-void

    .line 377
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 390
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 387
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "pendingIntent"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "resultExtras"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 396
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 384
    return-void
.end method

.method public removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "fence"
    .parameter "intent"

    .prologue
    .line 145
    iget-object v3, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 147
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GeofenceState;

    .line 149
    .local v1, state:Lcom/android/server/location/GeofenceState;
    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    if-nez p1, :cond_1

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 163
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    .end local v1           #state:Lcom/android/server/location/GeofenceState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 156
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    .restart local v1       #state:Lcom/android/server/location/GeofenceState;
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {p1, v2}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 162
    .end local v1           #state:Lcom/android/server/location/GeofenceState;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    .line 163
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    return-void
.end method

.method public removeFence(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 171
    iget-object v3, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 173
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GeofenceState;

    .line 175
    .local v1, state:Lcom/android/server/location/GeofenceState;
    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 180
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    .end local v1           #state:Lcom/android/server/location/GeofenceState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 179
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    .line 180
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    return-void
.end method
