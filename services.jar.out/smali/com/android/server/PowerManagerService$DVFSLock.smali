.class Lcom/android/server/PowerManagerService$DVFSLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DVFSLock"
.end annotation


# instance fields
.field acqTime:J

.field final binder:Landroid/os/IBinder;

.field final frequency:I

.field final pid:I

.field final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/PowerManagerService;

.field final type:I

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter "ty"
    .parameter "fq"
    .parameter "b"
    .parameter "t"
    .parameter "u"
    .parameter "p"

    .prologue
    .line 4959
    iput-object p1, p0, Lcom/android/server/PowerManagerService$DVFSLock;->this$0:Lcom/android/server/PowerManagerService;

    .line 4960
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4961
    iput p2, p0, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    .line 4962
    iput p3, p0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    .line 4963
    iput-object p4, p0, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    .line 4964
    iput-object p5, p0, Lcom/android/server/PowerManagerService$DVFSLock;->tag:Ljava/lang/String;

    .line 4965
    #getter for: Lcom/android/server/PowerManagerService;->MY_UID:I
    invoke-static {p1}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)I

    move-result v1

    if-ne p6, v1, :cond_0

    const/16 p6, 0x3e8

    .end local p6
    :cond_0
    iput p6, p0, Lcom/android/server/PowerManagerService$DVFSLock;->uid:I

    .line 4966
    iput p7, p0, Lcom/android/server/PowerManagerService$DVFSLock;->pid:I

    .line 4969
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p4, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4973
    :goto_0
    return-void

    .line 4970
    :catch_0
    move-exception v0

    .line 4971
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$DVFSLock;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 4975
    iget-object v0, p0, Lcom/android/server/PowerManagerService$DVFSLock;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$8300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLockList;

    move-result-object v1

    monitor-enter v1

    .line 4976
    :try_start_0
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DVFSLock : binderDied : tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4977
    iget-object v0, p0, Lcom/android/server/PowerManagerService$DVFSLock;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v2, p0, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    #calls: Lcom/android/server/PowerManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;)V
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$10700(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;)V

    .line 4978
    monitor-exit v1

    .line 4979
    return-void

    .line 4978
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
