.class final Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PointerInterceptInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 490
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 491
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 495
    const/4 v3, 0x0

    .line 496
    .local v3, handled:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 497
    .local v2, focusedWindow:Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 500
    .local v1, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-eqz v1, :cond_4

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_4

    const/4 v4, 0x1

    .line 503
    .local v4, isStatusBarExpanding:Z
    :goto_1
    if-eqz v1, :cond_2

    :try_start_0
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_2

    .line 504
    instance-of v5, p1, Landroid/view/MotionEvent;

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 506
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptView:Lcom/android/internal/policy/impl/PointerInterceptView;

    if-nez v5, :cond_0

    .line 507
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;Landroid/content/Context;)V

    iput-object v6, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptView:Lcom/android/internal/policy/impl/PointerInterceptView;

    .line 520
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 521
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v5, :cond_1

    .line 522
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptView:Lcom/android/internal/policy/impl/PointerInterceptView;

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v5, v0

    invoke-virtual {v7, v5, v4}, Lcom/android/internal/policy/impl/PointerInterceptView;->addPointerEvent(Landroid/view/MotionEvent;Z)V

    .line 524
    :cond_1
    const/4 v3, 0x1

    .line 525
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 531
    return-void

    .line 497
    .end local v1           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #isStatusBarExpanding:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 500
    .restart local v1       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 525
    .restart local v4       #isStatusBarExpanding:Z
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 529
    :catchall_1
    move-exception v5

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v5
.end method
