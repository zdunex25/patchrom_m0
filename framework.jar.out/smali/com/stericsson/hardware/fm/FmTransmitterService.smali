.class public Lcom/stericsson/hardware/fm/FmTransmitterService;
.super Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;
.source "FmTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;,
        Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;,
        Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;,
        Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;,
        Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;,
        Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;,
        Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmTransmitterService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mOnBlockScanReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;",
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
            "Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;",
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
            "Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;",
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
            "Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;",
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
            "Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;",
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
            "Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;",
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
            "Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;-><init>()V

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    .line 332
    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterService$1;

    invoke-direct {v1, p0}, Lcom/stericsson/hardware/fm/FmTransmitterService$1;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;)V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 365
    const-string v1, "FmTransmitterService"

    const-string v2, "FmTransmitterService created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    .line 369
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 370
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 374
    return-void
.end method

.method private native _fm_transmitter_getFrequency()I
.end method

.method private native _fm_transmitter_getState()I
.end method

.method private native _fm_transmitter_isBlockScanSupported()Z
.end method

.method private native _fm_transmitter_pause()V
.end method

.method private native _fm_transmitter_reset()I
.end method

.method private native _fm_transmitter_resume()V
.end method

.method private native _fm_transmitter_sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method private native _fm_transmitter_setFrequency(I)V
.end method

.method private native _fm_transmitter_setRdsData(Landroid/os/Bundle;)V
.end method

.method private native _fm_transmitter_start(IIII)V
.end method

.method private native _fm_transmitter_startAsync(IIII)V
.end method

.method private native _fm_transmitter_startBlockScan(II)V
.end method

.method private native _fm_transmitter_stopScan()V
.end method

.method static synthetic access$000(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/stericsson/hardware/fm/FmTransmitterService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/stericsson/hardware/fm/FmTransmitterService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_reset()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/stericsson/hardware/fm/FmTransmitterService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService;->notifyOnForcedReset(I)V

    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 360
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

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

.method private notifyOnBlockScan([I[IZ)V
    .locals 5
    .parameter "frequency"
    .parameter "signalLevel"
    .parameter "aborted"

    .prologue
    .line 774
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 775
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 776
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 777
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 778
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;

    .line 779
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    invoke-virtual {v2, p1, p2, p3}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;->callOnBlockScan([I[IZ)Z

    goto :goto_0

    .line 781
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
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

    .line 782
    return-void
.end method

.method private notifyOnError()V
    .locals 5

    .prologue
    .line 763
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 764
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 765
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 766
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 767
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;

    .line 768
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->callOnError()Z

    goto :goto_0

    .line 770
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
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

    .line 771
    return-void
.end method

.method private notifyOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "response"
    .parameter "extras"

    .prologue
    .line 807
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 808
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 809
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 810
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 811
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;

    .line 812
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->callOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 814
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
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

    .line 815
    return-void
.end method

.method private notifyOnForcedPause()V
    .locals 5

    .prologue
    .line 785
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 786
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 787
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 788
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 789
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;

    .line 790
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;->callOnForcedPause()Z

    goto :goto_0

    .line 792
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
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

    .line 793
    return-void
.end method

.method private notifyOnForcedReset(I)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 796
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 797
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 798
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 799
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 800
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;

    .line 801
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;->callOnForcedReset(I)Z

    goto :goto_0

    .line 803
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
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

    .line 804
    return-void
.end method

.method private notifyOnStarted()V
    .locals 5

    .prologue
    .line 752
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 753
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 754
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 755
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 756
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;

    .line 757
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;->callOnStarted()Z

    goto :goto_0

    .line 759
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
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

    .line 760
    return-void
.end method

.method private notifyOnStateChanged(II)V
    .locals 5
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 741
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 742
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 743
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 744
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 745
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;

    .line 746
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->callOnStateChanged(II)Z

    goto :goto_0

    .line 748
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
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

    .line 749
    return-void
.end method


# virtual methods
.method public addOnBlockScanListener(Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 601
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 606
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnBlockScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 607
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;

    .line 608
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    if-nez v2, :cond_1

    .line 609
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V

    .line 610
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnBlockScanListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnBlockScanListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnBlockScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :cond_1
    :goto_0
    return-void

    .line 614
    :catch_0
    move-exception v1

    .line 615
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmTransmitterService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 566
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 568
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 571
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 572
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;

    .line 573
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    if-nez v2, :cond_1

    .line 574
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnErrorListener;)V

    .line 575
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnErrorListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :cond_1
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v1

    .line 580
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmTransmitterService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 706
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 708
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 711
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 712
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;

    .line 713
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    if-nez v2, :cond_1

    .line 714
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V

    .line 715
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnExtraCommandListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :cond_1
    :goto_0
    return-void

    .line 719
    :catch_0
    move-exception v1

    .line 720
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmTransmitterService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 636
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 638
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 641
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 642
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;

    .line 643
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    if-nez v2, :cond_1

    .line 644
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V

    .line 645
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnForcedPauseListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :cond_1
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v1

    .line 650
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmTransmitterService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 671
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 673
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 676
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 677
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;

    .line 678
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    if-nez v2, :cond_1

    .line 679
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V

    .line 680
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnForcedResetListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :cond_1
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v1

    .line 685
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmTransmitterService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 531
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 533
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 536
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 537
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;

    .line 538
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    if-nez v2, :cond_1

    .line 539
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnStartedListener;)V

    .line 540
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnStartedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :cond_1
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v1

    .line 545
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmTransmitterService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 496
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 501
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 502
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;

    .line 503
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    if-nez v2, :cond_1

    .line 504
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V

    .line 505
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnStateChangedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_1
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v1

    .line 510
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmTransmitterService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_getFrequency()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_getState()I

    move-result v0

    return v0
.end method

.method public isBlockScanSupported()Z
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_isBlockScanSupported()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_pause()V

    .line 412
    return-void
.end method

.method public removeOnBlockScanListener(Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 621
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 623
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 626
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnBlockScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 627
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;

    .line 628
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    if-eqz v1, :cond_1

    .line 629
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnBlockScanListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnBlockScanListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnBlockScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 633
    :cond_1
    return-void
.end method

.method public removeOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 586
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 588
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 591
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 592
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;

    .line 593
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    if-eqz v1, :cond_1

    .line 594
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnErrorListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 598
    :cond_1
    return-void
.end method

.method public removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 726
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 731
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 732
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;

    .line 733
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    if-eqz v1, :cond_1

    .line 734
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnExtraCommandListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 738
    :cond_1
    return-void
.end method

.method public removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 656
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 661
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 662
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;

    .line 663
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    if-eqz v1, :cond_1

    .line 664
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnForcedPauseListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 668
    :cond_1
    return-void
.end method

.method public removeOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 691
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 696
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 697
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;

    .line 698
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    if-eqz v1, :cond_1

    .line 699
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnForcedResetListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 703
    :cond_1
    return-void
.end method

.method public removeOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 551
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 556
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 557
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;

    .line 558
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    if-eqz v1, :cond_1

    .line 559
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnStartedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 563
    :cond_1
    return-void
.end method

.method public removeOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 516
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 521
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 522
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;

    .line 523
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    if-eqz v1, :cond_1

    .line 524
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnStateChangedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 528
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_reset()I

    .line 403
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_resume()V

    .line 421
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setFrequency(I)V
    .locals 2
    .parameter "frequency"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_setFrequency(I)V

    .line 439
    return-void
.end method

.method public setRdsData(Landroid/os/Bundle;)V
    .locals 2
    .parameter "rdsData"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_setRdsData(Landroid/os/Bundle;)V

    .line 484
    return-void
.end method

.method public start(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .parameter "band"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_0
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v0

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v1

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getDefaultFrequency()I

    move-result v2

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_start(IIII)V

    .line 384
    return-void
.end method

.method public startAsync(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .parameter "band"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v0

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v1

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getDefaultFrequency()I

    move-result v2

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_startAsync(IIII)V

    .line 394
    return-void
.end method

.method public startBlockScan(II)V
    .locals 2
    .parameter "startFrequency"
    .parameter "endFrequency"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_startBlockScan(II)V

    .line 466
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_stopScan()V

    .line 475
    return-void
.end method
