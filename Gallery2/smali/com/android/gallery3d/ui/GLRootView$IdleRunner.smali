.class Lcom/android/gallery3d/ui/GLRootView$IdleRunner;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/GLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunner"
.end annotation


# instance fields
.field private mActive:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/GLRootView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/GLRootView;)V
    .locals 1
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/GLRootView;Lcom/android/gallery3d/ui/GLRootView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;-><init>(Lcom/android/gallery3d/ui/GLRootView;)V

    return-void
.end method


# virtual methods
.method public enable()V
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    if-eqz v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    .line 508
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 486
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/android/gallery3d/ui/GLRootView;->access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v3

    monitor-enter v3

    .line 487
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    .line 488
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/android/gallery3d/ui/GLRootView;->access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    .line 502
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/android/gallery3d/ui/GLRootView;->access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;

    .line 490
    .local v1, listener:Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 491
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/android/gallery3d/ui/GLRootView;->access$300(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 494
    :try_start_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;
    invoke-static {v2}, Lcom/android/gallery3d/ui/GLRootView;->access$400(Lcom/android/gallery3d/ui/GLRootView;)Lcom/android/gallery3d/ui/GLCanvas;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/GLRootView;->access$500(Lcom/android/gallery3d/ui/GLRootView;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;->onGLIdle(Lcom/android/gallery3d/ui/GLCanvas;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    .line 496
    .local v0, keepInQueue:Z
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/android/gallery3d/ui/GLRootView;->access$300(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 498
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/android/gallery3d/ui/GLRootView;->access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v3

    monitor-enter v3

    .line 499
    if-eqz v0, :cond_1

    :try_start_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/android/gallery3d/ui/GLRootView;->access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 500
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/GLRootView;->access$500(Lcom/android/gallery3d/ui/GLRootView;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/android/gallery3d/ui/GLRootView;->access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->enable()V

    .line 501
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 490
    .end local v0           #keepInQueue:Z
    .end local v1           #listener:Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 496
    .restart local v1       #listener:Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;
    :catchall_2
    move-exception v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Lcom/android/gallery3d/ui/GLRootView;->access$300(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method
