.class public abstract Lcom/android/internal/policy/impl/PointerInterceptView;
.super Landroid/view/View;
.source "PointerInterceptView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PointerInterceptView"


# instance fields
.field private final ACTION_COLLAPSE:Ljava/lang/String;

.field private final ANIMATING_DELAY:I

.field private final DEBUG:Z

.field private final FLICK_VELOCITY:I

.field private final HIDE_DELAY:I

.field private final STATUSBAR_HEIGHT:I

.field mAnimatingHide:Ljava/lang/Runnable;

.field private mCollapseReceiveIntent:Landroid/content/Intent;

.field mCollapseReceiver:Landroid/content/BroadcastReceiver;

.field mDefaultHide:Ljava/lang/Runnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mIsStatusBarExpanding:Z

.field private mPreviousOpen:Z

.field private mReadyStatusBar:Z

.field private mReadyStatusBarExpand:Z

.field private mStatusBarExpanding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    iput-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->ACTION_COLLAPSE:Ljava/lang/String;

    .line 35
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z

    .line 36
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z

    .line 37
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z

    .line 38
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->HIDE_DELAY:I

    .line 39
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->ANIMATING_DELAY:I

    .line 40
    const/16 v1, 0x5dc

    iput v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->FLICK_VELOCITY:I

    .line 41
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->STATUSBAR_HEIGHT:I

    .line 42
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mPreviousOpen:Z

    .line 43
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarExpanding:Z

    .line 45
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->DEBUG:Z

    .line 156
    new-instance v1, Lcom/android/internal/policy/impl/PointerInterceptView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PointerInterceptView$2;-><init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mCollapseReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    new-instance v1, Lcom/android/internal/policy/impl/PointerInterceptView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PointerInterceptView$3;-><init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    .line 173
    new-instance v1, Lcom/android/internal/policy/impl/PointerInterceptView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PointerInterceptView$4;-><init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mAnimatingHide:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v0, mCollapseReceiveFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mCollapseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mCollapseReceiveIntent:Landroid/content/Intent;

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/internal/policy/impl/PointerInterceptView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PointerInterceptView$1;-><init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 125
    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PointerInterceptView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PointerInterceptView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarExpanding:Z

    return v0
.end method


# virtual methods
.method public addPointerEvent(Landroid/view/MotionEvent;Z)V
    .locals 4
    .parameter "event"
    .parameter "isStatusBarExpanding"

    .prologue
    .line 48
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarExpanding:Z

    .line 49
    const-string v1, "PointerInterceptView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPointerEvent ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 51
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 61
    :goto_0
    :pswitch_0
    return-void

    .line 58
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public abstract onStatusBarCbBehavior(Z)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 131
    const-string v0, "PointerInterceptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent(), event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public sendCallbackFunc(Z)V
    .locals 1
    .parameter "isOpen"

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(ZZ)V

    .line 137
    return-void
.end method

.method public sendCallbackFunc(ZZ)V
    .locals 4
    .parameter "isOpen"
    .parameter "isForce"

    .prologue
    const/4 v3, 0x0

    .line 140
    const-string v0, "PointerInterceptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCallbackFunc, mPreviousOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mPreviousOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , isOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , isForce = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mPreviousOpen:Z

    if-eq p1, v0, :cond_1

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PointerInterceptView;->onStatusBarCbBehavior(Z)V

    .line 143
    if-nez p1, :cond_1

    .line 144
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z

    .line 145
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z

    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mAnimatingHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mAnimatingHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mPreviousOpen:Z

    .line 152
    return-void
.end method
