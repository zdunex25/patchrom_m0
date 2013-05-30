.class Lcom/android/internal/widget/SPenGestureView$5;
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
    .line 678
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView$5;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 683
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$5;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsKeyguardOn:Z
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$1400(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$5;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$1500(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$5;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsLiveGlanceView:Z
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$1600(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    :cond_0
    const-string v2, "SPenGesture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Double tap is disable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView$5;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z
    invoke-static {v4}, Lcom/android/internal/widget/SPenGestureView;->access$1500(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView$5;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsLiveGlanceView:Z
    invoke-static {v4}, Lcom/android/internal/widget/SPenGestureView;->access$1600(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :goto_0
    return-void

    .line 689
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$5;->this$0:Lcom/android/internal/widget/SPenGestureView;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PEN_GESTURE_PENMEMO_ACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/android/internal/widget/SPenGestureView;->access$1702(Lcom/android/internal/widget/SPenGestureView;Landroid/content/Intent;)Landroid/content/Intent;

    .line 691
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$5;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v2}, Lcom/android/internal/widget/SPenGestureView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView$5;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/widget/SPenGestureView;->access$1700(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 693
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$5;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$1800(Lcom/android/internal/widget/SPenGestureView;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 694
    .local v0, callState:I
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$5;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v2}, Lcom/android/internal/widget/SPenGestureView;->disableGestureGuide()V

    .line 695
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 696
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$5;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v2}, Lcom/android/internal/widget/SPenGestureView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.spengesture.DOUBLE_TAB"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 700
    .end local v0           #callState:I
    :catch_0
    move-exception v1

    .line 701
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 698
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #callState:I
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$5;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v2}, Lcom/android/internal/widget/SPenGestureView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView$5;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/widget/SPenGestureView;->access$1900(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
