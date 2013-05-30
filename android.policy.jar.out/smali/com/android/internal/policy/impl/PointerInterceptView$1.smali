.class Lcom/android/internal/policy/impl/PointerInterceptView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PointerInterceptView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PointerInterceptView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PointerInterceptView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    const-string v0, "PointerInterceptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDown, x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mReadyStatusBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$000(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mReadyStatusBarExpand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mStatusBarExpanding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    const/high16 v1, 0x4248

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mAnimatingHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v0, v4}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$002(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    .line 122
    :cond_0
    :goto_0
    return v4

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(Z)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$000(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$002(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const v3, 0x44bb8000

    const/4 v4, 0x1

    .line 76
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 77
    const-string v0, "PointerInterceptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFling(), e1.y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , e2.y= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , velocityX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , velocityY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    const-string v0, "PointerInterceptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFling(), mReadyStatusBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$000(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mReadyStatusBarExpand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mStatusBarExpanding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$000(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    cmpl-float v0, p4, v3

    if-ltz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0, v4}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$102(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    :cond_1
    return v4
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v3, 0x1

    .line 93
    const-string v0, "PointerInterceptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll(), distanceX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , distanceY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v0, "PointerInterceptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll(), mReadyStatusBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$000(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mReadyStatusBarExpand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mStatusBarExpanding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$000(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$202(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    .line 104
    :cond_0
    :goto_0
    return v3

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarExpanding:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$400(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(Z)V

    goto :goto_0
.end method
