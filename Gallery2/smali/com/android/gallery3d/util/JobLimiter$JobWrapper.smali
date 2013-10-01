.class Lcom/android/gallery3d/util/JobLimiter$JobWrapper;
.super Ljava/lang/Object;
.source "JobLimiter.java"

# interfaces
.implements Lcom/android/gallery3d/util/Future;
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/JobLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/Future",
        "<TT;>;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mJob:Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/gallery3d/util/FutureListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/android/gallery3d/util/JobLimiter$JobWrapper;,"Lcom/android/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    .local p1, job:Lcom/android/gallery3d/util/ThreadPool$Job;,"Lcom/android/gallery3d/util/ThreadPool$Job<TT;>;"
    .local p2, listener:Lcom/android/gallery3d/util/FutureListener;,"Lcom/android/gallery3d/util/FutureListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    .line 49
    iput-object p1, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mJob:Lcom/android/gallery3d/util/ThreadPool$Job;

    .line 50
    iput-object p2, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcom/android/gallery3d/util/FutureListener;

    .line 51
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 60
    .local p0, this:Lcom/android/gallery3d/util/JobLimiter$JobWrapper;,"Lcom/android/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    const/4 v0, 0x0

    .line 61
    .local v0, listener:Lcom/android/gallery3d/util/FutureListener;,"Lcom/android/gallery3d/util/FutureListener<TT;>;"
    monitor-enter p0

    .line 62
    :try_start_0
    iget v1, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcom/android/gallery3d/util/FutureListener;

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mJob:Lcom/android/gallery3d/util/ThreadPool$Job;

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcom/android/gallery3d/util/FutureListener;

    .line 66
    iget-object v1, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mDelegate:Lcom/android/gallery3d/util/Future;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mDelegate:Lcom/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mDelegate:Lcom/android/gallery3d/util/Future;

    .line 71
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/gallery3d/util/FutureListener;->onFutureDone(Lcom/android/gallery3d/util/Future;)V

    .line 76
    :cond_1
    return-void

    .line 74
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Lcom/android/gallery3d/util/JobLimiter$JobWrapper;,"Lcom/android/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    if-nez v0, :cond_0

    .line 93
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 2

    .prologue
    .line 80
    .local p0, this:Lcom/android/gallery3d/util/JobLimiter$JobWrapper;,"Lcom/android/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 86
    .local p0, this:Lcom/android/gallery3d/util/JobLimiter$JobWrapper;,"Lcom/android/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    iget v0, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 9
    .parameter "jc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/gallery3d/util/JobLimiter$JobWrapper;,"Lcom/android/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, job:Lcom/android/gallery3d/util/ThreadPool$Job;,"Lcom/android/gallery3d/util/ThreadPool$Job<TT;>;"
    monitor-enter p0

    .line 107
    :try_start_0
    iget v5, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    if-ne v5, v8, :cond_1

    monitor-exit p0

    move-object v2, v4

    .line 127
    :cond_0
    :goto_0
    return-object v2

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mJob:Lcom/android/gallery3d/util/ThreadPool$Job;

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    const/4 v2, 0x0

    .line 112
    .local v2, result:Ljava/lang/Object;,"TT;"
    :try_start_1
    invoke-interface {v0, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 116
    .end local v2           #result:Ljava/lang/Object;,"TT;"
    :goto_1
    const/4 v1, 0x0

    .line 117
    .local v1, listener:Lcom/android/gallery3d/util/FutureListener;,"Lcom/android/gallery3d/util/FutureListener<TT;>;"
    monitor-enter p0

    .line 118
    :try_start_2
    iget v5, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    if-ne v5, v8, :cond_2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v4

    goto :goto_0

    .line 109
    .end local v1           #listener:Lcom/android/gallery3d/util/FutureListener;,"Lcom/android/gallery3d/util/FutureListener<TT;>;"
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 113
    .restart local v2       #result:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v3

    .line 114
    .local v3, t:Ljava/lang/Throwable;
    const-string v5, "JobLimiter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error executing job: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 119
    .end local v2           #result:Ljava/lang/Object;,"TT;"
    .end local v3           #t:Ljava/lang/Throwable;
    .restart local v1       #listener:Lcom/android/gallery3d/util/FutureListener;,"Lcom/android/gallery3d/util/FutureListener<TT;>;"
    :cond_2
    const/4 v4, 0x1

    :try_start_4
    iput v4, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    .line 120
    iget-object v1, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcom/android/gallery3d/util/FutureListener;

    .line 121
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcom/android/gallery3d/util/FutureListener;

    .line 122
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mJob:Lcom/android/gallery3d/util/ThreadPool$Job;

    .line 123
    iput-object v2, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 126
    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/android/gallery3d/util/FutureListener;->onFutureDone(Lcom/android/gallery3d/util/Future;)V

    goto :goto_0

    .line 125
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4
.end method

.method public declared-synchronized setFuture(Lcom/android/gallery3d/util/Future;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/android/gallery3d/util/JobLimiter$JobWrapper;,"Lcom/android/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    monitor-exit p0

    return-void

    .line 55
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->mDelegate:Lcom/android/gallery3d/util/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitDone()V
    .locals 0

    .prologue
    .line 100
    .local p0, this:Lcom/android/gallery3d/util/JobLimiter$JobWrapper;,"Lcom/android/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    invoke-virtual {p0}, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->get()Ljava/lang/Object;

    .line 101
    return-void
.end method
