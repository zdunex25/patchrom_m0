.class Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardWidgetPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 697
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 707
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;->val$show:Z

    if-nez v1, :cond_2

    .line 708
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->disablePageContentLayers()V

    .line 709
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 710
    .local v0, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isChallengeOverlapping()Z

    move-result v1

    if-nez v1, :cond_1

    .line 712
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->resetSize()V

    .line 714
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const/4 v2, -0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->access$102(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;I)I

    .line 715
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mShowingInitialHints:Z

    .line 717
    .end local v0           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V

    .line 718
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;->val$show:Z

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enablePageContentLayers()V

    .line 703
    :cond_0
    return-void
.end method
