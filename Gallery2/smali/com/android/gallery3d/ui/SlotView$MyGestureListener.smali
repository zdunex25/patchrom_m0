.class Lcom/android/gallery3d/ui/SlotView$MyGestureListener;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private isDown:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/SlotView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/SlotView;)V
    .locals 0
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SlotView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/SlotView;)V

    return-void
.end method

.method private cancelDown(Z)V
    .locals 1
    .parameter "byLongPress"

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z

    if-nez v0, :cond_0

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z

    .line 648
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$900(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/SlotView$Listener;->onUp(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    .line 659
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 660
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView;->access$800(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 661
    .local v0, scrollLimit:I
    if-nez v0, :cond_0

    .line 666
    :goto_0
    return v2

    .line 662
    :cond_0
    move v1, p3

    .line 663
    .local v1, velocity:F
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;
    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView;->access$1000(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/ScrollerHelper;

    move-result-object v3

    neg-float v4, v1

    float-to-int v4, v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->fling(III)V

    .line 664
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/UserInteractionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/UserInteractionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/UserInteractionListener;->onUserInteractionBegin()V

    .line 665
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 666
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 694
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 695
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$1400(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    :goto_0
    return-void

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->lockRendering()V

    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$800(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 699
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$900(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/SlotView$Listener;->onLongTap(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->unlockRendering()V

    goto :goto_0

    .end local v0           #index:I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView;->unlockRendering()V

    throw v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v5, 0x0

    .line 672
    invoke-direct {p0, v5}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 673
    move v0, p3

    .line 674
    .local v0, distance:F
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1000(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/ScrollerHelper;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v4}, Lcom/android/gallery3d/ui/SlotView;->access$800(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/gallery3d/ui/ScrollerHelper;->startScroll(III)I

    move-result v1

    .line 676
    .local v1, overDistance:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1200(Lcom/android/gallery3d/ui/SlotView;)I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 677
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1300(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/Paper;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/Paper;->overScroll(F)V

    .line 679
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 680
    const/4 v2, 0x1

    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 631
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    .line 632
    .local v1, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 634
    :try_start_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 641
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 643
    :goto_0
    return-void

    .line 635
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$800(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 636
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 637
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z

    .line 638
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$900(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/gallery3d/ui/SlotView$Listener;->onDown(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    :cond_1
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    .end local v0           #index:I
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 685
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 686
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$1400(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    :cond_0
    :goto_0
    return v4

    .line 687
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$800(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 688
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$900(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/SlotView$Listener;->onSingleTapUp(I)V

    goto :goto_0
.end method
