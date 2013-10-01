.class public Lcom/stericsson/hardware/fm/FmReceiverService;
.super Lcom/stericsson/hardware/fm/IFmReceiver$Stub;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmReceiverService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mOnAutomaticSwitchReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnErrorReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnExtraCommandReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnForcedPauseReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnForcedResetReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnRDSDataReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnScanReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnSignalStrengthReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnStartedReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnStateChangedReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnStereoReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1295
    const-string v0, "analogradiobroadcasting"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1296
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IFmReceiver$Stub;-><init>()V

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    .line 512
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverService$1;

    invoke-direct {v1, p0}, Lcom/stericsson/hardware/fm/FmReceiverService$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;)V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 545
    const-string v1, "FmReceiverService"

    const-string v2, "FmReceiverService created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    .line 549
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 550
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 554
    return-void
.end method

.method private native _fm_receiver_getFrequency()I
.end method

.method private native _fm_receiver_getSignalStrength()I
.end method

.method private native _fm_receiver_getState()I
.end method

.method private native _fm_receiver_getThreshold()I
.end method

.method private native _fm_receiver_isPlayingInStereo()Z
.end method

.method private native _fm_receiver_isRDSDataSupported()Z
.end method

.method private native _fm_receiver_isTunedToValidChannel()Z
.end method

.method private native _fm_receiver_pause()V
.end method

.method private native _fm_receiver_reset()I
.end method

.method private native _fm_receiver_resume()V
.end method

.method private native _fm_receiver_scanDown()V
.end method

.method private native _fm_receiver_scanUp()V
.end method

.method private native _fm_receiver_sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method private native _fm_receiver_setAutomaticAFSwitching(Z)V
.end method

.method private native _fm_receiver_setAutomaticTASwitching(Z)V
.end method

.method private native _fm_receiver_setForceMono(Z)V
.end method

.method private native _fm_receiver_setFrequency(I)V
.end method

.method private native _fm_receiver_setRDS(Z)V
.end method

.method private native _fm_receiver_setThreshold(I)V
.end method

.method private native _fm_receiver_start(IIII)V
.end method

.method private native _fm_receiver_startAsync(IIII)V
.end method

.method private native _fm_receiver_startFullScan()V
.end method

.method private native _fm_receiver_stopScan()V
.end method

.method static synthetic access$000(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/stericsson/hardware/fm/FmReceiverService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/stericsson/hardware/fm/FmReceiverService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_reset()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/stericsson/hardware/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->notifyOnForcedReset(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 540
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private notifyOnAutomaticSwitching(II)V
    .locals 5
    .parameter "newFrequency"
    .parameter "reason"

    .prologue
    .line 1283
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1284
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1285
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1286
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1287
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .line 1288
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->callOnAutomaticSwitch(II)Z

    goto :goto_0

    .line 1290
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1291
    return-void
.end method

.method private notifyOnError()V
    .locals 5

    .prologue
    .line 1228
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1229
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1230
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1231
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1232
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .line 1233
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->callOnError()Z

    goto :goto_0

    .line 1235
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1236
    return-void
.end method

.method private notifyOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "response"
    .parameter "extras"

    .prologue
    .line 1272
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1273
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1274
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1275
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1276
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .line 1277
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->callOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 1279
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1280
    return-void
.end method

.method private notifyOnForcedPause()V
    .locals 5

    .prologue
    .line 1206
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1207
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1208
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1209
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1210
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .line 1211
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->callOnForcedPause()Z

    goto :goto_0

    .line 1213
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1214
    return-void
.end method

.method private notifyOnForcedReset(I)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 1217
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1218
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1219
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1220
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1221
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .line 1222
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->callOnForcedReset(I)Z

    goto :goto_0

    .line 1224
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1225
    return-void
.end method

.method private notifyOnFullScan([I[IZ)V
    .locals 5
    .parameter "frequency"
    .parameter "signalLevel"
    .parameter "aborted"

    .prologue
    .line 1195
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1196
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1197
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1198
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 1200
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    invoke-virtual {v2, p1, p2, p3}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->callOnFullScan([I[IZ)Z

    goto :goto_0

    .line 1202
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1203
    return-void
.end method

.method private notifyOnPlayingInStereo(Z)V
    .locals 5
    .parameter "inStereo"

    .prologue
    .line 1261
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1262
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1263
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1264
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1265
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .line 1266
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->callOnPlayingInStereo(Z)Z

    goto :goto_0

    .line 1268
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1269
    return-void
.end method

.method private notifyOnRDSDataFound(Landroid/os/Bundle;I)V
    .locals 5
    .parameter "bundle"
    .parameter "frequency"

    .prologue
    .line 1239
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1240
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1241
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1242
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1243
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .line 1244
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->callOnRDSDataFound(Landroid/os/Bundle;I)Z

    goto :goto_0

    .line 1246
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1247
    return-void
.end method

.method private notifyOnScan(IIIZ)V
    .locals 5
    .parameter "frequency"
    .parameter "signalLevel"
    .parameter "scanDirection"
    .parameter "aborted"

    .prologue
    .line 1184
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1185
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1186
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1187
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1188
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 1189
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->callOnScan(IIIZ)Z

    goto :goto_0

    .line 1191
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1192
    return-void
.end method

.method private notifyOnSignalStrengthChanged(I)V
    .locals 5
    .parameter "signalStrength"

    .prologue
    .line 1250
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1251
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1252
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1253
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1254
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .line 1255
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->callOnSignalStrengthChanged(I)Z

    goto :goto_0

    .line 1257
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1258
    return-void
.end method

.method private notifyOnStarted()V
    .locals 6

    .prologue
    .line 1168
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1169
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1170
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1171
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .line 1173
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->callOnStarted()Z

    goto :goto_0

    .line 1180
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1176
    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1177
    const-string v3, "FmReceiverService"

    const-string v5, "Started event with RDS receiver(s), switching on RDS"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 1180
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1181
    return-void
.end method

.method private notifyOnStateChanged(II)V
    .locals 5
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 1157
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1158
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1159
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1160
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1161
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .line 1162
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->callOnStateChanged(II)Z

    goto :goto_0

    .line 1164
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1165
    return-void
.end method


# virtual methods
.method public addOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1122
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1124
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1127
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1128
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .line 1129
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    if-nez v2, :cond_1

    .line 1130
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V

    .line 1131
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    const-string v3, "FmReceiverService"

    const-string v4, "addOnAutomaticSwitchListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    :cond_1
    :goto_0
    return-void

    .line 1135
    :catch_0
    move-exception v1

    .line 1136
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 832
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 834
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 837
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 838
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .line 839
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    if-nez v2, :cond_1

    .line 840
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnErrorListener;)V

    .line 841
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string v3, "FmReceiverService"

    const-string v4, "addOnErrorListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :cond_1
    :goto_0
    return-void

    .line 845
    :catch_0
    move-exception v1

    .line 846
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1087
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1089
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1092
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1093
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .line 1094
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    if-nez v2, :cond_1

    .line 1095
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V

    .line 1096
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    const-string v3, "FmReceiverService"

    const-string v4, "addOnExtraCommandListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :cond_1
    :goto_0
    return-void

    .line 1100
    :catch_0
    move-exception v1

    .line 1101
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 902
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 904
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 907
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 908
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .line 909
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    if-nez v2, :cond_1

    .line 910
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V

    .line 911
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    const-string v3, "FmReceiverService"

    const-string v4, "addOnForcedPauseListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :cond_1
    :goto_0
    return-void

    .line 915
    :catch_0
    move-exception v1

    .line 916
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 937
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 939
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 942
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 943
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .line 944
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    if-nez v2, :cond_1

    .line 945
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V

    .line 946
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    const-string v3, "FmReceiverService"

    const-string v4, "addOnForcedResetListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :cond_1
    :goto_0
    return-void

    .line 950
    :catch_0
    move-exception v1

    .line 951
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/IOnStereoListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1052
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1054
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1057
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1058
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .line 1059
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    if-nez v2, :cond_1

    .line 1060
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnStereoListener;)V

    .line 1061
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    const-string v3, "FmReceiverService"

    const-string v4, "addOnPlayingInStereoListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStereoListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    :cond_1
    :goto_0
    return-void

    .line 1065
    :catch_0
    move-exception v1

    .line 1066
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    const/4 v5, 0x1

    .line 972
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 974
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 977
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 978
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .line 979
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    if-nez v2, :cond_1

    .line 980
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V

    .line 981
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    const-string v3, "FmReceiverService"

    const-string v4, "addOnRDSDataFoundListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :goto_0
    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 990
    const-string v3, "FmReceiverService"

    const-string v4, "First RDS receiver added, switching on RDS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-direct {p0, v5}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 994
    :cond_1
    return-void

    .line 985
    :catch_0
    move-exception v1

    .line 986
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnScanListener(Lcom/stericsson/hardware/fm/IOnScanListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 867
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 869
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 872
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 873
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 874
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    if-nez v2, :cond_1

    .line 875
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnScanListener;)V

    .line 876
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const-string v3, "FmReceiverService"

    const-string v4, "addOnScanListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnScanListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :cond_1
    :goto_0
    return-void

    .line 880
    :catch_0
    move-exception v1

    .line 881
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1017
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1019
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1022
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1023
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .line 1024
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    if-nez v2, :cond_1

    .line 1025
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V

    .line 1026
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const-string v3, "FmReceiverService"

    const-string v4, "addOnSignalStrengthChangedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :cond_1
    :goto_0
    return-void

    .line 1030
    :catch_0
    move-exception v1

    .line 1031
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 797
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 799
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 802
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 803
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .line 804
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    if-nez v2, :cond_1

    .line 805
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnStartedListener;)V

    .line 806
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string v3, "FmReceiverService"

    const-string v4, "addOnStartedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :cond_1
    :goto_0
    return-void

    .line 810
    :catch_0
    move-exception v1

    .line 811
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 762
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 764
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 767
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 768
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .line 769
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    if-nez v2, :cond_1

    .line 770
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V

    .line 771
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v3, "FmReceiverService"

    const-string v4, "addOnStateChangedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :cond_1
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v1

    .line 776
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getFrequency()I

    move-result v0

    return v0
.end method

.method public getSignalStrength()I
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getSignalStrength()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getState()I

    move-result v0

    return v0
.end method

.method public getThreshold()I
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getThreshold()I

    move-result v0

    return v0
.end method

.method public isPlayingInStereo()Z
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_isPlayingInStereo()Z

    move-result v0

    return v0
.end method

.method public isRDSDataSupported()Z
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_isRDSDataSupported()Z

    move-result v0

    return v0
.end method

.method public isTunedToValidChannel()Z
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_isTunedToValidChannel()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_pause()V

    .line 597
    return-void
.end method

.method public removeOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1142
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1144
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1147
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1148
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .line 1149
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    if-eqz v1, :cond_1

    .line 1150
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnAutomaticSwitchListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1154
    :cond_1
    return-void
.end method

.method public removeOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 852
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 854
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 857
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 858
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .line 859
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    if-eqz v1, :cond_1

    .line 860
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnErrorListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 864
    :cond_1
    return-void
.end method

.method public removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1107
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1109
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1112
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1113
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .line 1114
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    if-eqz v1, :cond_1

    .line 1115
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnExtraCommandListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1119
    :cond_1
    return-void
.end method

.method public removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 922
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 924
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 927
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 928
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .line 929
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    if-eqz v1, :cond_1

    .line 930
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnForcedPauseListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 934
    :cond_1
    return-void
.end method

.method public removeOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 957
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 959
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 962
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 963
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .line 964
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    if-eqz v1, :cond_1

    .line 965
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnForcedResetListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 969
    :cond_1
    return-void
.end method

.method public removeOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/IOnStereoListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1072
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1074
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1077
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1078
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .line 1079
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    if-eqz v1, :cond_1

    .line 1080
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnPlayingInStereoListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStereoListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1084
    :cond_1
    return-void
.end method

.method public removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 997
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 999
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1002
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1003
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .line 1004
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    if-eqz v1, :cond_1

    .line 1005
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnRDSDataFoundListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1008
    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1010
    const-string v2, "FmReceiverService"

    const-string v3, "Last RDS receiver removed, switching off RDS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-direct {p0, v4}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 1014
    :cond_1
    return-void
.end method

.method public removeOnScanListener(Lcom/stericsson/hardware/fm/IOnScanListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 887
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 889
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 892
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 893
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 894
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    if-eqz v1, :cond_1

    .line 895
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnScanListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnScanListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 899
    :cond_1
    return-void
.end method

.method public removeOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1037
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1039
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1042
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1043
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .line 1044
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    if-eqz v1, :cond_1

    .line 1045
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnSignalStrengthChangedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1049
    :cond_1
    return-void
.end method

.method public removeOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 817
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 822
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 823
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .line 824
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    if-eqz v1, :cond_1

    .line 825
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnStartedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 829
    :cond_1
    return-void
.end method

.method public removeOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 782
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 784
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 787
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 788
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .line 789
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    if-eqz v1, :cond_1

    .line 790
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnStateChangedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 794
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_reset()I

    .line 588
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_resume()V

    .line 606
    return-void
.end method

.method public scanDown()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_scanDown()V

    .line 651
    return-void
.end method

.method public scanUp()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_scanUp()V

    .line 642
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 753
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAutomaticAFSwitching(Z)V
    .locals 2
    .parameter "automatic"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setAutomaticAFSwitching(Z)V

    .line 741
    return-void
.end method

.method public setAutomaticTASwitching(Z)V
    .locals 2
    .parameter "automatic"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setAutomaticTASwitching(Z)V

    .line 750
    return-void
.end method

.method public setForceMono(Z)V
    .locals 2
    .parameter "forceMono"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setForceMono(Z)V

    .line 732
    return-void
.end method

.method public setFrequency(I)V
    .locals 2
    .parameter "frequency"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setFrequency(I)V

    .line 624
    return-void
.end method

.method public setThreshold(I)V
    .locals 2
    .parameter "threshold"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setThreshold(I)V

    .line 696
    return-void
.end method

.method public start(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .parameter "band"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_0
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v0

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v1

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getDefaultFrequency()I

    move-result v2

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_start(IIII)V

    .line 565
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 566
    const-string v0, "FmReceiverService"

    const-string v1, "Started with RDS receiver(s), switching on RDS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 569
    :cond_1
    return-void
.end method

.method public startAsync(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .parameter "band"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_0
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v0

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v1

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getDefaultFrequency()I

    move-result v2

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_startAsync(IIII)V

    .line 579
    return-void
.end method

.method public startFullScan()V
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_startFullScan()V

    .line 660
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_stopScan()V

    .line 669
    return-void
.end method
