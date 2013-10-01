.class public Lcom/android/gallery3d/app/MovieControllerOverlay;
.super Lcom/android/gallery3d/app/CommonControllerOverlay;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private hidden:Z

.field private final hideAnimation:Landroid/view/animation/Animation;

.field private final startHidingRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$1;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    .line 52
    const v0, 0x7f050004

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHiding()V

    return-void
.end method

.method private cancelHiding()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/TimeBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 109
    return-void
.end method

.method private maybeStartHiding()V
    .locals 4

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    :cond_0
    return-void
.end method

.method private startHideAnimation(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 102
    :cond_0
    return-void
.end method

.method private startHiding()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mBackground:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 96
    return-void
.end method


# virtual methods
.method protected createTimeBar(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    new-instance v0, Lcom/android/gallery3d/app/TimeBar;

    invoke-direct {v0, p1, p0}, Lcom/android/gallery3d/app/TimeBar;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/TimeBar$Listener;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    .line 61
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 66
    .local v0, wasHidden:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 67
    invoke-super {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->hide()V

    .line 68
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onHidden()V

    .line 71
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 124
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 119
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 114
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    .line 131
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onScrubbingEnd(III)V
    .locals 0
    .parameter "time"
    .parameter "trimStartTime"
    .parameter "trimEndTime"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onScrubbingEnd(III)V

    .line 184
    return-void
.end method

.method public onScrubbingMove(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 177
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onScrubbingMove(I)V

    .line 178
    return-void
.end method

.method public onScrubbingStart()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 171
    invoke-super {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onScrubbingStart()V

    .line 172
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 136
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v2

    .line 140
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 146
    :pswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onPlayPause()V

    goto :goto_0

    .line 152
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public show()V
    .locals 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 77
    .local v0, wasHidden:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 78
    invoke-super {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->show()V

    .line 79
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onShown()V

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 83
    return-void
.end method

.method protected updateViews()V
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->updateViews()V

    goto :goto_0
.end method
