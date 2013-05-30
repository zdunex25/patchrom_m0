.class Lcom/android/internal/widget/SPenGestureView$6;
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
    .line 708
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView$6;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$6;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$6;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$2000(Lcom/android/internal/widget/SPenGestureView;)Ljava/util/ArrayList;

    move-result-object v2

    #calls: Lcom/android/internal/widget/SPenGestureView;->isTopActivity(Ljava/util/ArrayList;)Z
    invoke-static {v1, v2}, Lcom/android/internal/widget/SPenGestureView;->access$2100(Lcom/android/internal/widget/SPenGestureView;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    const-string v1, "SPenGesture"

    const-string v2, "gesturepad is live!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$6;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #calls: Lcom/android/internal/widget/SPenGestureView;->isLockScreenShowing()Z
    invoke-static {v1}, Lcom/android/internal/widget/SPenGestureView;->access$800(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 717
    const-string v1, "SPenGesture"

    const-string v2, "Now keyguard is on!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 721
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v1, "SPenGesture"

    const-string v2, "Gesture Pad!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$6;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v1}, Lcom/android/internal/widget/SPenGestureView;->disableGestureGuide()V

    .line 723
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$6;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v1}, Lcom/android/internal/widget/SPenGestureView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$6;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$2200(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
