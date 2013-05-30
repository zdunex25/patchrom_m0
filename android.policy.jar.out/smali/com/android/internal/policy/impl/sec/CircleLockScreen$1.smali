.class Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;
.super Ljava/lang/Object;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleTouchDown(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 526
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x90837

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Lcom/android/internal/policy/impl/sec/TickerWidget;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Lcom/android/internal/policy/impl/sec/TickerWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->stopAutoScroll()V

    .line 531
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 538
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1300(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #calls: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->bedimBackground(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1400(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Z)V

    .line 568
    :cond_4
    :goto_0
    return-void

    .line 541
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShortcutWidget"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1500(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    .line 543
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1500(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 545
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x104069d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 549
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "MissedEvent"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 550
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1600(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 551
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1700(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->setStartLocation(I)V

    .line 555
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x104069c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #calls: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->bedimBackground(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1400(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Z)V

    goto :goto_0

    .line 552
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1600(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 553
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1700(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setStartLocation(I)V

    goto :goto_1

    .line 561
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 567
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #calls: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->bedimBackground(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1400(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Z)V

    goto/16 :goto_0
.end method

.method public onCircleTouchMove(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 574
    return-void
.end method

.method public onCircleTouchUp(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 578
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x19191a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Lcom/android/internal/policy/impl/sec/TickerWidget;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Lcom/android/internal/policy/impl/sec/TickerWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->startAutoScroll()V

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 584
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1500(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 588
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1500(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 592
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #calls: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->bedimBackground(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1400(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Z)V

    .line 593
    return-void
.end method
