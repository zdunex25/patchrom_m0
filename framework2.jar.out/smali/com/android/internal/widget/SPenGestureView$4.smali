.class Lcom/android/internal/widget/SPenGestureView$4;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SPenGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SPenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SPenGestureView;)V
    .locals 0
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView$4;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 628
    const/4 v1, 0x1

    .line 629
    .local v1, isScreenCaptureEnabled:Z
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView$4;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/widget/SPenGestureView;->access$700(Lcom/android/internal/widget/SPenGestureView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 631
    .local v3, totalPointerSize:I
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 632
    .local v2, rp:Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v2, :cond_0

    .line 633
    invoke-virtual {v2, v5}, Landroid/sec/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 634
    const-string v4, "SPenGesture"

    const-string v5, "MDM: Screen Capture Disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :goto_0
    return-void

    .line 640
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView$4;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-boolean v4, v4, Lcom/android/internal/widget/SPenGestureView;->mScreenCaptureOn:Z

    if-eq v4, v5, :cond_1

    .line 641
    const-string v4, "SPenGesture"

    const-string v5, "flashannotate couldn\'t by MDM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 645
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView$4;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #calls: Lcom/android/internal/widget/SPenGestureView;->isLockScreenShowing()Z
    invoke-static {v4}, Lcom/android/internal/widget/SPenGestureView;->access$800(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 646
    const-string v4, "SPenGesture"

    const-string v5, "Now keyguard is on!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 650
    :cond_2
    const-string v4, "SPenGesture"

    const-string v5, "Long pressed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView$4;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const-string v5, "com.sec.spen.flashannotate"

    #calls: Lcom/android/internal/widget/SPenGestureView;->isTopActivity(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/internal/widget/SPenGestureView;->access$900(Lcom/android/internal/widget/SPenGestureView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 653
    const-string v4, "SPenGesture"

    const-string v5, "flashannotate is live!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 656
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView$4;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v5, 0x0

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z
    invoke-static {v4, v5}, Lcom/android/internal/widget/SPenGestureView;->access$1002(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 657
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView$4;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v5, 0x0

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z
    invoke-static {v4, v5}, Lcom/android/internal/widget/SPenGestureView;->access$1102(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 658
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView$4;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/SPenGestureView;->resetVariable(I)V

    .line 659
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView$4;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v4}, Lcom/android/internal/widget/SPenGestureView;->postInvalidate()V

    .line 661
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView$4;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v5, 0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsLiveScreencapture:Z
    invoke-static {v4, v5}, Lcom/android/internal/widget/SPenGestureView;->access$1202(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 662
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView$4;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v4}, Lcom/android/internal/widget/SPenGestureView;->disableGestureGuide()V

    .line 663
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView$4;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v4}, Lcom/android/internal/widget/SPenGestureView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/SPenGestureView$4;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/internal/widget/SPenGestureView;->access$1300(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
