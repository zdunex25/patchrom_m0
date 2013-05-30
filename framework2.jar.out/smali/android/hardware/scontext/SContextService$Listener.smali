.class final Landroid/hardware/scontext/SContextService$Listener;
.super Ljava/lang/Object;
.source "SContextService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field private final mToken:Landroid/os/IBinder;

.field private services:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextService;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter "token"

    .prologue
    .line 474
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p2, p0, Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;

    .line 476
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->services:Ljava/util/HashSet;

    .line 477
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 468
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->services:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 468
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 479
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$800(Landroid/hardware/scontext/SContextService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 480
    :try_start_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$800(Landroid/hardware/scontext/SContextService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 481
    const-string v0, "SContextService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .binderDied : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService;->access$800(Landroid/hardware/scontext/SContextService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 483
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$800(Landroid/hardware/scontext/SContextService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 484
    monitor-exit v1

    .line 485
    return-void

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public callback(Landroid/hardware/scontext/SContextEvent;)V
    .locals 2
    .parameter "scontextEvent"

    .prologue
    .line 490
    :try_start_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/hardware/scontext/ISContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextCallback;

    move-result-object v0

    .line 491
    .local v0, cb:Landroid/hardware/scontext/ISContextCallback;
    invoke-interface {v0, p1}, Landroid/hardware/scontext/ISContextCallback;->scontextCallback(Landroid/hardware/scontext/SContextEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v0           #cb:Landroid/hardware/scontext/ISContextCallback;
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v1

    goto :goto_0
.end method
