.class public Landroid/hardware/scontext/SContextManager;
.super Ljava/lang/Object;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_SCONTEXT_EVENT:Ljava/lang/String; = "android.hardware.scontext.SCONTEXT_EVENT"

.field public static final APPROACH:I = 0x1

.field public static final AUTO_ROTATION:I = 0x6

.field private static final DEFAULT_DEVICE_TYPE:I = 0x0

.field private static final DEFAULT_HEIGHT:F = 170.0f

.field private static final DEFAULT_STEP_COUNT:I = 0xa

.field private static final DEFAULT_WEIGHT:F = 60.0f

.field public static final MOTION:I = 0x4

.field public static final MOVEMENT:I = 0x5

.field public static final NONE:I = 0x0

.field public static final PEDOMETER:I = 0x2

.field public static final SCONTEXT_SERVICE_NUM:I = 0x6

.field public static final STEP_COUNT_ALERT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SContextManager"


# instance fields
.field private final mListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private mSContextService:Landroid/hardware/scontext/ISContextService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "mainLooper"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    .line 71
    const-string v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/scontext/ISContextService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    .line 73
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    .line 74
    return-void
.end method


# virtual methods
.method public initializeSContextService(I)V
    .locals 3
    .parameter "service"

    .prologue
    .line 180
    if-lez p1, :cond_0

    const/4 v1, 0x6

    if-le p1, v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v1, p1}, Landroid/hardware/scontext/ISContextService;->initializeSContextService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SContextManager"

    const-string v2, "RemoteException in initializeSContextService: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 7
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 77
    const/16 v3, 0xa

    const/4 v4, 0x0

    const/high16 v5, 0x432a

    const/high16 v6, 0x4270

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IIIFF)Z

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IFF)Z
    .locals 7
    .parameter "listener"
    .parameter "service"
    .parameter "height"
    .parameter "weight"

    .prologue
    .line 95
    const/16 v3, 0xa

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IIIFF)Z

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 7
    .parameter "listener"
    .parameter "service"
    .parameter "arg"

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x0

    const/high16 v5, 0x432a

    const/high16 v6, 0x4270

    .line 82
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IIIFF)Z

    .line 91
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 84
    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IIIFF)Z

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 88
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IIIFF)Z

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIFF)Z
    .locals 10
    .parameter "listener"
    .parameter "service"
    .parameter "stepcount"
    .parameter "devicetype"
    .parameter "height"
    .parameter "weight"

    .prologue
    .line 101
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    const/4 v7, 0x6

    if-le p2, v7, :cond_1

    .line 102
    :cond_0
    const/4 v7, 0x0

    .line 134
    :goto_0
    return v7

    .line 105
    :cond_1
    const/4 v4, 0x0

    .line 106
    .local v4, scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    new-instance v3, Landroid/hardware/scontext/SContext;

    invoke-direct {v3}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 107
    .local v3, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v3, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 108
    invoke-virtual {v3, p3}, Landroid/hardware/scontext/SContext;->setStepCount(I)V

    .line 109
    move/from16 v0, p6

    invoke-virtual {v3, p5, v0}, Landroid/hardware/scontext/SContext;->setUserBodyInfo(FF)V

    .line 110
    invoke-virtual {v3, p4}, Landroid/hardware/scontext/SContext;->setDeviceType(I)V

    .line 112
    iget-object v8, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v8

    .line 113
    :try_start_0
    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 115
    .local v6, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_4

    .line 116
    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-virtual {v7}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v7

    if-ne v7, p1, :cond_2

    .line 117
    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-object v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    .line 122
    .end local v4           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .local v5, scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    :goto_2
    if-nez v5, :cond_3

    .line 123
    :try_start_1
    new-instance v4, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    const/4 v7, 0x0

    invoke-direct {v4, p0, p1, p2, v7}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;ILandroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    .end local v5           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v4       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    :try_start_2
    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :goto_3
    :try_start_3
    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v7, v4, v3}, Landroid/hardware/scontext/ISContextService;->registerCallback(Landroid/os/IBinder;Landroid/hardware/scontext/SContext;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 132
    :goto_4
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    const-string v7, "SContextManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  .registerListener : service="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v7, 0x1

    goto :goto_0

    .line 115
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v7, "SContextManager"

    const-string v9, "RemoteException in registerListener: "

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 132
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    .end local v6           #size:I
    :catchall_0
    move-exception v7

    :goto_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .end local v4           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v2       #i:I
    .restart local v5       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v6       #size:I
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v4       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    goto :goto_5

    .end local v4           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v5       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    :cond_3
    move-object v4, v5

    .end local v5           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v4       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    goto :goto_3

    :cond_4
    move-object v5, v4

    .end local v4           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v5       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    goto :goto_2
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 138
    if-nez p1, :cond_1

    .line 145
    :cond_0
    return-void

    .line 142
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 143
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 8
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 148
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    const/4 v5, 0x6

    if-le p2, v5, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const/4 v3, 0x0

    .line 154
    .local v3, scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v6, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 155
    :try_start_0
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 157
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 158
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-virtual {v5}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v5

    if-ne v5, p1, :cond_3

    .line 159
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-object v3, v0

    .line 164
    :cond_2
    if-nez v3, :cond_4

    .line 165
    monitor-exit v6

    goto :goto_0

    .line 175
    .end local v2           #i:I
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 157
    .restart local v2       #i:I
    .restart local v4       #size:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 169
    :cond_4
    :try_start_1
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v5, v3, p2}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 170
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    :cond_5
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    const-string v5, "SContextManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  .unregisterListener : service="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "SContextManager"

    const-string v7, "RemoteException in unregisterListener: "

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
