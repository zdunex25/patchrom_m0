.class public Lcom/android/gallery3d/util/JobLimiter;
.super Ljava/lang/Object;
.source "JobLimiter.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/JobLimiter$JobWrapper;
    }
.end annotation


# instance fields
.field private final mJobs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/gallery3d/util/JobLimiter$JobWrapper",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mLimit:I

.field private final mPool:Lcom/android/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/util/ThreadPool;I)V
    .locals 1
    .parameter "pool"
    .parameter "limit"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    .line 132
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/util/ThreadPool;

    iput-object v0, p0, Lcom/android/gallery3d/util/JobLimiter;->mPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 133
    iput p2, p0, Lcom/android/gallery3d/util/JobLimiter;->mLimit:I

    .line 134
    return-void
.end method

.method private submitTasksIfAllowed()V
    .locals 2

    .prologue
    .line 145
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/gallery3d/util/JobLimiter;->mLimit:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/gallery3d/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;

    .line 147
    .local v0, wrapper:Lcom/android/gallery3d/util/JobLimiter$JobWrapper;
    invoke-virtual {v0}, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iget v1, p0, Lcom/android/gallery3d/util/JobLimiter;->mLimit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/util/JobLimiter;->mLimit:I

    .line 149
    iget-object v1, p0, Lcom/android/gallery3d/util/JobLimiter;->mPool:Lcom/android/gallery3d/util/ThreadPool;

    invoke-virtual {v1, v0, p0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;->setFuture(Lcom/android/gallery3d/util/Future;)V

    goto :goto_0

    .line 152
    .end local v0           #wrapper:Lcom/android/gallery3d/util/JobLimiter$JobWrapper;
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 1
    .parameter "future"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/util/JobLimiter;->mLimit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/util/JobLimiter;->mLimit:I

    .line 157
    invoke-direct {p0}, Lcom/android/gallery3d/util/JobLimiter;->submitTasksIfAllowed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/gallery3d/util/FutureListener",
            "<TT;>;)",
            "Lcom/android/gallery3d/util/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, job:Lcom/android/gallery3d/util/ThreadPool$Job;,"Lcom/android/gallery3d/util/ThreadPool$Job<TT;>;"
    .local p2, listener:Lcom/android/gallery3d/util/FutureListener;,"Lcom/android/gallery3d/util/FutureListener<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/util/ThreadPool$Job;

    invoke-direct {v0, v1, p2}, Lcom/android/gallery3d/util/JobLimiter$JobWrapper;-><init>(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)V

    .line 138
    .local v0, future:Lcom/android/gallery3d/util/JobLimiter$JobWrapper;,"Lcom/android/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    iget-object v1, p0, Lcom/android/gallery3d/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 139
    invoke-direct {p0}, Lcom/android/gallery3d/util/JobLimiter;->submitTasksIfAllowed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-object v0

    .line 137
    .end local v0           #future:Lcom/android/gallery3d/util/JobLimiter$JobWrapper;,"Lcom/android/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
