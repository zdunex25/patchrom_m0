.class public Lcom/android/gallery3d/app/TrimControllerOverlay;
.super Lcom/android/gallery3d/app/CommonControllerOverlay;
.source "TrimControllerOverlay.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/TrimControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimControllerOverlay;->hidePlayButtonIfPlaying()V

    return-void
.end method

.method private hidePlayButtonIfPlaying()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 45
    return-void
.end method


# virtual methods
.method protected createTimeBar(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    new-instance v0, Lcom/android/gallery3d/app/TrimTimeBar;

    invoke-direct {v0, p1, p0}, Lcom/android/gallery3d/app/TrimTimeBar;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/TimeBar$Listener;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    .line 38
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 83
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v2

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/TrimControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_3

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onPlayPause()V

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 94
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TrimControllerOverlay;->mCanReplay:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onReplay()V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setTimes(IIII)V
    .locals 1
    .parameter "currentTime"
    .parameter "totalTime"
    .parameter "trimStartTime"
    .parameter "trimEndTime"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/gallery3d/app/TimeBar;->setTime(IIII)V

    .line 79
    return-void
.end method

.method public showPlaying()V
    .locals 4

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showPlaying()V

    .line 52
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 53
    .local v0, anim:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 54
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 55
    new-instance v1, Lcom/android/gallery3d/app/TrimControllerOverlay$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/TrimControllerOverlay$1;-><init>(Lcom/android/gallery3d/app/TrimControllerOverlay;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    return-void

    .line 52
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
